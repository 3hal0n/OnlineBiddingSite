<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
 <link href="${pageContext.request.contextPath}/css/payment.css" rel="stylesheet" />
    <title>Document</title>
    
    <style>
    
.linka {
    color: inherit;
    text-decoration: none;
}
    </style>
  </head>
  <body>
    <div class="payment_container">
      <div class="sub_pay_container kus">
        <h2 class="apy_title">Payment</h2>

        <div class="pay_options f">
          <p class="payer">How would you like to pay?</p>

          <div class="pay_option_list">
                     <a class="linka" href="Payment.jsp">
            <div class="list">
              <h2 class="listo">Credit card or Debit card</h2>
            </div>
            </a>
              <a class="linka" href="PayPalPayment.jsp">
            <div class="list">
              <h2 class="listo">
              Paypal
              </h2>
            </div>
              </a>
                 <a class="linka" href="online_transfer.jsp">
            <div class="list">
              <h2 class="listo">Online Transfer</h2>
            </div>
               </a>
            <!-- <div class="list my">
              <h2 class="listo">Proceed to payment</h2>
            </div> -->
          </div>
        </div>
      </div>
      <div class="sub_pay_container">
        <h2 class="apy_title">Items</h2>

        <div class="pay_options">
          <div class="item_grid">
            <div class="item_sub_grid">
              <h2 class="item">Description</h2>
            </div>
            <div class="item_sub_grid">
              <h2 class="item">Quantiy</h2>
            </div>
            <div class="item_sub_grid">
              <h2 class="item">Amount</h2>
            </div>
            <div class="line"></div>
          </div>

          <!-- //details -->
          <div class="item_grid boho">
            <div class="item_sub_grid">
              <img
                src="https://images.pexels.com/photos/12922525/pexels-photo-12922525.jpeg?auto=compress&cs=tinysrgb&w=600"
                alt=""
                class="item_img"
              />
            </div>
            <div class="item_sub_grid nj">
              <h2 class="item">02</h2>
            </div>
            <div class="item_sub_grid nj">
              <h2 class="item">$100</h2>
            </div>
            <div class="line"></div>
          </div>

          <div class="item_grid boho">
            <div class="item_sub_grid">
              <img
                src="https://images.pexels.com/photos/12922525/pexels-photo-12922525.jpeg?auto=compress&cs=tinysrgb&w=600"
                alt=""
                class="item_img"
              />
            </div>
            <div class="item_sub_grid nj">
              <h2 class="item">02</h2>
            </div>
            <div class="item_sub_grid nj">
              <h2 class="item">$100</h2>
            </div>
            <div class="line"></div>
          </div>

          <div class="item_grid boho">
            <div class="item_sub_grid"></div>
            <div class="item_sub_grid"></div>
            <div class="item_sub_grid yj">
              <h2 class="item">$200</h2>
            </div>
            <div class="line"></div>
          </div>
        </div>
      </div>
    </div>
  </body>
</html>
