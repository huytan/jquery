$(document).ready(function() {
	$('p:eq(1)').hide();
	$('a.more').click(function() { //Khi thẻ <a class='more'> được click
            $('p:eq(1)').show(); //cho hiển thị đoạn văn thứ 2
            $(this).hide(); //this ở đây là chỉ đối tượng jQuery a.more ẩn đi
            return false; // ngăn không cho đường link hoạt động như mặc định
          }); 
});