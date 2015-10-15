RSpec.describe Slag do
  # Make sure that Mattock::VERSION exists
  describe '::VERSION' do
    context 'when it exists' do
      it { is_expected.to have_constant :VERSION }
    end
  end

  # Make sure that Mattock::ROOT exists
  describe '::ROOT' do
    context 'when it exists' do
      it { is_expected.to have_constant :ROOT }
    end
  end
end