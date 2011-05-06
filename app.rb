require "sinatra/base"
require "erubis"

module Brug

  class Application < Sinatra::Base

    set :public, File.expand_path('../public', __FILE__)
    set :views, File.expand_path('../views', __FILE__)

    get '/' do
      @menu = "about"
      erubis :about
    end

  end

end