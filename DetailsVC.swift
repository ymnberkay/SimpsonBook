//
//  DetailsVC.swift
//  SimpsonBook
//
//  Created by Berkay Yaman on 18.03.2022.
//

import UIKit

class DetailsVC: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var jobLabel: UILabel!
    var selectedSimpson : Simpson?
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.text = selectedSimpson?.simpsonName
        jobLabel.text = selectedSimpson?.simpsonJobName
        imageView.image = selectedSimpson?.simpsonImage

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
