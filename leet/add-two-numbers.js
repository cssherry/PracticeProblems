// Clarifying questions
// 1. Will two linked lists be of the same length? No
function addTwoNumbers(linkedList1, linkedList2) {
    var _a, _b;
    var resultArray = [];
    var idx = 0;
    var carryNextDigit = 0;
    while (linkedList1[idx] !== undefined || linkedList2[idx] !== undefined) {
        var firstNumber = (_a = linkedList1[idx]) !== null && _a !== void 0 ? _a : 0;
        var secondNumber = (_b = linkedList2[idx]) !== null && _b !== void 0 ? _b : 0;
        var total = firstNumber + secondNumber + carryNextDigit;
        resultArray.push(total % 10);
        carryNextDigit = Math.floor(total / 10);
        idx += 1;
    }
    if (carryNextDigit) {
        resultArray.push(carryNextDigit);
    }
    return resultArray;
}
// Time complexity is O(max(m,n))
// Solution for if reversed is to reverse the array first -- still O(max(m, n))
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
