//
//  MyList.swift
//  ToDoList
//
//  Created by taese0ng on 2022/02/10.
//

import SwiftUI

struct MyList: View {
    
    @Binding var isNavigationBarHidden: Bool
    
    init(isNavigationBarHidden: Binding<Bool> = .constant(false)){
        _isNavigationBarHidden = isNavigationBarHidden
        // _isNavigationBarHidden -> 위의 Binding 선언한 변수
        // isNavigationBarHidden -> 매개변수
    }
    
    var body: some View {
        List{
            Section(
                header: Text("오늘 할 일")
                        .font(.headline)
                        .foregroundColor(Color.black),
                footer: Text("footer")
            ){
                ForEach(1...3, id: \.self) { itemIndex in
                    MyCard(
                        icon: "tv.fill",
                        title: "영상 다시보기\(itemIndex)",
                        start: "8 AM",
                        end: "9 AM",
                        bgColor: Color.red
                    ).listRowSeparator(.hidden)
                }
            }
            .listRowInsets(EdgeInsets.init(top: 10, leading: 10, bottom: 10, trailing: 10))
            
            Section(
                header: Text("내일 할 일")
                        .font(.headline)
                        .foregroundColor(Color.black)
            ){
                ForEach(1...10, id: \.self) { itemIndex in
                    MyCard(
                        icon: "tv.fill",
                        title: "영상 다시보기\(itemIndex)",
                        start: "8 AM",
                        end: "9 AM",
                        bgColor: Color.blue
                    ).listRowSeparator(.hidden)
                }
            }
            .listRowInsets(EdgeInsets.init(top: 10, leading: 10, bottom: 10, trailing: 10))
            .listRowBackground(Color.yellow)
        }
        .listStyle(.grouped)
        .navigationBarTitle("내 목록")
        .onAppear{
            self.isNavigationBarHidden = false
        }
    } // View
}

struct MyList_Previews: PreviewProvider {
    static var previews: some View {
        MyList()
    }
}
