# frozen_string_literal: true

require 'rails_helper'

RSpec.feature 'Update Site', type: :feature, js: true do
  context 'update site custom domain' do
    describe 'user change custom_domain' do
      it 'sum' do
        visit calculations_path
        fill_in 'a-operator', with: '10'
        fill_in 'b-operator', with: '2'
        click_button 'Sum'
        expect(find_field('result').value).to eq 'Operation: 10 + 2
Result: 12
ID: 1
Count: 1'
      end

      it 'difference' do
        visit calculations_path
        fill_in 'a-operator', with: '10'
        fill_in 'b-operator', with: '2'
        click_button 'Difference'
        expect(find_field('result').value).to eq 'Operation: 10 - 2
Result: 8
ID: 2
Count: 1'
      end

      it 'multiplication' do
        visit calculations_path
        fill_in 'a-operator', with: '10'
        fill_in 'b-operator', with: '2'
        click_button 'Multiplication'
        expect(find_field('result').value).to eq 'Operation: 10 * 2
Result: 20
ID: 3
Count: 1'
      end

      it 'sum' do
        visit calculations_path
        fill_in 'a-operator', with: '10'
        fill_in 'b-operator', with: '2'
        click_button 'Division'
        expect(find_field('result').value).to eq 'Operation: 10 / 2
Result: 5
ID: 4
Count: 1'
      end
    end
  end
end
