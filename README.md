
# fundForFloodVictim---Blockchain-DApp

This decentralized application (DApp) is designed to facilitate donations for flood victims using the Ethereum blockchain. Built with Solidity smart contracts and integrated with a web frontend, the app allows donors to register, make donations, and track total funds using MetaMask for transaction approval. The system runs on a local Ethereum network using Ganache for development and testing. Truffle framework is used to facilitate the web interface creation.



## Features

- **Donor Registration**: Allows users to register as a donor by providing their name and mobile number.
- **Donation**: Donors can donate Ether to the chosen zone (Sylhet, Chittagong South, or Chittagong North) using their registered mobile number.
- **Donation Tracking**: The DApp allows users to view the donation balances for each zone.
- **Donor Information**: Donors can verify their registration details by entering their Ethereum account address.



## Prerequisites
Before you begin, ensure you have met the following requirements:

- **Node.js** installed on your local machine (version 12.x or higher).
- **Truffle** Framework installed globally (`npm install -g truffle`).
- **Ganache** to create a local Ethereum blockchain for testing.
- **MetaMask** installed in your browser to interact with the Ethereum blockchain.
- **Solidity** Compiler to compile the smart contracts.



## Smart Contract Overview
The main smart contract file is located in `contracts/fundForFloodVictims.sol`. Here's a brief overview of the functionality:

- **Fundraiser Accounts**: Predefined Ethereum addresses representing the zones (Sylhet, Chittagong South, and Chittagong North) where donations will be sent.
- **Donor Registration**: Users can register as a donor by providing a name and mobile number. Each address can only register once.
- **Donations**: After registering, donors can donate Ether to any of the three zones. Donations are only accepted from registered donors.
- **Donation Info**: Users can check the total amount of donations each zone has received.
- **Donor Info**: Users can check their own registration details by providing their Ethereum address.



## Project structure

```bash
  fundForFloodVictims/
   ├── contracts/
   │   └── fundForFloodVictims.sol    # Solidity smart contract
   ├── migrations/
   │   └── 1_initial_migration.js     # Migration file for deploying the contract
   ├── src/
   │   ├── css/
   │   │   └── style.css              # Custom CSS for the frontend
   │   └── js/
   │       ├── app.js                 # JavaScript backend interaction with the contract
   │       ├── bootstrap.min.js       # Bootstrap JavaScript
   │       └── truffle-contract.js    # Truffle Contract interaction
   ├── test/
   │   └── fundForFloodVictims_test.js # Unit tests for the contract
   ├── index.html                     # HTML file for the frontend
   ├── truffle-config.js              # Configuration file for Truffle
   └── README.md                      # This README file

```



## Frontend Overview
The frontend is written in HTML, JavaScript, and Bootstrap and uses Web3.js to interact with the smart contract.

**Features:**

- **Donor Registration**: Users can register as a donor via a simple form.
file:///home/udoy/Pictures/Screenshots/Screenshot%20from%202024-09-16%2016-47-50.png

- **Make Donation**: Registered donors can choose a zone and make donations.
/home/udoy/Pictures/Screenshots/Screenshot from 2024-09-16 16-50-28.png

![Screenshot from 2024-09-16 16-52-16](https://github.com/user-attachments/assets/b05beaf5-239c-4232-ba6f-21a6953db869)

- **Check Donation Info**: Users can check how much Ether each zone has received.
/home/udoy/Pictures/Screenshots/Screenshot from 2024-09-16 16-50-50.png

- **Check Donor Info**: Donors can verify their own registration information by entering their Ethereum account address.
![Screenshot from 2024-09-16 16-51-26](https://github.com/user-attachments/assets/cd2847e1-6458-41aa-abd7-13ed0ac10ad6)





## Main Backend Functions
The following functions are defined in app.js to handle interaction with the smart contract:

- **DonorRegistration()**: Registers a user as a donor.
- **Donate()**: Allows donors to send Ether to a selected zone.
- **getDonationInfo()**: Fetches the total amount of donations for each zone.
- **getDonorInfo()**: Retrieves the registration information for a given account.




## Badges

Open access to anyone!

[![MIT License](https://img.shields.io/badge/License-MIT-green.svg)](https://choosealicense.com/licenses/mit/)


## Contribute

Contributions are always welcome!




## 🚀 About Me

This is Udoy Saha. I am tech enthusiast, problem solver.

[![portfolio](https://img.shields.io/badge/my_portfolio-000?style=for-the-badge&logo=ko-fi&logoColor=white)](https://udoysaha.com/)
[![linkedin](https://img.shields.io/badge/linkedin-0A66C2?style=for-the-badge&logo=linkedin&logoColor=white)](https://www.linkedin.com/in/udoysaha103/)


## Feedback

If you have any feedback, please reach out to me at udoysaha103@gmail.com.

