require 'skiptrace/internal/jruby_internals'

java_import com.gsamokovarov.skiptrace.JRubyIntegration

JRubyIntegration.setup(JRuby.runtime)
