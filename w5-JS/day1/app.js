// $(function(){

// box = $('<div class="box">');

// setInterval(function(){
// 	$('div').empty();
// 	for (var i=0; i< 64; i++){
// 		var random = Math.floor(Math.random()*10 +1);
// 	   $("content").appendChild($("div")).style.backgroundColor = parseInt((i / 8) + i) % random == 0 ? '#293247' : '#DDFF58'; 
// 	}
// },400);


// });
// 


$(function(){

	
	for(var i = 0; i < 8; i++){      
        $("#content").append('<div class="row" data-row="' + i + '"/>');
    }
    $('.row').each(function(){
    	 for(var i = 0; i < 8; i++){
    	 	var row = $(this).attr('data-row');
        	$(this).append('<div class="box" data-row="'+ row + '" data-col="' + i + '"/>');
    	}
    });





// $('#clear').click(function(){
// 	$('#clear').html('show all');
// 	$("div:not(#clear)").toggle(500);
// });








});


