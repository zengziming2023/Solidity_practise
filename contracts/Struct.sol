// SPDX-License-Identifier: MIT
pragma solidity >=0.6.12 <0.9.0;

contract Struct {
    struct Book {
        string title;
        uint256 price;
        string[] author; // 作者
    }

    // Book book = Book({title: "book title", price: 100, author: string[]}); // init 1
    // Book book2 = Book("book title2", 100); // init 2

    // string title = book.title;
    // uint256 price = book.price;

    Book[] list;

    function testBook() public pure {
        Book memory book3;
        book3.title = "title"; // 给结构体成员赋值
        book3.price = 25; // 给结构体成员赋值
        // // book3.author.push("J R");
        // book3.author[0] = "J R";

        // return book3.title;
    }

    function addBook(Book memory book) public {
        list.push(book);
    }
}
