import SwiftUI

struct ApplicationsView: View {
    
    @State private var isShowingSettings = false
    
    @State private var strings = ["Mikaela", "hd", "Jay", "Henrik", "Yannemal"]
    
    var body: some View {
        NavigationStack {
            GeometryReader { geo in
                VStack {
                    StatusGrid()
                        .frame(height: geo.size.height / 2)
                    
                    HStack {
                        Text("Current Applications")
                            .font(.headline)
                        Spacer()
                    }
                    .padding(.horizontal, 10)
                    
                    ScrollView(showsIndicators: false) {
                        ForEach(strings, id: \.self) { str in
                            JobApplicationItem(jobTitle: "iOS Dev", company: str, type: "")
                        }
                    }
                    .frame(height: geo.size.height / 2)
                }
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .navigationTitle("Job Applications")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                    ToolbarItem(placement: .navigationBarLeading) {
                        Button {
                            isShowingSettings = true
                        } label: {
                            Image(systemName: "gear")
                        }
                    }
                
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Button {
                            NavigationLink {
                                AddEditApplicationView()
                            } label: {
                                Image(systemName: "plus")
                            }
                        }
                    }
                    .sheet(isPresented: $isShowingSettings) {
                        SettingsViewUI()
                    }
            }
        }
    }
}

struct ApplicationsView_Previews: PreviewProvider {
    static var previews: some View {
        ApplicationsView()
    }
}

private struct StatusGrid: View {
    var body: some View {
        VStack(spacing: 20) {
            HStack(spacing: 20) {
                StatusViewButton(title: "Wishlist", count: 2) {
                }
                .buttonStyle(StatusButtonStyle(type: SwiftUI.Color("blue")))
                
                StatusViewButton(title: "Pending", count: 3) {
                }
                .buttonStyle(StatusButtonStyle(type: SwiftUI.Color("yellow")))
            }
            .padding(.horizontal, 20)
            .frame(maxHeight: .infinity)
            
            HStack(spacing: 20) {
                StatusViewButton(title: "Denied", count: 20) {
                }
                .buttonStyle(StatusButtonStyle(type: SwiftUI.Color("red")))
                
                StatusViewButton(title: "Offer", count: 1) {
                }
                .buttonStyle(StatusButtonStyle(type: SwiftUI.Color("green")))
            }
            .padding(.horizontal, 20)
        }
        .padding()
    }
}

private struct JobApplicationItem: View {
    
    let jobTitle: String
    let company: String
    let type: String
    
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 6) {
                Text(jobTitle)
                    .font(.headline)
                
                Text(company)
            }
            .padding(.vertical, 10)
            
            Spacer()
            
            Rectangle()
                .frame(width: 20, height: 20)
        }
        .padding(.horizontal, 10)
        .overlay {
            RoundedRectangle(cornerRadius: 10)
                .stroke(SwiftUI.Color.gray, lineWidth: 2)
        }
        .cornerRadius(10)
        .padding(.horizontal, 20)
    }
}
