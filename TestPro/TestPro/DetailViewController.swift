//
//  DetailViewController.swift
//  TestPro
//
//  Created by Felix ITs 08 on 11/09/19.
//  Copyright © 2019 Felix. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet var dLabelName: UILabel!
    
    @IBOutlet var dLabelScore: UILabel!
    
    @IBOutlet var dImage: UIImageView!
    
    @IBOutlet var coverImage: UIImageView!
    var nameLabel:String!
    var scoreLabel:String!
    var imageIcon:UIImage!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        dLabelName.text = nameLabel
        dLabelScore.text = scoreLabel
        dImage.image = imageIcon
        
        coverImage.image = #imageLiteral(resourceName: "Cricket frame")
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
