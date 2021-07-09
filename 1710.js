"use strict";

/**
 * @param {number[][]} boxTypes
 * @param {number} truckSize
 * @return {number}
 */
function maximumUnits(boxTypes, truckSize) {
    boxTypes.sort((a, b) => b[1] - a[1]);
    let total = 0;
    for (let [boxes, units] of boxTypes) {
        total += units * (boxes <= truckSize ? boxes : truckSize);
        truckSize -= boxes;
        if (truckSize <= 0)
            break;
    }
    return total;
}

console.log(maximumUnits([[1, 3], [2, 2], [3, 1]], 4) == 8);
console.log(maximumUnits([[5, 10], [2, 5], [4, 7], [3, 9]], 10) == 91);
