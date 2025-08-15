// Clarifying questions
// 1. Will two linked lists be of the same length? No
function addTwoNumbers(linkedList1, linkedList2) {
    var resultArray = [];
    var idx = 0;
    var nextDigit = 0;
    while (linkedList1[idx] !== undefined || linkedList2[idx] !== undefined) {
        var firstNumber = linkedList1[idx] || 0;
        var secondNumber = linkedList2[idx] || 0;
        var total = firstNumber + secondNumber + nextDigit;
        resultArray.push(total % 10);
        nextDigit = Math.floor(total / 10);
        idx += 1;
    }
    if (nextDigit) {
        resultArray.push(nextDigit);
    }
    return resultArray;
}
var result = addTwoNumbers([2, 4, 3], [5, 6, 4]);
console.log(result);
console.log(JSON.stringify(result) === '[7,0,8]');
result = addTwoNumbers([0], [0]);
console.log(result);
console.log(JSON.stringify(result) === '[0]');
result = addTwoNumbers([9, 9, 9, 9, 9, 9, 9], [9, 9, 9, 9]);
console.log(result);
console.log(JSON.stringify(result) === '[8,9,9,9,0,0,0,1]');
// Additional test cases
// Try with second list longer
result = addTwoNumbers([9, 9, 9, 9], [9, 9, 9, 9, 9, 9, 9]);
console.log(result);
console.log(JSON.stringify(result) === '[8,9,9,9,0,0,0,1]');
