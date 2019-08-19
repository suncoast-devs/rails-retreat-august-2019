class Life
  def will_live?(is_alive, neighbors)
    neighbors == 3 || (is_alive && neighbors == 2)
  end
end
