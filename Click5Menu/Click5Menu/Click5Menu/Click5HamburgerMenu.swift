//
//  Click5HamburgerMenu.swift
//  CRM
//
//  Created by Michal Ziobro on 25/11/2019.
//  Copyright © 2019 Click 5 Interactive. All rights reserved.
//

import SwiftUI

struct Click5HamburgerMenu: View {
    
    @EnvironmentObject var model: Click5MenuModel
    
    let width: CGFloat
    let menuItems: [MenuItem]
    
    var body: some View {
        
        HStack(spacing: 0) {
            Spacer()
            
            VStack(alignment: .menuTitle, spacing: 16) {
                
                ForEach(0..<menuItems.count, id: \.self) { i in 
                    
                    return Button(action: {
                        self.model.selection = self.menuItems[i].tag
                        self.model.isMenuOpen = false 
                    }) {
                        self.menuItems[i].item
                    }
                }
                
                Spacer()
                
            }
            .padding(.leading, 20)
            .padding(.trailing, 20)
            .padding(.top, 100)
            .frame(maxWidth: .infinity, alignment: .leading)
            .background(Color.black)
            .foregroundColor(Color.white)
            .font(.headline)
            .edgesIgnoringSafeArea(.all)
            .frame(width: width)
        }.transition(.move(edge: .trailing))
    }
}

struct Click5HamburgerMenu_Previews: PreviewProvider {
    static var previews: some View {
        Click5HamburgerMenu(width: 250, menuItems: [])
            .environmentObject(Click5MenuModel())
    }
}
