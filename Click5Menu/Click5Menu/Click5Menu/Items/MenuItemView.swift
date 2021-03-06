//
//  MenuItemView.swift
//  CRM
//
//  Created by Michal Ziobro on 25/11/2019.
//  Copyright © 2019 Click 5 Interactive. All rights reserved.
//

import SwiftUI

struct MenuItemView: View {
    
    let title: String
    
    let imageName : String?
    let systemName : String?
    
    var body: some View {
        HStack(spacing: 16) {
            icon.foregroundColor(.white)
            Text(title)
                .foregroundColor(.white)
                .alignmentGuide(.menuTitle) { d in
                    d[HorizontalAlignment.leading]
                }
        }
    }
    
    var icon : some View {
        if let imageName = self.imageName {
            return Image(imageName)
                .imageScale(.large)
        } else if let systemName = self.systemName {
            return Image(systemName: systemName)
                .imageScale(.large)
        } else {
            return Image(systemName: "circle.fill")
                .imageScale(.large)
        }
    }
}

extension MenuItemView {
    init(title: String) {
        self.title = title
        self.imageName = nil
        self.systemName = nil
    }
    
    init(imageName: String, title: String) {
        self.imageName = imageName
        self.systemName = nil
        self.title = title
    }
    
    init(systemImage: String, title: String) {
        self.systemName = systemImage
        self.imageName = nil
        self.title = title
    }
}

struct MenuItemView_Previews: PreviewProvider {
    static var previews: some View {
        MenuItemView(title: "Test")
    }
}
