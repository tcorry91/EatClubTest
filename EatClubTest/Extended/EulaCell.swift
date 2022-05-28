//
//  TableViewCell.swift
//  EatClubTest
//
//  Created by Corry Timothy on 28/5/2022.
//

import UIKit


class EulaCell: UITableViewCell {
    
    override func layoutSubviews() {
        
        super.layoutSubviews()
        
        
        logoText.topAnchor.constraint(equalTo: self.topAnchor,constant: -30).isActive = true
        logoText.centerXAnchor.constraint(equalTo: self.centerXAnchor,constant: 0).isActive = true
        logoText.widthAnchor.constraint(equalToConstant: 130).isActive = true
        logoText.heightAnchor.constraint(equalToConstant: 40).isActive = true
        
        
        ShareLabel.topAnchor.constraint(equalTo: self.topAnchor,constant: -15).isActive = true
        ShareLabel.rightAnchor.constraint(equalTo: self.rightAnchor,constant: -30).isActive = true
        
        FoodImage.topAnchor.constraint(equalTo: self.topAnchor,constant: -10).isActive = true
        FoodImage.leftAnchor.constraint(equalTo: self.leftAnchor, constant: -15).isActive = true
        FoodImage.rightAnchor.constraint(equalTo: self.rightAnchor, constant: 15).isActive = true
        FoodImage.heightAnchor.constraint(equalToConstant: 250).isActive = true
        
        SideMenu.topAnchor.constraint(equalTo: FoodImage.bottomAnchor, constant: -20).isActive = true
        SideMenu.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 0).isActive = true
        SideMenu.rightAnchor.constraint(equalTo: self.rightAnchor, constant: 0).isActive = true
        SideMenu.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        HIcons.topAnchor.constraint(equalTo: SideMenu.bottomAnchor, constant: 8).isActive = true
        HIcons.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 10).isActive = true
        HIcons.widthAnchor.constraint(equalToConstant: 50).isActive = true
        HIcons.heightAnchor.constraint(equalToConstant: 120).isActive = true
        
        LineOne.topAnchor.constraint(equalTo: SideMenu.bottomAnchor, constant: 0).isActive = true
        LineOne.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 0).isActive = true
        LineOne.rightAnchor.constraint(equalTo: self.rightAnchor, constant: 0).isActive = true
        LineOne.heightAnchor.constraint(equalToConstant: 1).isActive = true
        
        LineTwo.topAnchor.constraint(equalTo: HIcons.bottomAnchor, constant: 0).isActive = true
        LineTwo.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 15).isActive = true
        LineTwo.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -15).isActive = true
        LineTwo.heightAnchor.constraint(equalToConstant: 1).isActive = true
        
        TypeLabel.topAnchor.constraint(equalTo: LineOne.bottomAnchor, constant: 20).isActive = true
        TypeLabel.leftAnchor.constraint(equalTo: HIcons.rightAnchor, constant: 3).isActive = true
        
        OpenTime.topAnchor.constraint(equalTo: TypeLabel.bottomAnchor, constant: 15).isActive = true
        OpenTime.leftAnchor.constraint(equalTo: HIcons.rightAnchor, constant: 0).isActive = true
        OpenTime.widthAnchor.constraint(equalToConstant: 160).isActive = true
        OpenTime.heightAnchor.constraint(equalToConstant: 30).isActive = true
        
        OfferLabel.topAnchor.constraint(equalTo: TypeLabel.bottomAnchor, constant: 58).isActive = true
        OfferLabel.leftAnchor.constraint(equalTo: HIcons.rightAnchor, constant: 3).isActive = true
        
        DealsImage.topAnchor.constraint(equalTo: OfferLabel.bottomAnchor, constant: -40).isActive = true
        DealsImage.centerXAnchor.constraint(equalTo: self.centerXAnchor, constant: 0).isActive = true
        DealsImage.widthAnchor.constraint(equalToConstant: 320).isActive = true
        DealsImage.heightAnchor.constraint(equalToConstant: 350).isActive = true
    }
    
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: .subtitle, reuseIdentifier: reuseIdentifier)
        self.contentView.isUserInteractionEnabled = true
        
        addSubview(logoText)
        addSubview(ShareLabel)
        addSubview(FoodImage)
        addSubview(SideMenu)
        addSubview(HIcons)
        addSubview(LineOne)
        addSubview(LineTwo)
        addSubview(TypeLabel)
        addSubview(OpenTime)
        addSubview(OfferLabel)
        addSubview(DealsImage)
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    let OpenTime: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.layer.masksToBounds = true
        imageView.image = UIImage(named: "OpenTime")
        imageView.contentMode = .scaleAspectFit
        imageView.layer.zPosition = 100
        return imageView
    }()
    
    let DealsImage: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.layer.masksToBounds = true
        imageView.image = UIImage(named: "Deals")
        imageView.contentMode = .scaleAspectFit
        imageView.layer.zPosition = 100
        return imageView
    }()
    
    
    let logoText: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.layer.masksToBounds = true
        imageView.image = UIImage(named: "EatClubText")
        imageView.contentMode = .scaleAspectFit
        imageView.layer.zPosition = 100
        return imageView
    }()
    
    let SideMenu: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.layer.masksToBounds = true
        imageView.image = UIImage(named: "SideMenu")
        imageView.contentMode = .scaleAspectFit
        imageView.layer.zPosition = 100
        return imageView
    }()
    
    
    let HIcons: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.layer.masksToBounds = true
        imageView.image = UIImage(named: "H-Icons")
        imageView.contentMode = .scaleAspectFit
        imageView.layer.zPosition = 100
        return imageView
    }()
    
    let LineOne: UILabel = {
        let label = UILabel()
        label.font = UIFont.boldSystemFont(ofSize: 15)
        label.backgroundColor = .Line
        label.translatesAutoresizingMaskIntoConstraints = false
        label.layer.zPosition = 5
        label.textAlignment = .center
        return label
    }()
    
    let LineTwo: UILabel = {
        let label = UILabel()
        label.font = UIFont.boldSystemFont(ofSize: 15)
        label.backgroundColor = .Line
        label.translatesAutoresizingMaskIntoConstraints = false
        label.layer.zPosition = 5
        label.textAlignment = .center
        return label
    }()
    
    let OfferLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.boldSystemFont(ofSize: 12)
        label.backgroundColor = .clear
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = UIColor.MainTitle
        label.layer.zPosition = 5
        label.textAlignment = .center
        return label
    }()
    
    let TypeLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.boldSystemFont(ofSize: 12)
        label.backgroundColor = .clear
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = UIColor.MainTitle
        label.layer.zPosition = 5
        label.textAlignment = .center
        return label
    }()
    
    let ShareLabel: UILabel = {
        let label = UILabel()
        label.text = "Share"
        label.font = UIFont.boldSystemFont(ofSize: 15)
        label.backgroundColor = .clear
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = UIColor.MainTitle
        label.layer.zPosition = 5
        label.textAlignment = .center
        return label
    }()
    
    
    let FoodImage: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.layer.masksToBounds = true
        imageView.contentMode = .scaleAspectFit
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
