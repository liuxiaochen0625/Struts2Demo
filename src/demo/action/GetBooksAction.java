package demo.action;

import com.opensymphony.xwork2.ActionContext;

import demo.service.Action;
import demo.service.BookService;

public class GetBooksAction implements Action{
	
	private String []books;
	

	public String[] getBooks() {
		return books;
	}


	public void setBooks(String[] books) {
		this.books = books;
	}


	@Override
	public String execute() {
		String user = (String)ActionContext.getContext().getSession().get("user");
		if(user != null && user.equals("crazyit")){
			BookService bookService = new BookService();
			setBooks(bookService.getLeeBooks());
			return SUCCESSED;
		}
		else
			return LOGIN;
	}

}
