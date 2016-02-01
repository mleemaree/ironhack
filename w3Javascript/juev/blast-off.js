


function blastOff(seconds){
	var counter = seconds;
	function count(){
		if(counter > 0){
			console.log(counter);
			counter --;
			setTimeout(count,1000);
		}else{
			console.log("Blast Off!");
		}
	}
	count();
}

blastOff(5);
