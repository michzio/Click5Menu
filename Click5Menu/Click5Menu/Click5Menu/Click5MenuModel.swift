//
//  Click5MenuModel.swift
//  CRM
//
//  Created by Michal Ziobro on 22/11/2019.
//  Copyright © 2019 Click 5 Interactive. All rights reserved.
//

import Foundation
import Combine
import SwiftUI

class Click5MenuModel: ObservableObject {
    
    @Published var selection: Int = 0
    @Published var isMenuOpen: Bool = false
    
    @Published var tabItems : [TabItem] = [TabItem]()
//    {
//        didSet {
//            objectWillChange.send()
//        }
//    }
    @Published var menuItems : [MenuItem] = [MenuItem]()
//    {
//        didSet {
//            objectWillChange.send()
//        }
//    }
    
    //var objectWillChange = PassthroughSubject<Void, Never>()
}

typealias TabItem = (tag: Int, tab: AnyView)
typealias MenuItem = (tag: Int, item: AnyView)
