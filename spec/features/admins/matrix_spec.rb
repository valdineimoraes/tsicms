require 'rails_helper'

RSpec.feature "Matrices", type: :feature do
    describe "#create" do
        before (:each) do
            visit new_admins_matrix_path
        end

        context 'with valid fields' do
            it 'create matrix' do
                
                name='Matrix 22'

            end
        end

    end

end