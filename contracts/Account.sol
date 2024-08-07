// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;


/* Error
An error will undo all changes made to the state during a transaction.

You can throw an error by calling require, revert or assert.

require is used to validate inputs and conditions before execution.
revert is similar to require. See the code below for details.
assert is used to check for code that should never be false. Failing assertion probably means that there is a bug. */

contract Account {
    uint256 public balance;
    uint256 public constant MAX_UINT = 2 ** 256 - 1;

    function deposit(uint256 _amount) public {
        uint256 oldBalance = balance;
        uint256 newBalance = balance + _amount;

        // balance + _amount does not overflow if balance + _amount >= balance
        require(newBalance >= oldBalance, "Overflow");

        balance = newBalance;

        assert(balance >= oldBalance);
    }

    function withdraw(uint256 _amount) public {
        uint256 oldBalance = balance;

        // balance - _amount does not underflow if balance >= _amount
        require(balance >= _amount, "Underflow");

        if (balance < _amount) {
            revert("Underflow");
        }

        balance -= _amount;

        assert(balance <= oldBalance);
    }
}
