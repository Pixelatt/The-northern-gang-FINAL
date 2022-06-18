//
//  ContentView.swift
//  The northern gang FINAL
//
//  Created by T Krobot on 15/6/22.
//

import SwiftUI



struct ContentView: View {
    
    @State var isSheetShown = false
    
    var body: some View {
        NavigationView{
            ZStack{
                Color.clear
                    .edgesIgnoringSafeArea(.all)
                
                VStack{
                    Text("Welcome to the northern atmostphere!")
                        .font(.system(size:35))
                        .foregroundColor(.red)
                        .padding()
                        .background(.white)
                        .border(Color.yellow, width: 5)
                        .cornerRadius(30)
                    Spacer()
                    
                    Text("Choose one of the quizzes below!")
                        .padding()
                        .font(.system(size:20))
                    
                    Spacer()
                    Image("PawPatrol.all")
                        .resizable()
                        .scaledToFit()
                    
                    NavigationLink {
                        PawPatrolQuiz()
                    } label: {
                        Text("p🐾wpatr🐶l ")
                            .font(.title)
                            .foregroundColor(.white)
                            .padding()
                            .padding()
                            .background(.teal)
                            .cornerRadius(25)
                    }
                    .padding()
                    Text("*more quizzes coming soon!*"
                    )
                    .font(.system(size:10))
                    .foregroundColor(.pink)
                    .padding()
                }
            }
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
