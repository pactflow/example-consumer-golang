# Pact standalone executables

This package contains the Ruby implementations of the Pact Mock Service, Pact Provider Verifier and Pact Broker Client, packaged with Travelling Ruby so that they can be run from the command line without a Ruby installation.

To connect to a Pact Broker that uses custom SSL cerificates, set the environment variable `$SSL_CERT_FILE` or `$SSL_CERT_DIR` to a path that contains the appropriate certificate.

## Package contents

This version (1.88.26) of the Pact standalone executables package contains:

  * pact gem 1.55.6
  * pact-mock_service gem 3.7.0
  * pact-support gem 1.16.4
  * pact-provider-verifier gem 1.32.1
  * pact_broker-client gem 1.34.0
  * pact-message gem 0.9.0


## Usage

<a name="pact-mock-service"></a>
### pact-mock-service

```
Commands:
  pact-mock-service control               # Run a Pact mock service control s...
  pact-mock-service control-restart       # Start a Pact mock service control...
  pact-mock-service control-start         # Start a Pact mock service control...
  pact-mock-service control-stop          # Stop a Pact mock service control ...
  pact-mock-service help [COMMAND]        # Describe available commands or on...
  pact-mock-service restart               # Start or restart a mock service. ...
  pact-mock-service service               # Start a mock service. If the cons...
  pact-mock-service start                 # Start a mock service. If the cons...
  pact-mock-service stop -p, --port=PORT  # Stop a Pact mock service
  pact-mock-service version               # Show the pact-mock-service gem ve...

Usage:
  pact-mock-service service

Options:
      [--consumer=CONSUMER]                                      # Consumer name
      [--provider=PROVIDER]                                      # Provider name
  -p, [--port=PORT]                                              # Port on which to run the service
  -h, [--host=HOST]                                              # Host on which to bind the service
                                                                 # Default: localhost
  -d, [--pact-dir=PACT_DIR]                                      # Directory to which the pacts will be written
  -m, [--pact-file-write-mode=PACT_FILE_WRITE_MODE]              # `overwrite` or `merge`. Use `merge` when running multiple mock service instances in parallel for the same consumer/provider pair. Ensure the pact file is deleted before running tests when using this option so that interactions deleted from the code are not maintained in the file.
                                                                 # Default: overwrite
  -i, [--pact-specification-version=PACT_SPECIFICATION_VERSION]  # The pact specification version to use when writing the pact. Note that only versions 1 and 2 are currently supported.
                                                                 # Default: 2
  -l, [--log=LOG]                                                # File to which to log output
      [--log-level=LOG_LEVEL]                                    # Log level. Options are DEBUG INFO WARN ERROR
                                                                 # Default: DEBUG
  -o, [--cors=CORS]                                              # Support browser security in tests by responding to OPTIONS requests and adding CORS headers to mocked responses
      [--ssl], [--no-ssl]                                        # Use a self-signed SSL cert to run the service over HTTPS
      [--sslcert=SSLCERT]                                        # Specify the path to the SSL cert to use when running the service over HTTPS
      [--sslkey=SSLKEY]                                          # Specify the path to the SSL key to use when running the service over HTTPS

Start a mock service. If the consumer, provider and pact-dir options are provided, the pact will be written automatically on shutdown (INT).

```

<a name="pact-stub-service"></a>
### pact-stub-service

```
Usage:
  pact-stub-service PACT_URI ...

Options:
  -p, [--port=PORT]                        # Port on which to run the service
  -h, [--host=HOST]                        # Host on which to bind the service
                                           # Default: localhost
  -l, [--log=LOG]                          # File to which to log output
  -n, [--broker-username=BROKER_USERNAME]  # Pact Broker basic auth username
  -p, [--broker-password=BROKER_PASSWORD]  # Pact Broker basic auth password
  -k, [--broker-token=BROKER_TOKEN]        # Pact Broker bearer token (can also be set using the PACT_BROKER_TOKEN environment variable)
      [--log-level=LOG_LEVEL]              # Log level. Options are DEBUG INFO WARN ERROR
                                           # Default: DEBUG
  -o, [--cors=CORS]                        # Support browser security in tests by responding to OPTIONS requests and adding CORS headers to mocked responses
      [--ssl], [--no-ssl]                  # Use a self-signed SSL cert to run the service over HTTPS
      [--sslcert=SSLCERT]                  # Specify the path to the SSL cert to use when running the service over HTTPS
      [--sslkey=SSLKEY]                    # Specify the path to the SSL key to use when running the service over HTTPS

Description:
  Start a stub service with the given pact file(s) or directories. Pact URIs may be
  local file or directory paths, or HTTP. Include any basic auth details in the
  URL using the format https://USERNAME:PASSWORD@URI. Where multiple matching
  interactions are found, the interactions will be sorted by response status,
  and the first one will be returned. This may lead to some non-deterministic
  behaviour. If you are having problems with this, please raise it on the
  pact-dev google group, and we can discuss some potential enhancements. Note
  that only versions 1 and 2 of the pact specification are currently fully
  supported. Pacts using the v3 format may be used, however, any matching
  features added in v3 will currently be ignored.

```

<a name="pact-provider-verifier"></a>
### pact-provider-verifier

To connect to a Pact Broker that uses custom SSL cerificates, set the environment variable `$SSL_CERT_FILE` or `$SSL_CERT_DIR` to a path that contains the appropriate certificate.

```
Usage:
  pact-provider-verifier PACT_URL ... -h, --provider-base-url=PROVIDER_BASE_URL

Options:
  -h, --provider-base-url=PROVIDER_BASE_URL                                  # Provider host URL
  -c, [--provider-states-setup-url=PROVIDER_STATES_SETUP_URL]                # Base URL to setup the provider states at
      [--pact-broker-base-url=PACT_BROKER_BASE_URL]                          # Base URL of the Pact Broker from which to retrieve the pacts. Can also be set using the environment variable PACT_BROKER_BASE_URL.
  -n, [--broker-username=BROKER_USERNAME]                                    # Pact Broker basic auth username. Can also be set using the environment variable PACT_BROKER_USERNAME.
  -p, [--broker-password=BROKER_PASSWORD]                                    # Pact Broker basic auth password. Can also be set using the environment variable PACT_BROKER_PASSWORD.
  -k, [--broker-token=BROKER_TOKEN]                                          # Pact Broker bearer token. Can also be set using the environment variable PACT_BROKER_TOKEN.
      [--provider=PROVIDER]                                                  
      [--consumer-version-tag=TAG]                                           # Retrieve the latest pacts with this consumer version tag. Used in conjunction with --provider. May be specified multiple times.
      [--provider-version-tag=TAG]                                           # Tag to apply to the provider application version. May be specified multiple times.
  -g, [--tag-with-git-branch], [--no-tag-with-git-branch]                    # Tag provider version with the name of the current git branch. Default: false
  -a, [--provider-app-version=PROVIDER_APP_VERSION]                          # Provider application version, required when publishing verification results
  -r, [--publish-verification-results], [--no-publish-verification-results]  # Publish verification results to the broker. This can also be enabled by setting the environment variable PACT_BROKER_PUBLISH_VERIFICATION_RESULTS=true
      [--enable-pending], [--no-enable-pending]                              # Allow pacts which are in pending state to be verified without causing the overall task to fail. For more information, see https://pact.io/pending
      [--custom-provider-header=CUSTOM_PROVIDER_HEADER]                      # Header to add to provider state set up and pact verification requests. eg 'Authorization: Basic cGFjdDpwYWN0'. May be specified multiple times.
      [--custom-middleware=FILE]                                             # Ruby file containing a class implementing Pact::ProviderVerifier::CustomMiddleware. This allows the response to be modified before replaying. Use with caution!
  -v, [--verbose=VERBOSE]                                                    # Verbose output. Can also be set by setting the environment variable VERBOSE=true.
  -f, [--format=FORMATTER]                                                   # RSpec formatter. Defaults to custom Pact formatter. Other options are json and RspecJunitFormatter (which outputs xml).
  -o, [--out=FILE]                                                           # Write output to a file instead of $stdout.
      [--wait=SECONDS]                                                       # The number of seconds to poll for the provider to become available before running the verification
                                                                             # Default: 0
      [--log-dir=LOG_DIR]                                                    # The directory for the pact.log file
      [--log-level=LOG_LEVEL]                                                # The log level
                                                                             # Default: debug

Description:
  The parameters used when fetching pacts dynamically from a Pact Broker are:
  
  --pact-broker-base-url (REQUIRED)
  --provider (REQUIRED)
  --broker-username/--broker-password or --broker-token
  --consumer-version-tag or --consumer-version-selector
  --enable-pending
  --include-wip-pacts-since
  
  To
  fetch a pact from a known URL (eg. when a verification is triggered by a
  'contract content changed' webhook), pass in the pact URL(s) as the first
  argument(s) to the command.
  
  To publish verification results for either of the above scenarios, set:
  
  --publish-verification-results (REQUIRED)
  --provider-app-version (REQUIRED)
  --provider-version-tag or --tag-with-git-branch
  
  
  Selectors: These are specified using JSON strings.
  The keys are 'tag' (the name of the consumer version tag), 'latest'
  (true|false), 'consumer', and 'fallbackTag'. For example '{\"tag\":
  \"master\", \"latest\": true}'. For a detailed explanation of selectors, see https://pact.io/selectors#consumer-version-selectors

```

<a name="pact-broker-client"></a>
### pact-broker client

To connect to a Pact Broker that uses custom SSL cerificates, set the environment variable `$SSL_CERT_FILE` or `$SSL_CERT_DIR` to a path that contains the appropriate certificate.

<a name="pact-broker-client-publish"></a>
#### publish

```
Usage:
  pact-broker publish PACT_DIRS_OR_FILES ... -a, --consumer-app-version=CONSUMER_APP_VERSION -b, --broker-base-url=BROKER_BASE_URL

Options:
  -a, --consumer-app-version=CONSUMER_APP_VERSION          # The consumer application version
  -b, --broker-base-url=BROKER_BASE_URL                    # The base URL of the Pact Broker
  -u, [--broker-username=BROKER_USERNAME]                  # Pact Broker basic auth username
  -p, [--broker-password=BROKER_PASSWORD]                  # Pact Broker basic auth password
  -k, [--broker-token=BROKER_TOKEN]                        # Pact Broker bearer token
  -t, [--tag=TAG]                                          # Tag name for consumer version. Can be specified multiple times.
  -g, [--tag-with-git-branch], [--no-tag-with-git-branch]  # Tag consumer version with the name of the current git branch. Default: false
      [--merge], [--no-merge]                              # If a pact already exists for this consumer version and provider, merge the contents. Useful when running Pact tests concurrently on different build nodes.
  -v, [--verbose], [--no-verbose]                          # Verbose output. Default: false

Publish pacts to a Pact Broker.

```

<a name="pact-broker-client-can-i-deploy"></a>
#### can-i-deploy

```
Usage:
  pact-broker can-i-deploy -a, --pacticipant=PACTICIPANT -b, --broker-base-url=BROKER_BASE_URL

Options:
  -a, --pacticipant=PACTICIPANT            # The pacticipant name. Use once for each pacticipant being checked.
  -e, [--version=VERSION]                  # The pacticipant version. Must be entered after the --pacticipant that it relates to.
  -l, [--latest=[TAG]]                     # Use the latest pacticipant version. Optionally specify a TAG to use the latest version with the specified tag.
      [--to=TAG]                           # This is too hard to explain in a short sentence. Look at the examples.
  -b, --broker-base-url=BROKER_BASE_URL    # The base URL of the Pact Broker
  -u, [--broker-username=BROKER_USERNAME]  # Pact Broker basic auth username
  -p, [--broker-password=BROKER_PASSWORD]  # Pact Broker basic auth password
  -k, [--broker-token=BROKER_TOKEN]        # Pact Broker bearer token
  -o, [--output=OUTPUT]                    # json or table
                                           # Default: table
  -v, [--verbose], [--no-verbose]          # Verbose output. Default: false
      [--retry-while-unknown=TIMES]        # The number of times to retry while there is an unknown verification result (ie. the provider verification is likely still running)
                                           # Default: 0
      [--retry-interval=SECONDS]           # The time between retries in seconds. Use in conjuction with --retry-while-unknown
                                           # Default: 10

Description:
  Returns exit code 0 or 1, indicating whether or not the specified application
  (pacticipant) versions are compatible (ie. safe to deploy). Prints out the
  relevant pact/verification details, indicating any missing or failed
  verification results.

  The environment variables PACT_BROKER_BASE_URL, PACT_BROKER_USERNAME and
  PACT_BROKER_PASSWORD may be used instead of their respective command line
  options.

  There are two ways to use `can-i-deploy`. The first (recommended and most commonly
  used) approach is to specify just the application version you want to deploy
  and let the Pact Broker work out the dependencies for you. The second
  approach is to specify each application version explicitly. This would
  generally only be used if there were limitations that stopped you being able
  to use the first approach.

  #### Specifying an application version

  To specify an application (pacticipant) version you need to provide:

  * the name of the application using the `--pacticipant PACTICIPANT` parameter,
  * directly followed by *one* of the following parameters: * `--version
  VERSION` to specify a known application version (recommended) * `--latest` to
  specify the latest version * `--latest TAG` to specify the latest version
  that has a particular tag * `--all TAG` to specify all the versions that have
  a particular tag (eg. "all prod" versions). This would be used when ensuring
  you have backwards compatiblity with all production mobile clients for a
  provider. Note, when using this option, you need to specify dependency
  explicitly (see the second usage option).

  Using a specific version is the easiest way to ensure you get an accurate response
  that won't be affected by race conditions.

  #### Recommended usage - allowing the Pact Broker to automatically determine the
  dependencies

  Prerequisite: if you would like the Pact Broker to calculate the dependencies for you when
  you want to deploy an application into a given environment, you will need to
  let the Broker know which version of each application is in that environment.
  To do this, the relevant application version resource in the Broker will need
  to be "tagged" with the name of the environment during the deployment
  process:

  $ pact-broker create-version-tag --pacticipant Foo --version 173153ae0 --tag
  test

  This allows you to use the following simple command to find out if you are safe
  to deploy:

  $ pact-broker can-i-deploy --pacticipant PACTICIPANT --version VERSION \ --to
  ENVIRONMENT \ --broker-base-url BROKER_BASE_URL

  If the `--to` tag is omitted, then the query will return the compatiblity with
  the overall latest version of each of the other applications.

  Examples:

  Can I deploy version 173153ae0 of application Foo to the test environment?

  $ pact-broker can-i-deploy --pacticipant Foo --version 173153ae0 \ --to test \
  --broker-base-url https://my-pact-broker

  Can I deploy the latest version of application Foo with the latest version of
  each of the applications it integrates to?

  $ pact-broker can-i-deploy --pacticipant Foo --latest \ --broker-base-url
  https://my-pact-broker

  Can I deploy the latest version of the application Foo that has the tag "test"
  to the "prod" environment?

  $ pact-broker can-i-deploy --pacticipant Foo --latest test \ --to prod \
  --broker-base-url https://my-pact-broker

  #### Alternate usage - specifying dependencies explicitly

  If you are unable to use tags, or there is some other limitation that stops you
  from using the recommended approach, you can specify one or more of the
  dependencies explictly. You must also do this if you want to use the `--all
  TAG` option for any of the pacticipants.

  You can specify as many application versions as you like, and you can even
  specify multiple versions of the same application (repeat the `--pacticipant`
  name and supply a different version.)

  You can use explictly declared dependencies with or without the `--to
  ENVIRONMENT`. For example, if you declare two (or more) application versions
  with no `--to ENVIRONMENT`, then only the applications you specify will be
  taken into account when determining if it is safe to deploy. If you declare
  two (or more) application versions _as well as_ a `--to ENVIRONMENT`, then
  the Pact Broker will work out what integrations your declared applications
  will have in that environment when determining if it safe to deploy. When
  using this script for a production release, and you are using tags, it is
  always the most future-proof option to use the `--to` if possible, as it will
  catch any newly added consumers or providers.

  If you are finding that your dependencies are not being automatically included
  when you supply multiple pacticipant versions, please upgrade to the latest
  version of the Pact Broker, as this is a more recently added feature.

  $ pact-broker can-i-deploy --pacticipant PACTICIPANT_1 [--version VERSION_1 |
  --latest [TAG_1] | --all TAG_1] \ --pacticipant PACTICIPANT_2 [--version
  VERSION_2 | --latest [TAG_2] | --all TAG_2] \ [--to ENVIRONMENT] \
  --broker-base-url BROKER_BASE_URL

  Examples:

  Can I deploy version Foo version 173153ae0 and Bar version ac23df1e8 together?

  $ pact-broker can-i-deploy --pacticipant Foo --version 173153ae0 \
  --pacticipant Bar --version ac23df1e8 \ --broker-base-url BROKER_BASE_URL

  Can I deploy the latest version of Foo with tag "master" and the latest version
  of Bar with tag "master" together?

  $ pact-broker can-i-deploy --pacticipant Foo --latest master \ --pacticipant
  Bar --latest master \ --broker-base-url BROKER_BASE_URL

  Mobile provider use case - can I deploy version b80e7b1b of Bar, all versions of
  Foo with tag "prod", and the latest version tagged "prod" of any other
  automatically calculated dependencies together? (Eg. where Bar is a provider
  and Foo is a mobile consumer with multiple versions in production, and Bar
  also has its own providers it needs to be compatible with.)

  $ pact-broker can-i-deploy --pacticipant Bar --version b80e7b1b \
  --pacticipant Foo --all prod \ --to prod \ --broker-base-url BROKER_BASE_URL

```

<a name="pact"></a>
### pact

<a name="pact-docs"></a>
#### docs
```
Usage:
  pact docs

Options:
  [--pact-dir=PACT_DIR]  # Directory containing the pacts
                         # Default: /home/runner/work/pact-ruby-standalone/pact-ruby-standalone/build/tmp/spec/pacts
  [--doc-dir=DOC_DIR]    # Documentation directory
                         # Default: /home/runner/work/pact-ruby-standalone/pact-ruby-standalone/build/tmp/doc/pacts

Generate Pact documentation in markdown

```

### pact-message

```
Commands:
  pact-message help [COMMAND]                                                ...
  pact-message reify                                                         ...
  pact-message update MESSAGE_JSON --consumer=CONSUMER --pact-dir=PACT_DIR --...
  pact-message version                                                       ...


```
