<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Pay with PayPal</title>
    <link href="${pageContext.request.contextPath}/css/payment.css" rel="stylesheet" />
</head>
<body>
    <div class="credit_container">
        <form class="online_form io" action="${pageContext.request.contextPath}/SubmitPayPalPayment" method="post">
            <h2 class="apy_title bn">Pay with PayPal</h2>
            <div class="linee"></div>

            <div class="fo">
                <div class="inputer">
                    <label for="country" class="label">Country</label>
                    <input type="text" name="country" class="input_section" required />
                </div>
                <div class="inputer">
                    <label for="card_number" class="label">Card Number</label>
                    <input type="text" name="card_number" class="input_section" pattern="\d{16}" title="Please enter a valid 16-digit card number." required />
                </div>
            </div>
            <div class="fo paypal">
                <div class="inputer">
                    <label for="payment_type" class="label">Payment Type</label>
                    <input type="text" name="payment_type" class="input_section" required />
                </div>
                <div class="inputer">
                    <label for="exp_date" class="label">Exp Date (MM/YY)</label>
            <input type="text" name="exp_date" class="input_section" pattern="(0[1-9]|1[0-2])\/[0-9]{2}" title="Please enter a valid expiration date (MM/YY)" required />


                </div>
                <div class="inputer">
                    <label for="csc" class="label">CSC</label>
                    <input type="text" name="csc" class="input_section" pattern="\d{3}" title="Please enter a valid 3-digit CSC." required />
                </div>
            </div>

            <div class="fo">
                <div class="inputer">
                    <label for="first_name" class="label">First Name</label>
                    <input type="text" name="first_name" class="input_section" required />
                </div>
                <div class="inputer">
                    <label for="last_name" class="label">Last Name</label>
                    <input type="text" name="last_name" class="input_section" required />
                </div>
            </div>

            <div class="fo">
                <div class="inputer">
                    <label for="address_line1" class="label">Address Line 1</label>
                    <input type="text" name="address_line1" class="input_section" required />
                </div>
                <div class="inputer">
                    <label for="address_line2" class="label">Address Line 2</label>
                    <input type="text" name="address_line2" class="input_section" />
                </div>
            </div>

            <div class="fo">
                <div class="inputer">
                    <label for="city" class="label">City</label>
                    <input type="text" name="city" class="input_section" required />
                </div>
                <div class="inputer">
                    <label for="zip_code" class="label">Zip Code</label>
                    <input type="text" name="zip_code" class="input_section" pattern="\d{5}" title="Please enter a valid 5-digit zip code." required />
                </div>
            </div>
            <div class="fo">
                <div class="inputer">
                    <label for="telephone" class="label">Telephone</label>
                    <input type="tel" name="telephone" class="input_section" pattern="\d{10}" title="Please enter a valid 10-digit telephone number." required />
                </div>
                <div class="inputer">
                    <label for="email" class="label">Email</label>
                    <input type="email" name="email" class="input_section" required />
                </div>
            </div>
            <div class="buttone">
                <button type="submit" class="hj">Proceed Payment</button>
            </div>
        </form>
    </div>
</body>
</html>
