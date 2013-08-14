```ruby
Develop pagination with ajax in Rails Application.
```

Gem Used for pagination 

----------------------
 Add gem in Gemfile

```ruby
gem 'will_paginate', '~> 3.0'

```
Enable format.js in controller
```ruby
def index
   # @posts = Post.paginate(:page => params[:page])
    @posts = Post.paginate(:order =>"name ASC" ,:page => params[:page], :per_page => 2)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @posts }
     
## ADD This line to index action ####
      format.js
## ADD This line to index action ####
    end
  end

```


create a file in views index.js.erb

```ruby
index.js.erb
---------------

$("#posts").html("<%= escape_javascript(render("posts")) %>");

$('.pagination a').attr('data-remote', 'true');


```


create a partial in views -- _posts.html.erb
```ruby
_posts.html.erb
------------

<div class="listing">
<% @posts.each do |post| %>
    <div class="table">
      <span> <%= post.name %> </span>
      <span> <%= post.price %>  </span>
    </div>
<% end %>
</div>
<%= will_paginate @posts %>
```


Index.html.erb
---------------
```ruby

<h1>posts</h1>
<div id="posts">
  <%= render "posts/posts" %>
</div>
<script>
    $(function(){
        $('.pagination a').attr('data-remote', 'true')
    });
</script>

```


You can customize the default "per_page" value:
```ruby
class Post < ActiveRecord::Base
  attr_accessible :name, :price
#You can customize the default "per_page" value:
  self.per_page = 1
end


```



```ruby
Finally Your done with Pagination with Ajax.



```
 
