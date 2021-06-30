# frozen_string_literal: true

RSpec.describe Stringer do
    it "concatenates undefined number of strings with a space" do 
        expect(Stringer.spacify "Oscar", "Vazquez", "Zweig", "Olasaba", "Hernandez", "Ricardo", "Mendoza").to eq("Oscar Vazquez Zweig Olasaba Hernandez Ricardo Mendoza")
    end

    it "cuts off a string at a max length and adds an ellipsis" do
        expect(Stringer.minify("Hello, I'm learning how to create a gem", 10)).to eq("Hello, I'm...")
        expect(Stringer.minify("Hello", 10)).to eq("Hello")
    end

    it "iterates over a string and replaces each instance of that word with the replacement provided." do
        expect(Stringer.replacify("I can't do this", "can't", "can")).to eq("I can do this")
        expect(Stringer.replacify("I can do this, yes I can!", "can", "will")).to eq("I will do this, yes I will!")
    end

    it "iterates over a string and adds each word into an array, then returns that array." do
        expect(Stringer.tokenize("I love to code")).to eq(["I", "love", "to", "code"])
    end
  
    it "remove each instance of the second parameter within the original string" do
        expect(Stringer.removify("I'm not a developer", "not")).to eq("I'm a developer")
    end
end
