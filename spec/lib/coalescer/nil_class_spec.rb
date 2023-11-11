# frozen_string_literal: true

RSpec.describe Coalescer::NilClass do
  describe '#coalesce' do
    subject { nil.coalesce(*args) }

    let(:args) { [nil, 1, 2, 3] }

    it 'returns the next value' do
      is_expected.to eq(1)
    end

    context 'when the next value is false' do
      let(:args) { [nil, false, true] }

      it 'false will be returned' do
        is_expected.to eq(false)
      end
    end
  end
end
