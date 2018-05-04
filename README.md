REVISE THIS!

E-commerce site. Uses `bcrypt` and `materialize`. There's a seed file. Set up your own admin. If you have questions, I'll be in Bali with no email. Ask someone else.

NOTES

Hi Franz. This was a difficult but illuminating prompt. You're previous students are right, more prompts like these would be helpful. Question regarding commit messages. I wrote a few commits like this, "Refactor f.number_field :quantity to accept only 1 < int < 1000". Professionally acceptable? No? Better to write "Refactor number field input to accept only integers between 1 and 1000"?  My instinct is that plain English is best, but I'm curious about your take. 

# Went To Bali MWAHAHA!

### May 4, 2018

### _John Rykken_


Independent Ruby Rails project for week 3 of Rails track at Epicodus. This is a simple, cloned e-commerce site that badly-needed refactoring. The objectives here were to implement AJAX and refactor at least 6 of 12 objectives.

## Specs

1. Using AJAX, allow users to add products to their shopping cart from the index page. Item should be added to shopping cart. Number of items in cart should display in navbar.
2. Using AJAX, allow users to show/hide product detail.
3. Project detail will include an image (Paperclip or link) and description.
4. Allow users to delete items from cart without page reloaded.
5. Delete functionality will remove item from shopping cart and update total price.

## Additional Specs and Refactors

1. Add flash messages for sign up and sign in.
2. Allow admin to update and delete product.
3. Display flash messages when admin updates or deletes a product.
4. Add Paperclip for product image upload.
5. Add product validations.
6. Add admin links to navbar so that admins can add, update, and delete products.

## Setup

Assuming you have Ruby, Rails, and pSQL installed, run the following in the command line.

Using your terminal, navigate to the desktop and run:

`$ git clone https://github.com/GreanBeetle/went-to-bali-mwahaha`

Navigate to the root directory of went-to-bali-mwahaha and run:

`$ rails db:create`
`$ rails db:migrate`
`$ rails db:test:prepare`
`$ rails db:seed`

Type `rails s` and navigate to "localhost:3000" in your browser.

## Built With

* HTML
* CSS, Materialize
* Paperclip  
* Javascript
* Ruby
* Rails

## Author

**John Rykken**

## Contact

john.rykken@gmail.com

## License

Licensed under the MIT License.

  <!-- ## Acknowledgments -->

Copyright (c) 2018 **_John Rykken_**
