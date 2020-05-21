name 'hardening-policy'

default_source :supermarket
default_source :chef_repo, "../"

run_list %w< hardening::default >
