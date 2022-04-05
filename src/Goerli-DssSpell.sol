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
import "dss-interfaces/dss/StairstepExponentialDecreaseAbstract.sol";

contract DssSpellAction is DssAction {
    // Provides a descriptive tag for bot consumption
    // This should be modified weekly to provide a summary of the actions
    // Hash: seth keccak -- "$(wget https://raw.githubusercontent.com/makerdao/community/287beee2bb76636b8b9e02c7e698fa639cb6b859/governance/votes/Executive%20vote%20-%20October%2022%2C%202021.md -q -O - 2>/dev/null)"
    string public constant override description = "Apothem Spell";

    uint256 constant MILLION = 10**6;

    function officeHours() public override returns (bool) {
        return false;
    }

    function actions() public override {
        DssExecLib.setIlkLiquidationRatio("XDC-A", 20000);
        DssExecLib.setKeeperIncentiveFlatRate("XDC-A", 0);
        DssExecLib.setKeeperIncentivePercent("XDC-A", 0);

        DssExecLib.addNewCollateral(CollateralOpts({
            ilk:                   "XDC-B",
            gem:                   0x839fEb1A8897B0F134196Fd5Aee5a89B690A6E0A,
            join:                  0xA6e383105CBc27cc2cd7A8102B10FA7CF08595F3,
            clip:                  0x29934c960a3aB08ca41b20a3c0dE40da466b0cE8,
            calc:                  0x1c3e05F5f9dd1AC1D51be3D42845163B95f18BB2,
            pip:                   0x6911b072DC16Dcc5B55caB7a832cBfcfB3E45069,
            isLiquidatable:        true,
            isOSM:                 false,
            whitelistOSM:          false,
            ilkDebtCeiling:        3 * MILLION,
            minVaultAmount:        0,
            maxLiquidationAmount:  3 * MILLION,
            liquidationPenalty:    1300,        // 13% penalty fee
            ilkStabilityFee:       1000000000627937192491029810, // 2%
            startingPriceFactor:   10500,       // Auction price begins at 130% of oracle
            breakerTolerance:      5000,        // Allows for a 50% hourly price drop before disabling liquidations
            auctionDuration:       3592 seconds,
            permittedDrop:         8571,        // 40% price drop before reset
            liquidationRatio:      16000,       // 160% collateralization
            kprFlatReward:         0,         // 300 Dai
            kprPctReward:          0           // 0.1%
        }));
        DssExecLib.setIlkAutoLineParameters("XDC-B", 50 * MILLION, 3 * MILLION, 8 hours);

        DssExecLib.setChangelogAddress("MCD_JOIN_XDC_B", 0xA6e383105CBc27cc2cd7A8102B10FA7CF08595F3);
        DssExecLib.setChangelogAddress("MCD_CLIP_XDC_B", 0x29934c960a3aB08ca41b20a3c0dE40da466b0cE8);
        DssExecLib.setChangelogAddress("MCD_CLIP_CALC_XDC_B", 0x1c3e05F5f9dd1AC1D51be3D42845163B95f18BB2);

        DssExecLib.addNewCollateral(CollateralOpts({
            ilk:                   "XDC-C",
            gem:                   0x839fEb1A8897B0F134196Fd5Aee5a89B690A6E0A,
            join:                  0x30637c3B9Efc4fDAC281Bc5C00A57C8d79c6C5AB,
            clip:                  0xA00C76C26f1b245f86618e1B362C337701c3f186,
            calc:                  0x1c3e05F5f9dd1AC1D51be3D42845163B95f18BB2,
            pip:                   0x6911b072DC16Dcc5B55caB7a832cBfcfB3E45069,
            isLiquidatable:        true,
            isOSM:                 false,
            whitelistOSM:          false,
            ilkDebtCeiling:        3 * MILLION,
            minVaultAmount:        0,
            maxLiquidationAmount:  3 * MILLION,
            liquidationPenalty:    1300,        // 13% penalty fee
            ilkStabilityFee:       1000000001547125957863212448, // 5%
            startingPriceFactor:   10500,       // Auction price begins at 130% of oracle
            breakerTolerance:      5000,        // Allows for a 50% hourly price drop before disabling liquidations
            auctionDuration:       3592 seconds,
            permittedDrop:         8571,        // 40% price drop before reset
            liquidationRatio:      12000,       // 160% collateralization
            kprFlatReward:         0,         // 300 Dai
            kprPctReward:          0           // 0.1%
        }));
        DssExecLib.setIlkAutoLineParameters("XDC-C", 50 * MILLION, 3 * MILLION, 8 hours);

        DssExecLib.setChangelogAddress("MCD_JOIN_XDC_C", 0x30637c3B9Efc4fDAC281Bc5C00A57C8d79c6C5AB);
        DssExecLib.setChangelogAddress("MCD_CLIP_XDC_C", 0xA00C76C26f1b245f86618e1B362C337701c3f186);
        DssExecLib.setChangelogAddress("MCD_CLIP_CALC_XDC_C", 0x1c3e05F5f9dd1AC1D51be3D42845163B95f18BB2);
    }
}

contract DssSpell is DssExec {
    constructor() DssExec(block.timestamp + 30 days, address(new DssSpellAction())) public {}
}