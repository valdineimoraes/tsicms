require 'rails_helper'

RSpec.describe Discipline, type: :model do
  context 'validations' do

    it { is_expected.to validate_presence_of(:name)}
    it { is_expected.to validate_presence_of(:code)}
    it { is_expected.to validate_presence_of(:hours)}
    it { is_expected.to validate_presence_of(:menu)}
    
  end
end
