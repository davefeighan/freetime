% for key, errors in registration_form.errors.iteritems():
	%for error in errors:
		${error}
		<br/>
	% endfor
% endfor
<form action="/sign_up" method="post">
	${registration_form.username.label}
	${registration_form.username}
	<br/>
	${registration_form.first_name.label}
	${registration_form.first_name}
	<br/>
	${registration_form.last_name.label}
	${registration_form.last_name}
	<br/>
	${registration_form.age.label}
	${registration_form.age}
	<br/>
	${registration_form.password.label}
	${registration_form.password}
	<br/>
	${registration_form.confirm.label}
	${registration_form.confirm}
	<br/>
	${registration_form.interests.label}
	% for interest in registration_form.interests:
	${interest}
	% endfor
	<br/>
	${registration_form.role.label}
	${registration_form.role}
	<br/>
	<input type="submit" value="Submit">
</form>