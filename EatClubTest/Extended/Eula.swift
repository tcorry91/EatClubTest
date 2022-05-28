//
//  TableViewController.swift
//  EatClubTest
//
//  Created by Corry Timothy on 28/5/2022.
//


import UIKit



class Eula: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var tableView: UITableView  =   UITableView()
    let homeCellID = "homeCellID"
    let homeCellID1 = "homeCellID1"
    var ExtrasSelected = ""
    var namePassed = ""
    var imagePassed = ""
    var typePassed = ""
    var optionsPassed = ""
    var offerPassed = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("here are the passed strings", "n", namePassed, "i", imagePassed, "t", typePassed, "o", optionsPassed, "op", offerPassed)
        
        view.backgroundColor = UIColor.white
        view.addSubview(logoText)
        
        tableView.delegate      =   self
        tableView.dataSource    =   self
        tableView.layer.zPosition = 100
        self.view.addSubview(self.tableView)
        tableView.register(EulaCell.self, forCellReuseIdentifier: homeCellID)
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.separatorStyle = UITableViewCell.SeparatorStyle.singleLine
        setUpTableView()
        tableView.alwaysBounceVertical = false
    }
    
    func setUpTableView() {
        
        logoText.topAnchor.constraint(equalTo: view.topAnchor,constant: 57).isActive = true
        logoText.centerXAnchor.constraint(equalTo: view.centerXAnchor,constant: 0).isActive = true
        logoText.widthAnchor.constraint(equalToConstant: 130).isActive = true
        logoText.heightAnchor.constraint(equalToConstant: 40).isActive = true
        
        tableView.topAnchor.constraint(equalTo: view.topAnchor, constant: 0).isActive = true
        tableView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 0).isActive = true
        tableView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: 0).isActive = true
        tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0).isActive = true
        
        tableView.backgroundColor = UIColor.white
        
        
    }
    
    
    
    let logoText: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.layer.masksToBounds = true
        imageView.image = UIImage(named: "EatClubText")
        imageView.contentMode = .scaleAspectFit
        imageView.layer.zPosition = 100
        return imageView
    }()
    
    
    
    var emptyArray1 = [1]
    var emptyArray = ["potato"]
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: homeCellID, for: indexPath) as! EulaCell
        
        var emptyArray1 = emptyArray[indexPath.row]
        cell.contentView.isUserInteractionEnabled = false
        cell.selectionStyle = .none
        cell.FoodImage.image = UIImage(named: imagePassed)
        cell.TypeLabel.text = typePassed
        cell.OfferLabel.text = offerPassed
        
        return cell
        
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
    
    
    
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 690
    }
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        var count = emptyArray.count
        return count
        
    }
    
    
}


