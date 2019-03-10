require 'rails_helper'

RSpec.describe DetectSetCardsService do
  describe '#set?' do
    subject { DetectSetCardsService.new }
    describe 'a set' do
      context 'when 3 cards have 3 attr the same' do
        let(:cards) do
          [
            Card.new(:diamond, :red, :blank, :one),
            Card.new(:diamond, :red, :blank, :one),
            Card.new(:diamond, :green, :filled, :two)
          ]
        end

        it 'should detect as a set' do
          expect(subject).to receive(:all_the_same?).with(cards, :shape).and_call_original
          expect(subject.set?(cards)).to eq(true)
        end
      end

      context 'when 3 cards have 3 attr diff' do
        let(:cards) do
          [
            Card.new(:diamond, :red, :blank, :one),
            Card.new(:oval, :red, :blank, :one),
            Card.new(:squiggle, :green, :filled, :two)
          ]
        end

        it 'should detect as a set' do
          expect(subject).to receive(:all_diff?).with(cards, :shape).and_call_original
          expect(subject.set?(cards)).to eq(true)
        end
      end
    end

    describe 'not a set' do
      context 'when 3 cards have 2 attr diff' do
        let(:cards) do
          [
            Card.new(:diamond, :red, :blank, :one),
            Card.new(:diamond, :green, :blank, :one),
            Card.new(:squiggle, :green, :filled, :two)
          ]
        end

        it 'should not a set' do
          expect(subject.set?(cards)).to eq(false)
        end
      end
    end
  end

  describe '#all_the_same?' do
    context 'when 3 cards have the same shape' do
      let(:cards) do
        [
          Card.new(:diamond, :red, :blank, :one),
          Card.new(:diamond, :green, :blank, :one),
          Card.new(:diamond, :green, :filled, :two)
        ]
      end

      it 'should return true' do
        expect(subject.send(:all_the_same?, cards, :shape)).to eq(true)
      end
    end

    context 'otherwise' do
      let(:cards) do
        [
          Card.new(:diamond, :red, :blank, :one),
          Card.new(:diamond, :green, :blank, :one),
          Card.new(:squiggle, :green, :filled, :two)
        ]
      end

      it 'should return false' do
        expect(subject.send(:all_the_same?, cards, :shape)).to eq(false)
      end
    end
  end

  describe '#all_diff?' do
    context 'when 3 cards have 3 shapes' do
      let(:cards) do
        [
          Card.new(:diamond, :red, :blank, :one),
          Card.new(:squiggle, :green, :blank, :one),
          Card.new(:oval, :green, :filled, :two)
        ]
      end

      it 'should return true' do
        expect(subject.send(:all_diff?, cards, :shape)).to eq(true)
      end
    end

    context 'when 3 cards have 2 shapes' do
      let(:cards) do
        [
          Card.new(:diamond, :red, :blank, :one),
          Card.new(:diamond, :green, :blank, :one),
          Card.new(:squiggle, :green, :filled, :two)
        ]
      end

      it 'should return false' do
        expect(subject.send(:all_diff?, cards, :shape)).to eq(false)
      end
    end
  end
end
