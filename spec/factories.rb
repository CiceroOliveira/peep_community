#By usingg the symbol ':user', we get FActory Girl to simulate the User model.
Factory.define :user do |user|
  user.name   "Cicero Oliveira"
  user.email  "cicero@example.com"
  user.password "foobar"
  user.password_confirmation "foobar"
end

Factory.sequence :email do |n|
  "Person-#{n}@example.com"
end

Factory.define :micropost do |micropost|
  micropost.content "Foo bar"
  micropost.association :user
end