// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

import {MathMock} from "./mocks/MathMock.sol";
import {MathRef} from "./references/MathRef.sol";
import "forge-std/Test.sol";

contract TestMath is Test {
    MathMock mock;
    MathRef ref;

    function setUp() public {
        mock = new MathMock();
        ref = new MathRef();
    }

    /// TESTS ///

    function testMin(uint256 x, uint256 y) public {
        assertEq(mock.min(x, y), ref.min(x, y));
    }

    function testMax(uint256 x, uint256 y) public {
        assertEq(mock.max(x, y), ref.max(x, y));
    }

    function testSafeSub(uint256 x, uint256 y) public {
        assertEq(mock.zeroFloorSub(x, y), ref.zeroFloorSub(x, y));
    }

    function testDivUp(uint256 x, uint256 y) public {
        vm.assume(y > 0 && x < type(uint256).max - (y - 1));

        assertEq(mock.divUp(x, y), ref.divUp(x, y));
    }
}
