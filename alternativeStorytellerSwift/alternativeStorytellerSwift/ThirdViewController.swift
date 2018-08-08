//
//  ThirdViewController.swift
//  alternativeStorytellerSwift
//
//  Created by apple on 2018/08/04.
//  Copyright © 2018年 com.nainai0722. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {
    @IBOutlet weak var storyStr3: UITextView!
    var StoryStr3 : String?
    override func viewDidLoad() {
        super.viewDidLoad()

        self.storyStr3.text = self.StoryStr3!
        
        // Do any additional setup after loading the view.
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
