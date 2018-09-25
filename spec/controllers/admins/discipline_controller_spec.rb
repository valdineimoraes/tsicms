require 'rails_helper'

RSpec.describe Admins::DisciplineController, type: :controller do

  context 'validations' do
    it { is_expected.to validate_presence_of(:name) } 
    it { is_expected.to validate_presence_of(:code) } 
    it { is_expected.to validate_presence_of(:hours) } 

  end
  

end
 