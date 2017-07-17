# rails_env_admin
> Rails single admin stored in ENV session.

## installation
+ Add this line to your application's Gemfile:
```ruby
gem "rails_env_admin", :git=>"git@github.com:afeiship/rails_env_admin.git"
```
+ basic config:
```bash
rails g rails_env_admin:install
```


## usage:
+ git@github.com:afeiship/rails_env_admin.git
+ if login:
```erb
<h1>Welcome!</h1>
<% if session[:login] %>
    <p>login success!</p>
<% else %>
    <p>You have not login</p>
<% end %>
```

## resource:
+ https://www.smashingmagazine.com/2011/06/a-guide-to-starting-your-own-rails-engine-gem/