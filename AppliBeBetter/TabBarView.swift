//
//  TabBarView.swift
//  AppliBeBetter
//
//  Created by Marine Cathala-gil on 21/06/2023.
//

import SwiftUI

struct TabBarView: View {
    var body: some View {
        TabView {
        
        CalendrierView()
            .tabItem {
                Label("Calendrier", systemImage: "calendar")
            }
        
        MessageView()
            .tabItem {
                Label("Messages", systemImage: "bubble.right")
            }
            
        AccueilView()
                .tabItem {
                    Image("logo")
                        .resizable()
                        .scaledToFit()
                    Text("Accueil")
                }
            
        PlaylistView()
                .tabItem {
                    Label("Playlistcalendar.badge.clock", systemImage: "music.note")
                }
            
        ProfilView()
            .tabItem {
                Label("Profil", systemImage: "person")
            }
        
        
        }
    }
}

struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView()
    }
}
