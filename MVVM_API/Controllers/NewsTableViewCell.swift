//
//  NewsTableViewCell.swift
//  MVVM_API
//
//  Created by Sinan Kulen on 1.11.2021.
//

import UIKit

class NewsTableViewCell: UITableViewCell {
    
    @IBOutlet weak var idLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    
    var news : Petition? {
        didSet {
            if let idEmp = news?.id {
                idLabel.text = String(idEmp)
            }
            titleLabel.text = news?.newsTitle
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
