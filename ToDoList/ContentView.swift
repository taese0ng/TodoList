//
//  ContentView.swift
//  ToDoList
//
//  Created by taese0ng on 2022/02/07.
//

import SwiftUI

struct ContentView: View {
    
    @State var isNavigationBarHidden:Bool = false
    
    var body: some View {
        
        NavigationView{
            ZStack(alignment: .bottomTrailing){
                
                VStack(alignment: .leading, spacing: 0){
                    
                    HStack{
                        
                        NavigationLink(destination: MyList(isNavigationBarHidden: self.$isNavigationBarHidden)){
                            Image(systemName: "line.horizontal.3")
                                .font(.largeTitle)
                                .foregroundColor(Color.black)
                        }
                        
                        Spacer()
                        
                        NavigationLink(destination: AddList()){
                            Circle()
                                .foregroundColor(Color.yellow)
                                .frame(width: 40, height: 40)
                                .overlay(
                                    Image(systemName: "plus")
                                        .foregroundColor(Color.white)
                                        .font(.system(size: 23))
                                )
                        }
                        
                        
                    }
                    .padding(15)
                    
                    Text("김태성 할 일목록")
                        .font(.system(size: 40))
                        .fontWeight(.black)
                        .padding(.horizontal, 15)
                    
                    
                    ScrollView{
                        VStack{
                            MyProjectCard()
                            
                            MyCard(
                                icon: "flag.fill",
                                title: "5km 걷기",
                                start: "7 PM",
                                end: "8 PM",
                                bgColor: Color.purple
                            )
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
                
                
            } // ZStack
            .navigationTitle("뒤로가기")
            .navigationBarHidden(self.isNavigationBarHidden)
            .onAppear{
                self.isNavigationBarHidden = true
            }
            
            
            
        } // NavigationView
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
