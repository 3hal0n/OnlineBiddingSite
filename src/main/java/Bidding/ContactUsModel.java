package Bidding;

public class ContactUsModel {
	//create variables
	private int id;
	private String email;
	private String name;
	private String question;
	
	//constructor
	public ContactUsModel(int id, String email, String name, String question) {
		super();
		this.id = id;
		this.email = email;
		this.name = name;
		this.question = question;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getQuestion() {
		return question;
	}

	public void setQuestion(String question) {
		this.question = question;
	}
	
	
	
	
	
}
