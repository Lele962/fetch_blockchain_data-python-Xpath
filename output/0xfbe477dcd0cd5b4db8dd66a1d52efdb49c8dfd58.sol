// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

/// @title: Bleak by Felon
/// @author: manifold.xyz

import "./manifold/ERC721Creator.sol";

///////////////////////////////////////////////////
//                                               //
//                                               //
//                                               //
//     ▄▄▄▄    ██▓    ▓█████ ▄▄▄       ██ ▄█▀    //
//    ▓█████▄ ▓██▒    ▓█   ▀▒████▄     ██▄█▒     //
//    ▒██▒ ▄██▒██░    ▒███  ▒██  ▀█▄  ▓███▄░     //
//    ▒██░█▀  ▒██░    ▒▓█  ▄░██▄▄▄▄██ ▓██ █▄     //
//    ░▓█  ▀█▓░██████▒░▒████▒▓█   ▓██▒▒██▒ █▄    //
//    ░▒▓███▀▒░ ▒░▓  ░░░ ▒░ ░▒▒   ▓▒█░▒ ▒▒ ▓▒    //
//    ▒░▒   ░ ░ ░ ▒  ░ ░ ░  ░ ▒   ▒▒ ░░ ░▒ ▒░    //
//     ░    ░   ░ ░      ░    ░   ▒   ░ ░░ ░     //
//     ░          ░  ░   ░  ░     ░  ░░  ░       //
//          ░                                    //
//                                               //
//                                               //
//                                               //
///////////////////////////////////////////////////


contract BLEAK is ERC721Creator {
    constructor() ERC721Creator("Bleak by Felon", "BLEAK") {}
}