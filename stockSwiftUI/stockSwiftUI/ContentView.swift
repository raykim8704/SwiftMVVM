//
//  ContentView.swift
//  stockSwiftUI
//
//  Created by KwanghoonKim on 2021/07/19.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            ZStack(alignment: .leading){
                Color.black
                Text("January 5 2020")
                    .font(.custom("Arial", size: 32))
                    .fontWeight(.bold)
                    .foregroundColor(Color.gray)
                    .padding(EdgeInsets(top: 0, leading: 20, bottom: 0, trailing: 0))
                    .offset(y: -400)
            }
            .navigationBarTitle("Stock")
            
        }
        .edgesIgnoringSafeArea(Edge.Set(.top))
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
