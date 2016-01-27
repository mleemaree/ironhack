// var eaarr = [1, -1, 3, -4, 5, -5, 0];



// function zero(numList){
// 	var result = [];
// 	for(var i=0; i<numList.length-1; i++){
// 		// console.log(numList[i]);
// 		 var outer = numList[i];
// 		for(var j=i+1; j<numList.length;j++){
// 			//console.log('- ' + list)
// 			var inner = numList[j];
// 			if(outer + inner === 0){
// 				var indexesPair = [outer,inner];
// 				result.push(indexesPair);
// 				//console.log(inner + ' and ' + outer);
// 			}
// 		}
// 	}
// 	return result
// }

// var pairs = zero(eaarr);
// console.log(pairs);
// 
// 

// var any = 'hello';
// console.log(`${any} world`);
// 


var numbers = "80:70:90:100";

function avg(arr){
	var result = arr.split(":");
	var sum = result.forEach(function(num){
		sum += +num
	});
	var avg = sum / result.length
	console.log(avg)
}

hey = avg(numbers);


var numbers = "80:70:90:100";

function avg(arr){
	var result = arr.split(":");
	var sum = result.reduce (function(acc, num){
		return acc += +num
	}, 0);
	var avg = sum / result.length
	console.log(avg)
}

hey = avg(numbers);







