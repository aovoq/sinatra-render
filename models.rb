require 'bundler/setup'
Bundler.require

ActiveRecord::Base.establish_connection

class Memo < ActiveRecord::Base
end