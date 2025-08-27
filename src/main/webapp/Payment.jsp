<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Payment Form</title>
<link href="${pageContext.request.contextPath}/css/payment.css" rel="stylesheet" />


</head>
<body>
    <div class="credit_container">
        <form action="SubmitPayment" method="post" class="credito">
            <div class="credit_sub">
                <h2 class="apy_title bn">Billing Address</h2>

                <div class="inputer">
                    <label for="full_name" class="label">Full Name</label>
                    <input type="text" name="full_name" class="input_section" required />
                </div>
                <div class="inputer">
                    <label for="email" class="label">Email</label>
                    <input type="email" name="email" class="input_section" required />
                </div>
                <div class="inputer">
                    <label for="address" class="label">Address</label>
                    <input type="text" name="address" class="input_section" required />
                </div>
                <div class="inputer">
                    <label for="city" class="label">City</label>
                    <input type="text" name="city" class="input_section" required />
                </div>
                <div class="inputer">
                    <label for="state" class="label">State</label>
                    <input type="text" name="state" class="input_section" required />
                </div>
                <div class="inputer">
                    <label for="zip_code" class="label">Zip Code</label>
                    <input type="text" name="zip_code" class="input_section" required />
                </div>
            </div>
            <div class="credit_sub">
                <h2 class="apy_title">Checkout</h2>
                <div class="bo">
                    <img src="https://i.imgur.com/2w8xOLH.png" alt="credit card" class="credit_img" />
                </div>

                <div class="inputer">
                    <label for="card_holder_name" class="label">Card Holder Name</label>
                    <input type="text" name="card_holder_name" class="input_section" required />
                </div>
                <div class="inputer">
                    <label for="card_number" class="label">Card Number</label>
                    <input type="text" name="card_number" class="input_section" required />
                </div>
                <div class="inputer">
                    <label for="expire_month" class="label">Expire Month</label>
                    <input type="text" name="expire_month" class="input_section" required />
                </div>
                
            <div class="fo">
                <div class="inputer">
                    <label for="expire_year" class="label">Expire Year</label>
                    <input type="text" name="expire_year" class="input_section" required />
                </div>
                <div class="inputer">
                    <label for="cvv" class="label">CVV</label>
                    <input type="text" name="cvv" class="input_section" required />
                </div>
            </div>
            </div>

             <div class="buttoner">
          <button class="hj" type="submit">Proceed payment</button>
        </div>
        </form>
    </div>
</body>
</html>
