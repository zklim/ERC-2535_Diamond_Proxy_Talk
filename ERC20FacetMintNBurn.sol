// SPDX-License-Identifier: MIT
pragma solidity ^0.8.8;

import "@solidstate/contracts/token/ERC20/base/ERC20BaseInternal.sol";

contract ERC20FacetMintNBurn is ERC20BaseInternal {
    function __mint(address account, uint256 amount) external {
        _mint(account, amount);
    }

    function __burn(address account, uint256 amount) external {
        _burn(account, amount);
    }
}