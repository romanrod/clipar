require "clipar/version"


class CLIPar

	def initialize
		detect_os
		parse_args
	end

	def parse_args
		if win?
			@env = {}
			ARGV.each do |arg|
				key_val = arg.split("=")
				@env[key_val.first]= key_val.last
			end
		else
			@env = ENV
		end
		@env
	end

	def detect_os
		@os = case RUBY_PLATFORM
	    when /cygwin|mswin|mingw|bccwin|wince|emx/
	      :windows
	    when /darwin/
	      :mac
	    else
	      :linux
	  end
	end

	def win?
		@os == :windows
	end

	def add_param name, value, force=false
		return nil if win? 
		unless force
			raise "Param '#{name}' already exists" if @env.keys.include? name
		end
		@env[name]= value
	end


	# Any parameter name passed through command line will be trated as a method
	def method_missing meth
		if "#{meth}".end_with? "?"
			!!@env["#{meth}".chop]
		else
			@env["#{meth}"]
		end
	end
end