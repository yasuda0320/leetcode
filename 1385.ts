function findTheDistanceValue(arr1: number[], arr2: number[], d: number): number {
    let result = arr1.length
    for (let i of arr1) {
        for (let j of arr2) {
            if (Math.abs(i - j) <= d) {
                result--
                break
            }
        }
    }
    return result
}

console.log(findTheDistanceValue([4,5,8], [10,9,1,8], 2) == 2)
console.log(findTheDistanceValue([1,4,2,3], [-4,-3,6,10,20,30], 3) == 2)
console.log(findTheDistanceValue([2,1,100,3], [-5,-2,10,-3,7], 6) == 1)
