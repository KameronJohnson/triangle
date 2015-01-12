require("rspec")
require("triangle")

describe(Triangle) do
  describe("#triangle?") do
    it("tells the user if the dimensions create a triangle") do
    expect(Triangle.new(2, 2, 8).triangle?()).to(eq(false))
    end
  end

  describe("#type") do
    it("tells the user what type of triangle they have") do
    expect(Triangle.new(2, 2, 2).type()).to(eq("Equilateral"))
    end
  end
end
