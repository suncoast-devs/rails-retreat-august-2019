require "minitest/autorun"
require "life"

class LifeTest < MiniTest::Test
  def setup
    @life = Life.new
  end

  def test_it_exists
    assert @life
  end

  # Any live cell with fewer than two live neighbours dies, as if by underpopulation.
  def test_live_cell_with_no_neighbors_dies
    refute @life.will_live?(true, 0)
  end

  def test_live_cell_with_one_neighbor_dies
    refute @life.will_live?(true, 1)
  end

  # Any live cell with two or three live neighbours lives on to the next generation.

  def test_live_cell_with_two_neighbors_lives
    assert @life.will_live?(true, 2)
  end

  def test_live_cell_with_three_neighbors_lives
    assert @life.will_live?(true, 3)
  end

  # Any live cell with more than three live neighbours dies, as if by overpopulation.

  def test_live_cell_with_four_neighbors_dies
    refute @life.will_live?(true, 4)
  end

  def test_live_cell_with_five_neighbors_dies
    refute @life.will_live?(true, 5)
  end

  # Any dead cell with exactly three live neighbours becomes a live cell, as if by reproduction.

  def test_dead_cell_with_three_neighbors_lives
    assert @life.will_live?(false, 3)
  end

  def test_dead_cell_with_two_live_neighbors_stays_dead
    refute @life.will_live?(false, 2)
  end
end
