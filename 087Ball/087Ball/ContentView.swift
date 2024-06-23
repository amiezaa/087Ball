//
//  ContentView.swift
//  087Ball
//
//  Created by amie on 23/6/2567 BE.
//

import SwiftUI

struct ContentView: View {
    @State var randomInt = 0
    @State var isShowBall = false
    @State var answer: String = " "
    @State var answers: [String] = ["อย่าเลย","ลองดูก็ได้","เอาจริงหรอ","คิดผิดคิดใหม่ได้","เอาเลยย","จัด","ไม่น่าดี....","จัดว่าเด็ด","น่าสนใจ","หยุด","นี่คิดแล้วหรอ","ไม่บอก","คิดเอง","ยากจัง","ตามเอมมี่","เห็นด้วย","ไม่ดีอะ","สุดๆ","ก็แย่แล้ว","555","ถามคนข้าง ๆ","ตลกอะ"]
    @State var newAnswer:String = "New"
    var body: some View {
        ZStack {
    
            Color(.black)
                .ignoresSafeArea(.all)
            
            Image("Image2")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .onTapGesture {
                    isShowBall.toggle()
                }
           
            
            VStack{
                Spacer()
                Spacer()
                Spacer()
                Spacer()
                Spacer()
                Spacer()
                Text("Can't make a decision?")
                    .font(.largeTitle)
                    .foregroundStyle(LinearGradient(colors: [.white], startPoint: .leading, endPoint: .trailing))
                Spacer()
                if(isShowBall){
                    ZStack{
                        Spacer()
                        Spacer()
                            .padding()
                            .padding()
                        Image("Image1")
                            .resizable()
                            .frame(width: 300, height: 300)
                        Button(action: {
                            answer = answers.randomElement() ?? ""
                        }, label: {
                            
                            ZStack{
                                Circle()
                                    .foregroundColor(.white)
                                    .frame(width: 120)
                                Text("\(answer)")
                                    .bold()
                                    .font(.headline)
                            }
                            
                            
                        })
                        
                    }
                }
                    
                HStack{
                    TextField("Enter", text: $newAnswer)
                        .foregroundColor(.black)
                        .padding(.leading, 60.0)
                        .textFieldStyle(.roundedBorder)
                    Button("Add", action: {
                        answers.append(newAnswer)
                    })
                        .padding()
                        .background(Color(red: 0, green: 0, blue: 0.5))
                        .clipShape(Capsule())
                    Spacer()
                    Spacer()
                    Spacer()
                    Spacer()
                    Spacer()
                    
                }
                Spacer()
                Spacer()
                Spacer()
                Spacer()
                Spacer()
                Spacer()
                
                    
               
               
                
            }
        }
        .onShake {
            answer = answers.randomElement() ?? ""
        }

    }
}

/*
func giveAnswer(){
    answer = answer.randomElement()
}*/
    
    
    #Preview {
        ContentView()
    }

