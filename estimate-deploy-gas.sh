#!/usr/bin/env bash

BIN=$(jq -r '.contracts|.["src/Apothem-DssSpell.sol"]|.DssSpell|.evm|.bytecode|.object' ./out/dapp.sol.json)
seth estimate --create "${BIN}" "DssSpell()"
