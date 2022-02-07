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
                        MyBasicCard()
                        MyBasicCard()
                        MyBasicCard()
                        MyBasicCard()
                        MyBasicCard()
                        MyBasicCard()
                        MyBasicCard()
                        MyBasicCard()
                        
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
