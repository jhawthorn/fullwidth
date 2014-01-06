class String
  def to_fullwidth
    tr(' !-~', "\u3000" + (0xFF01...0xFF5f).to_a.pack('U*'))
  end
end
