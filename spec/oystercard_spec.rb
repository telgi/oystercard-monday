require 'oystercard'

describe Oystercard do

  context 'balance' do
    it 'when initialized has a balance of 0' do
      expect(subject.balance).to eq 0
    end
  end

  context 'top_up' do
    it { is_expected.to respond_to(:top_up).with(1).argument }

    it 'adjusts balance by top up amount' do
      expect { subject.top_up(1) }.to change { subject.balance }.by(1)
    end
    
  end  
end