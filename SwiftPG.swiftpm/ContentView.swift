import SwiftUI

struct ContentView: View {
    
    @State var viewModel = CustomViewModel()
    
    var body: some View {
        List(viewModel.items, id:\.self.id) { item in
            Text("Row \(item.title)")
        }
        Button("add new item") {
            viewModel.items.append(CustomData(title: "new"))
        }.buttonStyle(.borderedProminent)
    }
}
