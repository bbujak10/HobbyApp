//
//  Book.swift
//  HobbyApp
//
//  Created by Bartosz Bujak on 12/01/2019.
//  Copyright © 2019 Bartosz Bujak. All rights reserved.
//

import Foundation

struct Author{
    let name : String;
    let image : String;
}

struct Book{
    let title : String;
    let author : Author;
    let preview : String;
}
