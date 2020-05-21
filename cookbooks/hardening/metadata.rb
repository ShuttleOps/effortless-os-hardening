name 'hardening'

'ShuttleOps'.tap do |org|
  issues_url "https://github.com/#{org}/hardening/issues"
  source_url "https://github.com/#{org}/hardening"
  maintainer org
  maintainer_email "infrastructure@#{org}.io"
end

license 'Apache 2.0'
description 'Runs the default os hardening recipe from dev-sec/chef-os-hardening'
version '0.1.0'
chef_version '>= 12.1' if respond_to?(:chef_version)

depends 'os-hardening', '4.0.0'
