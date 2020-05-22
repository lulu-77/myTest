package service.ex;

public class UsernameAlreadyExistException extends RuntimeException{
	/**
	 * 
	 */
	private static final long serialVersionUID = -5916370894847140757L;
	public UsernameAlreadyExistException(){
		
	}
	public UsernameAlreadyExistException(String message){
		super(message);
	}
}
