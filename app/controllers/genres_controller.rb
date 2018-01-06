require 'rack-flash'
class GenresController < ApplicationController
  get '/genres' do
    @genres = Genre.all
    erb :'genres/index'
  end

  get '/genres/:slug' do
    @genre = genre.find_by_slug(params[:slug])
    erb :'genres/show'
  end

end
