# README

### Initial setup

1. rake db:create

2. rake db:migrate

3. rake db:seed

4. Find user to set admin as true. Only that user can able to access the Active admin side.

     **Can be managed form Active admin side as well '/admin'**

5. Next for element, its nothing but the list of Model to be managed, example: creating it for Product model
     **Element.create(name: 'Product')**   
     
6. Roles can be added from active admin side.

**privileges -> roles(choose one) -> customer(Setting Access for customer).**

##### Final should look like (For example role called customer)

https://medium.com/@praaveen/rails-5-with-authentication-authorization-grid-as-base-to-get-start-83fccde24974

![Customer Grid](/app/assets/images/customer-grid.png?raw=true "Customer Grid")
