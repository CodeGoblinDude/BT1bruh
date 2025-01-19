// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract BT1AmirToken is ERC20 {
    address public lastSender;
    address public lastReceiver;
    uint256 public lastTimestamp;

    constructor() ERC20("BT1Amir", "BT1A") {
        // Mint initial supply of 2000 tokens (18 decimals)
        _mint(msg.sender, 2000 * (10 ** decimals()));
    }

    function transfer(address recipient, uint256 amount) public override returns (bool) {
        lastSender = msg.sender;
        lastReceiver = recipient;
        lastTimestamp = block.timestamp;
        return super.transfer(recipient, amount);
    }

    function getTransactionSender() public view returns (address) {
        return lastSender;
    }

    function getTransactionReceiver() public view returns (address) {
        return lastReceiver;
    }

    function getLastTransactionTimestamp() public view returns (string memory) {
        uint256 ts = lastTimestamp;
        return string(abi.encodePacked(uint2str(ts), " (Unix Time)"));
    }

    function uint2str(uint256 _i) internal pure returns (string memory _uintAsString) {
        if (_i == 0) return "0";
        uint256 j = _i;
        uint256 length;
        while (j != 0) {
            length++;
            j /= 10;
        }
        bytes memory bstr = new bytes(length);
        uint256 k = length;
        while (_i != 0) {
            k = k - 1;
            bstr[k] = bytes1(uint8(48 + _i % 10));
            _i /= 10;
        }
        return string(bstr);
    }
}
