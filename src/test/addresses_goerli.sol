
// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity ^0.6.12;

contract Addresses {

    mapping (bytes32 => address) public addr;

    constructor() public {
        addr["CHANGELOG"]                       = 0xdA0Ab1e0017DEbCd72Be8599041a2aa3bA7e740F;
        addr["MULTICALL"]                       = 0xb8c864B60e9467398800Df34da39BF4f0c459461;
        addr["FAUCET"]                          = 0xa473CdDD6E4FAc72481dc36f39A409D86980D187;
        addr["MCD_DEPLOY"]                      = 0xc09880a0D6d06fa18C8bDC9dF2E203F0d0124fa1;
        addr["FLIP_FAB"]                        = 0x333Ec4d92b546d6107Dc931156139A76dFAfD938;
        addr["CLIP_FAB"]                        = 0xcfAab43101A01548A95F0f7dBB0CeF6f6490A389;
        addr["CALC_FAB"]                        = 0x579f007Fb7151162e3095606232ef9029E090366;
        addr["MCD_GOV"]                         = 0xc5E4eaB513A7CD12b2335e8a0D57273e13D499f7;
        addr["GOV_GUARD"]                       = 0xB9b861e8F9b29322815260B6883Bbe1DBC91dA8A;
        addr["MCD_IOU"]                         = 0x651D1B91e4F657392a51Dba7A6A1A1a72eC6aD1c;
        addr["MCD_ADM"]                         = 0x33Ed584fc655b08b2bca45E1C5b5f07c98053bC1;
        addr["VOTE_PROXY_FACTORY"]              = 0x1a7c1ee5eE2A3B67778ff1eA8c719A3fA1b02b6f;
        addr["VOTE_DELEGATE_PROXY_FACTORY"]     = 0xE2d249AE3c156b132C40D07bd4d34e73c1712947;
        addr["MCD_VAT"]                         = 0xB966002DDAa2Baf48369f5015329750019736031;
        addr["MCD_JUG"]                         = 0xC90C99FE9B5d5207A03b9F28A6E8A19C0e558916;
        addr["MCD_CAT"]                         = 0xd744377001FD3411d7d0018F66E2271CB215f6fd;
        addr["MCD_DOG"]                         = 0x5cf85A37Dbd28A239698B4F9aA9a03D55C04F292;
        addr["MCD_VOW"]                         = 0x23f78612769b9013b3145E43896Fa1578cAa2c2a;
        addr["MCD_JOIN_DAI"]                    = 0x6a60b7070befb2bfc964F646efDF70388320f4E0;
        addr["MCD_FLAP"]                        = 0x8E4B877d7eD4584b22e1508ffDAA8Ae4f6927397;
        addr["MCD_FLOP"]                        = 0x742D041dFBA61110Bd886509CB299DF6A521B352;
        addr["MCD_PAUSE"]                       = 0xefcd235B1f13e7fC5eab1d05C910d3c390b3439F;
        addr["MCD_PAUSE_PROXY"]                 = 0x5DCdbD3cCF9B09EAAD03bc5f50fA2B3d3ACA0121;
        addr["MCD_GOV_ACTIONS"]                 = 0x5857F3e0e6Fb75658037b3c3410b7446b985B353;
        addr["MCD_DAI"]                         = 0x11fE4B6AE13d2a6055C8D9cF65c55bac32B5d844;
        addr["MCD_SPOT"]                        = 0xACe2A9106ec175bd56ec05C9E38FE1FDa8a1d758;
        addr["MCD_POT"]                         = 0x50672F0a14B40051B65958818a7AcA3D54Bd81Af;
        addr["MCD_END"]                         = 0xDb1d3edb80d3faA1B7257Ab4018A609E327FA50D;
        addr["MCD_ESM"]                         = 0x105BF37e7D81917b6fEACd6171335B4838e53D5e;
        addr["PROXY_ACTIONS"]                   = 0x4023f89983Ece35e227c49806aFc13Bc0248d178;
        addr["PROXY_ACTIONS_END"]               = 0xBbA4aBF0a12738f093cFD2199C5497044bAa68A8;
        addr["PROXY_ACTIONS_DSR"]               = 0x15679CdbDb284fe07Eff3809150126697c6e3Dd6;
        addr["CDP_MANAGER"]                     = 0xdcBf58c9640A7bd0e062f8092d70fb981Bb52032;
        addr["DSR_MANAGER"]                     = 0xF7F0de3744C82825D77EdA8ce78f07A916fB6bE7;
        addr["GET_CDPS"]                        = 0x7843fd599F5382328DeBB45255deB3E2e0DEC876;
        addr["ILK_REGISTRY"]                    = 0x525FaC4CEc48a4eF2FBb0A72355B6255f8D5f79e;
        addr["OSM_MOM"]                         = 0xEdB6b497D2e18A33130CB0D2b70343E6Dcd9EE86;
        addr["FLIPPER_MOM"]                     = 0x7ceCdf6b214a3eBA1589eB8B844fB6Cb12B67Bd7;
        addr["CLIPPER_MOM"]                     = 0xC67fFD490903521F778b2A3B2A13D0FC0Be96F98;
        addr["MCD_IAM_AUTO_LINE"]               = 0x21DaD87779D9FfA8Ed3E1036cBEA8784cec4fB83;
        addr["MCD_FLASH"]                       = 0x0a6861D6200B519a8B9CFA1E7Edd582DD1573581;
        addr["PROXY_FACTORY"]                   = 0x84eFB9c18059394172D0d69A3E58B03320001871;
        addr["PROXY_REGISTRY"]                  = 0x46759093D8158db8BB555aC7C6F98070c56169ce;
        addr["MCD_VEST_DAI"]                    = 0x59B1a603cAC9e38EA2AC2C479FFE42Ce48123Fd4;
        addr["MCD_VEST_MKR"]                    = 0x183bE7a75B8b5F35236270b060e95C65D82f5fF9;
        addr["ETH"]                             = 0xB4FBF271143F4FBf7B91A5ded31805e42b2208d6;
        addr["PIP_ETH"]                         = 0x94588e35fF4d2E99ffb8D5095F35d1E37d6dDf12;
        addr["MCD_JOIN_ETH_A"]                  = 0x2372031bB0fC735722AA4009AeBf66E8BEAF4BA1;
        addr["MCD_CLIP_ETH_A"]                  = 0x2603c6EC5878dC70f53aD3a90e4330ba536d2385;
        addr["MCD_CLIP_CALC_ETH_A"]             = 0xfD7d0BaB582EC2FA031A0d0a6Aee6493934b1B04;
        addr["MCD_JOIN_ETH_B"]                  = 0x1710BB6dF1967679bb1f247135794692F7963B46;
        addr["MCD_CLIP_ETH_B"]                  = 0xA5d173b77965F2A58B0686b5683f3277de8d3D66;
        addr["MCD_CLIP_CALC_ETH_B"]             = 0xa4b7e9E5E342af456378576e46a52670E4f58517;
        addr["MCD_JOIN_ETH_C"]                  = 0x16e6490744d4B3728966f8e72416c005EB3dEa79;
        addr["MCD_CLIP_ETH_C"]                  = 0xDdAfCbed3A02617EbE1eEAC86eae701870747649;
        addr["MCD_CLIP_CALC_ETH_C"]             = 0xB90197A17d9A90ECa634954e393F51ec74DBa93f;
        addr["BAT"]                             = 0x75645f86e90a1169e697707C813419977ea26779;
        addr["PIP_BAT"]                         = 0x2BA78cb27044edCb715b03685D4bf74261170a70;
        addr["MCD_JOIN_BAT_A"]                  = 0xfea8C23D32e4bA46d90AeD2445fBD099010eAdF5;
        addr["MCD_CLIP_BAT_A"]                  = 0x4B05c2A4EEef04D1eed017B9003a344bbDeb19DE;
        addr["MCD_CLIP_CALC_BAT_A"]             = 0xE1C16d3D5BC91E091A23Ad0a467D1c47DA53ED73;
        addr["USDC"]                            = 0x6Fb5ef893d44F4f88026430d82d4ef269543cB23;
        addr["PIP_USDC"]                        = 0x838212865E2c2f4F7226fCc0A3EFc3EB139eC661;
        addr["MCD_JOIN_USDC_A"]                 = 0x33E88C8b3530e2f19050b24f44AcB78C7114AF46;
        addr["MCD_CLIP_USDC_A"]                 = 0xA8566b54C3447A741B2aE6bF920859600507AC1A;
        addr["MCD_CLIP_CALC_USDC_A"]            = 0xe8682977789e2f53f7Dcedfd2c9C79a59f2CAa28;
        addr["MCD_JOIN_USDC_B"]                 = 0x0Dc70CC4505c1952e719C9C740608A75Ca9e299e;
        addr["MCD_CLIP_USDC_B"]                 = 0x71e44e17359fFbC3626893D13A133870FEc9Fee6;
        addr["MCD_CLIP_CALC_USDC_B"]            = 0xae3c77F36436Ac242bf2BC3E1A271058529F207A;
        addr["MCD_JOIN_PSM_USDC_A"]             = 0xF2f86B76d1027f3777c522406faD710419C80bbB;
        addr["MCD_CLIP_PSM_USDC_A"]             = 0x8f570B146655Cd52173B0db2DDeb40B7b32c5A9C;
        addr["MCD_CLIP_CALC_PSM_USDC_A"]        = 0x6eB7f16842b13A1Fbb270Fc952Fb9a73D7c90a0e;
        addr["MCD_PSM_USDC_A"]                  = 0xb480B8dD5A232Cb7B227989Eacda728D1F247dB6;
        addr["TUSD"]                            = 0xe0B3D300E2e09c1Fd01252287dDbC70A7730ffB0;
        addr["PIP_TUSD"]                        = 0x0ce19eA2C568890e63083652f205554C927a0caa;
        addr["MCD_JOIN_TUSD_A"]                 = 0x5BC597f00d74fAcEE53Be784f0B7Ace63b4e2EBe;
        addr["MCD_CLIP_TUSD_A"]                 = 0x22d843aE7121F399604D5C00863B95F9Af7e7E9C;
        addr["MCD_CLIP_CALC_TUSD_A"]            = 0xddD44166CdCd051AFa053A716608Cdc42C0C30D4;
        addr["WBTC"]                            = 0x7ccF0411c7932B99FC3704d68575250F032e3bB7;
        addr["PIP_WBTC"]                        = 0xE7de200a3a29E9049E378b52BD36701A0Ce68C3b;
        addr["MCD_JOIN_WBTC_A"]                 = 0x3cbE712a12e651eEAF430472c0C1BF1a2a18939D;
        addr["MCD_CLIP_WBTC_A"]                 = 0x752c35fa3d21863257bbBCB7e2B344fd0948B61b;
        addr["MCD_CLIP_CALC_WBTC_A"]            = 0x87982983Bb0B843Ba41D593A3722E87734bb1d7F;
        addr["ZRX"]                             = 0x96E0C18524789ED3e62CD9F56aAEc7cEAC78725a;
        addr["PIP_ZRX"]                         = 0xe9245D25F3265E9A36DcCDC72B0B5dE1eeACD4cD;
        addr["MCD_JOIN_ZRX_A"]                  = 0xC279765B3f930742167dB91271f13353336B6C72;
        addr["MCD_CLIP_ZRX_A"]                  = 0xeF5931608d21D49fF014E17C8cfDD8d51c90b388;
        addr["MCD_CLIP_CALC_ZRX_A"]             = 0xA514d3dC8B7697a0Df26200591cfeaCF42e2DE6f;
        addr["KNC"]                             = 0x9A58801cf901486Df9323bcE83A7684915DBAE54;
        addr["PIP_KNC"]                         = 0xCB772363E2DEc06942edbc5E697F4A9114B5989c;
        addr["MCD_JOIN_KNC_A"]                  = 0xA48f0d5DA642928BC1F5dB9De5F5d3D466500075;
        addr["MCD_CLIP_KNC_A"]                  = 0x777871Fde2845a52F455642f5da2f7AC17563739;
        addr["MCD_CLIP_CALC_KNC_A"]             = 0x404521f9FB3ba305cd7a0DCbD9f86E4Bec9ad21d;
        addr["MANA"]                            = 0x347fceA8b4fD1a46e2c0DB8F79e22d293c2F8513;
        addr["PIP_MANA"]                        = 0x001eDD66a5Cc9268159Cf24F3dC0AdcE456AAAAb;
        addr["MCD_JOIN_MANA_A"]                 = 0xF4a1E7Dd685b4EaFBE5d0E70e20c153dee2E290b;
        addr["MCD_CLIP_MANA_A"]                 = 0x09231df919ce19E48bf552a33D9e7FaD9c939025;
        addr["MCD_CLIP_CALC_MANA_A"]            = 0xD14d44fE5006d4eb61E194256462E1593eb8DF2f;
        addr["USDT"]                            = 0x5858f25cc225525A7494f76d90A6549749b3030B;
        addr["PIP_USDT"]                        = 0x1fA3B8DAeE1BCEe33990f66F1a99993daD14D855;
        addr["MCD_JOIN_USDT_A"]                 = 0xa8C62cC41AbF8A199FB484Ea363b90C3e9E01d86;
        addr["MCD_CLIP_USDT_A"]                 = 0x057eF98FAf86562ce9aBc3Ad2e07Fd65B653cBFB;
        addr["MCD_CLIP_CALC_USDT_A"]            = 0x2e6cD41fc9B62190A9081a69cd1167ab59E0e89d;
        addr["PAXUSD"]                          = 0x4547863912Fe2d17D3827704138957a8317E8dCD;
        addr["PAX"]                             = 0x4547863912Fe2d17D3827704138957a8317E8dCD;
        addr["PIP_PAXUSD"]                      = 0xdF8474337c9D3f66C0b71d31C7D3596E4F517457;
        addr["PIP_PAX"]                         = 0xdF8474337c9D3f66C0b71d31C7D3596E4F517457;
        addr["MCD_JOIN_PAXUSD_A"]               = 0x8Ef390647A74150a79EC73FE120EaaF8bE9eEdf0;
        addr["MCD_CLIP_PAXUSD_A"]               = 0x80cb788cf316361B0998C3a831c9ea82C5274F6D;
        addr["MCD_CLIP_CALC_PAXUSD_A"]          = 0xE7d46DABC93Dbe1D1032Ff5f1f43d34014003d6e;
        addr["MCD_JOIN_PSM_PAX_A"]              = 0xF27E1F580D5e82510b47C7B2A588A8A533787d38;
        addr["MCD_CLIP_PSM_PAX_A"]              = 0xfe0b736a8bDc01869c94a0799CDD10683404D78f;
        addr["MCD_CLIP_CALC_PSM_PAX_A"]         = 0x1e14F8ED0f1a6A908cACabb290Ef71a69cDe1abf;
        addr["MCD_PSM_PAX_A"]                   = 0x934dAaa0778ee137993d2867340440d70a74A44e;
        addr["COMP"]                            = 0x8032dce0b793C21B8F7B648C01224c3b557271ED;
        addr["PIP_COMP"]                        = 0xc3d677a5451cAFED13f748d822418098593D3599;
        addr["MCD_JOIN_COMP_A"]                 = 0x544EFa934f26cd6FdFD86883408538150Bdd6725;
        addr["MCD_CLIP_COMP_A"]                 = 0x5fea7d7Fc72972D8bC65a49a5d19DfFF50f19d0D;
        addr["MCD_CLIP_CALC_COMP_A"]            = 0x782657Bf07cE2F100D14eD1cFa15151290947fCe;
        addr["LRC"]                             = 0xe32aC5b19051728421A8F4A8a5757D0e127a14F6;
        addr["PIP_LRC"]                         = 0x5AD3A560BB125d00db8E94915232BA8f6166967C;
        addr["MCD_JOIN_LRC_A"]                  = 0x12af538aCf746c0BBe076E5eBAE678e022E1F5f6;
        addr["MCD_CLIP_LRC_A"]                  = 0xe5C499CBB12fA65db469496e5966aCcBA5Fff3b9;
        addr["MCD_CLIP_CALC_LRC_A"]             = 0x238AbB8f221df1816d066b32b572066A320A13d0;
        addr["LINK"]                            = 0x4724A967A4F7E42474Be58AbdF64bF38603422FF;
        addr["PIP_LINK"]                        = 0x75B4e743772D25a7998F4230cb016ddCF2c52629;
        addr["MCD_JOIN_LINK_A"]                 = 0x4420FD4E5C414189708376F3fBAA4dCA6277369a;
        addr["MCD_CLIP_LINK_A"]                 = 0x42cbA983D2403003af554fec0e68dAC4920906CC;
        addr["MCD_CLIP_CALC_LINK_A"]            = 0xE3Cf29E132EFad92d604Fa5C86AA21b7c7fBB76e;
        addr["BAL"]                             = 0x8c6e73CA229AB3933426aDb5cc829c1E4928551d;
        addr["PIP_BAL"]                         = 0xF15993A5C5BE496b8e1c9657Fd2233b579Cd3Bc6;
        addr["MCD_JOIN_BAL_A"]                  = 0xb31cE33511c2CCEfBc1713A783042eE670Cf5930;
        addr["MCD_CLIP_BAL_A"]                  = 0x738040Bc6834835B04e80c3C3cB07f6010eab2e3;
        addr["MCD_CLIP_CALC_BAL_A"]             = 0xa798c71d899f4f687B51Cd3Dc6e461B3401eD76e;
        addr["YFI"]                             = 0xd9510EF268F8273C9b7514F0bfFe18Fe1EFC0d43;
        addr["PIP_YFI"]                         = 0xAafF0066D05cEe0D6a38b4dac77e73d9E0a5Cf46;
        addr["MCD_JOIN_YFI_A"]                  = 0xa318E65982E80F54486f71965A0C320858759299;
        addr["MCD_CLIP_YFI_A"]                  = 0x9B97923CDf21CdB898702EE6878960Db446Daa86;
        addr["MCD_CLIP_CALC_YFI_A"]             = 0x5682Dfc718107e5A81805fd089d2De422A130b93;
        addr["GUSD"]                            = 0x67aeF79654D8F6CF44FdC08949c308a4F6b3c45B;
        addr["PIP_GUSD"]                        = 0x57A00620Ba1f5f81F20565ce72df4Ad695B389d7;
        addr["MCD_JOIN_GUSD_A"]                 = 0x455451293100C5c5355db10512DEE81F75E45Edf;
        addr["MCD_CLIP_GUSD_A"]                 = 0xF535799F8b4Ac661cd33E37421A571c742ed9B19;
        addr["MCD_CLIP_CALC_GUSD_A"]            = 0x9F97F2cd4B79fF6CA34d0B77e5AfeA889a292422;
        addr["UNI"]                             = 0x82D98aA89E391c6759012df39ccDA0d9d6b24143;
        addr["PIP_UNI"]                         = 0xf1a5b808fbA8fF80982dACe88020d4a80c91aFe6;
        addr["MCD_JOIN_UNI_A"]                  = 0x31aE6e37964f26f4112A8Fc70e0B680F18e4DC6A;
        addr["MCD_CLIP_UNI_A"]                  = 0xE177B027030c1F691031451534bea409ff27b080;
        addr["MCD_CLIP_CALC_UNI_A"]             = 0xf9367E7cC9e4E547772312E60E238C35B7016C41;
        addr["RENBTC"]                          = 0x30d0A215aef6DadA4771a2b30a59B842f969EfD4;
        addr["PIP_RENBTC"]                      = 0xE7de200a3a29E9049E378b52BD36701A0Ce68C3b;
        addr["MCD_JOIN_RENBTC_A"]               = 0xb4576162aC5d1bC7C69bA85F39e8f694d44d09D0;
        addr["MCD_CLIP_RENBTC_A"]               = 0xFEff5d71D665A4C0712cd87d802380958b7Eb333;
        addr["MCD_CLIP_CALC_RENBTC_A"]          = 0x621b1c98132d32c077EA23fe93eCB999d07Df20b;
        addr["AAVE"]                            = 0x251661BB7C6869165eF35810E5e1D25Ed57be2Fe;
        addr["PIP_AAVE"]                        = 0xC26E53eF1F71481DE53bfb77875Ffb3aCf4d91f0;
        addr["MCD_JOIN_AAVE_A"]                 = 0x71Ae3e3ac4412865A4E556230b92aB58d895b497;
        addr["MCD_CLIP_AAVE_A"]                 = 0x962271248Db1F4c31318c11a89FD3b11f6047f32;
        addr["MCD_CLIP_CALC_AAVE_A"]            = 0x56f390b5DF5dDeBC1aDAd5cFEB65202CC6e2eaB6;
        addr["MATIC"]                           = 0x5B3b6CF665Cc7B4552F4347623a2A9E00600CBB5;
        addr["PIP_MATIC"]                       = 0xDe112F61b823e776B3439f2F39AfF41f57993045;
        addr["MCD_JOIN_MATIC_A"]                = 0xeb680839564F0F9bFB96fE2dF47a31cE31689e63;
        addr["MCD_CLIP_MATIC_A"]                = 0x2082c825b5311A2612c12e6DaF7EFa3Fb37BACbD;
        addr["MCD_CLIP_CALC_MATIC_A"]           = 0xB2dF4Ed2f6a665656CE3405E8f75b9DE8A6E24e9;
        addr["UNIV2DAIETH"]                     = 0x5dD9dec52a16d4d1Df10a66ac71d4731c9Dad984;
        addr["PIP_UNIV2DAIETH"]                 = 0x044c9aeD56369aA3f696c898AEd0C38dC53c6C3D;
        addr["MCD_JOIN_UNIV2DAIETH_A"]          = 0x66931685b532CB4F31abfe804d2408dD34Cd419D;
        addr["MCD_CLIP_UNIV2DAIETH_A"]          = 0x76a4Ee8acEAAF7F92455277C6e10471F116ffF2c;
        addr["MCD_CLIP_CALC_UNIV2DAIETH_A"]     = 0x7DCA9CAE2Dc463eBBF05341727FB6ed181D690c2;
        addr["UNIV2WBTCETH"]                    = 0x7883a92ac3e914F3400e8AE6a2FF05E6BA4Bd403;
        addr["PIP_UNIV2WBTCETH"]                = 0xD375daC26f7eF991878136b387ca959b9ac1DDaF;
        addr["MCD_JOIN_UNIV2WBTCETH_A"]         = 0x345a29Db10Aa5CF068D61Bb20F74771eC7DF66FE;
        addr["MCD_CLIP_UNIV2WBTCETH_A"]         = 0x8520AA6784d51B1984B6f693f1Ea646368d9f868;
        addr["MCD_CLIP_CALC_UNIV2WBTCETH_A"]    = 0xab5B4759c8D28d05c4cd335a0315A52981F93D04;
        addr["UNIV2USDCETH"]                    = 0xD90313b3E43D9a922c71d26a0fBCa75A01Bb3Aeb;
        addr["PIP_UNIV2USDCETH"]                = 0x54ADcaB9B99b1B548764dAB637db751eC66835F0;
        addr["MCD_JOIN_UNIV2USDCETH_A"]         = 0x46267d84dA4D6e7b2F5A999518Cf5DAF91E204E3;
        addr["MCD_CLIP_UNIV2USDCETH_A"]         = 0x7424D5319172a3dC57add04dBb48E6323Da4B473;
        addr["MCD_CLIP_CALC_UNIV2USDCETH_A"]    = 0x83B20C43D92224E128c2b1e0ECb6305B1001FF4f;
        addr["UNIV2DAIUSDC"]                    = 0x260719B2ef507A86116FC24341ff0994F2097D42;
        addr["PIP_UNIV2DAIUSDC"]                = 0xEf22289E240cFcCCdCD2B98fdefF167da10f452d;
        addr["MCD_JOIN_UNIV2DAIUSDC_A"]         = 0x4CEEf4EB4988cb374B0b288D685AeBE4c6d4C41E;
        addr["MCD_CLIP_UNIV2DAIUSDC_A"]         = 0x04254C28c09C8a09c76653acA92538EC04954341;
        addr["MCD_CLIP_CALC_UNIV2DAIUSDC_A"]    = 0x3dB02f19D2d1609661f9bD774De23a962642F25B;
        addr["UNIV2ETHUSDT"]                    = 0xfcB32e1C4A4F1C820c9304B5CFfEDfB91aE2321C;
        addr["PIP_UNIV2ETHUSDT"]                = 0x974f7f4dC6D91f144c87cc03749c98f85F997bc7;
        addr["MCD_JOIN_UNIV2ETHUSDT_A"]         = 0x46A8f8e2C0B62f5D7E4c95297bB26a457F358C82;
        addr["MCD_CLIP_UNIV2ETHUSDT_A"]         = 0x4bBCD4dc8cD4bfc907268AB5AD3aE01e2567f0E1;
        addr["MCD_CLIP_CALC_UNIV2ETHUSDT_A"]    = 0x9e24c087EbBA685dFD4AF1fC6C31C414f6EfA74f;
        addr["UNIV2LINKETH"]                    = 0x3361fB8f923D1Aa1A45B2d2eD4B8bdF313a3dA0c;
        addr["PIP_UNIV2LINKETH"]                = 0x11C884B3FEE1494A666Bb20b6F6144387beAf4A6;
        addr["MCD_JOIN_UNIV2LINKETH_A"]         = 0x98B7023Aced6D8B889Ad7D340243C3F9c81E8c5F;
        addr["MCD_CLIP_UNIV2LINKETH_A"]         = 0x71c6d999c54AB5C91589F45Aa5F0E2E782647268;
        addr["MCD_CLIP_CALC_UNIV2LINKETH_A"]    = 0x30747d2D2f9C23CBCc2ff318c31C15A6f0AA78bF;
        addr["UNIV2UNIETH"]                     = 0xB80A38E50B2990Ac83e46Fe16631fFBb94F2780b;
        addr["PIP_UNIV2UNIETH"]                 = 0xB18BC24e52C23A77225E7cf088756581EE257Ad8;
        addr["MCD_JOIN_UNIV2UNIETH_A"]          = 0x52c31E3592352Cd0CBa20Fa73Da42584EC693283;
        addr["MCD_CLIP_UNIV2UNIETH_A"]          = 0xaBb1F3fBe1c404829BC1807D67126286a71b85dE;
        addr["MCD_CLIP_CALC_UNIV2UNIETH_A"]     = 0x663D47b5AF171D7b54dfB2A234406903307721b8;
        addr["UNIV2WBTCDAI"]                    = 0x3f78Bd3980c49611E5FA885f25Ca3a5fCbf0d7A0;
        addr["PIP_UNIV2WBTCDAI"]                = 0x916fc346910fd25867c81874f7F982a1FB69aac7;
        addr["MCD_JOIN_UNIV2WBTCDAI_A"]         = 0x04d23e99504d61050CAF46B4ce2dcb9D4135a7fD;
        addr["MCD_CLIP_UNIV2WBTCDAI_A"]         = 0xee139bB397211A21656046efb2c7a5b255d3bC07;
        addr["MCD_CLIP_CALC_UNIV2WBTCDAI_A"]    = 0xf89C3DDA6D0f496900ecC39e4a7D31075d360856;
        addr["UNIV2AAVEETH"]                    = 0xaF2CC6F46d1d0AB30dd45F59B562394c3E21e6f3;
        addr["PIP_UNIV2AAVEETH"]                = 0xFADF05B56E4b211877248cF11C0847e7F8924e10;
        addr["MCD_JOIN_UNIV2AAVEETH_A"]         = 0x73C4E5430768e24Fd704291699823f35953bbbA2;
        addr["MCD_CLIP_UNIV2AAVEETH_A"]         = 0xeA4F6DA7Ac68F9244FCDd13AE2C36647829AfCa0;
        addr["MCD_CLIP_CALC_UNIV2AAVEETH_A"]    = 0x14F4D6cB78632535230D1591121E35108bbBdAAA;
        addr["UNIV2DAIUSDT"]                    = 0xBF2C9aBbEC9755A0b6144051E19c6AD4e6fd6D71;
        addr["PIP_UNIV2DAIUSDT"]                = 0x2fc2706C61Fba5b941381e8838bC646908845db6;
        addr["MCD_JOIN_UNIV2DAIUSDT_A"]         = 0xBF70Ca17ce5032CCa7cD55a946e96f0E72f79452;
        addr["MCD_CLIP_UNIV2DAIUSDT_A"]         = 0xABB9ca15E7e261E255560153e312c98F638E57f4;
        addr["MCD_CLIP_CALC_UNIV2DAIUSDT_A"]    = 0xDD610087b4a029BD63e4990A6A29a077764B632B;
        addr["MIP21_LIQUIDATION_ORACLE"]        = 0x362dfE51E4f91a8257B8276435792095EE5d85C3;
        addr["RWA001"]                          = 0xeb7C7DE82c3b05BD4059f11aE8f43dD7f1595bce;
        addr["PIP_RWA001"]                      = 0x95282c2cDE88b93F784E2485f885580275551387;
        addr["MCD_JOIN_RWA001_A"]               = 0x088D6b3f68Bc4F93F90006A1356A21145EDD96E2;
        addr["RWA001_A_URN"]                    = 0xF1AAB03fc1d3588B5910a960f476DbE88D304b9B;
        addr["RWA001_A_INPUT_CONDUIT"]          = 0x4145774D007C88392118f32E2c31686faCc9486E;
        addr["RWA001_A_OUTPUT_CONDUIT"]         = 0x969b3701A17391f2906d8c5E5D816aBcD9D0f199;
        addr["RWA002"]                          = 0x09fE0aE289553010D6EcBdFF98cc9C08030dE3b8;
        addr["PIP_RWA002"]                      = 0xF1E8E72AE116193A9fA551beC1cda965147b31DA;
        addr["MCD_JOIN_RWA002_A"]               = 0xc0aeE42b5E77e931BAfd98EAdd321e704fD7CA1f;
        addr["RWA002_A_URN"]                    = 0xD6953949b2B4Ab5Be19ed6283F4ca0AaEDDffec5;
        addr["RWA002_A_INPUT_CONDUIT"]          = 0x1d3402B809095c3320296f3A77c4be20C3b74d47;
        addr["RWA002_A_OUTPUT_CONDUIT"]         = 0x1d3402B809095c3320296f3A77c4be20C3b74d47;
        addr["RWA003"]                          = 0x5cf15Cc2710aFc0EaBBD7e045f84F9556B204331;
        addr["PIP_RWA003"]                      = 0x27E599C9D69e02477f5ffF4c8E4E42B97777eE52;
        addr["MCD_JOIN_RWA003_A"]               = 0x83fA1F7c423112aBC6B340e32564460eDcf6AD74;
        addr["RWA003_A_URN"]                    = 0x438262Eb709d47b0B3d2524E75E63DBa9571962B;
        addr["RWA003_A_INPUT_CONDUIT"]          = 0x608050Cb6948A9835442E24a5B1964F76fd4acE4;
        addr["RWA003_A_OUTPUT_CONDUIT"]         = 0x608050Cb6948A9835442E24a5B1964F76fd4acE4;
        addr["RWA004"]                          = 0xA7fbA77c4d18e12d1F385E2dcFfb377c9dBD91d2;
        addr["PIP_RWA004"]                      = 0x3C191d5a74800A99D8747fdffAea42F60f7d3Bff;
        addr["MCD_JOIN_RWA004_A"]               = 0xA74036937413B799b2f620a3b6Ea61ad08F1D354;
        addr["RWA004_A_URN"]                    = 0x1527A3B844ca194783BDeab8DF4F9264D1A9F529;
        addr["RWA004_A_INPUT_CONDUIT"]          = 0x551837D1C1638944A97a6476ffCD1bE4E1391Fc9;
        addr["RWA004_A_OUTPUT_CONDUIT"]         = 0x551837D1C1638944A97a6476ffCD1bE4E1391Fc9;
        addr["RWA005"]                          = 0x650d168fC94B79Bb16898CAae773B0Ce1097Cc3F;
        addr["PIP_RWA005"]                      = 0xa6A7f2408949cAbD13f254F8e77ad5C9896725aB;
        addr["MCD_JOIN_RWA005_A"]               = 0xc5052A70e00983ffa6894679f1d9c0cDAFe28416;
        addr["RWA005_A_URN"]                    = 0x047E68a3c1F22f9BB3fB063b311dC76c6E308404;
        addr["RWA005_A_INPUT_CONDUIT"]          = 0x8347e6e08cAF1FB63428465b76BafD4Cf6fcA2e1;
        addr["RWA005_A_OUTPUT_CONDUIT"]         = 0x8347e6e08cAF1FB63428465b76BafD4Cf6fcA2e1;
        addr["RWA006"]                          = 0xf754FD6611852eE94AC0614c51B8692cAE9fEe9F;
        addr["PIP_RWA006"]                      = 0xA410A66313F943d022b79f2943C9A37CefdE2371;
        addr["MCD_JOIN_RWA006_A"]               = 0x5b4B7797FC41123578718AD4E3F04d1Bde9685DC;
        addr["RWA006_A_URN"]                    = 0xd0d2Ef46b64C07b5Ce4f2634a82984C1B3804C22;
        addr["RWA006_A_INPUT_CONDUIT"]          = 0xd2Ef07535267D17d2314894f7821A43e9700A02e;
        addr["RWA006_A_OUTPUT_CONDUIT"]         = 0xd2Ef07535267D17d2314894f7821A43e9700A02e;
        addr["PROXY_PAUSE_ACTIONS"]             = 0x8D1187FCa9A104211bd25c689C08718AD8730C83;
        addr["PROXY_DEPLOYER"]                  = 0xc9476Fd378de5b0de5C4280D4323f6F89f723c15;
    }
}
