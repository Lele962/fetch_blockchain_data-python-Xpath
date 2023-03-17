// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

/// @title: OpepenRemix
/// @author: manifold.xyz

import "./manifold/ERC1155Creator.sol";

////////////////////////////////////////////////////////////////////////////////////////////////
//                                                                                            //
//                                                                                            //
//                                                                                            //
//        ████████████████████████████████████████████████████████████████████████████████    //
//        ████████████████████████████████████████████████████████████████████████████████    //
//        ████████████████████████████████████████████████████████████████████████████████    //
//        ████████████████████████████████████████████████████████████████████████████████    //
//        ████████████████████████████████████████████████████████████████████████████████    //
//        ████████████████████████████████████████████████████████████████████████████████    //
//        ████████████████████████████████████████████████████████████████████████████████    //
//        ████████████████████████████████████████████████████████████████████████████████    //
//        ███████████████████▀▀██████████████████████████████████████▀▀███████████████████    //
//        ███████████████████▄╓║▒▒▒▒▒▒▒▒▒▒▒▒██████▒▒▒▒▒▒▒▒▒▒▒▒▒▓█████▄▄███████████████████    //
//        ████████████████████▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓╣███▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓╣███████████████████████    //
//        ████████████████████▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓█▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓█████████████████████    //
//        ████████████████████▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓█▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓█████████████████████    //
//        ██████████████████████████████▀▀▀▀▀▀▀▀▀▀██████████▀▀▀▀▀▀▀▀▀▀████████████████████    //
//        ██████████████████████████████          ██████████          ████████████████████    //
//        ██████████████████████████████         ███████████         █████████████████████    //
//        ██████████████████████████████       ▄████████████       ▄██████████████████████    //
//        ██████████████████████████████    ╓▄██████████████    ╓▄████████████████████████    //
//        ████████████████████░░░░▒▒▒▒▒▒╫╢▒▒▒▒▒╣╣╣╢╢╢▓▓▓▓▓▓▓██▓▓██████████████████████████    //
//        ████████████████████▒▒▒▒▒▒▒▒▒╣╣╢╢╢╢╢▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓█████████████████████████████    //
//        ████████████████████▒▒▒▒▒▒▒▒▒╣╣╢╢╢╢╢▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓█████████████████████████████    //
//        ████████████████████▒▒▒▒▒▒▒▒▒╣╣╢╢╢╢╢▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓█████████████████████████████    //
//        ████████████████████░▄▒▒▒▒▒▒▒▒▒▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓████████████████████████████    //
//        ███████████████████████████████▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓╣╢╢╢╣╣╣╣▒▒▒████████████████████    //
//        ███████████████████████████████▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓╣╢╢╢╣╣╣╣▒▒▒████████████████████    //
//        ███████████████████████████████▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓╣╢╢╢╣╣╣╣▒▒▒████████████████████    //
//        ███████████████████▀▀██████████▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓╣╢╢╢╣╣╣╣▒▒╝▀███████████████████    //
//        ███████████████████/│▄█████████████████████████████████████?╓███████████████████    //
//        ████████████████████████████████████████████████████████████████████████████████    //
//        ████████████████████████████████████████████████████████████████████████████████    //
//        ████████████████████████████████████████████████████████████████████████████████    //
//        ████████████████████████████████████████████████████████████████████████████████    //
//        ████████████████████████████████████████████████████████████████████████████████    //
//        ████████████████████████████████████████████████████████████████████████████████    //
//        ████████████████████████████████████████████████████████████████████████████████    //
//        ██████████████████████████████████████████████████████████████████████▒▒▒╢▒▒╡       //
//                                                                                            //
//                                                                                            //
//                                                                                            //
//                                                                                            //
////////////////////////////////////////////////////////////////////////////////////////////////


contract ORX is ERC1155Creator {
    constructor() ERC1155Creator("OpepenRemix", "ORX") {}
}