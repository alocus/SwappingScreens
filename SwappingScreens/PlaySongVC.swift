//
//  PlaySongVC.swift
//  SwappingScreens
//
//  Created by Michael Dunn on 2016-09-12.
//  Copyright © 2016 Michael Dunn. All rights reserved.
//

import UIKit

class PlaySongVC: UIViewController {

    @IBOutlet weak var lb_songTitle: UILabel!
    
    private var _selectedSong:String!
    
    var selectedSong: String{
        get{
            return _selectedSong
        } set {
            _selectedSong = newValue
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        lb_songTitle.text = _selectedSong
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
