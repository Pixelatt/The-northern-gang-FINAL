//
//  PawPatrolQuiz.swift
//  The northern gang FINAL
//
//  Created by T Krobot on 15/6/22.
//

import SwiftUI

struct PawPatrolQuiz: View{
    
    
    @State var questionIndex = 0
    @State var score = 0
    @State var correct = false
    @State var wrong = false
    @State var isSheetShown = false
    
    
    var body: some View {
        VStack (){
            Text("Question \(questionIndex + 1)")
                .font(.largeTitle)
            Text(questionsArray[questionIndex].question)
                .padding()
                .font(.largeTitle)
            
            
            HStack {
                Button {
                    wrong = true
                    
                } label:{
                    Text(questionsArray[questionIndex].option1)
                        .padding()
                        .background(.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                        .font(.title)
                        .padding(20)
                }
                Button {
                    correct = true
                        
                } label:{
                    Text(questionsArray[questionIndex].option2)
                        .padding()
                        .background(.green)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                        .font(.title)
                        .padding(20)
                        
                    }
                }
            
            HStack{
                Button {
                    wrong = true
                    
                } label:{
                    Text(questionsArray[questionIndex].option3)
                        .padding()
                        .background(.purple)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                        .font(.title)
                        .padding(20)
                }
                Button {
                    wrong = true
                        
                } label:{
                    Text(questionsArray[questionIndex].option4)
                        .padding()
                        .background(.red)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                        .font(.title)
                        .padding(20)
                    }
                }
        }
        .alert("Good job that is correct!", isPresented: $correct){
            Button(role: .none){
                print("YAY!")
                questionIndex += 1
                score += 1
                if questionIndex == questionsArray.count - 1{
                  isSheetShown = true
                    questionIndex = 0
              }

            } label: {
                Text("Yes")
                
            }
            
        }
        .alert("No that is wrong are you okay?", isPresented: $wrong){
            Button(role: .none){
                print("YAY!")
                questionIndex += 1
                if questionIndex == questionsArray.count - 1 {
                    
                  isSheetShown = true
                    questionIndex = 0
              }

                
            } label: {
                Text("Yes")
            }
        
            }
        .sheet(isPresented: $isSheetShown){
            ResponseView()
        }
        
    }
    

    
    
}
    
    struct PawPatrolQuiz_Previews: PreviewProvider {
        static var previews: some View {
            PawPatrolQuiz()
        }
    }
    
