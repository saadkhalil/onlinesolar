<?php
$token = $_POST['stripeToken'];
$amount = $_POST['stripamount'];
$multi = $amount * 100;
$round_amount = round($multi);

// Stripe library
require 'Stripe.php';
try {
  Stripe::setApiKey("sk_test_940FP89X8e9LGSDvt8YmHmGh"); //Replace with your Secret Key
 
  $charge = Stripe_Charge::create(array(
  "amount" => $round_amount,
  "currency" => "usd",
  "card" => $token,
  "description" => 'Online Solar'
));

  //header('Location: http://propertimatch.craftedium.xyz');
  //send the file, this line will be reached if no error was thrown above
  //echo "<h1>Your payment has been completed.</h1>";
 
 
//you can send the file to this email:
//echo $_POST['stripeEmail'].' properti Id'.$_POST['pid'];
header('Location: /ordersave/1/stripe');
}
//catch the errors in any way you like
 
catch(Stripe_CardError $e) {
  
}
 
 
catch (Stripe_InvalidRequestError $e) {
// Invalid parameters were supplied to Stripe's API
 
} catch (Stripe_AuthenticationError $e) {
// Authentication with Stripe's API failed
// (maybe you changed API keys recently)
 
} catch (Stripe_ApiConnectionError $e) {
// Network communication with Stripe failed
} catch (Stripe_Error $e) {
 
// Display a very generic error to the user, and maybe send
// yourself an email
} catch (Exception $e) {
 
// Something else happened, completely unrelated to Stripe
}
?>