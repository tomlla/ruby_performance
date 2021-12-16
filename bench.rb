require 'benchmark/ips'
require 'active_model' 

class NormlActiveModel
  include ActiveModel::Model
  attr_accessor :id, :name, :created_at
end

class ActiModelWithAttributes
  include ActiveModel::Model
  include ActiveModel::Attributes
  attribute :id
  attribute :name
  attribute :created_at
end

S = Struct.new('S', :id, :name, :created_at)


Benchmark.ips do |r|
  r.config(time: 10, warmup: 10)

  r.report ActiModelWithAttributes.inspect do
    ActiModelWithAttributes.new(id: 1, name: 'John', created_at: Time.current)
  end
  r.report NormlActiveModel.inspect do
    NormlActiveModel.new(id: 1, name: 'John', created_at: Time.current)
  end
  r.report S.inspect do
    S.new(id: 1, name: 'John', created_at: Time.current)
  end
  r.report Hash.inspect do
    { id: 1, name: 'John', created_at: Time.current }
  end
end


# Ruby version:
# ruby 3.0.2p107 (2021-07-07 revision 0db68f0233) [x86_64-linux]
# 
# Gems:
# * activemodel (7.0.0)
# * benchmark-ips (2.9.2)
# 
# $ cat /proc/cpuinfo |grep 'model name' | head -1
# model name      : AMD Ryzen 7 PRO 4750G with Radeon Graphics
