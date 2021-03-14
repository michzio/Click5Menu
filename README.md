# Click5Menu


Usage example 

```swift
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
```

```swift
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
```

As now there is custom MenuGroup that replaces standard SwiftUI Group to add more then 10 screens to Menu. 
