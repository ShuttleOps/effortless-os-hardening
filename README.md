# Effortless OS Hardening

This repository contains a simple habitat wrapper package for the `chef-os-hardening` cookbook provided by [dev-sec](https://github.com/dev-sec)

This package leverages the `chef/scaffolding-chef-infra` package provided by Chef.

## Usage

### Deploying via shuttleops

1. Login to [app.shuttleops.io](https://app.shuttleops.io).
2. In the payload task, select the desired version of the `shuttleops/effortless-os-hardening` package from bldr.
3. In the destination task, add the `shuttleops/effortless-os-hardening` component to each server destination you'd like to apply the cookbook to.
4. Launch the pipeline.

### Configure reporting to automate

1. Login to [app.shuttleops.io](https://app.shuttleops.io).
2. Open the configuration panel from the payload task on the `shuttleops/effortless-os-hardening` component.
3. Expand the "automate" config section and set enable = true. Also set your data collector URL and token from automate.
4. Launch the pipeline.

## Building

To build this package locally, first [install habitat](https://www.habitat.sh/docs/install-habitat/).

Clone the repository and change into the root directory of the repository.

Next you can enter the studio and build the package:

```bash
hab studio enter
build
```

Or build it without entering the studio:

```bash
hab pkg build .
```

This will output a `.hart` file to the `./results` directory.

## Testing

To run the unit tests, we're using test-kitchen with the docker driver. You'll need to first make sure test-kitchen and [docker](https://docs.docker.com/get-docker/) are installed on your machine.

To install test-kitchen, we would recommend you install the [chef-infra development kit](https://downloads.chef.io/chefdk/current) which includes test-kitchen and the kitchen-docker driver gem.

Next, from the `./cookbooks/hardening` directory run:

```bash
kitchen test
```

Example output:

<pre>
<samp>
Profile Summary: 16 successful controls, 0 control failures, 38 controls skipped
Test Summary: 56 successful, 0 failures, 38 skipped
</samp>
</pre>
