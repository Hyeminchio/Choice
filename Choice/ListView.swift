//
//  ListView.swift
//  Choice
//
//  Created by Hyemin Choi on 2022/05/01.
//

import SwiftUI


struct SongListView: View {
    

    
    var artists = ""
    var songs = ""
    
    var body: some View {
        VStack (alignment: .leading){
            Text(songs)
                .font(.system(size: 17))
                .foregroundColor(Color("BlackFont"))
            Spacer()
                .frame(height: 3)
            Text(artists)
                .font(.system(size: 13))
                .foregroundColor(Color("GreyFont"))
            Divider()
        }
        .padding(.leading, 20)
        .padding(.trailing, 20)
    }
}



struct ListView: View {
    var songList: [Song] = []
    var img = Image("Card0")
    var listName = "A-List"
    

        @Environment(\.openURL) var openURL

    
    var body: some View {
            ScrollView {
                
                
                VStack (alignment: .leading) {
                    ZStack {
                        
                        img
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                    }
                    .offset(y:-100)
                    
                    ForEach(songList, id: \.self){ song in
                        SongListView(artists: song.artist, songs: song.title)
                        
                    }
                    .offset(y:-90)
                }
                
            }.navigationBarTitle(Text(listName))

            .navigationBarItems(trailing:
                        HStack {
                            Button(action: {
                                if let url = URL(string: "https://music.apple.com/kr/playlist/a-list/pl.u-kv9l0gVuX7bvek") {
                                       UIApplication.shared.open(url)
                                    }
                            }) {
                                Image(systemName: "link")
                            }
                        })
    }
}



struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView(songList: [
            Song(title: "Venice Bitch", artist: "Lana Del Rey"),
            Song(title: "Living Legend", artist: "Lana Del Rey"),
            Song(title: "Young and Beautiful", artist: "Lana Del Rey")
        ])
    }
}
