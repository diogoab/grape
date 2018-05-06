require 'grape'

class HelloApi < Grape::API

      format :json

      get '/' do
        { :msg => 'Hello From Grape Api' }
      end
      post '/' do
        { :msg => 'Hello From Grapm API from POST request' }
      end
      resource 'hello' do
        route_params :id do
          get do
             { :msg => 'Retornando GET!', parmas: params[:id] }
          end
        end

      end
    end
