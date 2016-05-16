require 'test_helper'
using Slothify

describe Slothify do
  describe "String#slothify" do
    let(:str) { "Hello" }
    subject { str.slothify }

    describe "a single word" do
      it "returns expected string" do
        subject.must_equal "Helloooo"
      end
    end

    describe "multiple words" do
      let(:str) { "Hello fast world" }
      it "returns expected string" do
        subject.must_equal "Helloooo fastttt worldddd"
      end
    end

    describe "sentence with punctuation attached" do
      let(:str) { "Hello, fast world!" }
      it "returns expected string" do
        subject.must_equal "Helloooo, fastttt worldddd!"
      end
    end

    describe "sentence with punctuation floating" do
      let(:str) { "Hello - fast world !" }
      it "returns expected string" do
        subject.must_equal "Helloooo - fastttt worldddd !"
      end
    end

    describe "with length specified" do
      subject { str.slothify(length) }
      let(:length) { 5 }

      it "returns expected string" do
        subject.must_equal "Helloooooo"
      end

      describe "too tiny a length specified" do
        let(:length) { -1 }
        it "raises expected error" do
          proc { subject }.must_raise Slothify::InvalidLengthError
        end
      end

      describe "too tremendous a length specified" do
        let(:length) { 301 }
        it "raises expected error" do
          proc { subject }.must_raise Slothify::InvalidLengthError
        end
      end
    end
  end
end
