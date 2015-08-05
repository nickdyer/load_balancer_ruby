require 'vm'

describe Vm do

  it "can have a size" do
    vm = Vm.new(5)
    expect(vm.size).to eq 5
  end

end

