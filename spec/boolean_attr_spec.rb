require './lib/attr_boolean.rb'

class BooleanAttrWrapper

  include BooleanAttr

  boolean_attr_reader :happy
  boolean_attr_writer :sad
  boolean_attr_accessor :ambivalent

  def initialize
    @happy = true
  end

end

describe BooleanAttrWrapper do
  
  let(:mr_boole) { BooleanAttrWrapper.new }

  it 'can have a boolean attribute reader' do
    expect(mr_boole.happy?).to be true
  end

  it 'can have a boolean attribute writer' do
    expect{mr_boole.sad? = false}.not_to raise_error
  end

  it ''
end