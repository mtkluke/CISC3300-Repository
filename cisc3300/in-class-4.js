console.log("in-class-4.js loaded!");

const numbers = [1,2,3,4,5];

for (let i = 0; i < numbers.length; i++) {
    if (i % 2 === 0) {
        console.log(`${numbers[i]} is odd!`);
	
    } else {
        console.log(`${numbers[i]} is even!`);
    }
}
