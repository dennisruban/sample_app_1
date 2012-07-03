# By using the symbol ':user', we get Factory girl to simulate the User model.

Factory.define :user do |user|
  user.name                   "Dennis Ruban"
  user.email                  "dennis@example.com"
  user.password               "foobar"
  user.password_confirmation  "foobar"
  
end
