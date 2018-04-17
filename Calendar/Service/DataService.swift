//
//  DataService.swift
//  Calendar
//
//  Created by Alexis Hernandez on 10/26/17.
//  Copyright © 2017 Alexis Hernandez. All rights reserved.
//

import Foundation
import Firebase

let DB_BASE = Database.database().reference()
// public DB_Base: Any>


class DataService{
    static let instance = DataService()
    
    private var _REF_BASE = DB_BASE //variable to use within class dataservice
    
    private var _REF_USERS = DB_BASE.child("Users") //appending a child in Firebase
    
    private var _REF_GROUPS = DB_BASE.child("groups")
    
    private var _REF_FEED = DB_BASE.child("feed")
    
    
    var REF_BASE: DatabaseReference{
        return _REF_BASE
    }
    
    var REF_USERS: DatabaseReference{
        return _REF_USERS
    }
    
    var REF_GROUPS: DatabaseReference{
        return _REF_GROUPS
    }
    
    var REF_FEED: DatabaseReference{
        return _REF_FEED
    }
    
    func createDBUser(uid: String, userData: Dictionary<String, Any>){
        REF_USERS.child(uid).updateChildValues(userData)
    }
    
}
























