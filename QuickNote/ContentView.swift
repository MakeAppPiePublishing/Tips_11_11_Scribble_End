//
//  ContentView.swift
//  QuickNote
//
//  Created by Steven Lipton on 7/10/20.
// An exercise file for iOS Development Tips Weekly
// A weekly course on LinkedIn Learning for iOS developers
//  Season 11 (Q3 2020) video 11
//  by Steven Lipton (C)2020, All rights reserved
// Learn more at https://linkedin-learning.pxf.io/YxZgj
//This Week:  An introduction to the TextEditor and Scribble
//  For more code, go to http://bit.ly/AppPieGithub


import SwiftUI
let clearString = "Write your text here! \n"
struct ContentView: View {
    @State var text:String = clearString
    var body: some View {
        VStack {
            HStack {
                Button(action:{text = clearString}) {
                    Image(systemName:"clear")
                        .font(.largeTitle)
                        .foregroundColor(.black)
                }
                .padding(.leading)
                Text(text)
                    .padding()
                Spacer()
            }
            .background(Color(white:0.75))
            TextEditor(text:$text)
                .font(.largeTitle)
                .padding()
                .border(Color.black, width: 6)
        } .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
