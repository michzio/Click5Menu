//
//  Click5MenuView+Preferences.swift
//  CRM
//
//  Created by Michal Ziobro on 25/11/2019.
//  Copyright © 2019 Click 5 Interactive. All rights reserved.
//

import SwiftUI

// MARK: - Menu Item Preference
struct MenuItemPreference : Equatable {
    var tag: Int
    let item: AnyView
    
    static func == (lhs: MenuItemPreference, rhs: MenuItemPreference) -> Bool {
        lhs.tag == rhs.tag
    }
}

struct MenuItemPreferenceKey: PreferenceKey {
    
    typealias Value = [MenuItemPreference]
    
    static var defaultValue: [MenuItemPreference] = []
    
    static func reduce(value: inout [MenuItemPreference], nextValue: () -> [MenuItemPreference]) {
        value.append(contentsOf: nextValue())
    }
}

// MARK: - Tab Item Preference
struct TabItemPreference : Equatable {
    var tag: Int
    let item: AnyView
    
    static func == (lhs: TabItemPreference, rhs: TabItemPreference) -> Bool {
        lhs.tag == rhs.tag
    }
}

struct TabItemPreferenceKey: PreferenceKey {
    
    typealias Value = [TabItemPreference]
    
    static var defaultValue: [TabItemPreference] = []

    static func reduce(value: inout [TabItemPreference], nextValue: () -> [TabItemPreference]) {
        let next = nextValue()
        print(next)
        value.append(contentsOf: next)
    }
}


extension View {
    
    func tabBarItem<Content>(@ViewBuilder content: @escaping () -> Content) -> some View where Content : View {
        
        
        self.preference(key: TabItemPreferenceKey.self, value: [
            TabItemPreference(tag: 0, item: AnyView(content()))
        ])
    }
}

extension View {
    
    func menuItem<Content>(@ViewBuilder content: @escaping () -> Content) -> some View where Content : View {
        
        self.preference(key: MenuItemPreferenceKey.self, value: [
            MenuItemPreference(tag: 0, item: AnyView(content()))
        ])
    }
}

extension View {

    func withTag<V>(_ tag: V) -> some View where V: Hashable {

        self.transformPreference(TabItemPreferenceKey.self) { (value: inout [TabItemPreference]) in

            guard value.count > 0 else { return }
            value[0].tag = tag.hashValue
            
        }
        .transformPreference(MenuItemPreferenceKey.self) { (value: inout [MenuItemPreference]) -> Void in
            
            guard value.count > 0 else { return }
            value[0].tag = tag.hashValue
        }
        .tag(tag)
    }
    
    func withTag(_ tag: Int) -> some View {
        
        self.transformPreference(TabItemPreferenceKey.self) { (value: inout [TabItemPreference]) in

            guard value.count > 0 else { return }
            value[0].tag = tag
            
        }
        .transformPreference(MenuItemPreferenceKey.self) { (value: inout [MenuItemPreference]) -> Void in
            
            guard value.count > 0 else { return }
            value[0].tag = tag
        }
        .tag(tag)
    }
}
