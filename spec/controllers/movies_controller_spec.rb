require 'spec_helper'

describe MoviesController do
    
    describe 'searching for movies by director' do
        before :each do
            @fake_results= double(Movie, :title => "Star Wars", :director => "director", :id => '1')
        end
        it 'should call find movies by director' do
            Movie.stub(:find).with('1').and_return(@fake_results)
            get :same_director, {:id =>'1'}
        end
        
    end
end