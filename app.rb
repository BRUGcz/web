require "sinatra/base"
require "erubis"

module Brug

  class Application < Sinatra::Base

    set :public, File.expand_path('../public', __FILE__)
    set :views, File.expand_path('../views', __FILE__)

    set :environment, "production"

    enable :sessions

    before do
      session[:lang] = params[:lang] if params[:lang]
      session[:lang] = 'en' unless session[:lang]
    end

    get '/' do
      @menu = "about"
      erubis "about.#{session[:lang]}".to_sym, :layout => "layout.#{session[:lang]}".to_sym
    end

    get '/leaflet_ruby_muni' do
      erubis "leaflet".to_sym, :layout => "layout_leaflet".to_sym
    end

    get '/activities' do
      @menu = "activities"
      erubis "activities.#{session[:lang]}".to_sym, :layout => "layout.#{session[:lang]}".to_sym
    end

    get '/projects' do
      @menu = "projects"
      erubis "projects.#{session[:lang]}".to_sym, :layout => "layout.#{session[:lang]}".to_sym
    end

    get '/members' do
      @menu = "members"
      erubis "members.#{session[:lang]}".to_sym, :layout => "layout.#{session[:lang]}".to_sym
    end

    get '/blog' do
      @menu = "blog"
      erubis "blog.#{session[:lang]}".to_sym, :layout => "layout.#{session[:lang]}".to_sym
    end

  end

end
