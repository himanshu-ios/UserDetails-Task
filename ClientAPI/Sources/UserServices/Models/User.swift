public struct User: Codable {
    public let id: Int
    public let name: String
    public let email: String
    public let phone: String?
    public let website: String?
    public let company: Company?

    public init(id: Int,
                name: String,
                email: String,
                phone: String?,
                website: String?,
                company: Company?) {
        self.id = id
        self.name = name
        self.email = email
        self.phone = phone
        self.website = website
        self.company = company
    }
}

public struct Company: Codable {
    public let name: String
    public let catchPhrase: String
    public let bs: String

    public init(name: String, catchPhrase: String, bs: String) {
        self.name = name
        self.catchPhrase = catchPhrase
        self.bs = bs
    }
}
