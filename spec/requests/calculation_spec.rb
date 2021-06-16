# frozen_string_literal: true

require 'rails_helper'

RSpec.describe CalculationsController, type: :controller do
  context 'calculations' do
    it 'sum_nums' do
      post :sum_nums, params: { calculation: { a: 10, b: 2, operation: 'sum_nums' } }
      expect(Calculation.count).to eq(1)
      expect(Calculation.last.result).to eq('12')
    end

    it 'difference' do
      post :difference, params: { calculation: { a: 10, b: 2, operation: 'difference' } }
      expect(Calculation.count).to eq(1)
      expect(Calculation.last.result).to eq('8')
    end

    it 'multiplication' do
      post :multiplication, params: { calculation: { a: 10, b: 2, operation: 'multiplication' } }
      expect(Calculation.count).to eq(1)
      expect(Calculation.last.result).to eq('20')
    end

    it 'division' do
      post :division, params: { calculation: { a: 10, b: 2, operation: 'division' } }
      expect(Calculation.count).to eq(1)
      expect(Calculation.last.result).to eq('5')
    end
  end
end
