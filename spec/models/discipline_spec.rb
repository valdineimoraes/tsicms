require 'rails_helper'

RSpec.describe Discipline, type: :model do
  context 'validations' do

    it { is_expected.to validate_presence_of(:name)}
    
  end
end
