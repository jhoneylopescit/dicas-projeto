//
//  TableViewControllerCell.swift
//  DicasProjeto
//
//  Created by Jhoney da Silva Lopes on 11/10/17.
//  Copyright © 2017 Jhoney da Silva Lopes. All rights reserved.
//

import UIKit

protocol TableViewCellButtonDelegate: class {
    func expandNow()
}

class TableViewCell: UITableViewCell {
    
    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var subTitle: UILabel!
    @IBOutlet weak var expand: UIButton!
    
    weak var delegate: TableViewCellButtonDelegate?
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    @IBAction func expandNow(_ sender: Any) {
        delegate?.expandNow()                
    }
    
}
