#!/usr/bin/env bash
repo_dir=$(git rev-parse --show-toplevel)
. "${repo_dir}/bin/functions"

puppet_options="--modulepath ${repo_dir}/site:${repo_dir}/modules:/etc/puppet/modules --environmentpath ${repo_dir}"

echo_title "Going to install vagrant and the needed plugins"
puppet apply $puppet_options -e 'include psick::vagrant::plugins'

