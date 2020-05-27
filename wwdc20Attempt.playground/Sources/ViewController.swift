import Foundation
import UIKit

extension Double {
    var clean: String {
        return self.truncatingRemainder(dividingBy: 1) == 0 ? String(format: "%.0f", self) : String(self)
    }
    
}
 public class ViewController : UIViewController {
    let brain = Brain()
    let topLabel = UILabel()
    public var aTextField =   UITextField()
    public var firstSignField = UITextField()
    public var bTextField = UITextField()
    public var secondSignField =  UITextField()
    public var cTextField = UITextField()
    var equationLabel1 = UILabel()
    var equationLabel2 = UILabel()
    var equationLabel3 = UILabel()
    var errorLabel = UILabel()
    let outputTextView = UITextView()
    let solveButton = UIButton(type: .roundedRect)
    //let resetButton = UIButton(type: .roundedRect)
    var borderColor : UIColor = UIColor(red: 0.85, green: 0.85, blue: 0.85, alpha: 1.0)
    open override func viewDidLoad() {
        
        //Configure view
        
        self.view.backgroundColor = .white
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "background.jpg")!)
        
        //Configure LABELS
        
        //Configure topLabel
        
        topLabel.frame = CGRect(x: 10, y: 10, width: 350, height: 25)
        topLabel.text = "This is quadratic equation solver!"
        topLabel.textAlignment = .center
        topLabel.textColor = .white
        topLabel.font = UIFont.systemFont(ofSize: 24)
        self.view.addSubview(topLabel)
        
        //Configure errorLabel
        errorLabel.frame = CGRect(x: 10, y: 115, width: 350, height: 40)
        errorLabel.text = "This is quadratic equation solver!"
        errorLabel.textColor = .red
        errorLabel.isHidden = true
        errorLabel.adjustsFontSizeToFitWidth = true
        errorLabel.textAlignment = .center
        errorLabel.font = UIFont.systemFont(ofSize: 22)
        self.view.addSubview(errorLabel)
        
        //coinfigure equationLabel2
        equationLabel2.frame = CGRect(x: 75, y: 70, width: 40, height: 40)
        equationLabel2.font = UIFont.systemFont(ofSize: 28)
        equationLabel2.textColor = .white
        equationLabel2.text = "X²"
        self.view.addSubview(equationLabel2)
        
        //Configure equationLabel
        
        equationLabel1.frame = CGRect(x: 310, y: 80, width: 50, height: 25)
        equationLabel1.text = "= 0"
        equationLabel1.font = UIFont.systemFont(ofSize: 28)
        equationLabel1.textAlignment = .center
        equationLabel1.textColor = .white
        self.view.addSubview(equationLabel1)
        
        //configure equationLabel3
        equationLabel3.frame = CGRect(x: 195, y: 70, width: 40, height: 40)
        equationLabel3.font = UIFont.systemFont(ofSize: 28)
        equationLabel3.textColor = .white
        equationLabel3.text = "X"
        self.view.addSubview(equationLabel3)
        
        //Configure TEXT FIELDS
        
        //Configure firstTextField
        
        aTextField.frame = CGRect(x: 30, y: 70, width: 40, height: 40)
        aTextField.placeholder = "a"
        aTextField.autocorrectionType = .no
        aTextField.adjustsFontSizeToFitWidth = true
        aTextField.textAlignment = .center
        aTextField.layer.cornerRadius = 5
        aTextField.font = UIFont.systemFont(ofSize: 24)
        aTextField.backgroundColor = .white
        aTextField.isUserInteractionEnabled = false
        self.view.addSubview(aTextField)
        
        
        //Configure second text field
        
        firstSignField.frame = CGRect(x: 105, y: 70, width: 40, height: 40)
        firstSignField.placeholder = "±"
        firstSignField.adjustsFontSizeToFitWidth = true
        firstSignField.textAlignment = .center
        firstSignField.font = UIFont.systemFont(ofSize: 24)
        //secondTextField.isEditable = false
        firstSignField.layer.cornerRadius = 5
        firstSignField.backgroundColor = .white
        firstSignField.isUserInteractionEnabled = false
        self.view.addSubview(firstSignField)
        
        //Configure third text field
        
        bTextField.frame = CGRect(x: 150, y: 70, width: 40, height: 40)
        bTextField.placeholder = "b"
        bTextField.textAlignment = .center
        bTextField.adjustsFontSizeToFitWidth = true
        bTextField.font = UIFont.systemFont(ofSize: 24)
        //secondTextField.isEditable = false
        bTextField.layer.cornerRadius = 5
        bTextField.backgroundColor = .white
        bTextField.isUserInteractionEnabled = false
        self.view.addSubview(bTextField)
        
        //Configure fourTextField
        
        secondSignField.frame = CGRect(x: 220, y: 70, width: 40, height: 40)
        secondSignField.placeholder = "±"
        secondSignField.textAlignment = .center
        secondSignField.adjustsFontSizeToFitWidth = true
        secondSignField.font = UIFont.systemFont(ofSize: 24)
        //secondTextField.isEditable = false
        secondSignField.layer.cornerRadius = 5
        secondSignField.backgroundColor = .white
        secondSignField.isUserInteractionEnabled = false
        self.view.addSubview(secondSignField)
        
        //Configure sixTextField
        cTextField.frame = CGRect(x: 265, y: 70, width: 40, height: 40)
        cTextField.backgroundColor = .white
        cTextField.font = UIFont.systemFont(ofSize: 24)
        cTextField.textAlignment = .center
        cTextField.layer.cornerRadius = 5
        cTextField.adjustsFontSizeToFitWidth = true
        cTextField.textColor = .black
        cTextField.isUserInteractionEnabled = false
        cTextField.placeholder = "c"
        self.view.addSubview(cTextField)
        
        
        //Configure outputTextView
        outputTextView.frame = CGRect(x: 13, y: 160, width: 350, height:400)
        outputTextView.isEditable = false
        outputTextView.textAlignment = .left
        outputTextView.layer.borderWidth = 0.5
        //outputTextView.sizeToFit()
        outputTextView.layer.borderColor = borderColor.cgColor
        outputTextView.layer.cornerRadius = 5.0
        outputTextView.font = UIFont.systemFont(ofSize: 24)
        //let verticalIndicator: UIImageView = (outputTextView.subviews[(outputTextView.subviews.count - 1)] as! UIImageView)
        //verticalIndicator.backgroundColor = UIColor(red: 211/255.0, green: 138/255.0, blue: 252/255.0, alpha: 1)
        outputTextView.text = ""
        outputTextView.textColor = .white
        outputTextView.backgroundColor = .clear
        self.view.addSubview(outputTextView)
        
        //Configure solveButton
        solveButton.frame = CGRect(x: 13, y: 590, width: 350, height:50)
        solveButton.backgroundColor = .white
        solveButton.layer.cornerRadius = 5
        solveButton.setTitle("Solve it!", for: .normal)
        solveButton.setTitleColor(.black, for: .normal)
        solveButton.addTarget(self, action: #selector(solveAction), for: .touchUpInside)
        self.view.addSubview(solveButton)
        
        
        self.view = view
    }
    func checkEquation() -> Bool {
        var checkResult:Bool = true
        //        let aviableCharsForA = CharacterSet(charactersIn: "-123456789")
        //        let aviableCharsForOther = CharacterSet(charactersIn: "1234567890")
        //        let aviableCharsForSign = CharacterSet(charactersIn: "+-")
        let aStringValue = brain.checkForNil(ourText: aTextField.text)
        let bStringValue = brain.checkForNil(ourText: bTextField.text)
        let cStringValue = brain.checkForNil(ourText: cTextField.text)
        let firstSignValue = brain.checkForNil(ourText: firstSignField.text)
        let secondSignValue = brain.checkForNil(ourText: secondSignField.text)
          
        if brain.checkIfFirstCharIs0(textFieldHere: aStringValue) {
            
            errorLabel.text = "a text field is equal to 0"
            errorLabel.isHidden = false
            checkResult = false
        }
        
        if aStringValue.isEmpty || bStringValue.isEmpty || cStringValue.isEmpty || firstSignValue.isEmpty || secondSignValue.isEmpty{
            errorLabel.text = "One of the textFields is empty"
            errorLabel.isHidden = false
            checkResult = false
        }
        if brain.checkForOnlyNumbers(textFieldHere: aStringValue) || brain.checkForOnlyNumbers(textFieldHere: bStringValue) || brain.checkForOnlyNumbers(textFieldHere: cStringValue){
            if  aStringValue.contains(",") || bStringValue.contains(",") || cStringValue.contains(",") {
                errorLabel.text = "Please, use . instead of ,"
                errorLabel.isHidden = false
                checkResult = false
            }else {
                errorLabel.text = "Please, check the correctness of text fields"
                errorLabel.isHidden = false
                checkResult = false
            }

        }
        
        if brain.checkForOnlyPlusAndMinus(textFieldHere: firstSignValue) || brain.checkForOnlyPlusAndMinus(textFieldHere: secondSignValue) {
            errorLabel.text = "Use only + - signs at the signs fields"
            errorLabel.isHidden = false
            checkResult = false
        }
        
        if brain.checkForWhiteSpaces(ourText: firstSignValue) || brain.checkForWhiteSpaces(ourText:secondSignValue) || brain.checkForWhiteSpaces(ourText: bStringValue) || brain.checkForWhiteSpaces(ourText:aStringValue) || brain.checkForWhiteSpaces(ourText: cStringValue) {
            errorLabel.text = "Don't use white spaces"
            errorLabel.isHidden = false
            checkResult = false
        }
        
        if brain.checkIfMoreThanOnePlusOrMinus(textFieldHere: firstSignValue) || brain.checkIfMoreThanOnePlusOrMinus(textFieldHere: secondSignValue) //|| brain.checkIfMoreThanOnePlusOrMinus(textFieldHere: bTextField) || brain.checkIfMoreThanOnePlusOrMinus(textFieldHere:aTextField) || brain.checkIfMoreThanOnePlusOrMinus(textFieldHere: cTextField)
        {
            errorLabel.text = "Use only one + - sign"
            errorLabel.isHidden = false
            checkResult = false
        }
        return checkResult
    }
    @objc func solveAction(_ sender: UIButton) {
        
        if checkEquation() {
            
            
            
            let aStringValue = brain.checkForNil(ourText: aTextField.text)
            let bStringValue = brain.checkForNil(ourText: bTextField.text)
            let cStringValue = brain.checkForNil(ourText: cTextField.text)
            let firstSignValue = brain.checkForNil(ourText: firstSignField.text)
            let secondStringValue = brain.checkForNil(ourText: secondSignField.text)
            
            let aDouble = Double(aStringValue)
            var bDouble = Double(bStringValue)
            var cDouble = Double(cStringValue)
            var discriminant: Double = 0.0
            
            if bDouble! < Double(0) {
                if firstSignValue == "-" {
                    bDouble! = abs(bDouble!)
                }
            } else if bDouble! > Double(0) {
                if firstSignValue == "-" {
                    bDouble! = (0 - bDouble!)
                }
            }
            if cDouble! < Double(0) {
                if secondStringValue == "-" {
                    cDouble! = abs(cDouble!)
                }
            }else if cDouble! > Double(0) {
                if secondStringValue == "-" {
                    cDouble! = (0 - cDouble!)
                }
            }
            outputTextView.text = "First of all we need to figure out what is a, b and c \n"
            outputTextView.text += "a is \(aDouble!.clean) \n"
            outputTextView.text += "b is \(bDouble!.clean) \n"
            outputTextView.text += "c is \(cDouble!.clean) \n"
            outputTextView.text += "Now we know all values, and then we need use discriminant \n"
            outputTextView.text += "D = b² - 4ac \n"

            
            
            discriminant = bDouble!*bDouble! - 4*aDouble!*cDouble!
            outputTextView.text += "D = \((bDouble! * bDouble!).clean) - 4*\((aDouble!).clean) * \((cDouble!).clean)\n"
            outputTextView.text += "D = \(discriminant.clean)\n"
            if discriminant < 0 {
                outputTextView.text += "Discriminant smaller than 0, so no real roots there"
            }
            if discriminant == 0 {
                let answer = ((0 - bDouble!) / (2*aDouble!))
                outputTextView.text += "Discriminant equal to 0, so we need to use this formula x = -b/2a \n"
                outputTextView.text += "x = \((0-bDouble!).clean)/2*\(aDouble!.clean) \n"
                outputTextView.text += "x = \(answer.clean) \n"
            }
            if discriminant > 0 {
                var firstAnswer = (-bDouble! - sqrt(discriminant))
                var secondAnswer = (-bDouble! + sqrt(discriminant))
                firstAnswer /=  2*aDouble!
                secondAnswer /= 2*aDouble!
                outputTextView.text += "Discriminant bigger than 0, so we have two roots \n"
                outputTextView.text += "x₁ = (-b - √D) / 2*a \n"
                outputTextView.text += "x₂ = (-b + √D) / 2*a \n"
                outputTextView.text += "x₁ = (\((-bDouble!).clean) - \((sqrt(discriminant)).clean)) / 2*\((aDouble!).clean)\n"
                outputTextView.text += "x₂ = (\((-bDouble!).clean) + \((sqrt(discriminant)).clean)) / 2*\(aDouble!.clean)\n"
                outputTextView.text += "x₁ = \(firstAnswer.clean)\n"
                outputTextView.text += "x₂ = \(secondAnswer.clean)\n"
            }
            
        }
    }
}
