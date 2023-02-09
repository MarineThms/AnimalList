//
//  ContentView.swift
//  AnimalListExercise
//
//  Created by Apprenant 07 on 30/01/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .leading){
            Text("Animals")
                .font(.largeTitle)
                .fontWeight(.heavy)
            Spacer()
            ForEach(animals) { typeAnimal in
                HStack(){
                    Image(typeAnimal.imageAnimal)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 60, height: 60)
                        .clipShape(Circle())
                    VStack(alignment: .leading){
                        Text(typeAnimal.name)
                            .font(.title)
                        Text(typeAnimal.countryAnimal)
                            .font(.caption)
                            .foregroundColor(.gray)
                    }
                    .padding()
                }
                Divider()
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
struct Animal : Identifiable {
    var id = UUID()
    var name : String
    var countryAnimal: String
    var imageAnimal: String
}
var animals = [
    Animal(name: "Deer", countryAnimal: "England",imageAnimal: "deer"),
    Animal(name: "Bear", countryAnimal: "Scotland",imageAnimal: "bear"),
    Animal(name: "Bull", countryAnimal: "Mexico",imageAnimal: "bull"),
    Animal(name: "Eagle", countryAnimal: "United States",imageAnimal: "eagle"),
    Animal(name: "Fox", countryAnimal: "Antartica",imageAnimal: "fox"),
    Animal(name: "Horses", countryAnimal: "Brazil",imageAnimal: "horses"),
    Animal(name: "Monkey", countryAnimal: "Indonesia",imageAnimal: "monkey")
]
