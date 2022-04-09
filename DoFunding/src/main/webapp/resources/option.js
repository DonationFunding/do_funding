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
												  " <td class='form-group'>"
												+ " <input type='text' placeholder='옵션' class='form-control input-lg'  style='float:left;' name='item_option' id='item_option'>"
												+ " <button type='button' onclick='option_del(this)' style='float:right;' id='optionDelBtn' name='optionDelBtn' class='btn-btn dark'>삭제</button>"
												+ " <br></td>"
						);
					});
}
	function option_del(DelBtn){
		$(DelBtn).parent().remove();
	}