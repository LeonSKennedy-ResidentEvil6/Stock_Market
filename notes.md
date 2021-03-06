# starting a new rails project

- rails new <Stock_Market>

# models & attributes and their associations

- Investor
    - username
    - name
    - email
    - funds
    - password
    - password_confirmation
    - password_digest
- Stock
    - symbol
    - price
    - volume
- Sector
    - industry
    - description

- has many relationship
    - investor has many stocks
    - sector has many stocks

- belongs to relationship
    - stock belongs to investor 
    - stock belongs to sector
    - (join model)

- has many through
    - investor has many sectors through stocks
    - sector has many investors through stocks


# validations

- investor
    - username
    - name
    - email
    - email confirmation
    - password
    - funds

# scope methods

- active record query methods
    - where
    - order
    - find
    - all
- scope: method_name, -> { activerecord_method(column: 'value') }
- def self.method_name 

# third-party validation 

- OmniAuth
    - gem file
    - .env
    - route
    - initializers/omniauth.rb
    - link in view
    - controller