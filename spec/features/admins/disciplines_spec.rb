require 'rails_helper'

RSpec.feature "Disciplines", type: :feature do
    describe "#create" do
        before (:each) do
            visit new_admins_discipline_path
        end

        context 'with valid fields' do
            it 'create discipline' do
                name='Pensamento Computacional'

            end
        end

    end

end
