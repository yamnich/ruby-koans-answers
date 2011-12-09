require File.expand_path(File.dirname(__FILE__) + '/edgecase')

def my_global_method(a,b)
  a + b
end

class AboutMethods < EdgeCase::Koan

  def test_calling_global_methods
    assert_equal 5, my_global_method(2,3)
  end

  def test_calling_global_methods_without_parentheses
    result = my_global_method 2, 3
    puts result.to_s
  #  assert_equal 5, result
  end
end
