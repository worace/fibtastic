class FibSequence
  attr_reader :quantity
  def initialize(q)
    @quantity = q
  end

  def rec_sequence(q = quantity)
    if q == 0
      []
    elsif q == 1
      [0]
    elsif q == 2
      [0, 1]
    else
      rec_sequence(q - 1) + [rec_sequence(q - 1).last(2).reduce(:+)]
    end
  end

  def sequence(quantity = q)
    series = [0,1]
    (quantity - 2).times do
      series << series[-2] + series[-1]
    end
    series.take(quantity)
  end
end
