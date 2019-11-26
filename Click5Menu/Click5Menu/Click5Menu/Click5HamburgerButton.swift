//
//  Click5HamburgerButton.swift
//  CRM
//
//  Created by Michal Ziobro on 25/11/2019.
//  Copyright © 2019 Click 5 Interactive. All rights reserved.
//

import SwiftUI

struct Click5HamburgerButton: View {
    
    @EnvironmentObject var model: Click5MenuModel
    
    var body: some View {
        
        Button(action: {
            print("Humburger button tapped!")
            withAnimation {
                self.model.isMenuOpen.toggle()
            }
        }) {
            Image(systemName: "text.justify")
            .foregroundColor(.black)
        }
    }
}

extension View {
    
    func hamburgerButton() -> some View {
        self.navigationBarItems(trailing: Click5HamburgerButton() )
    }
}

struct Click5HamburgerButton_Previews: PreviewProvider {
    
    static var previews: some View {
        
        Click5HamburgerButton()
    }
}
