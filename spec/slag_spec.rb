RSpec.describe Slag do

  # Make sure that Slag::VERSION exists
  it { is_expected.to have_constant 'VERSION' }

  # Make sure that Slag::ROOT exists
  it { is_expected.to have_constant 'ROOT' }

  # Make sure that Slag::FOOBAR does not exist
  it { is_expected.to_not have_constant 'FOOBAR' }

end