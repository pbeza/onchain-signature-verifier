// src/VerifySignature.sol
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract VerifySignature {
    function verify(
        address signer,
        bytes32 message,
        uint8 v,
        bytes32 r,
        bytes32 s
    ) public pure returns (bool) {
        return ecrecover(message, v, r, s) == signer;
    }
}
