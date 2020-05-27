
import PlaygroundSupport
public let VC = ViewController()
//: ## You didn't complete the quadratic equation theme at the school before distance education? Or you simply want to know how to solve them? In this playground, you will teach how to solve the quadratic equation, and check your solution with the solver app!
/*:
 ## This is how you will feel yourself after playground
 ![This is how you will feel yourself after playground](einstein.jpg)
 # This is the standard form of the quadratic equation
 ## ax² + bx + c = 0
 - This is what it means:
    - a, b and c are known values. a can't be 0.
    - x it's is variable, x can be any symbol but by default use x
 
 - For example in this equation 100x² - 97x - 197 = 0
    - a is equal to 100
    - b is equal to -97
    - c is equal to -197
 
 - Note:
  If the value of a is 1, you don't need to write 1x² , write x².Same thing with b, if value of b is 1 you can write x. But if you will write 1x² or 1x it's won't be error
 
 
 ## Ok, now about the discriminant formula.
 ## Before we can start, make sure that you can figure out where is a, b and c in this equation x² - 12x - 13 = 0
 - Hint:
    - a = 1
    - b = -12
    - c = -13
 ## Discriminant formula is D = b² - 4ac
 This is difference cases of D value
 - D is smaller than 0
    - No real roots here
 - D is equal to 0
    - You need to use this formula
        - x = -b / 2*a
 - D is bigger than 0
    - You need to use two formulas
        - x₁ = -b - √D / 2 * a
        - x₂ = -b + √D / 2 * a
 
 - Note:
 If you have equation like ax² + bx = 0 or ax² + c = 0 you can solve through discriminant, simple add missing value via adding + 0. For example ax² + bx = 0 is ax² + bx + 0 = 0 and  ax² + c = 0 is ax² + 0x + c = 0
 
 ## That's all, pretty easy isn't it?
 
 ## Try to use my equation solver, to understand how you need to solve a quadratic equation

 - Note:
 I said that you can use x² instead of 1x² and x instead of 1x, but in the solver you need to specify the value of a and b.
 
 ##
 
 - Note:
 This app is extremely accurate, for example, √3 here is 1.7320508075688772
 
 ## If you want to solve another equation, simple change values in the variables, and restart playground
    - For exapmple try this equations
       - x² + 2x + 5 = 0
       - 16x² - 8x + 1 = 0
       - x² - 13x + 12 = 0
 */

VC.aTextField.text = "1" //Put your a value here
VC.firstSignField.text = "-" //Put here plus or minus
VC.bTextField.text = "6" //Put your b value here
VC.secondSignField.text = "+" //Put here plus or minus
VC.cTextField.text = "0" // Put your c value here

PlaygroundPage.current.liveView = VC
