package Bidding;

import java.io.InputStream;

public class OnlineTransfer {
    private String firstName;
    private String lastName;
    private String email;
    private InputStream receipt;  // For storing uploaded file as InputStream
    private String address;
    private String description;

    public OnlineTransfer(String firstName, String lastName, String email, InputStream receipt, String address, String description) {
        this.firstName = firstName;
        this.lastName = lastName;
        this.email = email;
        this.receipt = receipt;
        this.address = address;
        this.description = description;
    }

    // Getters and Setters
    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public InputStream getReceipt() {
        return receipt;
    }

    public void setReceipt(InputStream receipt) {
        this.receipt = receipt;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }
}
