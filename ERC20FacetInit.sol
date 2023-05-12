// SPDX-License-Identifier: MIT
pragma solidity ^0.8.8;

import "@solidstate/contracts/token/ERC20/metadata/ERC20MetadataInternal.sol";
import "@solidstate/contracts/token/ERC20/base/ERC20BaseInternal.sol";

contract ERC20FacetInit is ERC20MetadataInternal, ERC20BaseInternal {
    function init(
        string memory name,
        string memory symbol,
        uint8 decimals,
        uint256 supply
    ) external {
        _setName(name);
        _setSymbol(symbol);
        _setDecimals(decimals);

        _mint(msg.sender, supply);
    }
}