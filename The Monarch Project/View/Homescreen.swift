//
//  Homescreen.swift
//  Monarch Project
//
//  Created by Jimenez on 10/13/21.
//

import SwiftUI

struct Homescreen: View {
  
  @StateObject var model = ViewModel()
  
  @State var name = ""
  @State var like = ""
  
  var body: some View {
    
    NavigationView {
      
      VStack {
//        Text(model.attending)
        List {
          ForEach(events) { event in
            
            NavigationLink(
              destination: EventDetailView(event: event), label: {
                EventPostView(event: event)
              }
            )
          }
          .listRowInsets(EdgeInsets())
        }
        
//                      List (model.list) { item in
//                        Text(item.name)
//                        Text(ViewModel.attending)
//                      }
//
//                      //      Text(model.attending)
//
//                      Button(action: {
//                        model.addData(name: name, like: like)
//                        name = ""
//                        like = ""
//                      }) {
//                        HStack(spacing: 8) {
//                          Text("refresh")
//                          Image(systemName: "restart.circle")
//                            .imageScale(.large)
//                        }
//                        .padding(.horizontal, 16)
//                        .padding(.vertical, 10)
//                        .background(
//                          Capsule().strokeBorder(Color.black, lineWidth: 1.25))
//                      }//: BUTTON
//                      .accentColor(Color.black)
//                      .padding()
//
      }
      .navigationTitle("Home")
    }
    
  }
  
  init() {
    model.getData()
  }
  
}

struct Homescreen_Previews: PreviewProvider {
  static var previews: some View {
    Homescreen()
  }
}
