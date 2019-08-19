class Cell
  def number_of_live_neighbors
    raise StandardError
  end

  def alive?
  end

  def lives?
    (alive? && number_of_live_neighbors == 2) || number_of_live_neighbors == 3
  end
end
