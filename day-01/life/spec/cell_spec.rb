require "cell"

RSpec.describe Cell do
  it "should die with no neighbors" do
    allow(subject).to receive(:number_of_live_neighbors) { 0 }
    expect(subject.lives?).to be_falsey
  end

  context "when alive" do
    before { allow(subject).to receive(:alive?) { true } }

    it "should die with one neighbor" do
      allow(subject).to receive(:number_of_live_neighbors) { 1 }
      expect(subject.lives?).to be_falsey
    end

    it "should live with two neighbors" do
      allow(subject).to receive(:number_of_live_neighbors) { 2 }
      expect(subject.lives?).to be_truthy
    end

    it "should live with three neighbors" do
      allow(subject).to receive(:number_of_live_neighbors) { 3 }
      expect(subject.lives?).to be_truthy
    end

    it "should die with four neighbors" do
      allow(subject).to receive(:number_of_live_neighbors) { 4 }
      expect(subject.lives?).to be_falsey
    end

    it "should die with five neighbors" do
      allow(subject).to receive(:number_of_live_neighbors) { 5 }
      expect(subject.lives?).to be_falsey
    end
  end

  context "when dead" do
    before { allow(subject).to receive(:alive?) { false } }

    it "should die with two neighbors" do
      allow(subject).to receive(:number_of_live_neighbors) { 2 }
      expect(subject.lives?).to be_falsey
    end

    it "should live with three neighbors" do
      allow(subject).to receive(:number_of_live_neighbors) { 3 }
      expect(subject.lives?).to be_truthy
    end
  end
end
