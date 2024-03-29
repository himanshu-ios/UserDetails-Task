import SwiftUI
import ClientAPI

struct UserDetailsView: View {
    var user: User

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: Constants.detailViewSpacing) {
                userImageView
                    .accessibility(label: Text(Constants.userImage))

                Text(user.name)
                    .font(.title)
                    .fontWeight(.bold)
                    .accessibility(label: Text("User Name \(user.name)"))

                userDetailsSection(title: Constants.emailTitle, value: user.email)
                    .accessibility(label: Text("\(Constants.emailTitle): \(user.email)"))

                if let companyName = user.company?.name {
                    userDetailsSection(title: Constants.companyTitle, value: companyName)
                        .accessibility(label: Text("\(Constants.companyTitle): \(companyName)"))
                }

                if let phone = user.phone {
                    userDetailsSection(title: Constants.phoneTitle, value: phone)
                        .accessibility(label: Text("\(Constants.phoneTitle): \(phone)"))
                }

                if let website = user.website {
                    userDetailsSection(title: Constants.websiteTitle, value: website)
                        .accessibility(label: Text("\(Constants.websiteTitle): \(website)"))
                }

                Spacer()
            }
            .padding()
        }
        .navigationBarTitle(Constants.userDetails)
    }

    var userImageView: some View {
        Image(systemName: "person.circle.fill")
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: Constants.userImageSize, height: Constants.userImageSize)
            .clipShape(Circle())
            .overlay(
                Circle().stroke(Color.white, lineWidth: 4)
            )
            .shadow(radius: 7)
    }

    func userDetailsSection(title: String, value: String) -> some View {
        VStack(alignment: .leading, spacing: Constants.detailSectionSpacing) {
            HStack {
                Text(title)
                    .fontWeight(.bold)
                    .frame(width: Constants.titleWidth, alignment: .leading)
                Text(value)
            }
        }
    }
}

struct UserDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        UserDetailsView(user: User(id: 2,
                                    name: "John",
                                    email: "john.mail.com",
                                    phone: "080776655",
                                    website: "john.com", company: Company(name: "Romaguera",
                                                                          catchPhrase: "Multi-layered client-server neural-net",
                                                                          bs: "harness real-time e-markets")))
    }
}
