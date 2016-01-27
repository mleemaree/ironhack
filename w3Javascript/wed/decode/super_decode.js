var decode = require('./decode.js');


function superDecode(sentence, option) {
  var words = sentence.split(' ');
  var odd = [];
  var even = [];
  for(var i=0;i<words.length;i++){
  	if((i+2)%2===0){
  		odd.push(words[i]);
  	}else{
  		even.push(words[i]);
  	}
  }
  
  switch(option){
  	case "every-forwards":
  		var secretMessage = decode(words);
    	return secretMessage;
    	break;
    case"every-backwards":
    	var secretMessage = decode(words.reverse());
    	return secretMessage;
    	break;
    case "even-fowards":
    	var secretMessage = decode(even);
    	return secretMessage;
    	break;
    case "even-backwards":
	    var secretMessage = decode(even.reverse());
	    return secretMessage;
    	break;
    case "odd-forwards":
    	var secretMessage = decode(odd);
    	return secretMessage;
    	break; 
    case "odd-backwards":
    	var secretMessage = decode(odd.reverse());
    	return secretMessage;
    	break; 
    default:
    	return null;
  }
}




module.exports = superDecode;