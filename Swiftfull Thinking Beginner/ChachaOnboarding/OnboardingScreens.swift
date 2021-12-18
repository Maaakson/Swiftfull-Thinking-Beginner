//
//  OnboardingScreens.swift
//  Swiftfull Thinking Beginner
//
//  Created by Максим Митрофанов on 17.12.2021.
//

import SwiftUI

class LocationFetcher: ObservableObject {
    @Published var locations = ["Batumi", "Tbilisi", "Moscow", "St Petersburg"]
}

struct OnboardingScreens: View {
    @AppStorage("location") var location: String = "Batumi"
    @AppStorage("favourite_drinks") var favouriteDrinks: String = ""
    
    @StateObject var onlineFetcher = LocationFetcher()
    
    
    var body: some View {
        NavigationView {
            firstScreen
        }
    }
}

struct OnboardingScreens_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingScreens()
    }
}

extension OnboardingScreens {

        var firstScreen: some View {
            VStack {
                HStack {
                    Text("Welcome to Drink Assistant")
                        .font(.largeTitle)
                        .bold()
                        .padding(.horizontal)
                        .multilineTextAlignment(.leading)
                    Spacer()
                }

                Image(systemName: "doc.text.magnifyingglass")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 300, height: 300)
                    .padding(.vertical)



                Text("The First app that helps you choose a bar to go today")
                    .font(.title3)
                    .bold()
                    .monospacedDigit()
                    .padding()

                Spacer()
                
                NavigationLink {
                    secondScreen
                } label: {
                    Text("Next")
                        .padding()
                        .background(
                            RoundedRectangle(cornerRadius: 10)
                                .foregroundColor(Color(uiColor: .secondarySystemBackground))
                        )
                }
            }
            .padding()
        }

        var secondScreen: some View {
            VStack {
                HStack {
                    Text("Please, choose your location")
                        .font(.largeTitle)
                    .bold()
                    .padding(.horizontal)
                    Spacer()
                }


                Spacer()

                Picker("", selection: $location) {
                    ForEach(onlineFetcher.locations, id: \.self) { location in
                        Text(location).tag(location)
                    }
                }
                .pickerStyle(.wheel)

                Spacer()


                NavigationLink {
                    testScreen
                } label: {
                    Text("Next")
                        .font(.title3)
                        .padding()
                        .background(
                            RoundedRectangle(cornerRadius: 10)
                                .foregroundColor(Color(uiColor: .secondarySystemBackground))
                        )
                }

            }
            .padding()
        }

        var thirdScreen: some View {
            VStack {
                HStack {
                    Text("Please, type in your favourite drinks")
                        .font(.largeTitle)
                        .bold()
                        .padding(.horizontal)
                    Spacer()
                }

                Spacer()

                TextField("Your Favourite Drinks", text: $favouriteDrinks)
                    .font(.title3)


                Spacer()

                Spacer()

                NavigationLink {
                    testScreen
                } label: {
                    Text("Next")
                        .font(.title3)
                        .padding()
                        .background(
                            RoundedRectangle(cornerRadius: 10)
                                .foregroundColor(Color(uiColor:
                                                            .secondarySystemBackground))
                        )
                }
                .disabled(favouriteDrinks.count < 5 ? true : false)
            }
            .padding()
        }

        var testScreen: some View {
            VStack  {
                Text("Finished")
            }
            .padding()
        }

}
