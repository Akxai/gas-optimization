// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract gasChallenge {
    uint[] numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

    function getSumOfArray() public view returns (uint256) {
        uint sum = 0;
        for (uint i = 0; i < numbers.length; i++) {
            sum += numbers[i];
        }
        return sum;
    }

    function notOptimizedFunction() public {
        for (uint i = 0; i < numbers.length; i++) {
            numbers[i] = 0;
        }
    }

    function optimizedFunction() public {
       delete numbers;
    }
}
