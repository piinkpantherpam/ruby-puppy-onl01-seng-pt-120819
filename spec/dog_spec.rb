require "spec_helper"

let!(:pluto) { Dog.new("Pluto") }
let!(:fido) { Dog.new("Fido") }
let!(:maddy) { Dog.new("Maddy") }

after(:each) do
  Dog.class_variable_set(:@@all, [])
end

describe "Dog class variables" do
  it "has a class variable, @@all, the points to an array" do
    expect(Dog.class_variable_get(:@@all)).to be_a(Array)
  end
end

describe "#clear_all" do
  it "is a class method that empties the @@all array of all existing dogs" do
    Dog.clear_all
    