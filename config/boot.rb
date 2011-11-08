APP_ENV  = ENV["RACK_ENV"] ||= "development" unless defined?(APP_ENV)
APP_ROOT = File.dirname(__FILE__) + '/..' unless defined? APP_ROOT

begin
    # Require the preresolved locked set of gems.
    require File.expand_path('../../.bundle/environment', __FILE__)
rescue LoadError
    require 'rubygems'
    require 'bundler'
    Bundler.setup
end

Bundler.require(:default, APP_ENV)

require APP_ROOT + '/app/app.rb'
