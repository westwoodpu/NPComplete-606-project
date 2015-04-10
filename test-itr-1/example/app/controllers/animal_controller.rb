class AnimalController < ApplicationController
  def index
    @cat = Animal.new
    @cat.name = "foo"
    @cat.age = 1
  end
end
