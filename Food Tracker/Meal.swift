//
//  Meal.swift
//  Food Tracker
//
//  Created by Guidry, Beau J on 9/9/16.
//  Copyright © 2016 Guidry, Beau J. All rights reserved.
//

import UIKit

class Meal {
    //MARK: Properties
    
    var name: String
    var photo: UIImage?
    var rating: Int
    
    init?(name: String, photo: UIImage?, rating: Int){
        
        
        self.name = name
        self.photo = photo
        self.rating = rating
        
        if name.isEmpty || rating < 0{
            return nil
        }
    }
    
    
    
}
