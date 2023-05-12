# Diamond Proxy Demo
## Reference Links
[Sepolia ETH faucet](https://faucets.chain.link/) - Get test ETH.

[Diamond Implementations](https://github.com/mudgen/diamond) - Compares Diamond reference implementations.

[SolidState](https://github.com/solidstate-network/solidstate-solidity) - Upgradeable-first Solidity smart contract development library that supports diamonds.

[Louper.dev](https://louper.dev/) - User interface for diamonds.

[Awesome Diamond](https://github.com/mudgen/awesome-diamonds) - A curated list of awesome EIP2535 Diamonds resources, libraries, tools and more.

[EIP2535 Diamonds, Multi-Facet Proxy](https://eips.ethereum.org/EIPS/eip-2535) - Create modular smart contract systems that can be extended after deployment.

# Notes
## Deployed Address (Sepolia)
Diamond = 0x4145167B48Fbc61111008371004d85b59FC1fcFB  
ERC20Facet = 0xcd9537589a0a9368b7d25dfd19a912fd7adcb2bd  
ERC20FacetInit = 0xf42f412ec13fEd0Ea8331E458b75c543aC3404aB  
ERC20FacetMintNBurn = 0x142ed041b7cbcc7c72da4eb94c4a66d43c595d24  
ZeroAddress = 0x0000000000000000000000000000000000000000

## facetCut() Parameters Structure
`[[<facetAddress>,0,[<functionSelectors>]],[<facetAddress2>,0,[functionSelectors2]]],<initAddress>,<initCode>`

## Function Selectors
ERC20Facet - 0x39509351,0x3644e515,0xdd62ed3e,0x095ea7b3,0x70a08231,0x313ce567,0xa457c2d7,0x06fdde03,0x7ecebe00,0xd505accf,0x95d89b41,0x18160ddd,0xa9059cbb,0x23b872dd  

ERC20FacetMintNBurn - 0xaa82e017,0x3dc8ded7

## Imports
Diamond -  
import "@solidstate/contracts/proxy/diamond/SolidStateDiamond.sol";

ERC20Facet -  
import "@solidstate/contracts/token/ERC20/SolidStateERC20.sol";

ERC20FacetInit -  
import "@solidstate/contracts/token/ERC20/metadata/ERC20MetadataInternal.sol";  
import "@solidstate/contracts/token/ERC20/base/ERC20BaseInternal.sol";

ERC20MintNBurn -  
import "@solidstate/contracts/token/ERC20/base/ERC20BaseInternal.sol";

## Init function
```
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
```

### Mint And Burn function
```
    function __mint(address account, uint256 amount) external {
        _mint(account, amount);
    }

    function __burn(address account, uint256 amount) external {
        _burn(account, amount);
    }
```

## Etherscan API key
KBWU9P5DRER9I1AGUZF71E2B9H33Y1TIZY  
FIFAYFZXDHNK2W62TP7WTI1USM5MTSSJWF  
SMKYZJQM51QKYIRE3VSE7MNHSW5R1G7RZP