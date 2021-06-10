//
//  ContentView.swift
//  H4Q3R
//
//  Created by Marcus Daquis on 6/7/21.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var networkManager = NetworkManager()
    
    var body: some View {
        NavigationView {
            List(networkManager.posts){ post in
                NavigationLink(
                    destination: DetailView(url: post.url),
                    label: {
                        
                        HStack(alignment: .top) {
                            Text(String(post.points))
                            Text(post.title)
                        }
                    })
             
            }
            .navigationTitle("H4Q3R News")
        }
        .onAppear {
            networkManager.fetchData()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
            .previewDevice("iPhone 12")
    }
}
