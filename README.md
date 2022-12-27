# morpho-utils

Repository gathering useful libraries and contracts.

## Getting started

Install this repository as a forge dependency:

```bash
forge install https://github.com/morpho-dao/morpho-utils
```

Then add a remapping to your `remappings.txt`:

```txt
@morpho-utils/=lib/morpho-utils/src/
```

You're good to go! Just import libraries with `@morpho-utils/math/Math.sol` for example.

---

## Development

After cloning this repository, run:

```bash
git submodule update --init --recursive
```

Configure your VSCode to automatically format a file on save, using `forge fmt`:

- Install [emeraldwalk.runonsave](https://marketplace.visualstudio.com/items?itemName=emeraldwalk.RunOnSave)
- Update your `settings.json`:

```json
{
  "[solidity]": {
    "editor.formatOnSave": false
  },
  "emeraldwalk.runonsave": {
    "commands": [
      {
        "match": ".sol",
        "isAsync": true,
        "cmd": "forge fmt ${file}"
      }
    ]
  }
}
```

---

## Testing

For testing, run:

```bash
forge test
```

---

## Formal verification

To run the Certora prover, run (with a CERTORAKEY in your environment):

```bash
./certora/scripts/verifyAll.sh
```

---

## External contributors

We thank the MEP team for their help on code optimization:

- [@AtomicAzzaz](https://github.com/AtomicAzzaz)
- [@ewile](https://github.com/wile)
- [@makcandrov](https://github.com/makcandrov)

---

## Acknowledgements

This repository is inspired by several sources:

- [OpenZeppelin](https://github.com/OpenZeppelin/openzeppelin-contracts)
- [Compound](https://github.com/compound-finance/compound-protocol)
- [Aave V2](https://github.com/aave/protocol-v2)
- [Aave V3](https://github.com/aave/aave-v3-core)
