# frozen_string_literal: true

class Calculation < ApplicationRecord
  enum operation: { sum_nums: 'sum_nums',
                    difference: 'difference',
                    multiplication: 'multiplication',
                    division: 'division' }, _prefix: true
  scope :sum_nums, -> { where(operation: 'sum_nums') }
  scope :difference, -> { where(operation: 'difference') }
  scope :multiplication, -> { where(operation: 'multiplication') }
  scope :division, -> { where(operation: 'division') }
  validates :a,  numericality: { greater_than_or_equal_to: 1, less_than_or_equal_to: 100 }, presence: true
  validates :b,  numericality: { greater_than_or_equal_to: 1, less_than_or_equal_to: 100 }, presence: true
end
