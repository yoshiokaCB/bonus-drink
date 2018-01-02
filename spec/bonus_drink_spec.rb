require File.expand_path(File.dirname(__FILE__) + '/../bonus_drink')

describe BonusDrink do
  subject(:total_count) { BonusDrink.total_count_for(amount) }

  context '0本買った場合' do
    let(:amount) { 0 }
    specify { expect(total_count).to eq 0 }
  end
  context '1本買った場合' do
    let(:amount) { 1 }
    specify { expect(total_count).to eq 1 }
  end
  context '3本買った場合' do
    let(:amount) { 3 }
    specify { expect(total_count).to eq 4 }
  end
  context '11本買った場合' do
    let(:amount) { 11 }
    specify { expect(total_count).to eq 16 }
  end
  context '100本買った場合' do
    let(:amount) { 100 }
    specify { expect(total_count).to eq 149 }
  end

  context '入力値が nil の場合' do
    let(:amount) { nil }
    specify { expect{total_count}.to raise_error(NoMethodError)}
  end
  context '入力値が 文字列 の場合' do
    let(:amount) { 'aaa' }
    specify { expect{subject}.to raise_error(ArgumentError)}
  end
end


