New Relic Sysmond
=========

This role installs [New Relic's sysmond](https://docs.newrelic.com/docs/servers/new-relic-servers-linux/getting-started/new-relic-servers-linux) service and ensure its up and running.

Requirements
------------

To use this role you have to have an acitve New Relic license. Pass this
in to `newrelic_sysmond_license_key`

Role Variables
--------------

# A valid 40-character license key is required in order for Servers for Linux to start.
newrelic_sysmond_license_key:

# Number of seconds Servers for Linux waits before its first attempt to contact New Relic.
newrelic_sysmond_timeout: "30"

# Sets the hostname of the server as it appears in New Relic.
newrelic_sysmond_hostname: "{{ inventory_hostname }}"

# Names and values for categories that will be applied to the data sent from this agent.
# Example format - Server:One;
newrelic_sysmond_labels:

# Sets the level of detail for messages sent.
newrelic_sysmond_loglevel: "info"

# Sets the name of the log file to use.
newrelic_sysmond_logfile: "/var/log/newrelic/nrsysmond.log"

# Sets the name of the file the daemon uses to record its process ID (pid).
newrelic_sysmond_pidfile: "/var/run/newrelic/nrsysmond.pid"

# Sets the hostname of the New Relic collector.
newrelic_sysmond_collector_host: "collector.newrelic.com"

# Proxy settings to reach New Relic
# Format - user:password@hostname:port
newrelic_sysmond_proxy:

# Use secure connection or not
newrelic_sysmond_ssl: "true"

# Sets the location of a file containing CA certificates in PEM format.
newrelic_sysmond_ssl_ca_bundle:

# Sets the location of a directory containing trusted CA certificates in PEM format.
newrelic_sysmond_ssl_ca_path:

# Include NFS filesystems for disk monitoring.
newrelic_sysmond_disable_nfs: "true"

# Include Docker monitoring.
newrelic_sysmond_disable_docker: "true"

# How to connect to the local host's Docker API service.
newrelic_sysmond_docker_connection:

# Default location to look for the certificate, key and CA certificate for using TLS.
newrelic_sysmond_docker_cert_path:

# Set the name of the certificate file to use for TLS to connect to the Docker API.
newrelic_sysmond_docker_cert:

# Set the name of the key file to use for TLS to connect to the Docker API.
newrelic_sysmond_docker_key:

# Set the name of the CA certificate file to use for TLS to connect to the Docker API.
newrelic_sysmond_docker_cacert:

Example Playbook
----------------

Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:

    - hosts: servers
      roles:
         - { role: ansible-role-newrelic-sysmond, newrelic_sysmond_license_key: 'UKYNCLPMI54A6C9J1T6BINKAKQ2CMPTVAXU5L64P' }

License
-------

MIT
