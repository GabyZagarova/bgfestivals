//
//  EventTableViewCell.swift
//  bgfestivals
//
//  Created by Gabriela Zagarova on 3/14/17.
//  Copyright © 2017 Gabriela Zagarova. All rights reserved.
//

import UIKit

class EventTableViewCell: UITableViewCell {

    @IBOutlet weak var eventImageView: UIImageView!
    @IBOutlet weak var eventTitleLabel: UILabel!
    @IBOutlet weak var eventDateLabel: UILabel!
    @IBOutlet weak var eventDescriptionLabel: UILabel!
    
    override func prepareForReuse() {
        super.prepareForReuse()
        imageView?.image = nil
    }
    
    func configure(with event: Event?) {
        guard let event = event else {
            return
        }
        eventTitleLabel?.text = event.title
        eventDateLabel?.text = (event.startDate! as Date).toString()
        eventDescriptionLabel?.text = event.eventDescription

        if event.isSelected {
            accessoryType = UITableViewCellAccessoryType.checkmark
        } else {
            accessoryType = UITableViewCellAccessoryType.disclosureIndicator
        }
    }

}
