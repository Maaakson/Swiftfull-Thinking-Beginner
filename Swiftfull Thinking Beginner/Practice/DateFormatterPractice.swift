//
//  DateFormatterPractice.swift
//  Swiftfull Thinking Beginner
//
//  Created by Максим Митрофанов on 15.12.2021.
//

import SwiftUI

struct DateFormatterPractice: View {
    @State var selectedDate: Date = Date()
    @State var numberOfWings: Int = 1
    @State var spicy = false
    @State var showPopUp = false

    
    let wingBuskets = [2, 5, 8, 12, 22]
 
    
    var dateFormatter: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateStyle = .medium
        formatter.timeStyle = .short
        return formatter
    }
    
    var body: some View {
        ZStack(alignment: .bottom) {
            DatePickerPopUp
            
            VStack(spacing: 35) {
                Logo
                                        
                MainPicker
                
                SecondaryPicker
                
                Spacer()
                
                ConfirmButton
            }
        }
        .padding()
    }
    
    var DatePickerPopUp: some View {
        VStack {
            if showPopUp {
                DateView
                    .padding(.horizontal)
                    .background(
                        RoundedRectangle(cornerRadius: 10)
                            .foregroundColor(Color(uiColor: .secondarySystemBackground))
                    )
                    .frame(height: 300)
                    .animation(.easeInOut)
                    .transition(AnyTransition.move(edge: .bottom))
            }
        }
    }
    
    var DateView: some View {
        VStack {
            Text("Arrial Date")
                .font(.title3)
            Text(dateFormatter.string(from: selectedDate))
                .font(.subheadline)
                .foregroundColor(Color(uiColor: .darkGray))
            
            DatePicker("Choose", selection: $selectedDate)
                .datePickerStyle(.compact)
        }
    }
    
    var Logo: some View {
        Image("KFC Logo")
            .resizable()
            .scaledToFit()
            .clipShape(Circle())
            .frame(width: 150)
            .padding(.vertical)
    }
    
    var MainPicker: some View {
        VStack {
            Text("How many wings you would like?")
                .lineLimit(1)
                .font(
                    .system(
                        size: 23,
                        weight: .semibold,
                        design: .rounded)
                )
            
            Picker(
                selection: $numberOfWings) {
                    ForEach(wingBuskets, id: \.self) { number in
                        Text("\(number)").tag(number)
                    }
                } label: {
                    Text("")
                }
                .pickerStyle(.segmented)
        }
        .padding(.bottom)
    }
    
    var SecondaryPicker: some View {
        VStack {
            Text("What king of wings would you like?")
                .foregroundColor(Color(uiColor: .darkGray))
                .font(.system(size: 20, weight: .medium, design: .rounded))
            Picker(
                selection: $spicy) {
                    Text("Regular☘️").tag(false)
                    Text("Spicy🔥").tag(true)
                } label: {
                    Text("")
                }
                .pickerStyle(.segmented)

        }
        .padding(.vertical)
    }
    
    var ConfirmButton: some View {
        Button {
            showPopUp.toggle()
        } label: {
             Text("Confirm order")
                .padding()
                .background(
                    RoundedRectangle(cornerRadius: 10)
                        .foregroundColor(Color(uiColor: .secondarySystemBackground))
                )
                .font(.subheadline)
        }
    }
}

struct DateFormatterPractice_Previews: PreviewProvider {
    static var previews: some View {
        DateFormatterPractice()
    }
}
