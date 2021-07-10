/**
 * @param {number} columnNumber
 * @return {string}
 */
function convertToTitle(columnNumber) {
  const divmod = (x, y) => [Math.floor(x / y), x % y];
  const nLetters = 26;
  const atSign = 64;
  let sheet = "";
  let r;
  
  while (columnNumber > 0) {
    [columnNumber, r] = divmod(columnNumber, nLetters);
    if (r === 0) {
      sheet = "Z" + sheet;
      columnNumber--;
    } else {
      sheet = String.fromCharCode(atSign + r) + sheet;
    }
  }
  return sheet;
}

console.log(convertToTitle(1) == "A");
console.log(convertToTitle(28) == "AB");
console.log(convertToTitle(701) == "ZY");
console.log(convertToTitle(2147483647) == "FXSHRXW");
