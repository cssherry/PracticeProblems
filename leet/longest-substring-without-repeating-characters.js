// Clarification questions
// 1. letters, digits, symbols, and spaces are included and considered characters
function longestSubstring(fullString) {
    // first, let's just get most naïve solution -- iterate through every substring
    var maxNumber = 0;
    var startIdx = 0;
    while (startIdx < fullString.length) {
        var characterToIdx = {};
        var currLength = 0;
        for (var currIdx = startIdx; currIdx < fullString.length; currIdx++) {
            var currCharacter = fullString[currIdx];
            if (characterToIdx[currCharacter] !== undefined) {
                break;
            }
            characterToIdx[currCharacter] = currIdx;
            currLength += 1;
        }
        maxNumber = maxNumber > currLength ? maxNumber : currLength;
        startIdx += 1;
    }
    return maxNumber;
}
// O(n²) time complexity and O(k)
var result = longestSubstring('abcabcbb');
console.log(result);
console.log(result === 3);
result = longestSubstring('bbbbb');
console.log(result);
console.log(result === 1);
result = longestSubstring('pwwkew');
console.log(result);
console.log(result === 3);
// Additional test cases
// when only 1 letter
result = longestSubstring('a');
console.log(result);
console.log(result === 1);
// when there's symbols
result = longestSubstring('a@!@# 098');
console.log(result);
console.log(result === 7);
