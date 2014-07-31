$(document).on("ready page:load",function (){
	$("#search-form").submit(function(event){
		event.preventDefault();
		var searchValue = $("#search").val();

		$.ajax({
			url: "/posts/search/" + searchValue,
			type: "GET",
			dataType: "html"
		}).done(function(data){
			$("#posts").html(data);
		});

	});

	$(".reply_button").click(function(){
		var commentDescription = $(this).data("comment-description");
		$(".comment_label").html("Replying to Comment : " + commentDescription);
		var commentId = $(this).data("comment-id");
			$("#parent_id").val(commentId);
	});

});