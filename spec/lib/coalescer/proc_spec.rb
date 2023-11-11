# frozen_string_literal: true

RSpec.describe Coalescer::Proc do
  describe '#coalesce' do
    subject { described_instance.coalesce(*args) }

    let(:args) { [nil, false, true] }
    let(:described_instance) { -> { 42 } }

    it 'returns the proc result' do
      is_expected.to eq(42)
    end

    context 'when proc results in nil' do
      let(:described_instance) { -> {} }

      it 'returns the next non-nil value' do
        is_expected.to eq(false)
      end
    end
  end
end
