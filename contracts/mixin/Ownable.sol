pragma solidity ^0.4.17;

contract Ownable {
  address public owner;

  // Event
  event OwnershipChanged(address indexed oldOwner, address indexed newOwner);

  // Modifier
  modifier onlyOwner {
    require(msg.sender == owner);
    _;
  }

  function Ownable() public {
    owner = msg.sender;
  }

  /**
   * @dev Allows the current owner to transfer control of the contract to a newOwner.
   * @param newOwner The address to transfer ownership to.
   */
  function transferOwnership(address newOwner) onlyOwner public {
    require(newOwner != address(0));
    OwnershipChanged(owner, newOwner);
    owner = newOwner;
  }
}
