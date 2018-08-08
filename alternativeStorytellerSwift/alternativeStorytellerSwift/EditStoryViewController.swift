//
//  EditStoryViewController.swift
//  alternativeStorytellerSwift
//
//  Created by apple on 2018/07/25.
//  Copyright © 2018年 com.nainai0722. All rights reserved.
//

import UIKit

class EditStoryViewController: UIViewController {
    var mem1 :String?
    var mem2 :String?
    var preMem1 : String?
    var preMem2 : String?
    var storyNum: Int!
    let storySetting = [["赤頭巾","狼"],["白雪姫","小人"],["メロス","セリヌンティウス"]]
    @IBOutlet weak var storyTextView: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var titleArr : [String] = []
        var DetailArr :[String] = []
        var mem1 : [String] = []
        var mem2 :[String] = []
        
        if let path = Bundle.main.path(forResource: "storySetting", ofType: "plist") {
            if let dictArray = NSArray(contentsOfFile: path) {
                for item in dictArray {
                    if let dict = item as? NSDictionary {
                        
                        mem1.append(dict["member1"] as! String)
                        mem2.append(dict["member2"] as! String)
                        titleArr.append(dict["title"] as! String)
                        DetailArr.append(dict["detail"] as! String)
                    }
                }
            }
        }
        preMem1 = mem1[storyNum]
        preMem2 = mem2[storyNum]
        self.storyTextView.text = DetailArr[storyNum]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func touchPageViewerButton(_ sender: UIButton) {
        let nextvc = StoryViewerPageViewController()
        nextvc.exchangeStoryStr = self.storyTextView.text
        self.present(nextvc, animated: true, completion: nil)
    }
    
    @IBAction func touchChangeNameButton(_ sender: UIButton) {
        var storyText = self.storyTextView.text!
        
        storyText = storyText.replacingOccurrences(of: preMem1!, with:mem1!)
        
        storyText = storyText.replacingOccurrences(of: preMem2!, with:mem2!)
        
        self.storyTextView.text = storyText
        
        
    }
    
    @IBAction func touchBacktotopViewButton(_ sender: UIButton) {
        let nextvc = TopViewController()
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
