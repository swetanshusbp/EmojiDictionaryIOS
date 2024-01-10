//
//  EmojiTableViewCell.swift
//  EmojiDictionary
//
//  Created by user1 on 09/01/24.
//

import UIKit

class EmojiTableViewCell: UITableViewCell {
    @IBOutlet weak var Symbol: UILabel!
    
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
        
    }
    
    func update(with emoji:Emoji) {
        Symbol.text  = emoji.symbol
        nameLabel.text = emoji.name
        descriptionLabel.text = emoji.description
        
    }

}
