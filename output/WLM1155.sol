// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

/// @title: Wizard Labs Manifold 1155
/// @author: manifold.xyz

import "./manifold/ERC1155Creator.sol";

///////////////////////////////////////////////////////////////////
//                                                               //
//                                                               //
//    /**  _    _ _                  _ _           _             //
//     *  | |  | (_)                | | |         | |            //
//     *  | |  | |_ ______ _ _ __ __| | |     __ _| |__  ___     //
//     *  | |/\| | |_  / _` | '__/ _` | |    / _` | '_ \/ __|    //
//     *  \  /\  / |/ / (_| | | | (_| | |___| (_| | |_) \__ \    //
//     *   \/  \/|_/___\__,_|_|  \__,_\_____/\__,_|_.__/|___/    //
//     *                                                         //
//     * 🧙 https://wizardlabs.xyz/ 🧙                           //
//     */                                                        //
//                                                               //
//                                                               //
///////////////////////////////////////////////////////////////////


contract WLM1155 is ERC1155Creator {
    constructor() ERC1155Creator("Wizard Labs Manifold 1155", "WLM1155") {}
}