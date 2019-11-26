//
//  Click5TabBar.swift
//  CRM
//
//  Created by Michal Ziobro on 25/11/2019.
//  Copyright © 2019 Click 5 Interactive. All rights reserved.
//

import SwiftUI

struct Click5TabBar : View {
    
    @EnvironmentObject var model: Click5MenuModel

    let tabItems: [TabItem]
    
    var body: some View {
        
        let tabBarHeight = UITabBarController().tabBar.frame.height
        
        
        return HStack(alignment: .tabTitle, spacing: 16) {
            
            ForEach(0..<tabItems.count, id: \.self) { i in
                
                return Button(action: {
                    self.model.selection = self.tabItems[i].tag
                }) {
                    self.tabItems[i].tab
                }
            }
           
        }
        .frame(width: UIScreen.main.bounds.width, height: tabBarHeight)
        .background(Color.black)
    }
}

struct Click5TabBar_Previews: PreviewProvider {
    
    static var previews: some View {
        
        return Click5TabBar(tabItems: [])
            .environmentObject(Click5MenuModel())
    }
}
