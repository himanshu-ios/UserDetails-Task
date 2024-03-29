import SwiftUI
import ClientAPI

struct UserListView: View {
    @ObservedObject var viewModel = UserListViewModel()

    var body: some View {
        NavigationView {
            List(viewModel.users, id: \.id) { user in
                NavigationLink(destination: UserDetailsView(user: user)) {
                    VStack(alignment: .leading) {
                        Text(user.name)
                            .font(.headline)
                            .accessibilityIdentifier(Constants.userName)
                        Text(user.email)
                            .font(.subheadline)
                            .accessibilityIdentifier(Constants.userEmail)
                    }
                }
            }
            .navigationBarTitle(Constants.employee)
            .accessibilityIdentifier(Constants.list)
            .navigationBarItems(trailing: EmptyView())
        }
        .navigationViewStyle(StackNavigationViewStyle())
        .accessibilityLabel("Employee List")
        .accessibilityIdentifier(Constants.userList)
        .onAppear {
            viewModel.fetchUsers()
        }
    }
}

struct UserView_Previews: PreviewProvider {
    static var previews: some View {
        UserListView()
    }
}
