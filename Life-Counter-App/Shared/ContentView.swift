//
//  ContentView.swift
//  Shared
//
//  Created by Ryan Vakhshoori on 7/4/21.
//

import SwiftUI

struct ContentView: View {
    @State var p1Life = 20
    @State var p2Life = 20
    func reset() {
        p1Life = 20
        p2Life = 20
    }
    var body: some View {
        VStack {
            ZStack {
                Text(String(p1Life))
                    .font(.largeTitle)
                        .padding()
                        .rotationEffect(.degrees(180))
                HStack {
                    Button(action: {
                        p1Life -= 1
                    }, label: {
                        Image(systemName: "minus")
                            .font(.largeTitle)
                            .frame(width: 200.0, height: 300.0)
                    })
                    Spacer()
                    Button(action: {
                        p1Life += 1
                    }, label: {
                        Image(systemName: "plus")
                            .font(.largeTitle).frame(width: 200.0, height: 300.0)
                    })
                }
            }
            Spacer()
            Button(action: {
                reset()
            }, label: {
                Image(systemName: "goforward")
                    .resizable()
                    .frame(width: 50, height: 50, alignment: .center)
                    .padding()
            })
            Spacer()
            ZStack {
                Text(String(p2Life))
                        .font(.largeTitle)
                        .padding()
                HStack {
                    Button(action: {
                        p2Life += 1
                    }, label: {
                        Image(systemName: "plus")
                            .font(.largeTitle)
                            .frame(width: 200.0, height: 300.0)
                    })
                    Spacer()
                    Button(action: {
                        p2Life -= 1
                    }, label: {
                        Image(systemName: "minus")
                            .font(.largeTitle)
                            .frame(width: 200.0, height: 300.0)
                    })
                }
            }
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
    }
}
