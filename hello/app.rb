require 'grape'

class HelloApi < Grape::API

      format :json

      get '/' do
        { :msg => 'Hello From Grape Api' }
        end
      post '/' do
        { :msg => 'Hello From Grapm API from POST request' }
        end
      end
    end
