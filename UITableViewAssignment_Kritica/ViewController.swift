//
//  ViewController.swift
//  UITableViewAssignment_Kritica
//
//  Created by EKbana on 16/09/2022.
//

import UIKit
struct Mobbrand {
    var brand: String
    var image: UIImage?
    
}

struct InnerItem {
    var item: [Mobbrand]
}
class ViewController: UIViewController {
    
    
    @IBOutlet weak var tableView: UITableView!
    var list: [InnerItem] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        tableView.register(SigninTableViewCell.nib(), forCellReuseIdentifier: SigninTableViewCell.identifier)
//        tableView.register(SigninTableViewCell.self, forCellReuseIdentifier: SigninTableViewCell.identifier)
        tableView.delegate = self
        tableView.dataSource = self
        tableView.sectionHeaderTopPadding = 0.0
//        tableView.tableFooterView = UIView()
//        tableView.tableHeaderView = UIView()
        
        tableView.register(SigninTableViewCell.self, forCellReuseIdentifier: SigninTableViewCell.identifier)
        
        list = [
            InnerItem(item: [
                Mobbrand(brand: "Sign in to your Iphone", image: .accountIcon)
            ]),
            InnerItem(item: [
                Mobbrand(brand: "General", image: .general),
                Mobbrand(brand: "Privacy", image: .privacy)
                
            ]),
            InnerItem(item: [
                Mobbrand(brand: "Passwords & Accounts", image: .password)
            ]),
            InnerItem(item: [
                Mobbrand(brand: "Maps", image: .maps),
                Mobbrand(brand: "Safari", image: .safari),
                Mobbrand(brand: "News", image: .news),
                Mobbrand(brand: "Siri", image: .siri),
                Mobbrand(brand: "Photos", image: .photo),
                Mobbrand(brand: "Game Center", image: .game),
            ]),
            InnerItem(item: [
                Mobbrand(brand: "Developer", image: .developer)
            ]),
                        
        ]
        
    }
    
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return list.count
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return list[section].item.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.section == 0 {
            
            let cell = tableView.dequeueReusableCell(withIdentifier: SigninTableViewCell.identifier, for: indexPath) as! SigninTableViewCell
            let item = list[indexPath.section].item[indexPath.row]
            
//            cell.set(item: item)
            
            return cell
        } else {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CustomTableViewCell
        let item = list[indexPath.section].item[indexPath.row]
        cell.set(item: item)
        
        return cell
        }
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let view = UIView(frame: CGRect(x: 0, y: 0, width: tableView.frame.width, height: 40))
        view.backgroundColor = UIColor.lightGray
        return view
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.section == 0 {
            return 120
        }
       return 60
    }
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        50
    }
    
}
