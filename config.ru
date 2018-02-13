require 'sinatra'
require 'sinatra/reloader' if development?
require_relative './controllers/site_controller.rb'

run SiteController
