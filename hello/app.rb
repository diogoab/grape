require 'grape'

class HelloApi < Grape::API

      format :json

      get '/' do
        { :msg => 'Hello From Grape Api' }
      end
      post '/post' do
        { :msg => 'Hello From Grapm API from POST request' }
      end

      resource 'hello' do

        route_param :id do
          get do
             { :msg => 'Retornando GET!', params: params[:id] }
          end
        end

        desc 'Retorno do POST com parametros NAME e AGE'
        params do
          requires :name, type: String, desc: "person name"
          requires :age, type: Integer, desc: "person age"
        end
        route_param :id do
          post do
            { :msg => 'Retornando POST!', params: params }
          end
        end
      end
    end
