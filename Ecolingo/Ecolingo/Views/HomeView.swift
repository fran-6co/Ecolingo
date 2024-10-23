struct HomeView: View {
    var body: some View {
        NavigationStack {
            List {
                Text("LIST OF TOPICS")
                Text("TO DECIDE IN")
                Text("NEW ISSUE")
                
            }
            .navigationTitle("Topics")
        }
//        Button {
//            QuizExample(question: "Do you know about plants?", answer1: "yes", answer2: "no", answer3: "just a bit")
//        } label: {
//            Text("click here to enter the quiz")
//        }

//        NavigationStack {
//            List {
//                Text("LIST OF TOPICS")
//                Text("TO DECIDE IN")
//                Text("NEW ISSUE")
//            }
//            .navigationTitle("Topics")
//        }
//        .padding()
    }
}