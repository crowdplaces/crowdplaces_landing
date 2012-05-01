require 'spec_helper'

describe StaticController do

  render_views
  subject{ response }

  describe 'GET index' do
    before{ get :index }
    it{ should be_success }
  end
end
