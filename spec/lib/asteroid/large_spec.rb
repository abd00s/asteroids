# Encoding: UTF-8

# Ruby Hack Night Asteroids by David Andrews and Jason Schweier, 2016

require "support/shared_examples/an_initialized_asteroid"
require "asteroid/large"

RSpec.describe Asteroid::Large do
  it_behaves_like "an initialized asteroid"

  describe "#points" do
    it "is worth 20 points" do
      expect(subject.points).to be 20
    end
  end

  describe "chunks" do
    it "breaks into 2 Medium asteroids" do
      chunks = subject.chunks

      expect(chunks.length).to be 2
      chunks.each do |chunk|
        expect(chunk).to be_an_instance_of Asteroid::Medium
      end
    end
  end
end
