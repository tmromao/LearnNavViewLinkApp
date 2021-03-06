//
//  ContentView.swift
//  LearnNavViewLinkApps
//
//  Created by Tiago Miguel de Jesus Romao on 04/11/2021.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isActive:Bool = false
    
    var body: some View {
        
        NavigationView {
            
            NavigationLink(isActive: $isActive){
                SecondView(isActive: $isActive)
            } label: {
                Text("Second view")
            }.navigationTitle("Content view")
            
            
//            NavigationLink {
//                SecondView()
//            }label: {
//                Text("Go to Second view")
//            }.navigationTitle("Content view")
//
            //        List(1...20, id:\.self){index in
            //            NavigationLink {
            //                DetailView(index: index)
            //            } label: {
            //                Text("\(index)")
            //            }
            //
            //
            //        }
            //            NavigationLink(isActive: $isActive) {
            //                DetailView()
            //            } label: {
            //                Button("Go to detail view"){
            //                    isActive = true
            //                }
            //            }
            //
            
        }
        
    }
    
}

struct SecondView: View{
    
    @Binding var isActive: Bool
    
    var body: some View {
        NavigationLink {
            ThirdView(isActive: $isActive)
        } label: {
            Text("Third view")
        }.navigationTitle("Second view")
    }
}

struct ThirdView:View{
    
    @Binding var isActive: Bool
    
    var body: some View {
        NavigationLink {
            ContentView()
        } label: {
            Button("Go to content view")	{
                isActive = false
            }
        }.navigationTitle("Third view")
    }
}


struct DetailView:View{
    
    let index:Int
    
    var body: some View {
        Text("Detail view : \(index)")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

