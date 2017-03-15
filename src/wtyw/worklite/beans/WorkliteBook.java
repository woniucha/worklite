package wtyw.worklite.beans;

public class WorkliteBook {
	private String book_id;
	private String book_name;
	private String book_writer;
	private String book_press;
	private String book_price;
	private String book_disk;
	private String book_savetime;
	private String book_status;
	
	public WorkliteBook() {
		super();
	}

	public String getBook_id() {
		return book_id;
	}

	public void setBook_id(String bookId) {
		book_id = bookId;
	}

	public String getBook_name() {
		return book_name;
	}

	public void setBook_name(String bookName) {
		book_name = bookName;
	}

	public String getBook_writer() {
		return book_writer;
	}

	public void setBook_writer(String bookWriter) {
		book_writer = bookWriter;
	}

	public String getBook_press() {
		return book_press;
	}

	public void setBook_press(String bookPress) {
		book_press = bookPress;
	}

	

	public String getBook_disk() {
		return book_disk;
	}

	public void setBook_disk(String bookDisk) {
		book_disk = bookDisk;
	}

	public String getBook_savetime() {
		return book_savetime;
	}

	public void setBook_savetime(String bookSavetime) {
		book_savetime = bookSavetime;
	}


	public String getBook_price() {
		return book_price;
	}

	public void setBook_price(String bookPrice) {
		book_price = bookPrice;
	}

	public String getBook_status() {
		return book_status;
	}

	public void setBook_status(String bookStatus) {
		book_status = bookStatus;
	}
	
}
