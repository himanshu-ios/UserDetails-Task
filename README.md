# UserDetails

User.swift
This file contains the model definition for the User struct.

• User struct:
o Represents an employee/user with properties like id, name, email, phone,
and website.
o Conforms to the Codable protocol for easy serialization and
deserialization.

Base.swift
This file contains networking-related code and protocols.

• Configuration enum:
o Defines static URL paths used for fetching user data.
• NetworkError enum:
o Enumerates possible errors that can occur during network operations.
• NetworkManager class:
o Singleton class responsible for handling network requests.
o Provides a method fetchData to fetch data from a given URL.
o Uses generics to decode fetched data into the desired type.

UserService.swift
This file defines a protocol and a class related to user service.
• UserServiceable protocol:
o Declares a method getAllUserData(completion:) to fetch all user data.
• UserService class:
o Conforms to UserServiceable.
o Implements the method getAllUserData(completion:) to fetch user data
from a remote API using NetworkManager.

UserView.swift
This file contains SwiftUI views related to displaying user data.
• UserView struct:
o Displays a list of users fetched from the server.
o Uses UserViewModel to fetch and manage user data.
o Uses SwiftUI's NavigationView and List for UI rendering.

• UserView_Previews struct:
o Provides a preview for UserView.

UserViewModel.swift
This file contains the view model for managing user data.
• UserViewModel class:
o Manages the state of user data for the UserView.
o Uses UserService to fetch user data.
o Contains a method fetchUsers() to trigger fetching of user data.
