struct Book {
  var title: String
  var pages: Int

  // Add your code below 📚

  init(title: String, pages: Int) {
    self.title = title
    self.pages = pages
  }
}

var theHobbit = Book(title: "The Hobbit", pages: 300)
