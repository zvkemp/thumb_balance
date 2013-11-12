class ApplicationController < ActionController::Base
  protect_from_forgery

  def home
    @transactions     = Transaction.all
    @transaction      = Transaction.new
    @place_categories = place_category_array
  end



  private
    def place_category_array
      Hash[Place.all.map {|place| [place.id, place.categories.map {|c| [c.id, c.name]}]}].to_json
    end



end
