package wtyw.worklite.beans;

public class WorkliteBookBor {
	
	private String book_registerid;
	private String book_id;
	private String book_name;
	private String book_borrowtime;
	private String book_returntime;
	private String book_borrowp;
	private String book_returnp;
	private String lend_status;
	public WorkliteBookBor() {
		super();
	}

	public String getBook_registerid() {
		return book_registerid;
	}

	public void setBook_registerid(String bookRegisterid) {
		book_registerid = bookRegisterid;
	}

	public String getBook_id() {
		return book_id;
	}

	public void setBook_id(String bookId) {
		book_id = bookId;
	}
	
	public String getLend_status() {
		return lend_status;
	}

	public void setLend_status(String lendStatus) {
		lend_status = lendStatus;
	}

	public String getBook_name() {
		return book_name;
	}

	public void setBook_name(String bookName) {
		book_name = bookName;
	}

	public String getBook_borrowtime() {
		return book_borrowtime;
	}

	public void setBook_borrowtime(String bookBorrowtime) {
		book_borrowtime = bookBorrowtime;
	}

	public String getBook_returntime() {
		return book_returntime;
	}

	public void setBook_returntime(String bookReturntime) {
		book_returntime = bookReturntime;
	}

	public String getBook_borrowp() {
		return book_borrowp;
	}

	public void setBook_borrowp(String bookBorrowp) {
		book_borrowp = bookBorrowp;
	}

	public String getBook_returnp() {
		return book_returnp;
	}

	public void setBook_returnp(String bookReturnp) {
		book_returnp = bookReturnp;
	}
}
