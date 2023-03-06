// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

contract CrowdFunding {
    struct Campaign {
        address owner;
        string title;
        string description;
        string image;
        uint256 target;
        uint256 amountCollected;
        uint256 deadline;
        address [] donators;
        address [] donations; 
    }

    mapping(uint256 => Campaign) public campaigns;

    uint256 public numberOfCampaigns = 0; 

    function createCampaign (address _owner, string memory _title, string memory _description, string memory _image, uint256 _target, uint256 _amountCollected, uint256 _deadline) public returns (uint256) {
        
        Campaign storage campaign = campaigns[numberOfCampaigns];

        require(campaign.deadline > block.timestamp, 'The deadline should be in the future');

        campaign.owner = _owner;
        campaign.title = _title;
        campaign.amountCollected = _amountCollected;
        campaign.deadline = _deadline;
        campaign.description = _description;
        campaign.target = _target;
        campaign.image = _image;

        numberOfCampaigns++;

        return numberOfCampaigns - 1;
}

}