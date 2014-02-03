from pyramid.config import Configurator
from pyramid.authentication import SessionAuthenticationPolicy
from pyramid.authorization import ACLAuthorizationPolicy
from sqlalchemy import engine_from_config
import pyramid_beaker
from .models import (
    DBSession,
    Base,
    )
from pyramid.session import UnencryptedCookieSessionFactoryConfig

def main(global_config, **settings):
    """ This function returns a Pyramid WSGI application.
    """
    engine = engine_from_config(settings, 'sqlalchemy.')
    DBSession.configure(bind=engine)
    Base.metadata.bind = engine
    #session_factory = pyramid_beaker.session_factory_from_settings(settings)
    session_factory = UnencryptedCookieSessionFactoryConfig(
        settings['session.secret']
        )
    authentication = SessionAuthenticationPolicy()
    authorization = ACLAuthorizationPolicy()
    config = Configurator(settings=settings,
        authentication_policy=authentication,
        authorization_policy=authorization,
        session_factory=session_factory)
    config.include('pyramid_beaker')
    config.add_static_view('static', 'static', cache_max_age=3600)
    config.add_route('home', '/')
    config.add_route('sign_up', '/sign_up')
    config.add_route('sign_in', '/sign_in')
    config.add_route('sign_out', '/sign_out')
    config.add_route('profile_create', '/profile_create')
    config.add_route('profile', '/profile')
    config.add_route('create_event', '/create_event')
    config.scan()
    return config.make_wsgi_app()
