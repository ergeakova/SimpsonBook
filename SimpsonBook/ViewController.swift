//
//  ViewController.swift
//  SimpsonBook
//
//  Created by Erge Gevher Akova on 25.04.2022.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    var family = [Simpson]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
    
        navigationItem.title = "SimpSon Book"
        
        family.append(Simpson(nameInit: "Homer", jobInit: "Nucluear Safety" , imageInit: UIImage(named: "Homer")!))
        family.append(Simpson(nameInit: "Bart", jobInit: "Nucluear Safety" , imageInit: UIImage(named: "Bart")!))
        family.append(Simpson(nameInit: "Lisa", jobInit: "Nucluear Safety" , imageInit: UIImage(named: "Lisa")!))
        family.append(Simpson(nameInit: "Maggie", jobInit: "Nucluear Safety" , imageInit: UIImage(named: "Maggie")!))
        family.append(Simpson(nameInit: "Marge", jobInit: "Nucluear Safety" , imageInit: UIImage(named: "Marge")!))
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return family.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = family[indexPath.row].name
        return cell
       }
}
