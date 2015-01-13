class Triangle

  define_method(:initialize) do |a, b, c|
    @a = a.to_i()
    @b = b.to_i()
    @c = c.to_i()
  end

  define_method(:triangle?) do
    if @a + @b <= @c
      false
    elsif @a + @c <= @b
      false
    elsif @b + @c <= @a
      false
    else
      true
    end
  end

  define_method(:type) do
    if (@a == @b).&(@b == @c)
      "Equilateral"
    elsif (@a != @b).&(@b != @c).&(@a != @c)
      "Scalene"
    else
      "Isosceles"
    end
  end
end
