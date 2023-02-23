require 'rspec'
require 'dessert'

=begin
Instructions: implement all of the pending specs (the `it` statements without blocks)! Be sure to look over the solutions when you're done.
=end

describe Dessert do
  let(:chef) { double("chef") }
  let(:dessert) { Dessert.new("cake", 100, chef)}
  describe "#initialize" do
    it "sets a type" do
      expect(dessert.type).to eq("cake")
    end

    it "sets a quantity" do
      expect(dessert.quantity).to eq(100)
    end

    it "starts ingredients as an empty array" do
      expect(dessert.ingredients).to eq([])
    end
    it "raises an argument error when given a non-integer quantity" do
      expect{ Dessert.new("more cake","a hundo", chef) }.to raise_error(ArgumentError)
    end
  end

  describe "#add_ingredient" do
    it "adds an ingredient to the ingredients array" do
      dessert.add_ingredient("flour")
      expect(dessert.ingredients).to eq(["flour"])
    end
  end

  describe "#mix!" do
    it "shuffles the ingredient array" do
      dessert.add_ingredient("sugar")
      dessert.add_ingredient("cocoa")
      dessert.add_ingredient("butter")
      dessert.add_ingredient("vanilla")
      dessert.add_ingredient("cream")
      dessert.mix!
      expect(dessert.ingredients[0..2]).to_not eq(["flour", "sugar", "cocoa"])
    end
  end

  describe "#eat" do
    it "subtracts an amount from the quantity" do
      dessert.eat(40)
      expect(dessert.quantity).to eq(60)
    end
    it "raises an error if the amount is greater than the quantity" do
      expect {dessert.eat(400)}.to raise_error("not enough left!")
    end
  end

  describe "#serve" do
    it "contains the titleized version of the chef's name" do
      allow(chef).to receive(:titleize).and_return("Cheffry")
      expect(dessert.serve).to include("Cheffry")
    end
  end

  describe "#make_more" do
    it "calls bake on the dessert's chef with the dessert passed in" do
    allow(chef).to receive(:bake).and_return(dessert.heat!)
    end
  end
end
