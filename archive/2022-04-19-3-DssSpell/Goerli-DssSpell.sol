// SPDX-License-Identifier: AGPL-3.0-or-later
//
// Copyright (C) 2021 Dai Foundation
//
// This program is free software: you can redistribute it and/or modify
// it under the terms of the GNU Affero General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.
//
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU Affero General Public License for more details.
//
// You should have received a copy of the GNU Affero General Public License
// along with this program.  If not, see <https://www.gnu.org/licenses/>.

pragma solidity 0.6.12;
pragma experimental ABIEncoderV2;

import "dss-exec-lib/DssExec.sol";
import "dss-exec-lib/DssAction.sol";
import "dss-interfaces/dss/SpotAbstract.sol";

contract DssSpellAction is DssAction {
    // Provides a descriptive tag for bot consumption
    // This should be modified weekly to provide a summary of the actions
    // Hash: seth keccak -- "$(wget https://raw.githubusercontent.com/makerdao/community/287beee2bb76636b8b9e02c7e698fa639cb6b859/governance/votes/Executive%20vote%20-%20October%2022%2C%202021.md -q -O - 2>/dev/null)"
    string public constant override description = "Apothem Spell";

    uint256 constant MILLION = 10**6;

    address constant PIP = 0x4e1955cCdE51fc1cF58757fdF114839de100837f;

    function officeHours() public override returns (bool) {
        return false;
    }

    function actions() public override {
        address SPOT = DssExecLib.spotter();

        SpotAbstract(SPOT).file("XDC-A", "pip", PIP);
        SpotAbstract(SPOT).file("XDC-B", "pip", PIP);
        SpotAbstract(SPOT).file("XDC-C", "pip", PIP);

        DssExecLib.authorize(PIP, DssExecLib.osmMom());

        DssExecLib.addReaderToWhitelist(PIP, SPOT);
        DssExecLib.addReaderToWhitelist(PIP, DssExecLib.clip("XDC-A"));
        DssExecLib.addReaderToWhitelist(PIP, DssExecLib.clip("XDC-B"));
        DssExecLib.addReaderToWhitelist(PIP, DssExecLib.clip("XDC-C"));
        DssExecLib.addReaderToWhitelist(PIP, DssExecLib.clipperMom());
        DssExecLib.addReaderToWhitelist(PIP, DssExecLib.end());

        DssExecLib.allowOSMFreeze(PIP, "XDC-A");
        DssExecLib.allowOSMFreeze(PIP, "XDC-B");
        DssExecLib.allowOSMFreeze(PIP, "XDC-C");
    }
}

contract DssSpell is DssExec {
    constructor() DssExec(block.timestamp + 30 days, address(new DssSpellAction())) public {}
}