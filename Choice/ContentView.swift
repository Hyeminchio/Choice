//
//  ContentView.swift
//  Choice
//
//  Created by Hyemin Choi on 2022/04/28.
//

import SwiftUI

let songList: [[Song]] = [
    [
        Song(title: "Venice Bitch", artist: "Lana Del Rey"),
        Song(title: "Living Legend", artist: "Lana Del Rey"),
        Song(title: "Young and Beautiful", artist: "Lana Del Rey"),
        Song(title: "Get Free", artist: "Lana Del Rey"),
        Song(title: "Amie", artist: "Damien Rice"),
        Song(title: "The Greatest Bastard", artist: "Damien Rice"),
        Song(title: "Volcano", artist: "Damien Rice"),
        Song(title: "Cannonball", artist: "Damien Rice"),
        Song(title: "Blackbird", artist: "The Beatles"),
        Song(title: "Strawberry Fields Forever", artist: "The Beatles"),
        Song(title: "In My Life", artist: "The Beatles"),
        Song(title: "Here Comes the Sun", artist: "The Beatles"),
        Song(title: "Gravity", artist: "John Mayer"),
        Song(title: "Edge of Desire", artist: "John Mayer"),
        Song(title: "3X5", artist: "John Mayer"),
        Song(title: "You're Gonna Live Forever in Me", artist: "John Mayer"),
        Song(title: "no song without you", artist: "HONNE"),
        Song(title: "gone gone gone", artist: "HONNE"),
        Song(title: "Day 1", artist: "HONNE"),
        Song(title: "COMING HOME (feat. NIKI)", artist: "HONNE")
    ],
    [
        Song(title: "Wildfire", artist: "Cautious Clay"),
        Song(title: "SWIM HOME", artist: "Cautious Clay"),
        Song(title: "High Risk Travel", artist: "Cautious Clay"),
        Song(title: "Cold War", artist: "Cautious Clay"),
        Song(title: "Change My Mind", artist: "Peach Tree Rascals"),
        Song(title: "Mariposa", artist: "Peach Tree Rascals"),
        Song(title: "Mango", artist: "Peach Tree Rascals"),
        Song(title: "Lost", artist: "Frank Ocean"),
        Song(title: "Pink + White", artist: "Frank Ocean"),
        Song(title: "Godspeed", artist: "Frank Ocean"),
        Song(title: "Sweet Life", artist: "Frank Ocean"),
        Song(title: "Mean It", artist: "Lauv & LANY"),
        Song(title: "I'm so Tired", artist: "Lauv & Troye Sivan"),
        Song(title: "Sims", artist: "Lauv"),
        Song(title: "I Like Me Better", artist: "Lauv"),
        Song(title: "Sucker Punch", artist: "Sigrid"),
        Song(title: "Don't Feel Like Crying", artist: "Sigrid"),
        Song(title: "Bad Life", artist: "Sigrid & Bring Me The Horizon")
        
    ],
    [
        Song(title: "me", artist: "The 1975"),
        Song(title: "So Far (It's Alright)", artist: "The 1975"),
        Song(title: "Sincerity is Scary", artist: "The 1975"),
        Song(title: "Be My Mistake", artist: "The 1975"),
        Song(title: "I Dare You", artist: "The XX"),
        Song(title: "VCR", artist: "The XX"),
        Song(title: "Heart Skipped a Beat", artist: "The XX"),
        Song(title: "Shelter", artist: "The XX"),
        Song(title: "Lost Angel Nights", artist: "James Blake"),
        Song(title: "The Wilhelm Scream", artist: "James Blake"),
        Song(title: "Assume Form", artist: "James Blake"),
        Song(title: "Girl", artist: "SYML"),
        Song(title: "Where's My Love", artist: "SYML"),
        Song(title: "Sweet Home", artist: "SYML"),
        Song(title: "Perth", artist: "Bon Iver"),
        Song(title: "Holocene", artist: "Bon Iver"),
        Song(title: "666 ʇ", artist: "Bon Iver")
        
        
    ],
    [
        Song(title: "Home", artist: "Bruno Major"),
        Song(title: "Nothing", artist: "Bruno Major"),
        Song(title: "The Most Beautiful Thing", artist: "Bruno Major"),
        Song(title: "Regent's Park", artist: "Bruno Major"),
        Song(title: "Change", artist: "Big Thief"),
        Song(title: "12,000 Lines", artist: "Big Thief"),
        Song(title: "Simulation Swarm", artist: "Big Thief"),
        Song(title: "Paul", artist: "Big Thief"),
        Song(title: "The Woman I Love", artist: "Jason Mraz"),
        Song(title: "93 Million Miles", artist: "Jason Mraz"),
        Song(title: "Be Honest (feat. Inara George)", artist: "Jason Mraz"),
        Song(title: "Unlonely", artist: "Jason Mraz"),
        Song(title: "You and I Both", artist: "Jason Mraz"),
        Song(title: "Block me out", artist: "Gracie Abrams"),
        Song(title: "Friend", artist: "Gracie Abrams"),
        Song(title: "Older", artist: "Gracie Abrams"),
        Song(title: "Better", artist: "Gracie Abrams"),
        Song(title: "Starting to Get to You", artist: "Jenson Mcrae"),
        Song(title: "Take it Easy", artist: "Jenson Mcrae"),
        Song(title: "Gone", artist: "Chiiild & Jenson Mcrae")
        
    ],
    [
        Song(title: "All I Want For Christmas is You", artist: "Mariah Carey"),
        Song(title: "It's Beginning to Look a Lot like Christmas", artist: "Michael Buble"),
        Song(title: "Underneath the Tree", artist: "Kelly Clarkson"),
        Song(title: "Santa's Coming For Us", artist: "Sia"),
        Song(title: "Snowman", artist: "Sia"),
        Song(title: "Christmas Lights", artist: "Coldplay"),
        Song(title: "River", artist: "Joni Mitchell"),
        Song(title: "Christmas Got Colder", artist: "Anson Seabra"),
        Song(title: "Gingerbread House", artist: "Anson Seabra"),
        Song(title: "Christmas Song", artist: "Phoebe Bridgers"),
        Song(title: "Another Year", artist: "FINNEAS"),
        Song(title: "Merry Christmas Everyone", artist: "Hannah Grace"),
        Song(title: "Our Last Christmas Eve", artist: "We Three"),
        
        
        
        
    ]
]

struct ContentView: View {
    var body: some View {
        NavigationView{
            ScrollView {
                VStack(alignment: .leading, spacing: 20){
                    CardView(artists: "Lana Del Rey · Damien Rice · The Beatles · John Mayer · HONNE", img: Image("Card0"), name: "A-List", color: Color("PinkCard"), songList: songList[0])
                    CardView(artists: "Cautious Clay · Peach Tree Rascals · Frank Ocean · Lauv · Sigrid", img: Image("Card1"), name: "출근길 등굣길", color: Color("BlueCard"), songList: songList[1])
                    CardView(artists: "The 1975 · The XX · James Blake · SYML · Bon Iver", img: Image("Card2"), name: "디자인 · 코딩할 때", color: Color("YellowCard"), songList: songList[2])
                    CardView(artists: "Bruno Major · Big Thief · Jason Mraz · Gracie Abrams · Jenson McRae ", img: Image("Card3"), name: "휴식", color: Color("GreenCard"), songList: songList[3])
                    CardView(artists: "Mariah Carey · Michael Buble · Sia · Michel Legrand · Joni Mitchell", img: Image("Card4"), name: "크리스마스", color: Color("RedCard"), songList: songList[4])
                }
                .padding(.horizontal, 20)
                .padding(.top, 20)
                .navigationBarTitleDisplayMode(.inline)
                .toolbar {
                    ToolbarItem(placement: .navigationBarLeading) {
                        Text("둘러보기")
                            .font(.system(size: 34, weight: .bold))
//                            .padding([.top], 60)
//                            .padding([.bottom], 30)
                            
                    }
                }
            }
        }
    }
}


struct CardView: View {
    var artists = ""
    var img = Image("Card0")
    var name = ""
    var color = Color.white
    var songList: [Song]
    
    var body: some View {
        NavigationLink(destination: ListView(songList: songList, img: img, listName: name)) {
            ZStack(alignment: .bottom) {
                
                RoundedRectangle(cornerRadius: 20)
                    .fill(color)
                    .frame(width: 350, height: 400)

                img
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .cornerRadius(20)
                
                
//                RoundedRectangle(cornerRadius: 20)
//                    .mask(LinearGradient(gradient: Gradient(colors: [Color.black.opacity(0.5), Color.black.opacity(0)]),
//                                         startPoint: .bottom, endPoint: .center))
//                    .frame(width: 350, height: 200)
                

                VStack(alignment: .leading) {
                    Text(artists)
                        .font(.system(size: 20))
                        .multilineTextAlignment(.leading)
                        .frame(width: 320)
                        .padding(.top, 20)
                        .padding(.leading, -5)
                    Spacer()
                    
                    Text(name)
                        .font(.system(size: 28, weight: .bold))
                        .padding(.leading, 5)
                        .padding(.bottom, 20)
                }
                .foregroundColor(Color.white)
                
            }
        }
        

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
