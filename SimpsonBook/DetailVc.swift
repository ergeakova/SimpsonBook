//
//  DetailVc.swift
//  SimpsonBook
//
//  Created by Erge Gevher Akova on 25.04.2022.
//

import UIKit

class DetailVc: UIViewController {

    @IBOutlet weak var simpsonImage: UIImageView!
    @IBOutlet weak var simpsonName: UILabel!
    @IBOutlet weak var simpsonJob: UILabel!
    
    var SelectedSimpson : Simpson?
    override func viewDidLoad() {
        super.viewDidLoad()
        
        simpsonName.text = SelectedSimpson?.name
        simpsonJob.text = SelectedSimpson?.job
        simpsonImage.image = SelectedSimpson?.image
    }
}
