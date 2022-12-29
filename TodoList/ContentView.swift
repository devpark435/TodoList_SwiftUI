//
//  ContentView.swift
//  TodoList
//
//  Created by 박현렬 on 2022/12/29.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            VStack(alignment: .center) {
                Text("Swift Todo List")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(Color.green)
                    .multilineTextAlignment(.center)
                Text("Ryeol's First Swift Project").font(.subheadline).foregroundColor(.gray)
                NavigationLink(destination: ListView().navigationBarBackButtonHidden(true)) {
                    Text("start").font(.title).foregroundColor(Color.white).frame(width: 100, height: 60,alignment: .center).background(RoundedRectangle(cornerRadius: 10).fill(Color.green)).padding(10)
                }
            }
            .padding()
        }.navigationBarTitle("SwiftUI")}
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
