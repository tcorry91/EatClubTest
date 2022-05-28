//
//  TableViewCell.swift
//  EatClubTest
//
//  Created by Corry Timothy on 28/5/2022.
//

import UIKit


class ExtraCell: UITableViewCell {
    var searchDelegate: ExtraVC?
    override func layoutSubviews() {
        
        super.layoutSubviews()
        
        eventImage.topAnchor.constraint(equalTo: self.topAnchor, constant: 2).isActive = true
        eventImage.centerXAnchor.constraint(equalTo: self.centerXAnchor, constant: 0).isActive = true
        eventImage.widthAnchor.constraint(equalToConstant: 345).isActive = true
        eventImage.heightAnchor.constraint(equalToConstant: 175).isActive = true
        
        MainTitle.topAnchor.constraint(equalTo: self.topAnchor, constant: 182).isActive = true
        MainTitle.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 15).isActive = true
        MainTitle.widthAnchor.constraint(equalToConstant: 300).isActive = true
        
        OfferTitle.topAnchor.constraint(equalTo: self.topAnchor, constant: 195).isActive = true
        OfferTitle.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 10).isActive = true
        
        TypeTitle.topAnchor.constraint(equalTo: self.topAnchor,constant: 212).isActive = true
        TypeTitle.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 10).isActive = true
        
        OptionTitle.topAnchor.constraint(equalTo: self.topAnchor,constant: 229).isActive = true
        OptionTitle.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 10).isActive = true
        
        heartImage.topAnchor.constraint(equalTo: MainTitle.topAnchor,constant: 20).isActive = true
        heartImage.rightAnchor.constraint(equalTo: self.rightAnchor,constant: -30).isActive = true
        heartImage.heightAnchor.constraint(equalToConstant: 40).isActive = true
        heartImage.widthAnchor.constraint(equalToConstant: 40).isActive = true
    }
    
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: .subtitle, reuseIdentifier: reuseIdentifier)
        self.contentView.isUserInteractionEnabled = true
        
        addSubview(MainTitle)
        addSubview(eventImage)
        addSubview(OfferTitle)
        addSubview(TypeTitle)
        addSubview(OptionTitle)
        addSubview(heartImage)
        
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    let eventImage: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.layer.masksToBounds = true
        imageView.contentMode = .scaleAspectFill
        //            imageView.image = UIImage(named: "TEST1")
        imageView.layer.cornerRadius = 8
        return imageView
    }()
    
    let heartImage: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.layer.masksToBounds = true
        imageView.contentMode = .scaleAspectFill
        imageView.image = UIImage(named: "Heart")
        imageView.layer.cornerRadius = 8
        return imageView
    }()
    
    let MainTitle: UILabel = {
        let label = UILabel()
        label.font = UIFont.boldSystemFont(ofSize: 13)
        label.backgroundColor = .clear
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = UIColor.MainTitle
        label.layer.zPosition = 5
        label.textAlignment = .left
        return label
    }()
    
    
    lazy var MainTitle1: UITextView = {
        let label = UITextView()
        label.isEditable = false
        label.textColor = UIColor.MainTitle
        label.text = ""
        label.isHidden = false
        label.backgroundColor = UIColor.clear
        label.translatesAutoresizingMaskIntoConstraints = false
        label.layer.zPosition = 5
        label.textAlignment = .left
        label.font = UIFont.boldSystemFont(ofSize: 14)
        label.layer.zPosition = 19
        label.layer.cornerRadius = 5
        label.clipsToBounds = true
        label.sizeToFit()
        
        label.isScrollEnabled = false
        return label
    }()
    
    
    lazy var OfferTitle: UITextView = {
        let label = UITextView()
        label.isEditable = false
        label.textColor = .gray
        label.text = ""
        label.isHidden = false
        label.backgroundColor = UIColor.clear
        label.translatesAutoresizingMaskIntoConstraints = false
        label.layer.zPosition = 5
        label.textAlignment = .left
        label.font = UIFont(name: "Arial", size: 12)
        label.layer.zPosition = 19
        label.layer.cornerRadius = 5
        label.clipsToBounds = true
        label.sizeToFit()
        
        label.isScrollEnabled = false
        return label
    }()
    
    lazy var TypeTitle: UITextView = {
        let label = UITextView()
        label.isEditable = false
        label.textColor = .lightGray
        label.text = ""
        label.isHidden = false
        label.backgroundColor = UIColor.clear
        label.translatesAutoresizingMaskIntoConstraints = false
        label.layer.zPosition = 5
        label.textAlignment = .left
        label.font = UIFont(name: "Arial", size: 12)
        label.layer.zPosition = 19
        label.layer.cornerRadius = 5
        label.clipsToBounds = true
        label.sizeToFit()
        
        label.isScrollEnabled = false
        return label
    }()
    
    lazy var OptionTitle: UITextView = {
        let label = UITextView()
        label.isEditable = false
        label.textColor = .gray
        label.text = ""
        label.isHidden = false
        label.backgroundColor = UIColor.clear
        label.translatesAutoresizingMaskIntoConstraints = false
        label.layer.zPosition = 5
        label.textAlignment = .left
        label.font = UIFont(name: "Arial", size: 12)
        label.layer.zPosition = 19
        label.layer.cornerRadius = 5
        label.clipsToBounds = true
        label.sizeToFit()
        
        label.isScrollEnabled = false
        return label
    }()
    
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    
    
    
    
}
