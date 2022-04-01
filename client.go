package main

import (
	"context"
	"fmt"

	// Import Books protobuf
	pb "go.protobuf.foo.alis.exchange/foo/br/resources/books/v1"
)

func main() {

	// Call the printBookNames function
	result, err := printBookNames()
	fmt.Println(result, err)

	// Call the printBookDetails function
	result, err = printBookDetails("books/c4a2")
	fmt.Println(result, err)
}

// function makes a call to the books service to get a list of books
func printBookNames() (string, error) {
	// Call the ListBooks method on the client library
	allBooks, err := booksClient.ListBooks(context.Background(), &pb.ListBooksRequest{})
	if err != nil {
		return "", fmt.Errorf("could not list books: %v", err)
	}
	// Print the list of books from the response
	for _, book := range allBooks.Books {
		fmt.Printf("%s\n", book.DisplayName)
	}

	return "Done!", nil
}

// function makes a call to the books service to get a book details
func printBookDetails(bookName string) (string, error) {
	//Create a request to get a book details
	req := pb.GetBookRequest{Name: bookName}

	// Call the GetBook method on the client library
	book, err := booksClient.GetBook(context.Background(), &req)
	if err != nil {
		return "", fmt.Errorf("could not get book: %v", err)
	}

	// Print the book details
	fmt.Printf("%s\n", book)

	return "Done!", nil
}

// Try your hands at making your own custom functions. Below are a few function suggestions
// ProTip: Running new functions in debug mode makes it easier to see what happens at each line of code.
// 		   Refer to the quick start on how to run your functions in debug mode with VS Code.

// Create a function that list all books and prints out each book's author
func printEachBooksAuthor() {
}

// Create a function that gets a book and wrangles the response to print out in a sentence structured as "The book <book name> is written by <author name> and published by <publisher name>"
func printBookDetailsInSentence() {

}

// Create a function that list all books and uses the list of books to make calls to the books service to get each book's details
func printEachBooksDetails() {
}
