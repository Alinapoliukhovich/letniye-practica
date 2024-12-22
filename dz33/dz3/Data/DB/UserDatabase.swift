import UIKit
final class UserDatabase {
    static let shared = UserDatabase()
    
    private init() {}

    private let users: [String: User] = [
        "SvetaKorovina": User(
            username: "SvetaKorovina",
            name: "Света Коровина",
            bio: "Отличница, 11 класс, 4 школа",
            avatar: .People.harlamovAvatar
        ),
        "MarkKlimov": User(
            username: "MarkKlimov",
            name: "Марк Климов",
            bio: "Ученик 9 класса, актёр, участник школьного театра",
            avatar: .People.harlamovAvatar
        ),
        "MashaZayzeva": User(
            username: "MashaZayzeva",
            name: "Маша Зайцева",
            bio: "Студент КФУ ИТИС",
            avatar: .People.batrutdinovAvatar
        )
    ]

    func getUser(byUsername username: String) -> User? {
        users[username]
    }
}
