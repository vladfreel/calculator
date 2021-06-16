# frozen_string_literal: true

class CalculationsController < ApplicationController
  def index; end

  def sum_nums
    render json: { calc: create_calc('sum_nums'), count: Calculation.sum_nums.count }
  end

  def difference
    render json: { calc: create_calc('difference'), count: Calculation.difference.count }
  end

  def multiplication
    render json: { calc: create_calc('multiplication'), count: Calculation.multiplication.count }
  end

  def division
    render json: { calc: create_calc('division'), count: Calculation.division.count }
  end

  private

  def create_calc(operation)
    calculation = Calculation.new(calculation_params)
    case operation
    when 'sum_nums'
      calculation.result = calculation.a + calculation.b
    when 'difference'
      calculation.result = calculation.a - calculation.b
    when 'multiplication'
      calculation.result = calculation.a * calculation.b
    when 'division'
      calculation.result = calculation.a / calculation.b
    end
    calculation.save!
    calculation
  end

  def calculation_params
    params.require(:calculation).permit(:a, :b, :operation)
  end
end
