//
//  TabBarView.swift
//  AppliBeBetter
//
//  Created by Marine Cathala-gil on 21/06/2023.
//

import SwiftUI

struct TabBarView: View {
    @State private var selection = 2
    var body: some View {
        
        TabView {
        
        CalendrierView()
            .tabItem {
                Label("Calendrier", systemImage: "calendar")
            }.tag(0)
        
        MessageView()
            .tabItem {
                Label("Messages", systemImage: "bubble.right")
            }.tag(1)

            
        AccueilView()
                .tabItem {
                    Image("logo")
                        .renderingMode(.template)
//                        .resizable()
//                        .scaledToFit()
//                        .frame(width: 44,height: 44)
                    Text("Accueil")
                }.tag(2)

        PlaylistView()
                .tabItem {
                    Label("Playlist", systemImage: "music.note")
                }.tag(3)

            
        ProfilView()
            .tabItem {
                Label("Profil", systemImage: "person")
            }.tag(4)

        
        
        }
        .accentColor(Color("bleu"))
    }
}

struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView()
    }
}
