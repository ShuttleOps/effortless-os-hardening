scaffold_policy_name="hardening-policy"
pkg_name=effortless-os-hardening
pkg_origin=shuttleops
pkg_version="4.0.0"
pkg_maintainer="ShuttleOps Infra <infrastructure@shuttleops.io>"
pkg_description="The ShuttleOps OS Hardening Policy"
pkg_upstream_url="https://github.com/ShuttleOps/effortless-os-hardening"
pkg_scaffolding="chef/scaffolding-chef-infra"
pkg_svc_user=("root")
pkg_exports=(
  [chef_client_ident]="chef_client_ident"
)

do_setup_environment() {
 set_runtime_env CHEF_LICENSE "accept-no-persist"
}
