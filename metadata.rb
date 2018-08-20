name 'confluence_forked'
maintainer 'Tilo Klessen'
maintainer_email 't.lo@klessen.cloud'
license 'Apache-2.0'
description 'Installs/Configures Atlassian Confluence'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version '2.4.5'

issues_url 'https://github.com/glotzerhotze/confluence/issues' if respond_to?(:issues_url)
source_url 'https://github.com/glotzerhotze/confluence' if respond_to?(:source_url)

recipe 'confluence_forked', 'Installs/configures Atlassian Confluence'
recipe 'confluence_forked::apache2', 'Installs/configures Apache 2 as proxy (ports 80/443)'
recipe 'confluence_forked::database', 'Installs/configures MySQL/PostgreSQL server, database, and user for Confluence'
recipe 'confluence_forked::linux_installer', 'Installs/configures Confluence via Linux installer'
recipe 'confluence_forked::linux_standalone', 'Installs/configures Confluence via Linux standalone archive'
recipe 'confluence_forked::tomcat_configuration', "Configures Confluence's built-in Tomcat"
recipe 'confluence_forked::crowd_sso', 'Configures user authentication with Crowd single sign-on'

# supports 'amazon'
supports 'centos'
# supports 'redhat'
# supports 'scientific'
# supports 'ubuntu'

depends 'apache2'
depends 'ark'
depends 'database'
depends 'java'
# depends 'mysql', '< 8.0.0'
# depends 'mysql_connector'
# depends 'mysql2_chef_gem', '< 2.0.0'
depends 'postgresql'

chef_version '> 13.0.0' if respond_to?(:chef_version)
