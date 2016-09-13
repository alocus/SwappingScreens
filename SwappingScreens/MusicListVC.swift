//
//  MusicListController.swift
//  SwappingScreens
//
//  Created by Michael Dunn on 2016-09-12.
//  Copyright © 2016 Michael Dunn. All rights reserved.
//

import UIKit

class MusicListVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        view.backgroundColor = UIColor.purple
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func handleBackPressed(_ sender: AnyObject) {
        dismiss(animated: true, completion: nil)
    }

    // programmatically create seque
    @IBAction func load3rdScreenPressed(_ sender: AnyObject) {
        // must set the same identifier for seque "PlaySongVC" to 
        // the next ViewController
        performSegue(withIdentifier: "PlaySongVC", sender: "Baa Baa Black Sheep")
    }
   
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        if let destination = segue.destination as? PlaySongVC {
            if let songTitle = sender as? String {
                destination.selectedSong = songTitle
            }
            
        }
        
    }
  

}
