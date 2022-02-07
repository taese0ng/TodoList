//
//  MyBasicCard.swift
//  ToDoList
//
//  Created by taese0ng on 2022/02/08.
//

import SwiftUI

struct MyBasicCard: View {
    var body: some View {
    
        HStack(spacing: 20){
            Image(systemName: "flag.fill")
                .font(.system(size: 40))
                .foregroundColor(Color.white)
            
            VStack(alignment:.leading, spacing: 0){
                Divider().opacity(0) // 좌우 길이를 위한 조치
                
                Text("안녕안녕 나는 태성이야")
                    .fontWeight(.bold)
                    .font(.system(size: 23))
                    .foregroundColor(Color.white)
                
                Spacer().frame(height: 5)
                
                Text("헬륨가스 먹었더니 이렇게 됐찌")
                    .foregroundColor(Color.white)
            }
        }
        .padding(20)
        .background(Color.purple)
        .cornerRadius(20)
    }
}

struct MyBasicCard_Previews: PreviewProvider {
    static var previews: some View {
        MyBasicCard()
    }
}
