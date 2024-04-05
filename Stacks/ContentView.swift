//
//  ContentView.swift
//  Stacks
//
//  Created by alberto on 4/4/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            CabeceraView()
            HStack (spacing: 10){
                LuchadorView(luchador: "Goku", fuerza: "800/1000", trans: "Ultra Instinto", colorTexto:.black, colorFondo: .purple)
                
                ZStack {
                    LuchadorView(luchador: "Vegeta", fuerza: "790/1000", trans: "Ultra Instinto", colorTexto:.black, colorFondo: Color(red: 240/255, green:240/255, blue:240/255))
                    Text("Lo puedes entrenar!!")
                        .font(.system(.caption,design: .rounded))
                        .foregroundColor(.black)
                        .fontWeight(.bold)
                        .background(.yellow)
                        .padding(5)
                        .offset(x: 0, y: 60)
                }
                           /*
                VStack{
                    Text("Vegeta")
                        .font(.system(.title,design: .rounded))
                        .fontWeight(.black)
                        .foregroundColor(.blue)
                    Text("790/1000")
                        .font(.system(size:15, weight: .heavy, design: .rounded))
                        .foregroundColor(.blue)
                    Text("Ultra Instinto")
                        .font(.headline)
                        .foregroundColor(.gray)
                }
                .padding(40)
                .background(Color(red: 240/255, green:240/255, blue:240/255))
            .cornerRadius(10)         */
                             
            }.padding(.horizontal,7.0)
        
            ZStack{
                LuchadorView(luchador: "Vegito", fuerza: "1000/1000", trans: "Super saiyan Blue", colorTexto:.black, colorFondo: .green)
                Image("vegito")
                    .offset(x: 120, y: -50)
                    
                Text("Goku y Vegeta fusionados!!")
                    .offset(x: 0, y: 60)
                
            }
            .padding(.horizontal,7.0)
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct CabeceraView: View {
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing:2){
                Text("Elige")
                    .font(.system(.largeTitle,design: .rounded))
                    .foregroundColor(.purple)
                    .fontWeight(.black)
                Text("luchador")
                    .font(.system(.largeTitle,design: .rounded))
                    .foregroundColor(.purple)
                    .fontWeight(.black)
            }
            Spacer()
        }
        .padding(.bottom,30)
        .padding(.horizontal,7.0)
    }
}

struct LuchadorView: View {
    var luchador: String
    var fuerza: String
    var trans: String
    var colorTexto: Color
    var colorFondo: Color
    
    var body: some View {
        VStack{
            Text(luchador)
                .font(.system(.title,design: .rounded))
                .fontWeight(.black)
                .foregroundColor(colorTexto)
            Text(fuerza)
                .font(.system(size:15, weight: .heavy, design: .rounded))
                .foregroundColor(colorTexto)
            Text(trans)
                .font(.headline)
                .foregroundColor(.gray)
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 100,maxHeight: 150)
        .padding(40)
        .background(colorFondo)
        .cornerRadius(10)
    }
}

