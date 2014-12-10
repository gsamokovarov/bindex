require "mkmf"

case RUBY_VERSION
when /1\.9\.3/
  $CFLAGS   << " -D RUBY_193"
  $INCFLAGS << " -I./ruby_193/"
when /2\.0\.*/
  $CFLAGS   << " -D RUBY_20"
  $INCFLAGS << " -I./ruby_20/"
when /2\.1\.*/
  $CFLAGS   << " -D RUBY_21"
  $INCFLAGS << " -I./ruby_21/"
end

$CFLAGS << " -g3 -O0" if ENV["DEBUG"]

create_makefile("bindex/exception_ext")
