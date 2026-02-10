void main() {
  print("***\t LIBRARY MANAGEMENT SYSTEM *** \n");
  // creating some book instances.
  Books book1 = Books("1984", "George Orwell", "1234567890", true);
  Books book2 = Books("Moby", "Herman Melville", "6677889900", true);
  Books book3 = Books("War and Peace", "Leo Tolstoy", "5544332211", true);

  // creating some member instances.
  Members member1 = Members("Alice", 1);
  Members member2 = Members("Bob", 2);
  Members member3 = Members("Charlie", 3);

  // creating a library instance to add books and members.
  Library library = Library([], []);
  library.addBook(book1);
  library.addBook(book2);
  library.addBook(book3);
  library.addMember(member1);
  library.addMember(member2);
  library.addMember(member3);
  print(
    "Library has \"${library.books.length}\" books and \"${library.members.length}\" members\n",
  );

  library.listBooks();
  library.listMembers();

  // loan some books to members.
  library.loanBook(book1, member1);
  library.loanBook(book2, member2);
  library.loanBook(book1, member3); // trying to loan an unavailable book.
  library.listBooks();

  // returning a book.
  Loan loan1 = Loan(book1, member1, DateTime.now());
  loan1.returnBook(); // [Alice] is returning [1984]
  library.listBooks();
  library.loanRemove(loan1); // removing the loan record for [Alice]

  library.loanBook(book1, member3); // now it should be available.
  library.listBooks();
  library.loanBook(book3, member3);

  library.listLoans();

  // returning another book.
  Loan loan2 = Loan(book2, member2, DateTime.now());
  loan2.returnBook(); // [Bob] is returning [Moby]
  library.loanRemove2(loan2); // removing the loan record for [Bob]
  library.listBooks();
  library.listLoans();
}

class Library {
  Library(this.books, this.members);

  List<Books> books = [];
  List<Members> members = [];

  void addBook(Books book) {
    books.add(book);
  }

  void addMember(Members member) {
    members.add(member);
  }

  // list all books in the library.
  void listBooks() {
    print("--------ALL BOOKS IN THE LIBRARY--------");
    for (var book in books) {
      print(
        "Title: ${book.title} \nAuthor: ${book.author} \nISBN: ${book.isbn} \nAvailable: ${book.isAvailable} \n-------------------------------------",
      );
    }
    print("");
  }

  // list all members in the library.
  void listMembers() {
    print("--------TOTAL MEMBERS IN THE LIBRARY--------");
    for (var member in members) {
      print("Name: ${member.name} \t Member ID: ${member.memberId}");
    }
    ;
    print("");
  }

  List<Loan> loans = [];
  // loan book to member.
  void loanBook(Books book, Members member) {
    print("--------LOANING BOOK--------");
    if (book.isAvailable == true) {
      loans.add(Loan(book, member, DateTime.now()));
      print("Book '${book.title}' loaned to ${member.name}\n");
      book.isAvailable = false;
    } else {
      print(
        "Sorry '${member.name}' but Book '${book.title}' is not available for loan\n",
      );
    }
  }

  // remove a loan record when a book is returned, --> method 1.
  void loanRemove(Loan loan) {
    loans.remove(
      loans.firstWhere(
        (element) =>
            element.book.title == loan.book.title &&
            element.member.memberId == loan.member.memberId,
      ),
    );
    /* explaining above:
    [firstWhere] is a method available on Lists (and other collections) in Dart. 
    It loops through the list to find an item. 
    [element] This represents the current item the loop is looking at. 
    It goes through your list: "Is this the one? No. Is this the one? Maybe..."
    [ => ] This is "arrow syntax." It basically means "Return true if..." */
  }

  // remove a loan record when a book is returned, --> method 2.
  void loanRemove2(Loan loan) {
    loans.removeWhere(
      (element) =>
          element.book.title == loan.book.title &&
          element.member.memberId == loan.member.memberId,
    );
    /* explaining above:
    If the loan is NOT found, [firstWhere] will crash your app (it throws an error) 
    There is a much safer, cleaner method called [removeWhere] that does both steps at once. 
    It goes through the list and removes any item that matches the condition.
    If it doesn't find the loan, it simply does nothing (no crash). */
  }

  // list all current loans.
  void listLoans() {
    print("--------CURRENT LOANS--------");
    for (var loan in loans) {
      if (loan.book.isAvailable == false)
        print(
          "Book: '${loan.book.title}' \nLoaned to: ${loan.member.name} \nLoan Date: ${loan.loanDate} \n-------------------------------------",
        );
    }
    print("");
  }
}

class Books {
  String? title;
  String? author;
  String? isbn;
  bool? isAvailable;

  Books(this.title, this.author, this.isbn, this.isAvailable);
}

class Members {
  String? name;
  int? memberId;

  Members(this.name, this.memberId);
}

// ??
class Loan {
  Books book;
  Members member;
  DateTime loanDate;

  Loan(this.book, this.member, this.loanDate);

  void returnBook() {
    print("--------RETURNING BOOK--------");
    print("Book '${book.title}' returned at ${loanDate}\n");
    book.isAvailable = true;
  }
}
