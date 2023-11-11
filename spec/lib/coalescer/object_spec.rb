# frozen_string_literal: true

RSpec.describe Coalescer::Object do
  describe '#coalesce' do
    subject { described_instance.coalesce }

    let(:described_instance) { instance_double(described_class) }

    it 'returns itself' do
      is_expected.to eq(described_instance)
    end
  end
end
