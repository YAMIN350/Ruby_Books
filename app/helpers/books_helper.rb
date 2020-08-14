module BooksHelper
  def book_link the_book
    html = "<a href='/books/#{the_book.id}'>".html_safe
    if the_book.category
      html += the_book.title
      html += " ( ".html_safe
      html += the_book.category.name
      html += " )".html_safe
    else
      html += the_book.title
    end
    html += "</a>".html_safe
    html
  end
end
