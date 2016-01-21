require 'colorize'

def assert message, &block
  begin
    if (block.call)
      puts "Assertion PASSED for [#{message}]".green
    else
      puts "Assertion FAILED for [#{message}]".red
    end
  rescue => e
    puts "Assertion FAILED for #{message} with exception '#{e}'".red
  end
end

def assertIncludes expectedToInclude, fieldToCheck
  begin
    if (fieldToCheck.include? expectedToInclude)
      puts "Assertion PASSED. [#{fieldToCheck}] includes [#{expectedToInclude}]".green
    else
      puts "Assertion FAILED.  Expected [#{fieldToCheck}] to include [#{expectedToInclude}]".red
    end
  rescue => e
    puts "Assertion FAILED for #{fieldToCheck} with exception '#{e}'".red
  end
end