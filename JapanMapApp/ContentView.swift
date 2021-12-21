//
//  ContentView.swift
//  JapanMapApp
//
//  Created by Nobuhiro Takahashi on 2021/07/20.
//

import SwiftUI

struct ButtonLabel: View {
    var label: String
    var body: some View {
        Text(label)
            .bold()
            .font(.callout)
            .padding(8)
            .background(Capsule(style: .continuous)
                            .fill(Color.white))
            .overlay(Capsule(style: .continuous)
                            .stroke(Color.accentColor, lineWidth: 2))
            
    }
}

struct JapanMapView: View {
    var body: some View {
        GeometryReader { geometry in
            ZStack {
                Image("japanmap")
                    .resizable()
                    .scaledToFit()
                
                Button(action: {
                }, label: {
                    ButtonLabel(label: "北海道・東北")
                }).position(x: geometry.size.width-80, y: geometry.size.height * 0.3)
                
                Button(action: {
                }, label: {
                    ButtonLabel(label: "関東")
                }).position(x: geometry.size.width-40, y: geometry.size.height * 0.64)
                
                Button(action: {
                }, label: {
                    ButtonLabel(label: "中部")
                }).position(x: geometry.size.width*0.66 , y: geometry.size.height * 0.67)
                
                Button(action: {
                }, label: {
                    ButtonLabel(label: "関西")
                }).position(x: geometry.size.width*0.5, y: geometry.size.height * 0.7)
                
                Button(action: {
                }, label: {
                    ButtonLabel(label: "中国")
                }).position(x: geometry.size.width*0.32, y: geometry.size.height * 0.64)
                
                Button(action: {
                }, label: {
                    ButtonLabel(label: "四国")
                }).position(x: geometry.size.width*0.335, y: geometry.size.height * 0.8)
                
                Button(action: {
                }, label: {
                    ButtonLabel(label: "九州\n沖縄")
                }).position(x: geometry.size.width*0.12, y: geometry.size.height * 0.74)
            }
        }
        .background(Color.white)
    }
}

struct ContentView: View {
    var body: some View {
        JapanMapView()
            .frame(width: UIScreen.main.bounds.size.width, height: UIScreen.main.bounds.size.width, alignment: .center)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
