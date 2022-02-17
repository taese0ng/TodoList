//
//  AddList.swift
//  ToDoList
//
//  Created by taese0ng on 2022/02/18.
//

import SwiftUI

struct AddList: View {
    @Binding var isNavigationBarHidden: Bool
    @State private var selectedIcon: Icon? = nil
    @State private var input: String = ""
    @State private var startTime: String = ""
    @State private var endTime: String = ""
    
    private struct Icon: Identifiable {
        let title:String
        let bgColor:Color
        var id: String { title }
    }
    
    private let icons: [Icon] = [
        Icon(title: "flag", bgColor: Color.purple),
        Icon(title: "tray", bgColor: Color.blue),
        Icon(title: "tv", bgColor: Color.red),
        Icon(title: "cart", bgColor: Color.orange),
        Icon(title: "gamecontroller", bgColor: Color.yellow),
        Icon(title: "book", bgColor: Color.green),
        Icon(title: "heart", bgColor: Color.red),
        Icon(title: "bed.double", bgColor: Color.gray),
        Icon(title: "pills", bgColor: Color.blue),
    ]
    
    init(isNavigationBarHidden: Binding<Bool> = .constant(false)){
        _isNavigationBarHidden = isNavigationBarHidden
        // _isNavigationBarHidden -> 위의 Binding 선언한 변수
        // isNavigationBarHidden -> 매개변수
    }
    
    func checkValue() -> Bool {
        return (selectedIcon != nil) && (!input.isEmpty) && (!startTime.isEmpty) && (!endTime.isEmpty)
    }
    
    var body: some View {
        VStack{
            
            ScrollView(.horizontal) {
                HStack(spacing: 10) {
                    ForEach(icons){ icon in
                        Button(action: {
                            self.selectedIcon = icon
                        }){
                            Image(systemName: "\(icon.title).fill")
                                .imageScale(.large)
                                .font(.system(size: 30))
                                .frame(width:80, height:80)
                                .background(icon.bgColor)
                                .foregroundColor(.white)
                                .cornerRadius(100)
                                .overlay(
                                    Circle()
                                        .stroke(lineWidth: selectedIcon?.title == icon.title ? 8 : 0)
                                        .foregroundColor(selectedIcon?.bgColor)
                                )
                        }
                    }
                }.padding()
            }
            .frame(height: 100)
            .padding(.bottom, 50)
            .padding(.top, 50)
            
            TextField("새로운 할 일", text: $input)
                .padding(10)
            
            
            TextField("시작 시간", text: $startTime)
                .padding(10)
            
            
            TextField("마감 시간", text: $endTime)
                .padding(10)
            
            Spacer()
            
            Button(action: {
                
            }) {
                Text("생성하기")
                    .frame(maxWidth: .infinity, maxHeight: 50)
                    .foregroundColor(.white)
                    .background(checkValue() ? Color.blue : Color.gray)
                    .cornerRadius(10)
                    .padding(15)
            }
            .disabled(!checkValue())
        }
        .navigationBarTitle("할 일 추가하기")
        .onAppear{
            self.isNavigationBarHidden = false
        }
    }
}

struct AddList_Previews: PreviewProvider {
    static var previews: some View {
        AddList()
    }
}
