# README
This README would normally document whatever steps are necessary to get the application up and running.


# MOD 2 Project Buy Or Sell Store-BOSS Rachid Rakaa

	BOSS: Website for selling & buying items.
	List items by locations.
	User can sell new or used product.
	User can request to buy a product.
	Seller receive a buy request from the buyer.

# Schema
```
   create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "user_name"
    t.string "password_digest"
    t.string "address"
    t.integer "age"
    t.string "gender"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end
  create_table "boughts", force: :cascade do |t|
    t.string "user_id"
    t.string "item_id"
    t.date "date"
    t.string "note"
    t.time "Pickup_time"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "items", force: :cascade do |t|
    t.string "name"
    t.integer "price"
    t.string "condition"
    t.string "description"
    t.integer "location_id"
    t.string "image_url"
    t.string "address"
    t.integer "quantity"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "user_id"
    t.string "status"
  end

  create_table "locations", force: :cascade do |t|
    t.string "city"
    t.string "state"
    t.integer "zipcode"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end
```  

# Install Instructions

	Run bundle install in console to insure you have all the required gems.
	
	Run 'yarn install --check-files' in console 

	Run rails db:migrate in console to create the schema.

	Run rails s in the console to start the web application.


# User Stories

	#Create an account.
   		Unique Username.
    	Some information  are required.
   		Greeting, login, redirect to profile.
    
	#Login & logout 
  	  	Username and password must be correct.
   	 	Show a message if login or logout.
   	 	Show a message if incorrect login
    	redirect to profile.
    
	#User Profile include:
   		 User info.
    	Active listings.
    	Inactive  and Sold listings.
    	Bought items.
    
	#User can:
    	View Account.
   		 Edit  Account.
   		 Create a listing.
   		 Login and logout
   		 Select any item in the homepage
   		 Can not edit or delete any item not belongs to him/her.
   		 Send a request to buy include
      		 Pickup Time
       		 Date 
       		 Pre-Filed note with item location 
        
	#listing:
  		 Create listing must include:
       		 Location, name,  price and image.
    	 Listing can be edited.
    	 The status of listing can be switch between  active & inactive.
    	 Sold & inactive items removed from the list of products.
# Contributing
   Contributions are welcome. Feel free to open a pull request or branch from this project.
# License
https://opensource.org/licenses/MIT
