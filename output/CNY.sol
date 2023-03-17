// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

/// @title: Cha-No-Yu
/// @author: manifold.xyz

import "./manifold/ERC1155Creator.sol";

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//                                                                                                                                //
//                                                                                                                                //
//    MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM    //
//    MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM    //
//    MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMWKOOOKWMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM    //
//    MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMNx,...,kNMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM    //
//    MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMXl..,;,.'oXMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM    //
//    MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMWKc..:0N0:..cKMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM    //
//    MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMWk;..lXMMMKl..:OWMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM    //
//    MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMNd'.'dNMMMMMNd'.'xNMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM    //
//    MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMXl..;kWMMMMMMMWk;.'oXMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM    //
//    MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMW0:..c0WMMMMMMMMMW0:..cKWMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM    //
//    MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMWk,.'oXMMMMMMMMMMMMMXl..;OWMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM    //
//    MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMXo'.,xNMMMMMMMMMMMMMMMNx,.'dNMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM    //
//    MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMKc..;OWMMMMMMMMMMMMMMMMMWO;..lXMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM    //
//    MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMWO:..cKWMMMMMMMMMMMMMMMMMMMW0c..:0WMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM    //
//    MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMNx,.'dNMMMMMMMMMMMMMMMMMMMMMMMXo'.,kWMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM    //
//    MMMMMMMMWXXWMMMMMMMMMMMMMMMMMMMMMMMMMMMMMXo'.,kWMMMMMMMMMMMMMMMMMMMMMMMMMWx,.'dXMMMMMMMMMMMMMMMMMMMMMMMMMMMMMWNNWMMMMMMM    //
//    MMMMMMWOc,;cdOXWMMMMMMMMMMMMMMMMMMMMMMMWKc..:0WMMMMMMMMMMMMMMMMMMMMMMMMMMMWO;..cKMMMMMMMMMMMMMMMMMMMMMMMMWX0xl;;cOWMMMMM    //
//    MMMMMMWd...'..,cdOXWMMMMMMMMMMMMMMMMMMWO;..lKMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMKc..;OWMMMMMMMMMMMMMMMMMMWX0dc,......lNMMMMM    //
//    MMMMMMMx..;kOdc,..,cdOXWMMMMMMMMMMMMMNx,.'dNMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMXo'.,kWMMMMMMMMMMMMMWXOdc;..,cokx,..dWMMMMM    //
//    MMMMMMMk'.,0MMWXOdc;..,cokKNMMMMMMMMXl..;OWMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMWk;.'oXMMMMMMMMWKOdc,..,cdOXWMM0;.'kMMMMMM    //
//    MMMMMMMk'.'kMMMMMMWXOdc,..':okKWMMW0:..:0WMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMW0:..cKMMMWXOdc,..,cdOXWMMMMMMO,.,OMMMMMM    //
//    MMMMMMM0;.'xMMMMMMMMMMWXOdl;..':okx;.'oXMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMXl..;xkoc,..,ldOXWMMMMMMMMMMk'.;0MMMMMM    //
//    MMMMMMMK:..xMMMMMMMMMMMMMMWN0xl;.....;ONMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMWO;.....;ldOXWMMMMMMMMMMMMMWd..cXMMMMMM    //
//    MMMMMMMXc..dWMMMMMMMMMMMMMMMMMWO;..''.':ox0NWMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMNKko:'..'..;OWMMMMMMMMMMMMMMMMMWo..lNMMMMMM    //
//    MMMMMMMNo..lNMMMMMMMMMMMMMMMMWO;..l00ko:'..;lx0NWMMMMMMMMMMMMMMMMMMMMMMMMN0xl:'.';lx0Oc..:0WMMMMMMMMMMMMMMMMXc..dWMMMMMM    //
//    MMMMMMMWx..cXMMMMMMMMMMMMMMMNx,.'oNMMMMNKxl:'..;lx0XWMMMMMMMMMMMMMMMMN0xl;..';lx0NWMMMXo..,kWMMMMMMMMMMMMMMMK:.'xMMMMMMM    //
//    MMMMMMMMk'.;KMMMMMMMMMMMMMMXo'.,kWMMMMMMMMMNKko:'..;ldOXWMMMMMMMWX0xl;'.':ox0NMMMMMMMMMNx,.'dNMMMMMMMMMMMMMM0;.'kMMMMMMM    //
//    MMMMMMMM0,.,OMMMMMMMMMMMMMKc..:0WMMMMMMMMMMMMMMWKko:'..,cdOXNX0dc;..':okKNMMMMMMMMMMMMMMW0:..lKMMMMMMMMMMMMMO,.,OMMMMMMM    //
//    MMMMMMMMK;.'kMMMMMMMMMMMWO;..lXMMMMMMMMMMMMMMMMMMMMNKko:...,;,'..:okKNMMMMMMMMMMMMMMMMMMMMKc..:0WMMMMMMMMMMMk'.,0MMMMMMM    //
//    MMMMMMMMX:..xWMMMMMMMMMNd'.'dNMMMMMMMMMMMMMMMMMMMMMWXOd:'..,;,...:dkXWMMMMMMMMMMMMMMMMMMMMMNd'.,xNMMMMMMMMMMk'.:KMMMMMMM    //
//    MMMMMMMMXc..dWMMMMMMMMXl..;kWMMMMMMMMMMMMMMMMMMWXOdc,..,cokKNXOdc,..,cdOXWMMMMMMMMMMMMMMMMMMWk,.'oXMMMMMMMMWd..cXMMMMMMM    //
//    MMMMMMMMNl..oWMMMMMMW0:..c0WMMMMMMMMMMMMMMMWXOdc,..,cdOXWMMMMMMMWXOdl;..,cokKWMMMMMMMMMMMMMMMW0:..cKWMMMMMMNl..oWMMMMMMM    //
//    MMMMMMMMWd..lNMMMMMWk;..oXMMMMMMMMMMMMMWKko:,..,cdOXWMMMMMMMMMMMMMMMWN0xl;..':okKWMMMMMMMMMMMMMXo..;OWMMMMMXc..dWMMMMMMM    //
//    MMMMMMMMMx'.:XMMMMNd,.,xNMMMMMMMMMMNKkoc,..;ldOXWMMMMMMMMMMMMMMMMMMMMMMMWX0xl;'.':okKNMMMMMMMMMMNx,.,xNMMMMK;.'kMMMMMMMM    //
//    MMMMMMMMMO'.;0MMMKc..;OWMMMMMMWN0xo:'..;lx0NWMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMWN0xo:'.':lx0NWMMMMMMWO;..lXMMMO,.,OMMMMMMMM    //
//    MMMMMMMMM0;.,OMW0:..cKMMMMMNKko;'..;lx0NWMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMNKxl:'..;lx0NMMMMMKc..:0WMk'.;0MMMMMMMM    //
//    MMMMMMMMMK:.'kWk,.'oXMWN0xl;'.':lx0NWMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMNKko:'..;lxOXWMXo'.;kWk'.;KMMMMMMMM    //
//    MMMMMMMMMXc..lo'.'l00xl;'...;lxO0KKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKK0Oxo;....,cxOOl..'dl..:KMMMMMMMM    //
//    MMMMMMMMMNl.......''........'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''.'..''.................lNMMMMMMMM    //
//    MMMMMMMMMWo.........,;;;;;;;;;;;;;;;;:::::::::::::::::::::::::::::::::cccccccccccccccccccc:cc:::::::;'........dWMMMMMMMM    //
//    MMMMMMMMMWd...................................................................................................xMMMMMMMMM    //
//    MMMMMMMMMWd..,ldddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddl'.'xMMMMMMMMM    //
//    MMMMMMMMMWd..:KMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM0;.'xMMMMMMMMM    //
//    MMMMMMMMMWd..:KMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM0;.'xMMMMMMMMM    //
//    MMMMMMMMMWd..:KMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM0;.'xMMMMMMMMM    //
//    MMMMMMMMMWd..:KMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM0;.'xMMMMMMMMM    //
//    MMMMMMMMMWd..:0NNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNO;.'xMMMMMMMMM    //
//    MMMMMMMMMWx'..,;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;,..'kMMMMMMMMM    //
//    MMMMMMMMMMNkolllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllokNMMMMMMMMM    //
//    MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM    //
//    MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM    //
//    MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM    //
//    MMMMMMMMMMMXdllo0MMMMMMMMMMMMMMMMMMMMMMMMMMXdllllllllllllllllllllllxNMMMMMMMMMMMXdllldXMMMMMMMMMMMMMMNklllo0WMMMMMMMMMMM    //
//    MMMMMMMMMMM0,...xMMMMMMMMMMMMMMMMMMMMMMMMMM0;......................cXMMMMMMMMMMMWO:...;kNMMMMMMMMMMW0c...,xNMMMMMMMMMMMM    //
//    MMMMMMMMMMM0;..'xMMMMMMMMMMMMMMMMMMMMMMMMMM0;...cOOOOOOOOOOOOOOOOOOKWMMMMMMMMMMMMMXd'..'lKWMMMMMMMXd'..'lKWMMMMMMMMMMMMM    //
//    MMMMMMMMMMM0;..'xMMMMMMMMMMMMMMMMMMMMMMMMMM0;...dWMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMW0c...,xNMMMMWO:...,xNMMMMMMMMMMMMMMM    //
//    MMMMMMMMMMM0;..'xMMMMMMMMMMMMMMMMMMMMMMMMMM0;...dWMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMNd,...c0WMXo'..'lKWMMMMMMMMMMMMMMMM    //
//    MMMMMMMMMMM0;...xMMMMMMMMMMMMMMMMMMMMMMMMMM0;...dWMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMW0c...,dx;...;kWMMMMMMMMMMMMMMMMMM    //
//    MMMMMMMMMMM0;...xMMMMMMMMMMMMMMMMMMMMMMMMMM0;...lO000000000000000XWMMMMMMMMMMMMMMMMMMMMMNx,......'oKMMMMMMMMMMMMMMMMMMMM    //
//    MMMMMMMMMMM0;...xMMMMMMMMMMMMMMMMMMMMMMMMMM0;....................lXMMMMMMMMMMMMMMMMMMMMMMWO,.....oNMMMMMMMMMMMMMMMMMMMMM    //
//    MMMMMMMMMMM0;...xMMMMMMMMMMMMMMMMMMMMMMMMMM0;...,ccccccccccccccccxNMMMMMMMMMMMMMMMMMMMMMW0c......,xNMMMMMMMMMMMMMMMMMMMM    //
//    MMMMMMMMMMM0;...xMMMMMMMMMMMMMMMMMMMMMMMMMM0;...dWWWWWWWWWWWWWWWWMMMMMMMMMMMMMMMMMMMMMMXd,..'cl,...c0WMMMMMMMMMMMMMMMMMM    //
//    MMMMMMMMMMM0;...xMMMMMMMMMMMMMMMMMMMMMMMMMM0;...dWMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMWO:...;kWW0c...,dXMMMMMMMMMMMMMMMMM    //
//    MMMMMMMMMMM0;...xMMMMMMMMMMMMMMMMMMMMMMMMMM0;...dWMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMWXo'..'lKWMMMNx,...:OWMMMMMMMMMMMMMMM    //
//    MMMMMMMMMMM0;...xMMMMMMMMMMMMMMMMMMMMMMMMMM0;...dWMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMNk;...:OWMMMMMMW0c...'oXMMMMMMMMMMMMMM    //
//    MMMMMMMMMMM0;...:dddddddddddddONMMMMMMMMMMM0;...:ddddddddddddddddddxKMMMMMMMMMMMMKl'..'oXMMMMMMMMMMNx;...:OWMMMMMMMMMMMM    //
//    MMMMMMMMMMM0,.................cXMMMMMMMMMMM0;......................'kMMMMMMMMMMNx;...cOWMMMMMMMMMMMMWKo'..'lKWMMMMMMMMMM    //
//    MMMMMMMMMMMNOkkkkkkkkkkkkkkkkk0WMMMMMMMMMMMNOkkkkkkkkkkkkkkkkkkkkkkOXMMMMMMMMMMNOkkkONMMMMMMMMMMMMMMMMWKkkkkKWMMMMMMMMMM    //
//    MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM    //
//    MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM    //
//    MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM    //
//    MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM    //
//    MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM    //
//    MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM    //
//    MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM    //
//    MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM    //
//                                                                                                                                //
//                                                                                                                                //
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


contract CNY is ERC1155Creator {
    constructor() ERC1155Creator("Cha-No-Yu", "CNY") {}
}