//
//  StringCell.swift
//  NoStoryboard
//
//  Created by River Camacho on 8/22/21.
//

import UIKit

class StringCell: UITableViewCell {
    
    var stringTitleLabel = UILabel()
    
    var commentIcon = UIImageView()
    
    var control = UISegmentedControl()

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        addSubview(stringTitleLabel)
        addSubview(commentIcon)
        addSubview(control)
        configureTitleLabel()
        setTitleLabelConstraints()
        configureCommentIcon()
        setCommentIconConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func set(string: tableLabel) {
        stringTitleLabel.text = string.title
        commentIcon.image = string.comment
        let commentImage = commentIcon.image?.withRenderingMode(.alwaysTemplate)
            commentIcon.image = commentImage
        commentIcon.tintColor = UIColor.systemOrange
    }
    
    func configureTitleLabel() {
        stringTitleLabel.numberOfLines = 0
        stringTitleLabel.adjustsFontSizeToFitWidth = true
    }
    
    func setTitleLabelConstraints() {
        stringTitleLabel.translatesAutoresizingMaskIntoConstraints = false
        stringTitleLabel.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        stringTitleLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 30).isActive = true
        stringTitleLabel.heightAnchor.constraint(equalToConstant: 60).isActive = true
        stringTitleLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -12).isActive = true
    }
    
    func configureCommentIcon() {
        commentIcon.clipsToBounds = true
        
    }
    
    func setCommentIconConstraints() {
        commentIcon.translatesAutoresizingMaskIntoConstraints = false
        commentIcon.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        commentIcon.heightAnchor.constraint(equalToConstant: 25).isActive = true
        commentIcon.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -200).isActive = true
        commentIcon.widthAnchor.constraint(equalToConstant: 25).isActive = true
    }
}
