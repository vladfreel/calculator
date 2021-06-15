class Calculation < ApplicationRecord
  scope :sum, -> { where(operation: "sum") }
  scope :difference, -> { where(operation: "difference") }
  scope :multiplication, -> { where(operation: "multiplication") }
  scope :division, -> { where(operation: "division") }
end
