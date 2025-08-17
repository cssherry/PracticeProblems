// Clarification questions
// 1. letters, digits, symbols, and spaces are included and considered characters
function longestSubstring(fullString:string):number {
  // first, let's just get most naïve solution -- iterate through every substring
  let maxNumber = 0;
  let startIdx = 0;
  while (startIdx < fullString.length) {
    const characterToIdx:Record<string,number> = {};
    let currLength = 0;
    for (let currIdx = startIdx; currIdx < fullString.length; currIdx++) {
      const currCharacter = fullString[currIdx];
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

let result = longestSubstring('abcabcbb');
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
