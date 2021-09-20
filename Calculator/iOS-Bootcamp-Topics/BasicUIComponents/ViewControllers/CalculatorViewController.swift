//
//  CalculatorViewController.swift
//  BasicUIComponents
//
//  Created by Semih Emre ÜNLÜ on 11.09.2021.
//

import UIKit

class CalculatorViewController: UIViewController {

    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var historyLabel: UILabel!
    
    var first:Double = 0.0
    var second:Double = 0.0
    var operation:String = "+"
    
    //@IBOutlet var digitButtons: [UIButton]!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
        
    @IBAction func digitButtonTapped(_ sender: UIButton) {
        let calculate = Calculator()
 
        let digit = String(sender.tag)
        let displayText = resultLabel.text ?? ""
        if (sender.tag == -1){
            //Clear
            resultLabel.text = ""
            historyLabel.text = ""
            first = 0
            second = 0
        }else if(sender.tag == -4) {
            //Bölme
            self.first = NSString(string: resultLabel.text ?? "0").doubleValue
            operation = "/"
            resultLabel.text = ""
            historyLabel.text?.append("/")
        }else if(sender.tag == -5) {
            //çarpım
            self.first = NSString(string: resultLabel.text ?? "0").doubleValue
            operation = "*"
            resultLabel.text = ""
            historyLabel.text?.append("X")
        }else if(sender.tag == -6) {
            //çıkarma
            self.first = NSString(string: resultLabel.text ?? "0").doubleValue
            operation = "-"
            resultLabel.text = ""
            historyLabel.text?.append("-")
        }else if(sender.tag == -7) {
            //toplama
            self.first = NSString(string: resultLabel.text ?? "0").doubleValue
            operation = "+"
            resultLabel.text = ""
            historyLabel.text?.append("+")
        }else if(sender.tag == -8) {
            //eşittir
            historyLabel.text?.append("=")
            print(self.first)
            print(self.second)
            second = NSString(string: resultLabel.text ?? "0").doubleValue
            resultLabel.text = "\(calculate.proces(first: self.first, second: self.second, operation: operation))"
            historyLabel.text?.append(resultLabel.text ?? "")
            
        }else{
            resultLabel.text = displayText + digit
            historyLabel.text = historyLabel.text! + digit
        }
  
        
   
    }
    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
