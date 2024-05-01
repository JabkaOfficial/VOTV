class SearchController < ApplicationController
  def index
    @query = params[:query]
    @category = params[:category]

    @results = if @category == "Name"
                 Album.where("name LIKE ?", "%#{@query}%") + Track.where("name LIKE ?", "%#{@query}%")
               elsif @category == "Author"
                 Album.where("author LIKE ?", "%#{@query}%") # + Track.where("author LIKE ?", "%#{@query}%")
               elsif @category == "Lyrics"
                 Track.where("lyrics LIKE ?", "%#{@query}%")
               else
                 []
               end
  end
end
