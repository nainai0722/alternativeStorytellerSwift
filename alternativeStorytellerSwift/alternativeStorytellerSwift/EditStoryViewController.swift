//
//  EditStoryViewController.swift
//  alternativeStorytellerSwift
//
//  Created by apple on 2018/07/25.
//  Copyright © 2018年 com.nainai0722. All rights reserved.
//

import UIKit

class EditStoryViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func touchChangeNameButton(_ sender: UIButton) {
    }
    
    @IBAction func touchBacktotopViewButton(_ sender: UIButton) {
        let nextvc = TopViewController()
        nextvc.view.backgroundColor = UIColor.blue
        self.present(nextvc, animated: true, completion: nil)
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
