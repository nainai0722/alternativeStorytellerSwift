//
//  SecondViewController.swift
//  alternativeStorytellerSwift
//
//  Created by apple on 2018/08/04.
//  Copyright © 2018年 com.nainai0722. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    var StoryStr2 : String?
    @IBOutlet weak var secondPagetxt: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
        secondPagetxt.text = self.StoryStr2!
        // Do any additional setup after loading the view.
    }
    @IBOutlet weak var secondStr: UITextView!
    
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
