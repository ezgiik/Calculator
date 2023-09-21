//
//  ViewController.swift
//  Homework5
//
//  Created by EZGİ KARABAY on 20.09.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var labelOperation: UILabel!
    @IBOutlet weak var labelResult: UILabel!
    
    var operation = ""
    var addition = 0
    var array = [0]
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        self.navigationItem.title = "Calculator"
        let appearance = UINavigationBarAppearance()
        
        appearance.backgroundColor = UIColor(named:"yaziRenk1" )
        appearance.titleTextAttributes = [.foregroundColor: UIColor(named: "yaziRenk2")!, .font: UIFont(name: "Gloock-Regular", size: 22)!]
                                          
        navigationController?.navigationBar.barStyle = .black
        
        navigationController?.navigationBar.standardAppearance = appearance
        navigationController?.navigationBar.compactAppearance = appearance
        navigationController?.navigationBar.scrollEdgeAppearance = appearance
        
        clearAll()
        
    }
    
    func clearAll(){
        operation = ""
        labelOperation.text = ""
        labelResult.text = "0"
        addition = 0
        array = []
    }
    
    func addToOperation(value: String) {
        
        if !operation.isEmpty && !array.isEmpty {
                operation = ""
                addition = 0
                array = []
            }
            
            operation += value
            labelOperation.text = operation
    }
    
    func removeLastValue(){
        if !operation.isEmpty{
            operation.removeLast()
        }else{
            clearAll()
        }
        labelOperation.text = operation
        
        
    }

    @IBAction func buttonZero(_ sender: Any) {
       addToOperation(value: "0")
    }
    
    @IBAction func buttonOne(_ sender: Any) {
        addToOperation(value: "1")
       
    }
    
    @IBAction func buttonTwo(_ sender: Any) {
        addToOperation(value: "2")
    }
    
    @IBAction func buttonThree(_ sender: Any) {
        addToOperation(value: "3")
    }
    
    @IBAction func buttonFour(_ sender: Any) {
        addToOperation(value: "4")
    }
    
    @IBAction func buttonFive(_ sender: Any) {
        addToOperation(value: "5")
    }
    
    @IBAction func buttonSix(_ sender: Any) {
        addToOperation(value: "6")
    }
    
    @IBAction func buttonSeven(_ sender: Any) {
        addToOperation(value: "7")
    }
    
    @IBAction func buttonEight(_ sender: Any) {
        addToOperation(value: "8")
    }
    
    @IBAction func buttonNine(_ sender: Any) {
        addToOperation(value: "9")
    }
    
    @IBAction func buttonDel(_ sender: Any) {
        removeLastValue()
    }
    
    @IBAction func buttonClearAll(_ sender: Any) {
        clearAll()
    }
    
    @IBAction func buttonPlus(_ sender: Any) {
        if operation.last == "+"{
            addToOperation(value: "")
        }else {
            addToOperation(value: "+")
        }
        
    }
    
    @IBAction func buttonEquals(_ sender: Any) {
        let splitValue = operation.components(separatedBy: "+")
        array = splitValue.compactMap{ Int($0) }
        
        //if !operation.isEmpty{
            //addition = 0
            
            for a in array{
                addition += a 
            }
            labelResult.text = String(addition)
        addToOperation(value: operation)
        }
    
        //operation = ""
        }
    
    
    
    


