package cn.tedu.exception;

public class ShoppingException  extends RuntimeException{

	public ShoppingException() {
		super();
	
	}

	public ShoppingException(String message, Throwable cause, boolean enableSuppression, boolean writableStackTrace) {
		super(message, cause, enableSuppression, writableStackTrace);
	}

	public ShoppingException(String message, Throwable cause) {
		super(message, cause);
		// TODO Auto-generated constructor stub
	}

	public ShoppingException(String message) {
		super(message);
		// TODO Auto-generated constructor stub
	}

	public ShoppingException(Throwable cause) {
		super(cause);
		
	}

	  
}
