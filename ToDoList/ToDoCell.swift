//
//  ToDoCell.swift
//  ToDoList
//
//  Created by Дмитрий Имаев on 14.03.2023.
//

import UIKit

protocol ToDoCellProtocol: AnyObject {
    func checkmarkTapped(sender: ToDoCell)
}


class ToDoCell: UITableViewCell{

    @IBOutlet weak var isCompleteButton: UIButton!
    @IBOutlet weak var titleLabel: UILabel!
    
    weak var delegate: ToDoCellProtocol?
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }

    @IBAction func completeButtonTapped(_ sender: UIButton) {
        delegate?.checkmarkTapped(sender: self)
    }
    
    
}
