class AirportsController < ApplicationController

  def index
    @airports = all_airports
  end

  def all_airports
    return [
      { id: 1, code: 'ORD', city: 'Chicago', img: 'http://www.vitopalmisano.com/data/photos/298_1ohare_international_airport__chicago__il.jpg'},
      { id: 2, code: 'LAX', city: 'Los Angeles', img: 'http://cdn.lightgalleries.net/4bd5ec0f44d0a/images/new_things071-2.jpg'},
      { id: 3, code: 'BOS', city: 'Boston', img: 'http://upload.wikimedia.org/wikipedia/commons/1/16/Logan_Airport_aerial_view.jpg'},
      { id: 4, code: 'JFK', city: 'Ney York City', img: 'http://0.tqn.com/d/queens/1/0/m/L/doug_letterman.jpg'},
      { id: 5, code: 'PDX', city: 'Portland', img: 'http://upload.wikimedia.org/wikipedia/commons/8/83/Portland_International_Airport_marketplace.jpg'},
      { id: 6, code: 'AUS', city: 'Austin', img: 'http://upload.wikimedia.org/wikipedia/commons/d/d7/AUS_Airport.jpg'}
    ]
  end

  def city
    @airport = all_airports[params["id"].to_i]
  end

end
