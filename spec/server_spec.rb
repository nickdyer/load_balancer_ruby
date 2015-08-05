require 'server'

describe Server do

  let(:vm1) { double :vm1, size: 15 }
  let(:server) { Server.new(100) }

  context 'Upon initialization' do

    it 'has a capacity' do
      expect(server.capacity).to eq 100
    end

    it 'knows its initial load' do
      expect(server.load_percentage).to eq 0
    end

  end
 
  it 'can hold a vm' do
    server.add_vm(vm1)
    expect(server.list_vms).to include vm1
  end

  it 'knows its current load' do
    2.times {server.add_vm(vm1)}
    expect(server.load_percentage).to eq 30
  end

  it 'knows how many VMs it has' do
    server.add_vm(vm1)
    expect(server.vm_count).to eq 1
  end

  it 'knows when it cannot fit a VM' do
    6.times {server.add_vm(vm1)}
    expect(server.can_fit?(vm1)).to eq false
  end
    

end

