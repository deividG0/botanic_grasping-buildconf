# Write in this file customization code that will get executed before 
# autoproj is loaded.

# Set the path to 'make'
# Autobuild.commands['make'] = '/path/to/ccmake'

# Set the parallel build level (defaults to the number of CPUs)
# Autobuild.parallel_build_level = 10

# Uncomment to initialize the environment variables to default values. This is
# useful to ensure that the build is completely self-contained, but leads to
# miss external dependencies installed in non-standard locations.
#
# set_initial_env
#
# Additionally, you can set up your own custom environment with calls to env_add
# and env_set:
#
# env_add 'PATH', "/path/to/my/tool"
# env_set 'CMAKE_PREFIX_PATH', "/opt/boost;/opt/xerces"
# env_set 'CMAKE_INSTALL_PATH', "/opt/orocos"
#
# NOTE: Variables set like this are exported in the generated 'env.sh' script.
#

# require 'autoproj/gitorious'
# Autoproj.gitorious_server_configuration('GITORIOUS', 'gitorious.org')
# Autoproj.gitorious_server_configuration('GITHUB', 'github.com', :http_url => 'https://github.com')
# Autoproj.config.set('build', File.join(Autoproj.root_dir, 'build')) unless Autoproj.config.get('build', nil)
# Autoproj.config.set('source', 'src') unless Autoproj.config.source_dir

Autobuild::CMake.show_make_messages = false

Autoproj.config.set("source", "src") unless Autoproj.config.source_dir

require 'autoproj/git_server_configuration'