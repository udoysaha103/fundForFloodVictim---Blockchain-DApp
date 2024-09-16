// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

contract fundForFloodVictims {
    // funraiser accounts
    address payable private accountSylhet;
    address payable private accountChittagongSouth;
    address payable private accountChittagongNorth;


    // donor information
    struct Donor{
        string name;
        string mobile;
        bool registrationStatus;
    }

    mapping(address => Donor) private donors;

    // to capture events
    event occurEvent( uint indexed _candidateId );
    uint private count;


    // initialize fundraiser accounts with three predefined addresses
    constructor() {
        accountSylhet = payable(0x62ac0EA85a1592e7C9E0F301322263be984669F9);
        accountChittagongSouth = payable(0xAf98be1A9902d55cdA9E8d1cC7FfA86DE32715Ae);
        accountChittagongNorth = payable(0x8569CC4D0947899C2dcD183a0348118894711723);

        count = 0;
    }

    // register a donor
    function DonorRegistration(string memory name, string memory mobile) public {
        address addr = msg.sender;
        
        require(!donors[addr].registrationStatus, "Already registered!");
        require(addr != accountSylhet && addr != accountChittagongSouth && addr != accountChittagongNorth, "Any fundraiser account can not register as a donor.");
        require(bytes(name).length > 0, "Name must be provided.");
        require(bytes(mobile).length > 0, "Mobile number must be provided.");
        
        donors[addr] = Donor({
            name: name,
            mobile: mobile,
            registrationStatus: true
        });

        count += 1;
        emit occurEvent( count );
    }

    // make a donation
    function Donate(string memory mobile, string memory zone) public payable  {
        require(sha256(abi.encodePacked(donors[msg.sender].mobile)) == sha256(abi.encodePacked(mobile)), "Mobile number mismatch!");

        if (sha256(abi.encodePacked(zone)) == sha256(abi.encodePacked("sylhet"))) {
            accountSylhet.transfer(msg.value);
        } else if (sha256(abi.encodePacked(zone)) == sha256(abi.encodePacked("chittagong_south"))) {
            accountChittagongSouth.transfer(msg.value);
        } else if (sha256(abi.encodePacked(zone)) == sha256(abi.encodePacked("chittagong_north"))) {
            accountChittagongNorth.transfer(msg.value);
        } else {
            revert("Invalid zone specified.");
        }

        count += 1;
        emit occurEvent( count );
    }

    // total donation
    function getDonationInfo () public view returns(uint, uint, uint, uint) {
        return (accountSylhet.balance, accountChittagongSouth.balance, accountChittagongNorth.balance, accountSylhet.balance + accountChittagongSouth.balance + accountChittagongNorth.balance);
    }

    // check donor info
    function getDonorInfo(address addr) public view returns (string memory, string memory){
        require(donors[addr].registrationStatus, "Invalid donor.");
        return (donors[addr].name, donors[addr].mobile);
    }
}
