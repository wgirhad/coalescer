# frozen_string_literal: true

RSpec.describe Coalescer::Array do
  describe '#coalesce!' do
    subject { described_instance.coalesce! }

    let(:described_instance) { [nil, 1, '2', :a].shuffle }

    it 'returns its first valid value' do
      is_expected.to eq(described_instance.compact.first)
    end
  end
end
