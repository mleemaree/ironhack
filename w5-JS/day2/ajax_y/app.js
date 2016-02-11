$(function(){

$('#show_chars').click(function(){
	var show = function(char){
		for(var i = 0; i < char.length; i++){
			$('.names').append('<li><h4>Name: </span>' + char[i].name + '</h4>');
			$('.names').append('<li><span>Occupation: </span>' + char[i].occupation + '</li>');
			$('.names').append('<li><span>Debt?: </span>' + char[i].debt + '</li>');
			$('.names').append('<li><span>Weapon: </span>' + char[i].weapon + '</li>');

		}
	};




	var characters = $.get('https://ironhack-characters.herokuapp.com/characters');

	characters.done(show);

});


 $("#new_char").submit(function(e) {
 	e.preventDefault();
 	var new_char = {
 		name: $('.name').val(),
 		occupation: $('.occ').val(),
 		debt: $('.debt option').val(),
 		weapon: $('.weapon').val()
 	}

	var request = $.post('https://ironhack-characters.herokuapp.com/characters', new_char);


	function onSaveSuccess (response) {
	    console.debug(response);
	}

  function onSaveFailure (err) {
    console.error(err.responseJSON);
  }

  request.done(onSaveSuccess);
  request.fail(onSaveFailure);
});




});