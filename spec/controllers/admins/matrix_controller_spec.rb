require 'rails_helper'

RSpec.describe Admins::MatrixController, type: :controller do

  context 'validations' do
    it { is_expected.to validate_presence_of(:name) }}    
  end

end
