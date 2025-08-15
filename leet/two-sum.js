// Clarifying Questions:
// 1. Do the numbers have to be returned in any order? Let's assume it has to be in ascending order
// 2. What to do if there's no solution? Let's throw error, since the assumption is there will always be solution
function twoSum(nums, target) {
    var numberToIdx = {};
    for (var idx = 0; idx < nums.length; idx++) {
        var currNum = nums[idx];
        var solutionNumber = target - currNum;
        var solutionIdx = numberToIdx[solutionNumber];
        if (solutionIdx !== undefined) {
            return [solutionIdx, idx];
        }
        else {
            numberToIdx[currNum] = idx;
        }
    }
    throw new Error("No two sum solution");
}
// This is O(n)
var result = twoSum([2, 7, 11, 15], 9);
console.log(result);
console.log(JSON.stringify(result) === '[0,1]');
result = twoSum([3, 2, 4], 6);
console.log(result);
console.log(JSON.stringify(result) === '[1,2]');
result = twoSum([3, 3], 6);
console.log(result);
console.log(JSON.stringify(result) === '[0,1]');
// Additional test cases
// Try with negative numbers
console.log(twoSum([3, 3], 6));
console.log(result);
console.log(JSON.stringify(result) === '[0,1]');
// Handles 0
result = twoSum([-1, 3, 0], 3);
console.log(result);
console.log(JSON.stringify(result) === '[1,2]');
