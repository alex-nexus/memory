$.action_config = {};

$(document).ready(function() {
	// $(".input_date_picker").datepicker({
		// format : 'yyyy-mm-dd'
	// });

	//load actions' configuration
	LineManager.paramOnLoadHandler();

	//handle action on change
	$("select#line_action_id").change(function() {
		var action_id = $("#line_action_id option:selected").val();
		var config = $.action_config[action_id]

		$('.field').show();

		if (config.hide_people) {
			$('.field_people').hide();
		}
		if (config.hide_object) {
			$('.field_object').hide();
		}
		if (config.hide_end_time) {
			$('.field_end_time').hide();
		}
		if (config.hide_price) {
			$('.field_price').hide();
		}
		if (config.hide_url) {
			$('.field_url').hide();
		}
	});

	//toggle the more/less of details
	$('button.btn.btn-info').unbind().click(function() {
		$('.field_detail').toggle();
		$('button.btn.btn-info').toggle();
		return false;
	});

	//reveal add this button on hover
	$('table.table-hover tr').unbind().hover(
		function() {
			$(this).find('.add_this').show();		
		},
		function () {
    		$(this).find(".add_this").hide();
  		}	
	);
});

var LineManager = {
	paramOnLoadHandler : function(callback) {
		$.ajax({
			url : "/verbs.json",
		}).done(function(data) {
			jQuery.each(data, function() {
				$.action_config[this.id] = this;
			});
		});
	}
}