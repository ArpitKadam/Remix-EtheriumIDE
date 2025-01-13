// SPDX-License-Identifier: MIT

pragma solidity ^0.8.13;

import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/utils/math/Math.sol";

contract RealEstate {
    using Math for uint256;

    struct Property {
        uint256 price;
        address owner;
        bool forSale;
        string name;
        string description;
        string location;
    }

    mapping(uint256 => Property) public properties;
    uint256[] public propertyIds;

    event PropertySold(uint256 propertyId);

    function ListPropertyforSale(
        uint256 _propertyId,
        uint256 _price,
        string memory _name,
        string memory _description,
        string memory _location
    ) public {
        Property memory newProperty = Property({
            price: _price,
            owner: msg.sender,
            forSale: true,
            name: _name,
            description: _description,
            location: _location
        });

        properties[_propertyId] = newProperty;
        propertyIds.push(_propertyId);
    }

    function buyProperty(uint256 _propertyId) public payable {
        Property storage property = properties[_propertyId];

        require(property.forSale, "Property is not for sale");
        require(property.price <= msg.value, "Insufficient Funds");

        // Store the current owner to transfer funds
        address previousOwner = property.owner;

        // Update property details
        property.owner = msg.sender;
        property.forSale = false;

        // Transfer the funds to the previous owner
        payable(previousOwner).transfer(property.price);

        emit PropertySold(_propertyId);
    }
}
