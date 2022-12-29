//
//  ListView.swift
//  TodoList
//
//  Created by 박현렬 on 2022/12/29.
//

import SwiftUI

struct ListView: View {
    struct TodoList: Identifiable {
        let id = UUID()
        var content: String
    }
    private var todoLists = [
        TodoList(content: "1"),
        TodoList(content: "2"),
        TodoList(content: "3")
    ]
    var body: some View {
        NavigationView{
            VStack{
                    List {
                        ForEach(0..<todoLists.count, id: \.self) { i in
                            HStack {
                                Button(action: {} , label: {Image(systemName: "square")})
                                Text(todoLists[i].content)
                                Spacer()
                                Button(action: {} , label: {Image(systemName: "trash")})
                            }
                        }
                    }
                }.navigationTitle("Today")
            }
        }
    }


struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}
