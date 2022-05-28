//
//  MainVC.swift
//  EatClubTest
//
//  Created by Corry Timothy on 28/5/2022.
//

import UIKit

class ExtraVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var tableView: UITableView  =   UITableView()
    let homeCellID = "homeCellID"
    let homeCellID1 = "homeCellID1"
    var PassArray = [""]
    var searchBar: UISearchBar = UISearchBar()
    var searching = false
    var searchedTitle = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        self.navigationItem.setHidesBackButton(true, animated: false)
        
        view.backgroundColor = UIColor.white
        view.addSubview(searchBar)
        //
        view.addSubview(logoText)
        view.addSubview(ProfileLogo)
        view.addSubview(WifiLogo)
        view.addSubview(LogoBar)
        view.addSubview(LeftBarButton)
        view.addSubview(RightBarButton)
        view.addSubview(CenterBarButton)
        view.addSubview(TickingClock)
        
        
        tableView.delegate      =   self
        tableView.dataSource    =   self
        tableView.layer.zPosition = 100
        self.view.addSubview(self.tableView)
        
        
        tableView.register(ExtraCell.self, forCellReuseIdentifier: homeCellID)
        
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.separatorStyle = UITableViewCell.SeparatorStyle.singleLine
        setUpTableView()
        tableView.alwaysBounceVertical = false
        
        
        let a = RetailProductDetail(id: 0, name: "La Jordania Resturant and Shisha Lounge Surfers Paradise", offer: "Surfers Paradise • 0.7km Away", image: "La-Jor", type: "Middle Eastern", options: "Dine In • Takeaway • In App Orders", ticked: false)
        let b = RetailProductDetail(id: 1, name: "Sardjiono's Italian Resturant", offer: "Surfers Paradise • 0.8km Away", image: "Sardji", type: "Italian, Cafe", options: "Dine In • Takeaway • Table Orders", ticked: false)
        let c = RetailProductDetail(id: 2, name: "Arthur's Pizza maroubra", offer: "Marouba • 1929.7km Away", image: "Arthurs", type: "Italian, Pizza • quick service", options: "Dine In • Takeaway • In App Orders", ticked: false)
        let d = RetailProductDetail(id: 3, name: "Rocketboy Pizza - Maroubra", offer: "Maroubra • 1930.1km Away", image: "Rocket", type: "Pizza", options: "Dine In • Takeaway", ticked: false)
        let e = RetailProductDetail(id: 4, name: "Melbas Asian Seafood", offer: "Surfers Paradise • 1.0km Away", image: "Melbas", type: "Asian, Chinese, Seafood, Dumplings, Dim Sim", options: "Dine In • Takeaway • Table Orders • In App Orders", ticked: false)
        let f = RetailProductDetail(id: 5, name: "The Indian Place", offer: "Surfers Paradise • 1.2km Away", image: "Indian-P", type: "Indian • Casual Dining", options: "Dine In • Takeaway • In App Orders", ticked: false)
        let g = RetailProductDetail(id: 6, name: "Som Tam Gai", offer: "Mermaid Beach • 6.4km Away", image: "SomTam", type: "Bar, SouthEast Asian", options: "Dine In • Takeaway • Table Orders • In App Orders", ticked: false)
        let h = RetailProductDetail(id: 7, name: "Shiraz Bistro Mediterranean Cuisine", offer: "Surfers Paradise • 1.2km Away", image: "Shiraz", type: "Middle Eastern, Other • cheap and cheerful", options: "Dine In • Takeaway • In App Orders", ticked: false)
        let i = RetailProductDetail(id: 8, name: "Yam Cha Cuisine Pacific Fair", offer: "Broadbeach • 4.6km Away", image: "YumCha", type: "Chinese • casual dining", options: "Dine In • Takeaway • Table Orders • In App Orders", ticked: false)
        let j = RetailProductDetail(id: 9, name: "Curry Express Surfers", offer: "Surfers Paradise • 1.3km away", image: "Curry", type: "Indian • casual dining", options: "Dine In • Takeaway • In App Orders", ticked: false)
        let k = RetailProductDetail(id: 10, name: "Soy Bar", offer: "Southport • 3.1km Away", image: "SoyBar", type: "Asian, Dessert, Bubble Tea", options: "Dine In • Takeaway • Table Orders • In App Orders", ticked: false)
        let l = RetailProductDetail(id: 11, name: "Amin's Kitchen", offer: "Surfers Paradise • 1.2km Away", image: "Amin", type: "Indian • casual dining", options: "Dine In • Takeaway • In App Orders", ticked: false)
        
        
        listOfRetail.append(a)
        listOfRetail.append(b)
        listOfRetail.append(c)
        listOfRetail.append(d)
        listOfRetail.append(e)
        listOfRetail.append(f)
        listOfRetail.append(g)
        listOfRetail.append(h)
        listOfRetail.append(i)
        listOfRetail.append(j)
        listOfRetail.append(k)
        listOfRetail.append(l)
        
        setUpSearchBar()
        
    }
    
    func setUpSearchBar() {
        searchBar.translatesAutoresizingMaskIntoConstraints = false
        searchBar.barTintColor = .white
        searchBar.topAnchor.constraint(equalTo: view.topAnchor, constant: 160).isActive = true
        searchBar.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 5).isActive = true
        searchBar.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -50).isActive = true
        searchBar.heightAnchor.constraint(equalToConstant: 40).isActive = true
        
    }
    
    
    func setUpTableView() {
        
        logoText.topAnchor.constraint(equalTo: view.topAnchor,constant: 57).isActive = true
        logoText.centerXAnchor.constraint(equalTo: view.centerXAnchor,constant: 0).isActive = true
        logoText.widthAnchor.constraint(equalToConstant: 130).isActive = true
        logoText.heightAnchor.constraint(equalToConstant: 40).isActive = true
        
        TickingClock.topAnchor.constraint(equalTo: view.topAnchor, constant: 163).isActive = true
        TickingClock.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20).isActive = true
        TickingClock.widthAnchor.constraint(equalToConstant: 32).isActive = true
        TickingClock.heightAnchor.constraint(equalToConstant: 32).isActive = true
        
        ProfileLogo.topAnchor.constraint(equalTo: view.topAnchor,constant: 57).isActive = true
        ProfileLogo.leftAnchor.constraint(equalTo: view.leftAnchor,constant: 30).isActive = true
        ProfileLogo.widthAnchor.constraint(equalToConstant: 30).isActive = true
        ProfileLogo.heightAnchor.constraint(equalToConstant: 40).isActive = true
        
        WifiLogo.topAnchor.constraint(equalTo: view.topAnchor,constant: 57).isActive = true
        WifiLogo.rightAnchor.constraint(equalTo: view.rightAnchor,constant: -30).isActive = true
        WifiLogo.widthAnchor.constraint(equalToConstant: 30).isActive = true
        WifiLogo.heightAnchor.constraint(equalToConstant: 40).isActive = true
        
        LogoBar.topAnchor.constraint(equalTo: ProfileLogo.topAnchor,constant: 55).isActive = true
        LogoBar.leftAnchor.constraint(equalTo: view.leftAnchor,constant: 0).isActive = true
        LogoBar.rightAnchor.constraint(equalTo: view.rightAnchor,constant: 0).isActive = true
        LogoBar.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        LeftBarButton.topAnchor.constraint(equalTo: ProfileLogo.topAnchor,constant: 55).isActive = true
        LeftBarButton.leftAnchor.constraint(equalTo: view.leftAnchor,constant: 0).isActive = true
        LeftBarButton.widthAnchor.constraint(equalToConstant: 110).isActive = true
        LeftBarButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        CenterBarButton.topAnchor.constraint(equalTo: ProfileLogo.topAnchor,constant: 55).isActive = true
        CenterBarButton.centerXAnchor.constraint(equalTo: view.centerXAnchor,constant: 0).isActive = true
        CenterBarButton.widthAnchor.constraint(equalToConstant: 110).isActive = true
        CenterBarButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        RightBarButton.topAnchor.constraint(equalTo: ProfileLogo.topAnchor,constant: 55).isActive = true
        RightBarButton.rightAnchor.constraint(equalTo: view.rightAnchor,constant: 0).isActive = true
        RightBarButton.widthAnchor.constraint(equalToConstant: 110).isActive = true
        RightBarButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        tableView.topAnchor.constraint(equalTo: view.topAnchor, constant: 210).isActive = true
        tableView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 0).isActive = true
        tableView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: 0).isActive = true
        tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -80).isActive = true

        tableView.backgroundColor = UIColor.white
        
        
        
    }
    
    
    let logoText: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.layer.masksToBounds = true
        imageView.image = UIImage(named: "EatClubText")
        imageView.contentMode = .scaleAspectFit
        imageView.layer.zPosition = 3
        return imageView
    }()
    
    
    
    let TickingClock: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.layer.masksToBounds = true
        imageView.image = UIImage(named: "TickingClock")
        imageView.contentMode = .scaleAspectFit
        imageView.layer.zPosition = 3
        return imageView
    }()
    
    
    let ProfileLogo: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.layer.masksToBounds = true
        imageView.image = UIImage(named: "ProfileLogo")
        imageView.contentMode = .scaleAspectFit
        imageView.layer.zPosition = 3
        return imageView
    }()
    
    let WifiLogo: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.layer.masksToBounds = true
        imageView.image = UIImage(named: "WifiLogo")
        imageView.contentMode = .scaleAspectFit
        imageView.layer.zPosition = 3
        return imageView
    }()
    
    let LogoBar: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.layer.masksToBounds = true
        imageView.image = UIImage(named: "LogoBarLeft")
        imageView.contentMode = .scaleAspectFit
        imageView.layer.zPosition = 3
        return imageView
    }()
    
    
    
    let BarImageLeft: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.layer.masksToBounds = true
        imageView.contentMode = .scaleAspectFill
        imageView.image = UIImage(named: "Heart")
        imageView.layer.cornerRadius = 8
        return imageView
    }()
    
    let BarImageCenter: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.layer.masksToBounds = true
        imageView.contentMode = .scaleAspectFill
        imageView.image = UIImage(named: "Heart")
        imageView.layer.cornerRadius = 8
        return imageView
    }()
    
    let BarImageRight: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.layer.masksToBounds = true
        imageView.contentMode = .scaleAspectFill
        imageView.image = UIImage(named: "Heart")
        imageView.layer.cornerRadius = 8
        return imageView
    }()
    
    
    lazy var LeftBarButton: UIButton = {
        let button = UIButton(type: .system)
        button.backgroundColor = UIColor.clear
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(leftBar), for: .touchUpInside)
        button.layer.zPosition = 5
        return button
    }()
    
    @objc func leftBar() {
        print("left bar selected")
        LogoBar.image = UIImage(named: "LogoBarLeft")
    }
    
    
    
    lazy var CenterBarButton: UIButton = {
        let button = UIButton(type: .system)
        button.backgroundColor = UIColor.clear
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(CenterBar), for: .touchUpInside)
        button.layer.cornerRadius = 25
        button.layer.zPosition = 5
        return button
    }()
    
    @objc func CenterBar() {
        print("Center bar selected")
        LogoBar.image = UIImage(named: "LogoBarMiddle")
    }
    
    
    lazy var RightBarButton: UIButton = {
        let button = UIButton(type: .system)
        button.backgroundColor = UIColor.clear
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(RightBar), for: .touchUpInside)
        button.layer.zPosition = 5
        return button
    }()
    
    @objc func RightBar() {
        print("Right bar selected")
        LogoBar.image = UIImage(named: "LogoBarRight")
    }
    
    
    let explainLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 15)
        label.textColor = .black
        label.backgroundColor = .clear
        label.text = "Remember"
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        label.layer.zPosition = 100
        return label
    }()
    
    let GrayLabel: UILabel = {
        let label = UILabel()
        label.backgroundColor = UIColor.clear
        label.font =  UIFont(name: "Arial", size: 15)
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = UIColor.black
        label.layer.zPosition = 5
        return label
    }()
    
    let ProfileLabel: UILabel = {
        let label = UILabel()
        label.text = "Lawn Mowing and Gardening"
        label.font =  UIFont(name: "Arial", size: 20)
        label.backgroundColor = .clear
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = UIColor.white
        label.layer.zPosition = 5
        label.textAlignment = .center
        return label
    }()
    
    
    let logoImage2: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.layer.masksToBounds = true
        imageView.image = UIImage(systemName: "rosette")
        imageView.contentMode = .scaleAspectFit
        imageView.layer.zPosition = 3
        return imageView
    }()
    
    
    var listOfRetail = [RetailProductDetail]()
    
    

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
        print("greater than is working ")
        let cell = tableView.dequeueReusableCell(withIdentifier: homeCellID, for: indexPath) as! ExtraCell
        
        var event = listOfRetail[indexPath.row]
        cell.searchDelegate = self
        cell.MainTitle.text = event.name
        cell.OfferTitle.text = event.offer
        cell.TypeTitle.text = event.type
        cell.OptionTitle.text = event.options
        if let imageToUse = event.image {
            cell.eventImage.image = UIImage(named: imageToUse)
        }
 
        cell.contentView.isUserInteractionEnabled = false
        
        cell.selectionStyle = .none

        return cell
      
        
    }
    
    
    var TickedItems = [Character]()
    var name = ""
    var image = ""
    var type = ""
    var options = ""
    var offer = ""
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let cell = self.tableView.cellForRow(at: indexPath) as! ExtraCell
        print("Row selected", indexPath.row)
        var event = listOfRetail[indexPath.row]
        name = listOfRetail[indexPath.row].name!
        image = listOfRetail[indexPath.row].image!
        type = listOfRetail[indexPath.row].type!
        options = listOfRetail[indexPath.row].options!
        offer = listOfRetail[indexPath.row].offer!
        
        let goTo = Eula()
        
        goTo.namePassed = name
        goTo.imagePassed = image
        goTo.typePassed = type
        goTo.optionsPassed = options
        goTo.offerPassed = offer
        
        navigationController?.pushViewController(goTo, animated: false)
        
    }
    
    
    
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        return 270
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return listOfRetail.count
    }
    
    
}


struct RetailProductDetail:Decodable {
    var id: Int?
    var name: String?
    var offer: String?
    var image: String?
    var type: String?
    var options: String?
    var ticked: Bool?
}




