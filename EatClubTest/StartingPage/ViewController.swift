//
//  ViewController.swift
//  EatClubTest
//
//  Created by Corry Timothy on 28/5/2022.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(r: 255, g: 21, b: 70)
        
        
        view.addSubview(logoImage)
        
        Constraints()
        
        
    }
    
    func Constraints() {
        
        logoImage.topAnchor.constraint(equalTo: view.topAnchor, constant: 268).isActive = true
        logoImage.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        logoImage.heightAnchor.constraint(equalToConstant: 300).isActive = true
        logoImage.widthAnchor.constraint(equalToConstant: 320).isActive = true
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 3.0) {
            let goto = ExtraVC()
            self.navigationController?.pushViewController(goto, animated: false)
        }
        
    }
    
    
    let logoImage: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.layer.masksToBounds = true
        imageView.image = UIImage(named: "EatClubLogo")
        imageView.contentMode = .scaleAspectFit
        imageView.layer.zPosition = 3
        return imageView
    }()
    
}

extension UIColor {
    convenience init(r: CGFloat, g: CGFloat, b: CGFloat) {
        self.init(red: r/255, green: g/255, blue: b/255, alpha: 1)
    }
}

extension UIColor {
    static let MainTitle = UIColor(r: 116, g: 116, b: 116)
    static let Line = UIColor(r: 232, g: 232, b: 232)
}
