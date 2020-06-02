import UIKit

func makeCahngeAsString(fromAmount: Double, withCost: Double) {
    
    let changeTotal = Double(round((fromAmount - withCost) * 100) / 100)
    
    let dollarAmount = Int(changeTotal)
    let dollarsOnly = Double(dollarAmount)
    let looseChange = Double(round((changeTotal - dollarsOnly) * 100) / 100)
    let quarters = Int((looseChange / 0.25).rounded(.down))
    let remainderAfterQuarters = looseChange.truncatingRemainder(dividingBy: 0.25)
    let dimes = Int((remainderAfterQuarters / 0.10).rounded(.down))
    let remainderAfterDimes = remainderAfterQuarters.truncatingRemainder(dividingBy: 0.10)
    let nickels = Int((remainderAfterDimes / 0.05).rounded(.down))
    let remainderAfterNickels = remainderAfterDimes.truncatingRemainder(dividingBy: 0.05)
    let pennies = Int((remainderAfterNickels / 0.01).rounded(.down))
    
    
    print("Your change is $\(changeTotal). That is \(dollarAmount.description) dollars, \(quarters.description) quarters, \(dimes.description) dimes, \(nickels) nickels, \(pennies) pennies")
    
}

makeCahngeAsString(fromAmount: 10, withCost: 6.56)















// Test Cases
//makeChangeAsString(fromAmount: 10.00, withCost: 2.38) // returns "Your change is $7.62. That is 7 dollars, 2 quarters, 1 dime, 0 nickels and 2 pennies."
//makeChangeAsString(fromAmount: 5.00, withCost: 2.15)  // returns "Your change is $2.85. That is 2 dollars, 3 quarters, 1 dime, 0 nickels and 0 pennies."
//makeChangeAsString(fromAmount: 1.00, withCost: 2.38)  // returns "You didn't pay enough! You still owe $1.38. That is 1 dollar, 1 quarter, 1 dime, 0 nickels and 3 pennies."
//makeChangeAsString(fromAmount: 10.00, withCost: 8.00) // returns "Your change is $2.0. That is 2 dollars, 0 quarters, 0 dimes, 0 nickels and 0 pennies."
//makeChangeAsString(fromAmount: 1.00, withCost: 0.50)  // returns "Your change is $0.5. That is 0 dollars, 2 quarters, 0 dimes, 0 nickels and 0 pennies."
//makeChangeAsString(fromAmount: 1.00, withCost: 0.80)  // returns "Your change is $0.2. That is 0 dollars, 0 quarters, 2 dimes, 0 nickels and 0 pennies."
//makeChangeAsString(fromAmount: 1.00, withCost: 0.95)  // returns "Your change is $0.05. That is 0 dollars, 0 quarters, 0 dimes, 1 nickel and 0 pennies."
//makeChangeAsString(fromAmount: 1.00, withCost: 0.96)  // returns "Your change is $0.04. That is 0 dollars, 0 quarters, 0 dimes, 0 nickels and 4 pennies."
