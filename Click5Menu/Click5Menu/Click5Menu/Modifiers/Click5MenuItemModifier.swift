//
//  Click5MenuItemModifier.swift
//  CRM
//
//  Created by Michal Ziobro on 25/11/2019.
//  Copyright © 2019 Click 5 Interactive. All rights reserved.
//


 
import SwiftUI

struct Click5MenuItemModifier: ViewModifier {
    
    var tag: Int
    var menuItem: AnyView?
    var tabItem: AnyView?
    
    func body(content: Content) -> some View {
        return content
    }
}

/* Deprecated code:
extension View {
    
    // add both Menu Item and Tab Item
    func menuItem<M, T>(tag: Int,
                        @ViewBuilder _ menuItem: @escaping () -> M,
                        @ViewBuilder tabItem:  @escaping () -> T) -> some View
        where M: View, T: View {
        
        ModifiedContent(content: AnyView(self),
                        modifier: Click5MenuItemModifier(
                            tag: tag,
                            menuItem: AnyView(menuItem()),
                            tabItem: AnyView(tabItem())
            )
        )
    }
    
    // add only Menu Item
    func menuItem<M>(tag: Int, @ViewBuilder _ menuItem: @escaping () -> M) -> some View
                    where M: View {
        
        ModifiedContent(content: AnyView(self),
                        modifier: Click5MenuItemModifier(
                            tag: tag,
                            menuItem: AnyView(menuItem()),
                            tabItem: nil
            )
        )
    }
    
    // add only Tab Item
    func menuTabItem<T>(tag: Int, @ViewBuilder _ tabItem: @escaping () -> T) -> some View
                       where T: View {
           
        ModifiedContent(content: AnyView(self),
                           modifier: Click5MenuItemModifier(
                                tag: tag,
                                menuItem: nil,
                                tabItem:  AnyView(tabItem())
            )
        )
    }
}
*/
