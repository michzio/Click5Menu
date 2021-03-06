//
//  Click5MenuView+Init.swift
//  CRM
//
//  Created by Michal Ziobro on 25/11/2019.
//  Copyright © 2019 Click 5 Interactive. All rights reserved.
//

import SwiftUI

extension Click5MenuView {
    
    public init<A: View>(@ViewBuilder content: () -> A) {
        // this init will be used for any non-supported number of TupleView
        
        let view = content()
        self.childs = [AnyView(view)]
    }
      
    // MARK: TupleView support
    public init<A: View, B: View>(@ViewBuilder content: () -> TupleView<(A, B)>) {
        
        let views = content().value
        
        self.childs = [AnyView(views.0), AnyView(views.1)]
       
    }
      
    public init<A: View, B: View, C: View>(@ViewBuilder content: () -> TupleView<(A, B, C)>) {
        let views = content().value
        self.childs = [AnyView(views.0), AnyView(views.1), AnyView(views.2)]
       
    }
    
    public init<A: View, B: View, C: View, D: View>(@ViewBuilder content: () -> TupleView<(A, B, C, D)>) {
        let views = content().value
        self.childs = [AnyView(views.0), AnyView(views.1), AnyView(views.2), AnyView(views.3)]
       
    }
    
    public init<A: View, B: View, C: View, D: View, E: View>(@ViewBuilder content: () -> TupleView<(A, B, C, D, E)>) {
        let views = content().value
        self.childs = [AnyView(views.0), AnyView(views.1), AnyView(views.2), AnyView(views.3), AnyView(views.4)]
       
    }
    
    public init<A: View, B: View, C: View, D: View, E: View, F: View>(@ViewBuilder content: () -> TupleView<(A, B, C, D, E, F)>) {
        let views = content().value
        self.childs = [AnyView(views.0), AnyView(views.1), AnyView(views.2), AnyView(views.3), AnyView(views.4), AnyView(views.5)]
        
    }
    
    public init<A: View, B: View, C: View, D: View, E: View, F: View, G: View>(@ViewBuilder content: () -> TupleView<(A, B, C, D, E, F, G)>) {
        let views = content().value
        self.childs = [AnyView(views.0), AnyView(views.1), AnyView(views.2), AnyView(views.3), AnyView(views.4), AnyView(views.5), AnyView(views.6)]

    }
    
    public init<A: View, B: View, C: View, D: View, E: View, F: View, G: View, H: View>(@ViewBuilder content: () -> TupleView<(A, B, C, D, E, F, G, H)>) {
        let views = content().value
        self.childs = [AnyView(views.0), AnyView(views.1), AnyView(views.2), AnyView(views.3), AnyView(views.4), AnyView(views.5), AnyView(views.6), AnyView(views.7)]
       
    }
    
    public init<A: View, B: View, C: View, D: View, E: View, F: View, G: View, H: View, I: View>(@ViewBuilder content: () -> TupleView<(A, B, C, D, E, F, G, H, I)>) {
        let views = content().value
        
        self.childs = [AnyView(views.0), AnyView(views.1), AnyView(views.2), AnyView(views.3), AnyView(views.4), AnyView(views.5), AnyView(views.6), AnyView(views.7), AnyView(views.8)]
       
    }
    
    public init<A: View, B: View, C: View, D: View, E: View, F: View, G: View, H: View, I: View, J: View>(@ViewBuilder content: () -> TupleView<(A, B, C, D, E, F, G, H, I, J)>) {
        let views = content().value
        self.childs = [AnyView(views.0), AnyView(views.1), AnyView(views.2), AnyView(views.3), AnyView(views.4), AnyView(views.5), AnyView(views.6), AnyView(views.7), AnyView(views.8), AnyView(views.9)]
       
    }

}

extension Click5MenuView {
    
    public init(@ViewBuilder content: () -> TupleView<(MenuGroup, MenuGroup)>) {
        
        let groups = content().value
        self.childs = groups.0.childs + groups.1.childs
        
    }
    
    public init(@ViewBuilder content: () -> TupleView<(MenuGroup, MenuGroup, MenuGroup)>) {
        
        let groups = content().value
        self.childs = groups.0.childs + groups.1.childs + groups.2.childs
    }
    
    public init(@ViewBuilder content: () -> TupleView<(MenuGroup, MenuGroup, MenuGroup, MenuGroup)>) {
        
        let groups = content().value
        self.childs = groups.0.childs + groups.1.childs
            + groups.2.childs + groups.3.childs
    }
}
