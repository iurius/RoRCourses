require 'date'
def today
  puts Date::DAYNAMES[Date.today.wday]
end

class A
	def to_modify
		puts "print from not modified method"
	end
	def to_modify2
		puts "print from not modified method2"
	end
end

## you can set method name and block of code you wanna use for replaced method

def modify!(klas, method_name = :to_modify)
	if klas.class.to_s != "Class"
		puts "Not a class"
		return
	elsif !klas.new.respond_to?(method_name.to_sym)
		puts "no method #{method_name}"
		return
	elsif  block_given?
	  	klas.send(:define_method, method_name.to_sym) do
			yield
		end
	else
	  	klas.send(:define_method, method_name.to_sym) do
		    puts "print from modified method"
		end
	end
end


today
A.new.to_modify
modify!(A)
A.new.to_modify
A.new.to_modify2
modify!("ASD")
modify!(A, :to_modify2)
A.new.to_modify2
A.new.to_modify
modify!(A) {puts "custom block for method"}
A.new.to_modify
