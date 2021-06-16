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
end
