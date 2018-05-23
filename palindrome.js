function isPalindrome(word){
  newArr = word.split("")
  otherArr = []
  var index = 0
  for (var i = newArr.length; i > 0; i--){
    otherArr[index] = newArr[i-1]
    index++
  }
   reversedWord = otherArr.join("")
  if (reversedWord == word)
    return true
  else
    return false
}
