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

        route_param :id do
          get do
             { :msg => 'Retornando GET!', params: params[:id] }
          end
        end
        params do
          require :name, type: "String", desc: "person name"
          require :age, type: "Integer", desc: "person age"
        end

        post do
          { :msg => 'Retornando POST!'}
        end
      end
    end
