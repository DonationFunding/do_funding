/**
 * option.js
 */

$(document).ready(function() {
	//console.log('ready');

	optionAdd();
});

function optionAdd() {
	console.log('optionadd');
	var optionIndex = 1;
	$("#optionAdd_btn").click(function() {
						console.log('옵션추가');
						$("#optionIndex").append(
<<<<<<< HEAD
										"  <div class='form-group'><input placeholder='옵션' class='form-control input-lg' type='text' style='float:left;' name='item_option"												
												+ "' id='item_option'>"
												+ "<button type='button' style='float:right;' id='optionDelBtn' class='btn-btn dark'>삭제</button>"
												+  "</div>"
=======
												  "<div class='form-group' style='margin: 10px' >"
												+ "<input type='text' placeholder='옵션' class='form-control input-lg'  style='float:left;' name='item_option' id='item_option'>"
												+ "<button type='button' onclick='option_del(this)' style='float:right;' id='optionDelBtn' name='optionDelBtn' class='btn-btn dark'>삭제</button>"
												+ "<form:errors cssClass='err' path='item_option' /><br></div>"
>>>>>>> refs/heads/do-kyg
						);
					});
}
	function option_del(DelBtn){
		$(DelBtn).parent().remove();
	}