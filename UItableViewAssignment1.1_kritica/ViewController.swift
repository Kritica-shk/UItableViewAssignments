//
//  ViewController.swift
//  UItableViewAssignment1.1_kritica
//
//  Created by EKbana on 16/09/2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    let names = ["dazai", "draken", "tsuki", "tobi", "Gojo", "kage", "sukuna"]
    let images: [UIImage?] = [UIImage.dazai, UIImage.draken, UIImage.tsuki, UIImage.tobi, UIImage.Gojo, UIImage.kage, UIImage.sukuna]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.delegate = self
        tableView.dataSource = self
    }


}
extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return names.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CustomTableViewCell", for: indexPath) as! CustomTableViewCell
        cell.label.text = names[indexPath.row]
        cell.iconImageView.image = images[indexPath.row]
               return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let stordboard = UIStoryboard(name: "Main", bundle: nil)
                let controller = stordboard.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
        controller.img =  images[indexPath.row]
        controller.labelName = names[indexPath.row]
        navigationController?.pushViewController(controller, animated: true)
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100.0
    }
}

