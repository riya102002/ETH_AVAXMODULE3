// SPDX-License-Identifier: MIT 
pragma solidity ^0.8.0;

import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/v4.0.0/contracts/token/ERC20/ERC20.sol";

contract BookClubToken is ERC20 {
    struct Reading {
        uint256 timestamp;
        string bookTitle;
        uint256 pagesRead;
    }

    mapping(address => Reading[]) private userActivities;
    address private _admin;

    event TokensEarned(address indexed user, uint256 amount);
    event TokensRedeemed(address indexed user, uint256 amount, string privilege);

    modifier onlyAdmin() {
        require(msg.sender == _admin, "Caller is not the admin");
        _;
    }

    constructor() ERC20("BookClubToken", "BCT") {
        _admin = msg.sender;
        _mint(msg.sender, 1000000 * 10 ** decimals()); // Initial mint to contract deployer
    }

    function mint(address to, uint256 amount) external onlyAdmin {
        _mint(to, amount);
    }

    function burn(uint256 amount) external {
        _burn(msg.sender, amount);
    }

    function logReading(string calldata book_title, uint256 pages_read) external {
        userActivities[msg.sender].push(Reading({
            timestamp: block.timestamp,
            bookTitle: book_title,
            pagesRead: pages_read
        }));
        emit TokensEarned(msg.sender, pages_read * 10 ** decimals() / 100); // Example reward
        _mint(msg.sender, pages_read * 10 ** decimals() / 100);
    }

    function redemption_of_Tokens(uint256 amount, string calldata privilege) external {
        require(balanceOf(msg.sender) >= amount, "Insufficient tokens");
        _burn(msg.sender, amount);
        emit TokensRedeemed(msg.sender, amount, privilege);
    }

    function getUserActivities(address user) external view returns (Reading[] memory) {
        return userActivities[user];
    }

    function transferTo(address to, uint256 amount) public {
        transfer(to, amount);
    }
}
