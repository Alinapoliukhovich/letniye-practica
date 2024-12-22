final class PasswordKeychain {
    static let shared = PasswordKeychain()
    
    private init() {}
    
    private let passwords: [String: String] = [
        "SvetaKorovina": "1ANNA",
        "MarkKlimov": "2MARK",
        "MashaZayzeva": "3MASHA"
    ]

    func getPassword(forUsername username: String) -> String? {
        return passwords[username]
    }
}
