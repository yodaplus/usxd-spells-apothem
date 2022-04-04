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
import "dss-interfaces/dss/OsmAbstract.sol";

contract DssSpellAction is DssAction {
    // Provides a descriptive tag for bot consumption
    // This should be modified weekly to provide a summary of the actions
    // Hash: seth keccak -- "$(wget https://raw.githubusercontent.com/makerdao/community/287beee2bb76636b8b9e02c7e698fa639cb6b859/governance/votes/Executive%20vote%20-%20October%2022%2C%202021.md -q -O - 2>/dev/null)"
    string public constant override description = "Apothem Spell";

    uint256 constant MILLION = 10**6;

    address constant XDC                   = 0x839fEb1A8897B0F134196Fd5Aee5a89B690A6E0A;
    address constant PIP_XDC               = 0x6911b072DC16Dcc5B55caB7a832cBfcfB3E45069;
    address constant MCD_JOIN_XDC_A        = 0x2f207A8b3558Ab165F26172d097C729E70289e03;
    address constant MCD_CLIP_XDC_A        = 0x8E018F0C78ca51123951aB2D5aD9aa183C642c88;
    address constant MCD_CLIP_CALC_XDC_A   = 0x1c3e05F5f9dd1AC1D51be3D42845163B95f18BB2;

    function officeHours() public override returns (bool) {
        return false;
    }

    function actions() public override {

        // Add WSTETH-A as a new Vault Type (It should have come on version 1.9.8)
       DssExecLib.addNewCollateral(CollateralOpts({
            ilk:                   "XDC-A",
            gem:                   XDC,
            join:                  MCD_JOIN_XDC_A,
            clip:                  MCD_CLIP_XDC_A,
            calc:                  MCD_CLIP_CALC_XDC_A,
            pip:                   PIP_XDC,
            isLiquidatable:        true,
            isOSM:                 false,
            whitelistOSM:          false,
            ilkDebtCeiling:        3 * MILLION,
            minVaultAmount:        0,
            maxLiquidationAmount:  3 * MILLION,
            liquidationPenalty:    1300,        // 13% penalty fee
            ilkStabilityFee:       1000000000000000000000000000,
            startingPriceFactor:   13000,       // Auction price begins at 130% of oracle
            breakerTolerance:      5000,        // Allows for a 50% hourly price drop before disabling liquidations
            auctionDuration:       140 minutes,
            permittedDrop:         4000,        // 40% price drop before reset
            liquidationRatio:      16000,       // 160% collateralization
            kprFlatReward:         300,         // 300 Dai
            kprPctReward:          10           // 0.1%
        }));
        DssExecLib.setIlkAutoLineParameters("XDC-A", 50 * MILLION, 3 * MILLION, 8 hours);

        DssExecLib.setChangelogAddress("XDC", XDC);
        DssExecLib.setChangelogAddress("PIP_XDC", PIP_XDC);
        DssExecLib.setChangelogAddress("MCD_JOIN_XDC_A", MCD_JOIN_XDC_A);
        DssExecLib.setChangelogAddress("MCD_CLIP_XDC_A", MCD_CLIP_XDC_A);
        DssExecLib.setChangelogAddress("MCD_CLIP_CALC_XDC_A", MCD_CLIP_CALC_XDC_A);
    }
}

contract DssSpell is DssExec {
    constructor() DssExec(block.timestamp + 30 days, address(new DssSpellAction())) public {}
}