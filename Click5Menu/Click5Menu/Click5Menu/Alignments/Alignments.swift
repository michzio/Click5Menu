//
//  Alignments.swift
//  CRM
//
//  Created by Michal Ziobro on 26/11/2019.
//  Copyright © 2019 Click 5 Interactive. All rights reserved.
//

import SwiftUI

extension HorizontalAlignment {
    
    private enum MenuTitle : AlignmentID {
        static func defaultValue(in d: ViewDimensions) -> CGFloat {
            return d[.leading]
        }
    }
    
    static let menuTitle = HorizontalAlignment(MenuTitle.self)
}

extension VerticalAlignment {
    
    private enum TabTitle : AlignmentID {
        static func defaultValue(in d: ViewDimensions) -> CGFloat {
            return d[.bottom]
        }
    }
    
    static let tabTitle = VerticalAlignment(TabTitle.self)
}
