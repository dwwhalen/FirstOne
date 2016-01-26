require 'colorize'

def assert message, &block
  begin
    if block.call
      puts "Assertion PASSED for [#{message}]".green
    else
      puts "Assertion FAILED for [#{message}]".red
    end
  rescue => e
    puts "Assertion FAILED for #{message} with exception '#{e}'".red
  end
end

def assert_includes expected_to_include, field_to_check
  begin
    if field_to_check.include? expected_to_include
      puts "Assertion PASSED. [#{field_to_check}] includes [#{expected_to_include}]".green
    else
      puts "Assertion FAILED.  Expected [#{field_to_check}] to include [#{expected_to_include}]".red
    end
  rescue => e
    puts "Assertion FAILED for #{field_to_check} with exception '#{e}'".red
  end
end