//
//  MemberClass.swift
//  alternativeStorytellerSwift
//
//  Created by apple on 2018/08/01.
//  Copyright © 2018年 com.nainai0722. All rights reserved.
//

import Foundation
class MemberClass {
    var someMember1: String!
    var someMember2: String!
    init(mem1:String,mem2:String) {
        self.someMember1 = mem1
        self.someMember2 = mem2
    }
    
    func getMemName() -> Array<Any>{
        let members = [someMember1,someMember2]
        return members
    }
}

//let aClass = MemberClass(value: 5)
