require 'spec_helper'

describe BikesController do 
    describe 'GEhT Bike create' do 
             it "Should render template create " do 
                get :create 
                excpect(response).to render_template :create
              end 
    end 
    
end 