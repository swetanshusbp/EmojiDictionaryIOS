//
//  AddEditEmojiTableViewController.swift
//  EmojiDictionary
//
//  Created by user1 on 09/01/24.
//

import UIKit

class AddEditEmojiTableViewController: UITableViewController {

    var emoji: Emoji?
    
    init?(coder : NSCoder , emoji : Emoji?){
        self.emoji = emoji
        super.init(coder: coder)
    }
    
    required init?(coder :NSCoder){
        fatalError("init(coder:) has not been implemented")
    }
    

    
    @IBOutlet weak var SymbolTextField: UITextField!
    @IBOutlet weak var NameTextField: UITextField!
    @IBOutlet weak var DescriptionTextField: UITextField!
    @IBOutlet weak var UsageTextField: UITextField!
    
    @IBOutlet weak var SaveButton: UIBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let Emoji = emoji {
            SymbolTextField.text = Emoji.symbol
            
            NameTextField.text = Emoji.name
            DescriptionTextField.text = Emoji.description
            UsageTextField.text = Emoji.usage
        }
        else{
            title = "Add Emoji"
        }
        updateSaveButton()
        
     
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
    func updateSaveButton(){
        let symbolText =  SymbolTextField.text ?? ""
        let nameText  = NameTextField.text ?? ""
        let descriptionText = DescriptionTextField.text ?? ""
        let usageText = UsageTextField.text ?? ""
        
        SaveButton.isEnabled = !symbolText.isEmpty && !nameText.isEmpty && !descriptionText.isEmpty && !usageText.isEmpty
    }
    
    @IBAction func textEditingChanged(_ sender : UITextField){
        updateSaveButton()
    }

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard segue.identifier == "saveUnwind" else {return}
        
        let symbol = SymbolTextField.text!
        let name = NameTextField.text!
        let description = DescriptionTextField.text!
        let usage = UsageTextField.text!
        emoji = Emoji(symbol: symbol, name: name, description: description, usage: usage)
    }
    
    

    }
    
 
   

