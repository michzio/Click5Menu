//
//  Click5ContentView.swift
//  CRM
//
//  Created by Michal Ziobro on 22/11/2019.
//  Copyright © 2019 Click 5 Interactive. All rights reserved.
//

import SwiftUI

struct Click5MenuView : View  {
    
    @Environment(\.verticalSizeClass) var sizeClass
    @EnvironmentObject var model : Click5MenuModel
    
    let childs : [AnyView]
    
    var body: some View {
    
//        let view : AnyView
//        if model.selection < childs.count {
//            view = self.childs[model.selection]
//        } else {
//            view = AnyView(EmptyView())
//        }
        
        let drag = DragGesture().onEnded {
            if $0.translation.width < -100 {
                withAnimation {
                    self.model.isMenuOpen = true
                }
            } else if $0.translation.width > 100 {
                withAnimation {
                    self.model.isMenuOpen = false
                }
            }
        }
        
        return GeometryReader { geometry in
            ZStack {
                // MARK: - Tabs
                Color.black.edgesIgnoringSafeArea([.bottom])
                
                VStack {
                    ZStack {
                        Color.white
                        ChildViews(childs: self.childs)
                    }
                    Click5TabBar(tabItems: self.model.tabItems)
                }
                
                // MARK: - Hamburger
                ZStack {
                    if self.model.isMenuOpen {
                        Color.black.opacity(0.3)
                            .edgesIgnoringSafeArea(.all)
                            .transition(.opacity)
                    }
                    
                    if self.model.isMenuOpen {
                        Click5HamburgerMenu(width: geometry.size.width*0.6, menuItems: self.model.menuItems)
                    }
                }
            }
            .gesture(drag)
            .onPreferenceChange(TabItemPreferenceKey.self) { preferences in
                
                print("On \(preferences)")
                
                preferences.forEach { p in
                    self.model.tabItems.append((tag: p.tag, tab: p.item))
                }
            }
            .onPreferenceChange(MenuItemPreferenceKey.self) { preferences in
                
                print("On \(preferences)")
                preferences.forEach { p in
                    self.model.menuItems.append((tag: p.tag, item: p.item))
                }
            }
        }
    }
}

struct ChildViews : View {
    
    @EnvironmentObject var model : Click5MenuModel
    
    let childs : [AnyView]
    
    var body: some View {
        ForEach(0..<childs.count, id: \.self) { i in
            Group {
                if i == self.model.selection {
                    self.childs[i].disabled(self.model.isMenuOpen ? true : false)
                } else {
                    self.childs[i].hidden()
                }
            }
        }
    }
}

struct Click5MenuView_Previews: PreviewProvider {
    static var previews: some View {
        Click5MenuView {
            Text("Page 1")
        }
    }
}
