require 'rails_helper'

RSpec.describe DetectSetCardsService do
  describe '#set?' do

    subject { DetectSetCardsService.set?(cards) }
    context 'when number of card is not eq 3' do
      it 'should raise an error' do

      end
    end

    context 'when number of cards is eq 3' do
      it 'should raise error' do

      end
    end
  end

end
