$(document).ready(function () {
    $('#none').click(function (event) {
        if (this.checked) {
            $('.dressings').each(function () { //loop through each checkbox
                $(this).prop('disabled', true); //check 
            });
        } else {
            $('.dressings').each(function () { //loop through each checkbox
                $(this).prop('disabled', false); //uncheck              
            });
        }
    });
});


$(document).ready(function () {
    $('#noneV').click(function (event) {
        if (this.checked) {
            $('.veggies').each(function () { //loop through each checkbox
                $(this).prop('disabled', true); //check 
            });
        } else {
            $('.veggies').each(function () { //loop through each checkbox
                $(this).prop('disabled', false); //uncheck              
            });
        }
    });
});

$(document).ready(function () {
    $('#noneO').click(function (event) {
        if (this.checked) {
            $('.oilSpics').each(function () { //loop through each checkbox
                $(this).prop('disabled', true); //check 
            });
        } else {
            $('.oilSpics').each(function () { //loop through each checkbox
                $(this).prop('disabled', false); //uncheck              
            });
        }
    });
});


$(document).ready(function() {
    $("#layout_select").children('option:gt(0)').hide();
    $("#column_select").change(function() {
        $("#layout_select").children('option').hide();
        $("#layout_select").children("option[value^=" + $(this).val() + "]").show()
    })
})


function show(select_item) {
    if (select_item == "Tacos") {
	    hiddenDiv.style.visibility='visible';
		hiddenDiv.style.display='block';
	} 
	else{
		hiddenDiv.style.visibility='hidden';
		hiddenDiv.style.display='none';
	}
    
    if (select_item == "Salad") {
    	hiddenSalad.style.visibility='visible';
    	hiddenSalad.style.display='block';
	} 
	else{
		hiddenSalad.style.visibility='hidden';
		hiddenSalad.style.display='none';
	}
}
