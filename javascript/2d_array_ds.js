// Given a  2D Array, :
//
// 1 1 1 0 0 0
// 0 1 0 0 0 0
// 1 1 1 0 0 0
// 0 0 0 0 0 0
// 0 0 0 0 0 0
// 0 0 0 0 0 0
// We define an hourglass in  to be a subset of values with indices falling in this pattern in 's graphical representation:
//
// a b c
//   d
// e f g
// There are  hourglasses in , and an hourglass sum is the sum of an hourglass' values. Calculate the hourglass sum for every hourglass in , then print the maximum hourglass sum.
//
// For example, given the 2D array:
//
// -9 -9 -9  1 1 1
//  0 -9  0  4 3 2
// -9 -9 -9  1 2 3
//  0  0  8  6 6 0
//  0  0  0 -2 0 0
//  0  0  1  2 4 0
// We calculate the following  hourglass values:
//
// -63, -34, -9, 12,
// -10, 0, 28, 23,
// -27, -11, -2, 10,
// 9, 17, 25, 18
// Our highest hourglass value is  from the hourglass:
//
// 0 4 3
//   1
// 8 6 6
// Note: If you have already solved the Java domain's Java 2D Array challenge, you may wish to skip this challenge.
//
// Function Description
//
// Complete the function hourglassSum in the editor below. It should return an integer, the maximum hourglass sum in the array.
//
// hourglassSum has the following parameter(s):
//
// arr: an array of integers
// Input Format
//
// Each of the  lines of inputs  contains  space-separated integers .
//
// Constraints
//
// Output Format
//
// Print the largest (maximum) hourglass sum found in .
//
// Sample Input
//
// 1 1 1 0 0 0
// 0 1 0 0 0 0
// 1 1 1 0 0 0
// 0 0 2 4 4 0
// 0 0 0 2 0 0
// 0 0 1 2 4 0
// Sample Output
//
// 19
// Explanation
//
//  contains the following hourglasses:
//
// image
//
// The hourglass with the maximum sum () is:
//
// 2 4 4
//   2
// 1 2 4

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

// Complete the hourglassSum function below.
function hourglassSum(arr) {
    let sums_array = [];
    for (let i = 0; i < 4; i++){
        for (let j = 0; j < 4; j++) {
            let sum = 0;
            sum += arr[i].slice(j, j + 3).reduce((a, b) => a + b, 0);
            sum += arr[i + 1][j + 1]
            sum += arr[i + 2].slice(j, j + 3).reduce((a, b) => a + b, 0);
            sums_array.push(sum);
        }
    }
    return sums_array.sort((a, b) => a - b).pop();
}

function main() {
    const ws = fs.createWriteStream(process.env.OUTPUT_PATH);

    let arr = Array(6);

    for (let i = 0; i < 6; i++) {
        arr[i] = readLine().split(' ').map(arrTemp => parseInt(arrTemp, 10));
    }

    let result = hourglassSum(arr);

    ws.write(result + "\n");

    ws.end();
}
