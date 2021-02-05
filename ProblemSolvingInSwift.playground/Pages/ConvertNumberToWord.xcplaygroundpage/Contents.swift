func convertTwoDigit(num:Int)->String {
    var resultString = ""
    let one = [ "", "one ", "two ", "three ", "four ",
    "five ", "six ", "seven ", "eight ",
    "nine ", "ten ", "eleven ", "twelve ",
    "thirteen ", "fourteen ", "fifteen ",
    "sixteen ", "seventeen ", "eighteen ",
    "nineteen " ]
    let two = [ "", "", "twenty ", "thirty ", "forty ",
    "fifty ", "sixty ", "seventy ", "eighty ",
    "ninety " ]
    if num <= 19 {
        resultString = resultString + one[num]
    } else {
        resultString = resultString + two[num/10] + one[num%10]
    }
    return resultString
}

func convertNumberToWord(num:Int)->String {
    var givenNum = num
    var sequence = [Int]()
    repeat {
        var digitsToConsider = 100
        
        if sequence.count == 1 {
            // To add hundred
            digitsToConsider = 10
        }
            
        let temp = givenNum % digitsToConsider
        sequence.append(temp)
        givenNum = givenNum / digitsToConsider
        
    } while givenNum > 0
    
    let three = ["","hundred ","thousand ","lakh ","crore "]
    var result = ""
    for (index,item) in sequence.enumerated() {
        
        let temp = convertTwoDigit(num: item)
        result = temp + three[item > 0 ? index : 0] + result
    }
    return result
}
print(convertNumberToWord(num: 0999))
