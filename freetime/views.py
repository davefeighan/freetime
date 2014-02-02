from pyramid.view import view_config
from pyramid.httpexceptions import HTTPFound

from sqlalchemy.exc import DBAPIError

from .models import (
    DBSession,
    Doer,
    Leader,
    User,
    Interest
    )
from freetime.forms import RegistrationForm, SignInForm
from pyramid.security import authenticated_userid, remember, forget

class BaseView(object):
    def __init__(self, request):
        self.request = request
        self.response = {}
        user_id = authenticated_userid(request)
        if user_id:
            self.user = User.get_by_id(user_id)
        else:
            self.user = None
        self.response['user'] = self.user

class Home(BaseView):
    @view_config(route_name='home', renderer='freetime:templates/index.html.mako',
        request_method='GET')
    def home(self):
        return self.response

class AuthenticationView(BaseView):
    @view_config(route_name='sign_up', renderer='freetime:templates/sign_up.html.mako',
        request_method='GET')
    def sign_up_get(self):
        form = RegistrationForm()
        for i in xrange(3):
            form.interests.append_entry()
        self.response['registration_form'] = form
        return self.response

    @view_config(route_name='sign_up', renderer='freetime:templates/sign_up.html.mako',
        request_method='POST')
    def sign_up_post(self):
        form = RegistrationForm(self.request.POST)
        if form.validate():
            if form.role.data == 'Doer':
                user_type = Doer
            else:
                user_type = Leader
            user = user_type(
                first_name=form.first_name.data,
                last_name=form.last_name.data,
                password=form.password.data,
                age=form.age.data,
                username=form.username.data)
            DBSession.add(user)
            user.interests
            for interest_form in form.interests:
                interest = Interest.get_by_name(interest_form.data['name'])
                if not interest:
                    interest = Interest(name=interest_form.data['name'])
                    DBSession.add(interest)
                    DBSession.flush()
                user.add_interest(interest)
            headers = remember(self.request, user.id)
            self.request.response.headerlist.extend(headers)
            return HTTPFound(
                location=self.request.route_url('home'), headers=headers)
        else:
            self.response['registration_form'] = form
            return self.response            
        return self.response

    @view_config(route_name='sign_in', renderer='freetime:templates/sign_in.html.mako',
        request_method='GET')
    def sign_in_get(self):
        form = SignInForm()
        self.response['sign_in_form'] = form
        return self.response

    @view_config(route_name='sign_in', renderer='freetime:templates/sign_in.html.mako',
        request_method='POST')
    def sign_in_post(self):
        form = SignInForm(self.request.POST)
        if form.validate():
            if User.check_password(form.username.data, form.password.data):
                user = User.get_by_username(form.username.data)
                headers = remember(self.request, user.id)
                return HTTPFound(
                    location=self.request.route_url('home'),
                    headers=headers
                    )

        return self.response

    @view_config(route_name='sign_out', request_method='GET')
    def sign_out(self):
        forget(self.request)
        return HTTPFound(location=self.request.route_url('home'))