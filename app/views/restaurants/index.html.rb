<h1>Restaurants</h1>

<ul>
  <% @restaurantss.each do |restaurant| %>
    <li><%= link_to restaurant.name, restaurant_path(restaurant) %></li>
  <% end %>
</ul>
