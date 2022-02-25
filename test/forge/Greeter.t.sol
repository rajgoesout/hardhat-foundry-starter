// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.12;

import "./BaseTest.sol";
import "../../contracts/Greeter.sol";

contract GreeterTest is BaseTest {
    Greeter public greeter;

    function setUp() public {
        greeter = new Greeter("hello, world!");
    }

    function testSetGreeting() public {
        assertEq(greeter.greet(), "hello, world!");
        greeter.setGreeting("gm, anon!");
        assertEq(greeter.greet(), "gm, anon!");
    }
}
