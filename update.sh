#!/bin/bash

set -euo pipefail

file="Formula/${1}.rb"
new_version="${2}"

version_pattern="v[0-9]*\.[0-9]*\.[0-9]*"
old_version="$(grep "version \"${version_pattern}\"" "${file}" | grep -o "${version_pattern}")"

formula="$(cat "${file}")"
echo "${formula//${old_version}/${new_version}}" > "${file}"

url_pattern="https.*\.gz"
new_url=$(grep "url \"${url_pattern}\"" "${file}" | grep -o "${url_pattern}")

for url in ${new_url}
do
    base_url="$(echo "${url}" | grep -o "https.*${version_pattern}/")"
    tar="${url//${base_url}/}"

    curl -sLo "${tar}" "${base_url//${new_version}/${old_version}}${tar}"
    old_sha="$(shasum -a 256 "${tar}")"
    old_sha="${old_sha//  ${tar}/}"
    rm "${tar}"

    curl -sLo "${tar}" "${base_url}${tar}"
    new_sha="$(shasum -a 256 "${tar}")"
    new_sha="${new_sha//  ${tar}/}"
    rm "${tar}"

    formula="$(cat "${file}")"
    echo "${formula//${old_sha}/${new_sha}}" > "${file}"
done
