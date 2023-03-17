// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

/// @title: The Media Franchise
/// @author: manifold.xyz

import "./manifold/ERC721Creator.sol";

/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//                                                                                                                                                                                     //
//                                                                                                                                                                                     //
//     ___       ___                                               ___                     .-.                                                ___                                      //
//    (   )     (   )                                             (   )  .-.              /    \                                             (   )       .-.                           //
//     | |_      | | .-.     .--.      ___ .-. .-.     .--.     .-.| |  ( __)   .---.     | .`. ;   ___ .-.      .---.   ___ .-.     .--.     | | .-.   ( __)     .--.      .--.       //
//    (   __)    | |/   \   /    \    (   )   '   \   /    \   /   \ |  (''")  / .-, \    | |(___) (   )   \    / .-, \ (   )   \   /    \    | |/   \  (''")   /  _  \    /    \      //
//     | |       |  .-. .  |  .-. ;    |  .-.  .-. ; |  .-. ; |  .-. |   | |  (__) ; |    | |_      | ' .-. ;  (__) ; |  |  .-. .  |  .-. ;   |  .-. .   | |   . .' `. ;  |  .-. ;     //
//     | | ___   | |  | |  |  | | |    | |  | |  | | |  | | | | |  | |   | |    .'`  |   (   __)    |  / (___)   .'`  |  | |  | |  |  |(___)  | |  | |   | |   | '   | |  |  | | |     //
//     | |(   )  | |  | |  |  |/  |    | |  | |  | | |  |/  | | |  | |   | |   / .'| |    | |       | |         / .'| |  | |  | |  |  |       | |  | |   | |   _\_`.(___) |  |/  |     //
//     | | | |   | |  | |  |  ' _.'    | |  | |  | | |  ' _.' | |  | |   | |  | /  | |    | |       | |        | /  | |  | |  | |  |  | ___   | |  | |   | |  (   ). '.   |  ' _.'     //
//     | ' | |   | |  | |  |  .'.-.    | |  | |  | | |  .'.-. | '  | |   | |  ; |  ; |    | |       | |        ; |  ; |  | |  | |  |  '(   )  | |  | |   | |   | |  `\ |  |  .'.-.     //
//     ' `-' ;   | |  | |  '  `-' /    | |  | |  | | '  `-' / ' `-'  /   | |  ' `-'  |    | |       | |        ' `-'  |  | |  | |  '  `-' |   | |  | |   | |   ; '._,' '  '  `-' /     //
//      `.__.   (___)(___)  `.__.'    (___)(___)(___) `.__.'   `.__,'   (___) `.__.'_.   (___)     (___)       `.__.'_. (___)(___)  `.__,'   (___)(___) (___)   '.___.'    `.__.'      //
//                                                                                                                                                                                     //
//                                                                                                                                                                                     //
//                                                                                                                                                                                     //
//                                                                                                                                                                                     //
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


contract TMF is ERC721Creator {
    constructor() ERC721Creator("The Media Franchise", "TMF") {}
}