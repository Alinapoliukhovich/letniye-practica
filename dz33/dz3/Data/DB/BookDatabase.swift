import UIKit

final class BookDatabase {
    static let shared = BookDatabase()

    private init() {}

    private var books: [Book] = [
        Book(
            id: UUID(),
            coverImageName: .Books.book1,
            title: "Введение в теорию множеств",
            author: "Георгий Cantor",
            description: "Эта книга представляет основные концепции теории множеств, включая бесконечные множества и их свойства. Cantor объясняет, как эти идеи формируют основу для дальнейших исследований в математике.",
            isFavorite: true
        ),
        Book(
            id: UUID(),
            coverImageName: .Books.book2,
            title: "Математика для программистов",
            author: "Даниэль К. М.",
            description: "Книга охватывает ключевые математические концепции, необходимые для программистов, включая алгоритмы, теорию графов и комбинаторику. Она написана доступным языком и содержит множество практических примеров.",
            isFavorite: false
        ),
        Book(
            id: UUID(),
            coverImageName: .Books.book3,
            title: "Краткая история времени",
            author: "Стивен Хокинг ",
            description: "Хотя эта книга больше о физике, она включает в себя важные математические концепции, которые лежат в основе теории относительности и квантовой механики. Хокинг объясняет сложные идеи простым языком, делая их доступными для широкой аудитории.",
            isFavorite: false
        ),
        Book(
            id: UUID(),
            coverImageName: .Books.book5,
            title: "Математика: Секреты успеха",
            author: "Джон Нэш ",
            description: "В этой книге Нэш делится своим опытом и взглядами на математику и ее применение в реальной жизни. Он исследует, как математические идеи могут быть использованы для решения практических задач.",
            isFavorite: false
        ),
        Book(
            id: UUID(),
            coverImageName: .Books.book4,
            title: "Формулы, которые изменили мир",
            author: "Джеймс Глейк ",
            description: "Глейк рассказывает о самых влиятельных математических формулах и их значении в истории науки и технологий. Книга сочетает в себе биографии великих математиков с историей их открытий.",
            isFavorite: false
        )
    ]

    func getAllBooks() -> [Book] {
        books
    }

    func getBook(byId id: UUID) -> Book? {
        books.first { $0.id == id }
    }

    func getFavoriteBooks() -> [Book] {
        books.filter { $0.isFavorite }
    }

    func toggleFavorite(for bookId: UUID) {
        if let index = books.firstIndex(where: { $0.id == bookId }) {
            books[index].isFavorite.toggle()
        }
    }
}
