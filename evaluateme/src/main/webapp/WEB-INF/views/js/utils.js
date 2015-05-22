// Key binding function for numeric fields.
function numericOnlyKeys(id) {
	$(id).keypress(function(e) {
		// if is is non of these: numeric(48-57), cut(Ctrl+120), copy(Ctrl+99), paste(Ctrl+118), select all(Ctrl+97), 
		// backspace(8), delete(46), tab(9), arrowkeys(37-40); then prevent it
		if (!((e.which>47 && e.which<58)
				|| (e.ctrlKey == true && (e.which == 120 || e.which == 99 || e.which == 118 || e.which == 97))
				|| (e.keyCode == 8 || e.keyCode == 46 || e.keyCode == 9 || (e.keyCode>36 && e.keyCode<41))))
		{
			e.preventDefault();
		}
	});
}

// Key binding function for alphanumeric fields.
function alphaNumericOnlyKeys(id) {
	$(id).keypress(function(e) {
		// if is is non of these: alpha numeric low(65-90), alpha numeric up(97-122), cut(Ctrl+120), copy(Ctrl+99), paste(Ctrl+118), select all(Ctrl+97), 
		// backspace(8), delete(46), tab(9), arrowkeys(37-40); then prevent it
		if (!(((e.which>64 && e.which<91) || (e.which>96 && e.which<123))
				|| (e.ctrlKey == true && (e.which == 120 || e.which == 99 || e.which == 118 || e.which == 97))
				|| (e.keyCode == 8 || e.keyCode == 46 || e.keyCode == 9 || (e.keyCode>36 && e.keyCode<41))))
		{
			e.preventDefault();
		}
	});
}
// Key binding function for date fields.
function noKeys(id) {
	$(id).bind('keypress', function(e) {
		 return (e.which!=8 && e.which!=0 && (e.which>48 || e.which<57)) ? false : true ;
	   });
}

function eraseField(id) {
	$(id).val(null);
}

function eraseFieldValidation(id, validation) {
	if ($(id).val() == validation) {
		$(id).val(null);
	};
}

function enableAllFields() {
	$('#form input').removeAttr('readonly');
	$('#form textarea').removeAttr('readonly');
	$('#form select').removeAttr('disabled');
	$('#form input:radio').removeAttr('disabled');
}

function disableAllFields() {
	$('#form input').attr('readonly', true);
	$('#form textarea').attr('readonly', true);
	$('#form select').attr('disabled', true);
	$('#form input:radio').attr('disabled', true);
}

function enableField(id) {
	var nodeName = id.nodeName;
	nodeName === 'SELECT' ? $(id).removeAttr('disabled', true) : $(id).removeAttr('readonly', true);
}

function disableField(id) {
	var nodeName = id.nodeName;
	nodeName === 'SELECT' ? $(id).attr('disabled', true) : $(id).attr('readonly', true);
}

function validateRequiredClass(element, id, divId) {
	$(element).val() != '' ? addRequired(id, divId) : removeRequired(id, divId);
}

function addRequired(id, divId) {
	//$(divId).removeClass('controls');
	//$(divId).addClass('controls-required');
	$(divId).addClass('has-error');
	$(id).attr('required', true);
}

function removeRequired(id, divId) {
	$(divId).removeClass('has-error');
	//$(divId).addClass('controls');
	$(id).removeAttr('required');
}
