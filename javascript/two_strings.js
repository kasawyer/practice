// Given two strings, determine if they share a common substring. A substring may be as small as one character.
//
// For example, the words "a", "and", "art" share the common substring . The words "be" and "cat" do not share a substring.
//
// Function Description
//
// Complete the function twoStrings in the editor below. It should return a string, either YES or NO based on whether the strings share a common substring.
//
// twoStrings has the following parameter(s):
//
// s1, s2: two strings to analyze .
// Input Format
//
// The first line contains a single integer , the number of test cases.
//
// The following  pairs of lines are as follows:
//
// The first line contains string .
// The second line contains string .
// Constraints
//
//  and  consist of characters in the range ascii[a-z].
// Output Format
//
// For each pair of strings, return YES or NO.
//
// Sample Input
//
// 2
// hello
// world
// hi
// world
// Sample Output
//
// YES
// NO
// Explanation
//
// We have  pairs to check:
//
// , . The substrings  and  are common to both strings.
// , .  and  share no common substrings.
'use strict';

const fs = require('fs');

process.stdin.resume();
process.stdin.setEncoding('utf-8');

let inputString = '';
let currentLine = 0;

process.stdin.on('data', inputStdin => {
    inputString += inputStdin;
});

process.stdin.on('end', _ => {
    inputString = inputString.replace(/\s*$/, '')
        .split('\n')
        .map(str => str.replace(/\s*$/, ''));

    main();
});

function readLine() {
    return inputString[currentLine++];
}

// Complete the twoStrings function below.
function twoStrings(s1, s2) {
    let s1_array = create_array(s1);
    let s2_array = create_array(s2);
    let result = 'NO';
    s1_array.forEach(function (element) {
        if (s2_array.includes(element)) {
            result = 'YES';
            return result;
        }
    });
    return result;
}

function create_array(string) {
    return string.split('').filter((v, i, a) => a.indexOf(v) === i);
}

function main() {
    const ws = fs.createWriteStream(process.env.OUTPUT_PATH);

    const q = parseInt(readLine(), 10);

    for (let qItr = 0; qItr < q; qItr++) {
        const s1 = readLine();

        const s2 = readLine();

        let result = twoStrings(s1, s2);

        ws.write(result + "\n");
    }

    ws.end();
}
