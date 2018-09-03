function disableDropdown(obj) {
	curval = $(obj).val();
	if (curval) { //if an option is selected
		$(obj).find('option').each(function(){ //loop and remove all other options
			if ($(this).val() != curval) {
				$(this).remove();
			}
		});
	}
}

function emptySelectInput(selector){
	t = $(selector).get(0);
	t.options.length=0;
}