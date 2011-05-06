require "sinatra/base"
require "erubis"

module Brug

  class Application < Sinatra::Base

    set :public, File.expand_path('../public', __FILE__)
    set :views, File.expand_path('../views', __FILE__)

    set :environment, "production"

    get '/' do
      @menu = "about"
      erubis :about
    end

    get '/activities' do
      @menu = "activities"
      erubis :activities
    end

    get '/projects' do
      @menu = "projects"
      erubis :projects
    end

    get '/members' do
      @menu = "members"
      erubis :members
    end

    get '/portfolio' do
      @menu = "portfolio"
      erubis :portfolio
    end

  end

end