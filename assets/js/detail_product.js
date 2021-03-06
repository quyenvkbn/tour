if($('#count-comment').val() > 5){
	$('#comment_readmore').css('display', 'block');
}
switch(window.location.origin){
    case 'http://vajratravel.vn':
        var HOSTNAME = 'http://vajratravel.vn/';
        break;
    default:
        var HOSTNAME = 'http://localhost/vajra/';
}
var language = $("#language").val();
var required_comment = {
		required_name:{vi:'Họ và Tên không được trống!', en:'First and last name'},
		required_email:{vi:'Email không được trống!', en:'Please enter email!'},
		required_content:{vi:'Nội dung không được trống!', en:'Please enter comment.'},
		required_format_email:{vi:'Định dạng email không đúng, Vui lòng kiểm tra lại!', en:'Invalid email format, Please check again!'},
	};
$('.submit-comment').click(function(e){
	e.preventDefault();
	var name = $('#name').val();
	var email = $('#email').val();
	var content = $('#content').val();
	var product_id = $('#product_id').val();
	var comment_type = $('#comment_type').val();
	var filter = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;
	if(name.length == 0){
		$('.name_error').text(required_comment.required_name[language]);
	}else{
		$('.name_error').text('');
	}

	if(email.length == 0){
		$('.email_error').text(required_comment.required_email[language]);
	}
	else{
		$('.email_error').text('');
	}

	if(content.length == 0){
		$('.content_error').text(required_comment.required_content[language]);
	}
	else{
		$('.content_error').text('');
	}
	if(name.length != 0 && email.length != 0 && content.length != 0){

		if(filter.test(email)){
			$('.submit-comment').attr('disabled','disabled');
			$('.cmt_error').hide();
			jQuery.ajax({
				type: "get",
	                // url: "http://localhost/tourist1/comment/create_comment",
	                url: HOSTNAME+"comment/create_comment",
	                data: {name : name, email : email, content : content, product_id : product_id,comment_type : comment_type},
	                success: function(result){
	                	if ($('#count-comment').val() != 0) {
	                		$('#comment > .show-comment > .cmt:first-child').before(JSON.parse(result).comment);
	                	}else{
	                		$('#comment > .cmt:first-child').before(JSON.parse(result).comment);
	                	}
	                	
	                	$('#name').val('');
	                	$('#email').val('');
	                	$('#content').val('');
	                	$('.submit-comment').removeAttr('disabled');
	                }
	            })
		}else{
			$('.email_error').text(required_comment.required_format_email[language]);
		}

	}

	return false;
});


	// see more comment
	var page = 1;
	$('#comment_readmore').click(function () {
		var product_id = $('#product_id').val();
		var type = $('#comment_type').val();
		page ++;
		jQuery.ajax({
			type: "get",
            url: HOSTNAME+"/comment/see_more_comment",
            data: {page : page, product_id : product_id, type : type},
            success: function(result){
            	console.log(result);
            	comment = result.comment;
            	$.each(comment, function(key, value) {
            		html = '<div class="media cmt">'
            		+ '<div class="media-left">'
            		+ '<img class="media-object" src="' + HOSTNAME+'assets/img/comment_ava.png" alt="Comment Avatar" width="64">'
            		+ '</div>'
            		+ '<div class="media-body">'
            		+ '<h3 class="media-heading" style="color: #f4aa1c">'+ value.name +':</h3>'
            		+ '<span>'+ value.content +'</span>'
            		+ '<span style="float: right; font-size: 1em">'+ value.created_at +'</span>'
            		+ '</div>'
            		+ '</div>';
            		$('.show-comment').append(html);
            	});
            	
            	
            	if(result.stop >= page){
            		$('#comment_readmore').fadeOut();
            	}
            }
        })
	});