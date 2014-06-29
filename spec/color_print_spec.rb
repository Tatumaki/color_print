require 'spec_helper'

describe Color do
  it 'has a version number' do
    expect(Color::VERSION).not_to be nil
  end
  
  it 'should be \e[31mtest\e[37m' do
    expect(Color.red("test") == "\e[31mtest\e[37m").not_to be false
  end
end
