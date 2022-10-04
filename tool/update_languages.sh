#!/bin/bash

cd $(dirname "$0")

node ./fake_symbols.js fake
node ./edit_package_json.js change

node --experimental-specifier-resolution=node ./generate_language_files.js

node ./fake_symbols.js revert
node ./edit_package_json.js revert

dart format ../lib/languages/*.dart