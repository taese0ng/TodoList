//
//  ContentView.swift
//  ToDoList
//
//  Created by taese0ng on 2022/02/07.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack(alignment: .bottomTrailing){
            
            VStack(alignment: .leading, spacing: 0){
                
                HStack{
                    Image(systemName: "line.horizontal.3")
                        .font(.largeTitle)
                    
                    Spacer()
                    
                    Image(systemName: "person.crop.circle.fill")
                        .font(.largeTitle)
                }
                .padding(15)
                
                Text("김태성 할 일목록")
                    .font(.system(size: 40))
                    .fontWeight(.black)
                    .padding(.horizontal, 15)
                
                
                ScrollView{
                    VStack{
                        MyProjectCard()
                        
                        MyBasicCard()
                        MyCard(
                            icon: "tray.fill",
                            title: "책상 정리하기",
                            start: "10 AM",
                            end: "11 AM",
                            bgColor: Color.blue
                        )
                        MyCard(
                            icon: "tv.fill",
                            title: "영상 다시보기",
                            start: "8 AM",
                            end: "9 AM",
                            bgColor: Color.red
                        )
                        MyCard(
                            icon: "cart.fill",
                            title: "마트 장보기",
                            start: "10 AM",
                            end: "11 AM",
                            bgColor: Color.orange
                        )
                        MyCard(
                            icon: "gamecontroller.fill",
                            title: "오버워치 한판하기",
                            start: "2 PM",
                            end: "3 PM",
                            bgColor: Color.blue
                        )
                        
                    }
                    .padding(10)
                }
            }
            
            Circle()
                .foregroundColor(Color.yellow)
                .frame(width: 60, height: 60)
                .overlay(
                    Image(systemName: "plus")
                        .foregroundColor(Color.white)
                        .font(.system(size: 30))
                )
                .padding(10)
                .shadow(radius: 20)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
