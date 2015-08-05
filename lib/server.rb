class Server

  attr_reader :capacity

  def initialize(capacity)
    @capacity = capacity
    @vms = []
    @current_load_percentage = 0
  end

  def add_vm(vm)
      @vms << vm
      @current_load_percentage += vm.size
  end

  def list_vms
    @vms
  end

  def load_percentage
    @current_load_percentage 
  end

  def full?
    @vms.length == capacity
  end

  def vm_count
    @vms.length
  end

  def can_fit? vm
    vm.size <= capacity - @current_load_percentage * capacity
  end

end
