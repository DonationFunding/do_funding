/**
 * option.js
 */

$(document).ready(function() {
	//alert(1);
	console.log('ready');

	optionAdd();
});

function optionAdd() {
	console.log('optionadd');
	var optionIndex = 1;
	//$("#fileIndex").append("<div><input type='file' style='float:left;' name='file_"+(fileIndex++)+"'>"+"<button type='button' style='float:right;' id='fileAddBtn'>"+"추가"+"</button></div>");
	$("#optionAdd_btn").click(function() {
						console.log('옵션추가');
						$("#optionIndex").append(
										"  <div class='form-group'><input placeholder='옵션' class='form-control input-lg' type='text' style='float:left;' name='item_option"												
												+ "' id='item_option'>"
												+ "<button type='button' style='float:right;' id='optionDelBtn' class='btn-btn dark'>"
												+ "삭제" + "</button></div>"
								);
					});

	$(document).click("#optionDelBtn", function() {
		$(this).parent().remove();

	});

};