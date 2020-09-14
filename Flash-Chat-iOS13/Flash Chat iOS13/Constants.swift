//
//  Constants.swift
//  Flash Chat iOS13
//
//  Created by J'mari Wyatt on 8/4/2 R.
//  Copyright © 2 Reiwa J'mariko Consulting. All rights reserved.


   struct K {
        static let appName = "⚡️FlashChat"
        static let cellIdentifier = "ReusableCell"
        static let cellNibName = "MessageCell"
        static let registerSegue = "RegisterToChat"
        static let loginSegue = "LoginToChat"
        
        struct BrandColors {
            static let purple = "BrandPurple"
            static let lightPurple = "BrandLightPurple"
            static let blue = "BrandBlue"
            static let lighBlue = "BrandLightBlue"
        }
        
        struct FStore {
            static let collectionName = "messages"
            static let senderField = "sender"
            static let bodyField = "body"
            static let dateField = "date"
        }
    }



