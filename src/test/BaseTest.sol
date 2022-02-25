// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.12;

import "ds-test/test.sol";
import "forge-std/stdlib.sol";
import {IERC20} from "openzeppelin/contracts/token/ERC20/IERC20.sol";

contract BaseTest is DSTest, stdCheats {
    using stdStorage for StdStorage;
    StdStorage public stdstore;

    function writeTokenBalance(
        address who,
        address token,
        uint256 amt
    ) internal {
        stdstore
            .target(token)
            .sig(IERC20(token).balanceOf.selector)
            .with_key(who)
            .checked_write(amt);
    }
}
