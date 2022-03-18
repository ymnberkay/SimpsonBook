//
//  ViewController.swift
//  SimpsonBook
//
//  Created by Berkay Yaman on 18.03.2022.
//

import UIKit

class ViewController: UIViewController , UITableViewDelegate,UITableViewDataSource {
    

    @IBOutlet weak var tableView: UITableView!
    var mySimpson = [Simpson]()
    var chosenSimpson : Simpson?
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        // Do any additional setup after loading the view.
        //simpson object
        let homer = Simpson(simpsonName: "Homer Simpson", simpsonJobName: "Nuclear Safety", simpsonImage: UIImage(named: "homer")!)
        let marge = Simpson(simpsonName: "Marge Simpson", simpsonJobName: "Housewife", simpsonImage: UIImage(named: "marge")!)
        let bart = Simpson(simpsonName: "Bart Simpson", simpsonJobName: "Student", simpsonImage: UIImage(named: "bart")!)
        let lisa = Simpson(simpsonName: "Lisa Simpson", simpsonJobName: "Student", simpsonImage: UIImage(named: "lisa")!)
        let maggie = Simpson(simpsonName: "Maggie Simpson", simpsonJobName: "Baby", simpsonImage: UIImage(named: "maggie")!)
        mySimpson.append(homer)
        mySimpson.append(marge)
        mySimpson.append(bart)
        mySimpson.append(lisa)
        mySimpson.append(maggie)
        navigationItem.title = "Simpson Book"
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return mySimpson.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = mySimpson[indexPath.row].simpsonName
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        chosenSimpson = mySimpson[indexPath.row]
        self.performSegue(withIdentifier: "toDetailsVC", sender: nil)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetailsVC" {
            let destinationVC = segue.destination as! DetailsVC
            destinationVC.selectedSimpson = chosenSimpson
        }
        
    }
    
    
    
    

}

