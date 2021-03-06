//
//  ViewController.swift
//  customTableViewCell
//
//  Created by studio on 12/07/17.
//  Copyright © 2017 studio. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tableView: UITableView!
    let photos = ["bird", "bund", "chinatemple", "mario", "martialarts", "money", "parrot", "surf", "taj"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return photos.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CustomCell
        cell.myImage.image = UIImage(named: photos[indexPath.row] + ".jpeg")
        cell.myLabel.text = photos[indexPath.row]
        
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

        let buttomName  = segue.destination as! DetailsVC
        buttomName.ButtonName = "Favourite"

    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "fav", sender: photos[indexPath.row])
    }
    
}












