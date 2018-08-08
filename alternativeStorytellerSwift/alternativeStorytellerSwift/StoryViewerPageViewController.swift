//
//  StoryViewerPageViewController.swift
//  alternativeStorytellerSwift
//
//  Created by apple on 2018/08/04.
//  Copyright © 2018年 com.nainai0722. All rights reserved.
//

import UIKit

class StoryViewerPageViewController: UIPageViewController {
    var exchangeStoryStr : String?
    var pageCount : Int = 0
    var needPageNum : Int = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        pageCount = 0
        needPageNum = (self.exchangeStoryStr!.count)/920
        
        self.setViewControllers([getFirst()], direction: .forward, animated: true, completion: nil)
        self.dataSource = self
    }
    
    /*
     let nextvc = StoryViewerPageViewController()
     self.present(nextvc, animated: true, completion: nil)
     */
    func getFirst() -> PageFirstViewController {

        let str    =  self.exchangeStoryStr!
        var getStr :String
        if self.exchangeStoryStr!.count >= pageCount*920+920{
            getStr = (str as NSString).substring(with: NSRange(location: pageCount*920, length: 920))
        }else{
            let sabun : Int = pageCount*920+920-self.exchangeStoryStr!.count
            let lastNum :Int = 920-sabun
            getStr = (str as NSString).substring(with: NSRange(location: pageCount*920, length: lastNum))
        }
        
        let vc = PageFirstViewController()
        vc.StoryStr1 = getStr
        
        return vc
    }
    
    func getSecond() -> SecondViewController {
        let str    =  self.exchangeStoryStr!
        let getStr = (str as NSString).substring(with: NSRange(location: 916, length: 915))
        let vc = SecondViewController()
        vc.StoryStr2 = getStr
        
        return vc
    }
    
    func getThird() -> ThirdViewController {
        let str    =  self.exchangeStoryStr
        let getStr = (str! as NSString).substring(with: NSRange(location: 1832, length: 915))
        
        let vc = ThirdViewController()
        vc.StoryStr3 = getStr
        
        return vc
    }
    
    func getBackTop() {
        let nextvc = TopViewController()
        self.present(nextvc, animated: true, completion: nil)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
extension StoryViewerPageViewController : UIPageViewControllerDataSource {
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        
        if pageCount == 0 {
            return nil
        }else{
            pageCount -= 1
        }
        
        return getFirst()
        
        if viewController.isKind(of: ThirdViewController.self) {
            // 3 -> 2
            return getSecond()
        } else if viewController.isKind(of : SecondViewController.self) {
            // 2 -> 1
            return getFirst()
        } else {
            // 1 -> end of the road
            return nil
        }
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        pageCount += 1
        if pageCount > needPageNum {
            getBackTop()
            return nil
        }
        return getFirst()
        
        if viewController.isKind(of : PageFirstViewController.self) {
            // 1 -> 2
            return getSecond()
        } else if viewController.isKind(of : SecondViewController.self) {
            // 2 -> 3
            return getThird()
        } else {
            // 3 -> end of the road
            return nil
        }
    }
}
