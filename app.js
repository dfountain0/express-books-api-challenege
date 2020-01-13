const {Client} = require('pg');
var books = require('google-books-search');

const client = new Client({
	user: "Edgeonix",
	password: "Crackheads",
	host: "localhost",
	port: "5433",
	database: "booksdb"
});

var bookResults = 0;

books.search('Professional JavaScript for Web Developers', function(error, results) {
    if ( ! error ) {
        logResults(results)
		saveSearch();

    } else {
        console.log(error);
    }
});

function logResults(results){
	bookResults = { 
		title: results[0].title,
		author: results[0].authors,
		description: results[0].description,
		categories: results[0].categories,
		publisher: results[0].publisher,
		publishedDate: results[0].publishedDate,
		previewLink: results[0].link
	};
}

function saveSearch (){
	// console.log(bookResults.title);
	client.connect()
		.then(() => console.log("Connected successfully"))
		.then(() => client.query("INSERT into books values(title, authors, description, categories, publisher, published_date, preview_link)"), [bookResults.title, bookResults.authors, bookResults.description, bookResults.categories, bookResults.publisher, bookResults.publishedDate, bookResults.previewLink])
		.then(() => client.query("SELECT * from books"))
		.then(result => console.table(result.rows))
		.catch(e => console.log(e))

}


/// .finally(() => client.end())