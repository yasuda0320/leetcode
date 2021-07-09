function runningSum(nums: number[]): number[] {
    let sum = 0
    return nums.map(cur => sum += cur)
}

console.log(runningSum([1,2,3,4]))
console.log(runningSum([1,1,1,1,1]))
console.log(runningSum([3,1,2,10,1]))
