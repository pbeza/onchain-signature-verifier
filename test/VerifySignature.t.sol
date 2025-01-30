// test/VerifySignature.t.sol
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "forge-std/Test.sol";
import "../src/VerifySignature.sol";

contract VerifySignatureTest is Test {
    VerifySignature verifySignature;

    function setUp() public {
        verifySignature = new VerifySignature();
    }

    function testVerifySignature() public view {
        address signer = 0x627306090abaB3A6e1400e9345bC60c78a8BEf57;
        bytes32 message = 0x0000000000000000000000000000000000000000000000000000000000003039;
        uint8 v = 27;
        bytes32 r = 0x50f3388b11745c8ed6ead86e63443535d8ffb72eb49f1ac8ef01d1816eac3d79;
        bytes32 s = 0x5cb261d53bd2fbd532f8f892a9dcba56c79a8b5ee77df1ca292c5ccd14d63d7e;

        bool isValid = verifySignature.verify(signer, message, v, r, s);
        assertTrue(isValid, "Signature verification failed");
    }
}
