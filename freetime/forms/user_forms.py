from wtforms.form import Form
from wtforms.fields import (TextField, PasswordField, IntegerField,
    SelectField, FormField, FieldList)
from wtforms import validators
from wtforms.validators import ValidationError

def age_or_blank(form, field):
    if not field.data:
        return

    try:
        int(field.data)
    except ValueError, TypeError:
        raise ValidationError('Please provide an age as a number')

class InterestForm(Form):
    name = SelectField('', choices=[('foo', 'foo'), ('bar', 'bar'), ('toto', 'toto')])

class RegistrationForm(Form):
    first_name = TextField('First Name',
        [validators.DataRequired('Please enter your first name.')])
    last_name = TextField('Last Name',
        [validators.DataRequired('Please enter your last name.')])
    age = TextField('Age', [age_or_blank])
    username = TextField('Email Address',
        [validators.DataRequired(message='Username required.'),
        validators.Email(message='Please enter a valid email address.')])
    password = PasswordField('Password',
        [validators.DataRequired('Please provide a password.'),
        validators.EqualTo('confirm',
            message='Passwords do not match')])
    confirm = PasswordField('Repeat Password')
    role = SelectField('Role', choices=[('Doer', 'Doer'), ('Leader', 'Leader')])
    interests = FieldList(FormField(InterestForm))

class SignInForm(Form):
    username = TextField('Email Address',
        [validators.DataRequired(), validators.Email()])
    password = PasswordField('Password',
        [validators.DataRequired()])
