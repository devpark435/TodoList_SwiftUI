//
//  ContentView.swift
//  TodoList
//
//  Created by 박현렬 on 2022/12/29.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Swift Todo List")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(Color.green)
                .multilineTextAlignment(.center)
            Text("Ryeol's First Swift Project").font(.subheadline).foregroundColor(.gray)
            NavigationLink(destination: ListView(), label: {Text("go")})
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
