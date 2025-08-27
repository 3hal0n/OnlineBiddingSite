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
<body>
    <div class="credit_container">
        <form class="online_form" action="${pageContext.request.contextPath}/SubmitOnlineTransfer" method="post" enctype="multipart/form-data">
            <h2 class="apy_title bn">Online Transfer</h2>
            <div class="linee"></div>

            <div class="fo">
                <div class="inputer">
                    <label for="first_name" class="label">First name</label>
                    <input type="text" name="first_name" class="input_section" required />
                </div>
                <div class="inputer">
                    <label for="last_name" class="label">Last Name</label>
                    <input type="text" name="last_name" class="input_section" required />
                </div>
            </div>
            <div class="inputer">
                <label for="email" class="label">Email</label>
                <input type="email" name="email" class="input_section" required />
            </div>
            <div class="inputer">
                <label for="receipt" class="label">Upload Receipt</label>
                <input type="file" name="receipt" class="input_section" required />
            </div>
            <div class="inputer">
                <label for="address" class="label">Address</label>
                <input type="text" name="address" class="input_section" required />
            </div>
            <div class="inputer">
                <label for="description" class="label">Description</label>
                <input type="text" name="description" class="input_section" required />
            </div>
            <div class="buttone">
                <button type="submit" class="hj">Proceed Payment</button>
            </div>
        </form>
    </div>
</body>
</html>
