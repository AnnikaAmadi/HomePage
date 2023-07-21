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
                    ScrollView{
                    //Color(red: 0.96, green: 0.87, blue: 0.89)
                    //.edgesIgnoringSafeArea(.all)
                        VStack {
                            // Page title
                            Text("Study-Buddy")
                                .font(.largeTitle)
                                .fontWeight(.heavy)
                                .foregroundColor(Color(red: 0.97, green: 0.66, blue: 0.69))
                                .padding(.top, 20)
                                .background(.white)
                                .cornerRadius(50)
                        } // Calendar{
                            RoundedRectangle(cornerRadius: 50)
                            .foregroundColor(.white)
                            .frame(height: 200)
                            .padding(.horizontal)
                            .padding(.top, 30)
                        CalendarView()
                            .padding(.top, 30)
                        Spacer()
                    }
                }
                .navigationBarHidden(true)
            }
        }
    }
struct CalendarView: View {
    
    
    let dateRange: ClosedRange<Date> = {
        let calendar = Calendar.current
        let startComponents = DateComponents(year: 2023, month: 1, day: 1)
        let endComponents = DateComponents(year: 2023, month: 12, day: 31, hour: 23, minute: 59, second: 59)
        return calendar.date(from:startComponents)! ...
        calendar.date(from:endComponents)!
        
    }()
    @State private var date = Date()
    var body: some View {
        // Implement your calendar view here
        // This can be a custom view or a third-party library
        Text("Calendar")
        RoundedRectangle(cornerRadius: 50)
        
            .foregroundColor(.white)
        
            .frame(height: 200)
        
            .padding(.horizontal)
            .font(.title)
            .fontWeight(.heavy)
            .foregroundColor(Color(red: 0.97, green: 0.66, blue: 0.69))
            .padding(.top, 20)
        DatePicker(
            "Start Date",
            selection: $date,
            in: dateRange,
            displayedComponents: [.date, .hourAndMinute]
            
        )
    }
    // Nesting an HStack within a VStack
    func HStack() {
        // Pomodoro timer
        RoundedRectangle(cornerRadius: 50)
            .foregroundColor(.white)
            .frame(width: 150, height: 150)
           
      
        
    }
    
    struct ToDoListView: View {
        var body: some View {
            // Implement your to-do list view here
            // This can be a custom view or a list with tasks
            Text("To-Do List")
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(Color(hue: 0.578, saturation: 0.298, brightness:0.979))
            
        }; struct TaskItemView: View {
            var taskTitle: String
            var body: some View {
                SwiftUI.HStack {
                    Image(systemName: "circle")
                        .resizable()
                        .frame(width: 20, height: 20)
                        .foregroundColor(Color(red: 0.97, green: 0.66, blue: 0.69))
                    Text(taskTitle)
                        .foregroundColor(.black)
                    Spacer()
                    Image(systemName: "checkmark.circle.fill")
                        .resizable()
                        .frame(width: 20, height: 20)
                        .foregroundColor(.green)
                }
                .padding(.vertical, 4)
                .background(Color.white)
                .cornerRadius(10)
                .shadow(color: .gray, radius: 2, x: 0, y: 2)
                .padding(.vertical, 4)
            }
        }
        
        
        
        
        
        struct HomeView_Previews: PreviewProvider {
            static var previews: some View {
                ContentView()
            }
        }
        
        
        
//Hello
        
        
        
        
        
    }
    
}
