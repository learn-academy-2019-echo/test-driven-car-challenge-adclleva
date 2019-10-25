require 'rspec'
require_relative 'car'

describe "Vehicle" do
  it "Vehicle class has to exist" do
    expect{Vehicle.new(1990)}.to_not raise_error
  end

  context "when having the vehicle year model" do
    it "vehicle class can be initialized with the year model" do 
      my_vehicle = Vehicle.new(1990)
      expect(my_vehicle.model_year).to eq(1990)
    end
  end
end


describe "Car" do
  # let allows us to create a set of data that can be used in a group
  let(:my_car) { Car.new }


  it "Car class has to exist" do
    expect{my_car}.to_not raise_error
  end


  it "default class has default variable wheels to be 4" do
    expect(my_car.wheels).to eq(4)
  end

  context "using the honk_horn method" do
    it "should print out 'BEEP!'" do
      expect(my_car.honk_horn).to eq('BEEP!')       
    end
  end
end

describe "Toyota" do
  let(:my_toyota) { Toyota.new}

  it "Toyota class exists" do 
    expect{my_toyota}.to_not raise_error
  end

  it "Toyota inherits from class Car" do
    expect(Toyota.superclass).to be Car
  end

  context "using the honk_horn for toyota" do
    it "should return 'whoop'" do
      expect(my_toyota.honk_horn).to eq("whoop")
    end
  end

end


describe "Tata" do
  let(:my_tata) { Tata.new }

  it "Tata class has to exist" do
    expect{my_tata}.to_not raise_error
  end

  context "using the honk_horn method" do
    it "should print out 'BEEP!'" do
      expect(my_tata.honk_horn).to eq('beep')       
    end
  end
end

describe "Tesla" do
  let(:my_tesla) { Tesla.new }

  it "Tesla class has to exist" do
    expect{my_tesla}.to_not raise_error
  end

  context "using the honk_horn method" do
    it "should print out 'BEEP!'" do
      expect(my_tesla.honk_horn).to eq('Beep-bee-bee-boop-bee-doo-weep')       
    end
  end
end