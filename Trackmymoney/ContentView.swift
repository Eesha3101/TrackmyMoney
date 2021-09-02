//
//  ContentView.swift
//  Trackmymoney
//
//  Created by Eesha Patel on 2021-09-02.
//

import SwiftUI

struct ContentView: View {
    @State var moneytospend: Int = 0
    var money = [5, 10, 15, 20, 25, 50, 100]
    var body: some View {
        ZStack {
            Color.white
                .ignoresSafeArea()
            VStack {
        Text("My Walet")
            .padding()
        Text("How much money would you like to spend today?")
                Picker("Money", selection: $moneytospend){
                    ForEach(money, id: \.self){
                        Text("\($0) dollars")
                    }
                }
                ZStack {
                Rectangle()
                    .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 70, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                    .cornerRadius(40)
                    Button(action:{
                        moneytospend
                    }) {
                        HStack {
                        Image(systemName: "plus.square")
                            .foregroundColor(.white)
                    Text("Add")
                        .foregroundColor(.white)
                        }
                    }
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
