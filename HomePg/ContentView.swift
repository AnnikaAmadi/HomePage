//
//  ContentView.swift
//  HomePg
//
//  Created by Scholar on 7/20/23.
//

import SwiftUI
struct ContentView: View {
    var body: some View {
        NavigationView {
            ZStack {
                LinearGradient(colors: [Color("barbie"), Color("tan"),Color("ocean"),Color("purp")], startPoint:.top , endPoint: .bottom)
                .edgesIgnoringSafeArea(.all)
                // Background color - soft pink
                //Color(red: 0.96, green: 0.87, blue: 0.89)
                    //.edgesIgnoringSafeArea(.all)
                VStack {
                    // Page title
                    Text("Study-Buddy")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(Color(red: 0.97, green: 0.66, blue: 0.69))
                        .padding(.top, 20)
                    // Calendar
                    CalendarView()
                        .padding(.top, 30)
                    // To-Do List
                    ToDoListView()
                        .padding(.top, 30)
                    Spacer()
                }
            }
            .navigationBarHidden(true)
        }
    }
}
struct CalendarView: View {
    var body: some View {
        // Implement your calendar view here
        // This can be a custom view or a third-party library
        Text("Calendar")
            .font(.title)
            .fontWeight(.light)
            .foregroundColor(Color(hue: 0.984, saturation: 0.081, brightness: 0.93))
        DatePicker(
            "Start Date",
            selection: $date,
            in: dateRange,
            displayedComponents: [.date, .hourAndMinute]
        )
    };@State private var date = Date()
    let dateRange: ClosedRange<Date> = {
        let calendar = Calendar.current
        let startComponents = DateComponents(year: 2023, month: 7, day: 1)
        let endComponents = DateComponents(year: 2023, month: 12, day: 31, hour: 23, minute: 59, second: 59)
        return calendar.date(from:startComponents)!
            
            calendar.date(from:endComponents)!
    }()

    
}
struct ToDoListView: View {
    var body: some View {
        // Implement your to-do list view here
        // This can be a custom view or a list with tasks
        Text("To-Do List")
            .font(.title)
            .fontWeight(.bold)
            .foregroundColor(Color(hue: 0.578, saturation: 0.298, brightness: 0.979))
    }
    
    struct HomeView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
    
    
    
    
    
    
    
    
    
}
