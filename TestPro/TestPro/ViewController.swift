//
//  ViewController.swift
//  TestPro
//
//  Created by Felix ITs 08 on 11/09/19.
//  Copyright © 2019 Felix. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var players = ["1. Rohit Sharma", "2. Shikhar Dhawan", "3. K L Rahul", "4. Virat Kohli", "5. Vijay Shankar", "6. Mahendra Singh Dhoni", "7. Md Sami", "8. Dinesh Karthik", "9. Bhuvaneshwar Kumar"]
    var playersMathes = ["206", "128", "14","227", "9", "341", "63", "91", "105"]
    
  var playersImage = [#imageLiteral(resourceName: "107"), #imageLiteral(resourceName: "Shikhar-Dhawan-CWC19"), #imageLiteral(resourceName: "KL-Rahul-CWC19-copy"), #imageLiteral(resourceName: "Virat-Kohli-PNG-Transparent-Image-1-715x586"), #imageLiteral(resourceName: "Vijay "), #imageLiteral(resourceName: "Ms-Dhoni-PNG-Image-Dhoni-transparent-background-715x874"), #imageLiteral(resourceName: "Mohammed-Shami-CT17"), #imageLiteral(resourceName: "Dinesh"), #imageLiteral(resourceName: "Bhuvneshwar_Kumar_T2018")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.playersMathes.count
        
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell:TableViewCell = tableView.dequeueReusableCell(withIdentifier: "cell") as! TableViewCell
        
        cell.lbl1.text = players[indexPath.row]
        cell.lbl2.text = playersMathes[indexPath.row]
        cell.img.image = playersImage[indexPath.row]
        
        
        
        // let cell = tableView.dequeueReusableCell(withIdentifier: "cell")
        //cell?.textLabel?.text = players[indexPath.row]
        //cell?.detailTextLabel?.text = playersMathes[indexPath.row]
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let details:DetailViewController = self.storyboard?.instantiateViewController(withIdentifier: "DetailViewControllerStoryID") as! DetailViewController
        //these variables come from TableViewCell
        
        details.nameLabel = players[indexPath.row]
        details.scoreLabel = playersMathes[indexPath.row]
        details.imageIcon = playersImage[indexPath.row]
        
        self.navigationController?.pushViewController(details, animated: true)

}
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete{
        players.remove(at: indexPath.row)
            playersMathes.remove(at: indexPath.row)
            playersImage.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with:.automatic)
        }
    }
    
}
