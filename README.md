# Australian store

I created this project for my final assignment at Codaisseurs immersive training program.
The project combines and online shopping store with stripe checkout and payment.

## Basic useful feature list:


 * Adding items to a shopping cart via AJAX
 * Adding items to a wish list for later reference
 * Creating a profile for return visits
 * Checking out and order confirmation
 * Payment checkout via Stripe
 * You can test the payment with fake creditcardnumber 4242 4242 4242 4242,
	any random CVS, expiry date and postal code
 * File contents are saved in the URL so you can share files

## How to make it work
To use this project

1. clone it
2. run the migrations and seed the database
3. start the rails server.

A hosted version of this project can also be found at https://australianshop.herokuapp.com/

![alt tag](http://res.cloudinary.com/sebastiaanpoppen/image/upload/v1479655667/Homepage_Australianstore_psckmh.png )



## Resources used to make this:

 * [Stripe Rails](https://stripe.com/docs/checkout/rails) for integrating Stripe with Rails
 * [Rich on Rails](https://richonrails.com/articles/building-a-shopping-cart-in-ruby-on-rails?comments_page=1) for integrating the Shopping Cart feature
