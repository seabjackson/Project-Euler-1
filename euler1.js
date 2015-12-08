/*********************************************
*           Seab Jackson
* This Project Euler Problem finds the sum of
* all the multiples of 3 and 5 that are below 1000
*                 
*             Problem 1
*********************************************/

var sum = 0;

// find each multiple of 3 and 5 below 1000
for (var num = 0; num < 1000; num++)
{
	// check if numbers are divisible by 3 or 5
	if (num % 3 === 0 || num % 5 === 0)
	{
		// tally those numbers up
		sum += num;
	}
}
console.log(sum);

