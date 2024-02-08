// SPDX-License-Identifier: UNLICENSED
pragma solidity =0.7.6;

import {Script, console} from "forge-std/Script.sol";
import "../contracts/SwapRouter.sol";

contract SwapRouterScript is Script {
    address constant V3_FACTORY = 0x1F98431c8aD98523631AE4a59f267346ea31F984;
    address constant WETH = 0x1F98431c8aD98523631AE4a59f267346ea31F984;
    
    function setUp() public {}

    function run() public {
        vm.broadcast();
        new SwapRouter(V3_FACTORY, WETH);
    }
}
