//
//  ContentView.swift
//  about me
//
//  Created by Siddhi B on 7/13/23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var facts = false
    
    var body: some View {
        ZStack {
            Color(.systemBrown)
                .ignoresSafeArea()
            VStack {
                Text("Hi! My name is Siddhi!!")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                    .foregroundColor(Color("dark blue"))
                Spacer()
                    .frame(height: 650.0)
            }
            VStack {
                Image("fam photo")
                    .resizable(resizingMode: .stretch)
                    .aspectRatio(contentMode: .fit)
                Spacer()
                    .frame(height: 250.0)
            }.padding()
            VStack {
                Spacer()
                    .frame(height: 150.0)
                Button("Click here for some facts about me!") {
                    facts.toggle()
                }
                .buttonStyle(.borderedProminent)
                .tint(Color("dark blue"))
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            }
                VStack {
                    if facts {
                        Spacer()
                            .frame(height: 480.0)
                        Text("I love dogs!")
                            .font(.title3)
                            .fontWeight(.semibold)
                            .foregroundColor(Color.white)
                            .multilineTextAlignment(.center)
                        Text("I love playing tennis!")
                            .font(.title3)
                            .fontWeight(.semibold)
                            .foregroundColor(Color.white)
                            .multilineTextAlignment(.center)
                        Text("My younger cousin and older sister are my favorite people to hang out with!")
                            .font(.title3)
                            .fontWeight(.semibold)
                            .foregroundColor(Color.white)
                            .multilineTextAlignment(.center)
                        Spacer()
                            .frame(height: 10.0)
                        Image("raadhya")
                            .resizable(resizingMode: .stretch)
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 200.0)
                       
                    }
                }.padding()
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
