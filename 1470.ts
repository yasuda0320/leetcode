/**
 * @param {number[]} nums
 * @param {number} n
 * @return {number[]}
 */
function shuffle(nums: number[], n: number): number[] {
    let result = []
    for (let i = 0, j = n; i < n; i++, j++)
        result.push(nums[i], nums[j])
    return result
}

// console.log(shuffle([2,5,1,3,4,7], 3))
// console.log(shuffle([1,2,3,4,4,3,2,1], 4))
// console.log(shuffle([1,1,2,2], 2))
