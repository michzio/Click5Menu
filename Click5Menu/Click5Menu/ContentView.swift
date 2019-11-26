//
//  ContentView.swift
//  Click5Menu
//
//  Created by Michal Ziobro on 26/11/2019.
//  Copyright © 2019 Click 5 Interactive. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        Click5MenuView {
                   
            MenuGroup {
            Page1()
            Page2()
            Page3()
            
            NavigationView {
                Text("Page 4")
                    .navigationBarTitle("Page 4", displayMode: .inline)
                    .hamburgerButton()
            }
            .menuItem {
               MenuItemView(systemImage: "person", title: "Page 4")
            }
            .withTag(3)
            
            NavigationView {
                Text("Page 5")
                .navigationBarTitle("Page 5", displayMode: .inline)
                .hamburgerButton()
            }
            .menuItem {
                MenuItemView(systemImage: "person", title: "Page 5")
            }
            .withTag(4)
            
            NavigationView {
                Text("Page 6")
                .navigationBarTitle("Page 6", displayMode: .inline)
                .hamburgerButton()
            }
            .menuItem {
                MenuItemView(systemImage: "person", title: "Page 6")
            }
            .tabBarItem {
                Text("Page 6")
                .foregroundColor(.white)
                .alignmentGuide(.tabTitle) { d in
                    d[VerticalAlignment.bottom]
                }
                //TabItemView(systemImage: "person", title: "Page 6")
            }
            .withTag(5)
            
            Page7()
            Page8()
            Page9()
            Page10()
            }
            
            MenuGroup {
                NavigationView {
                    Text("Page 11")
                    .navigationBarTitle("Page 11", displayMode: .inline)
                    .hamburgerButton()
                }
                .menuItem {
                    MenuItemView(systemImage: "person", title: "Page 11")
                }
                .withTag(11)
            }
        }
        
    }
}

struct Page1 : View {
    
    var body: some View {
        
        NavigationView {
            Text("Page 1")
            .navigationBarTitle("Page 1", displayMode: .inline)
            .hamburgerButton()
        }
        .menuItem {
            MenuItemView(systemImage: "person", title: "Page 1")
        }
        .tabBarItem {
            TabItemView(systemImage: "person", title: "Page 1")
        }
        .withTag(0)
    }
}

struct Page2 : View {
    
    var body: some View {
        
        NavigationView {
            Text("Page 2")
            .navigationBarTitle("Page 2", displayMode: .inline)
            .hamburgerButton()
        }
        .menuItem {
            Text("Page 2").alignmentGuide(.menuTitle) { d in
                d[HorizontalAlignment.leading]
            }
        }
        .withTag(1)
        
    }
}

struct Page3 : View {
    
    var body: some View {
        
        NavigationView {
            Text("Page 3")
                .navigationBarTitle("Page 3", displayMode: .inline)
                .hamburgerButton()
        }
        .menuItem {
           MenuItemView(systemImage: "person", title: "Page 3")
        }
        .withTag(2)
    }
}

struct Page7 : View {
    
    var body: some View {
        NavigationView {
            Text("Page 7")
                .navigationBarTitle("Page 7", displayMode: .inline)
                .hamburgerButton()
        }
        .menuItem {
            MenuItemView(systemImage: "person", title: "Page 7")
        }
        .tabBarItem {
            TabItemView(systemImage: "person", title: "Page 7")
        }
        .withTag(6)
        
    }
}

struct Page8 : View {
    
    var body: some View {
        NavigationView {
            Text("Page 8")
                .navigationBarTitle("Page 8", displayMode: .inline)
                .hamburgerButton()
        }
        .menuItem {
            MenuItemView(systemImage: "person", title: "Page 8")
        }
        .tabBarItem {
            TabItemView(systemImage: "person", title: "Page 8")
            }
        .withTag(7)
    }
}

struct Page9 : View {
    
    var body: some View {
        NavigationView {
            Text("Page 9")
                .navigationBarTitle("Page 9", displayMode: .inline)
                .hamburgerButton()
        }
        .menuItem {
            MenuItemView(systemImage: "person", title: "Page 9")
        }
        .withTag(8)
    }
}

struct Page10 : View {
    
    var body: some View {
        NavigationView {
            Text("Page 10")
                .navigationBarTitle("Page 10", displayMode: .inline)
                .hamburgerButton()
        }
        .menuItem {
            MenuItemView(systemImage: "person", title: "Page 10")
        }
        .tabBarItem {
            TabItemView(systemImage: "person", title: "Page 10")
        }
        .withTag(9)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
