
function findTheDistanceValue(arr1: number[], arr2: number[], d: number): number {
    return arr1.reduce((result, i) => (result + (arr2.some(j => Math.abs(i - j) <= d) ? 0 : 1)), 0)
}

console.log(findTheDistanceValue([4,5,8], [10,9,1,8], 2) == 2)
console.log(findTheDistanceValue([1,4,2,3], [-4,-3,6,10,20,30], 3) == 2)
console.log(findTheDistanceValue([2,1,100,3], [-5,-2,10,-3,7], 6) == 1)
