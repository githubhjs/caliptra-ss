// SPDX-License-Identifier: Apache-2.0
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
//



package otp_ctrl_reg_pkg;

  // Param list
  parameter int NumSramKeyReqSlots = 4;
  parameter int OtpByteAddrWidth = 14;
  parameter int NumErrorEntries = 18;
  parameter int NumDaiWords = 2;
  parameter int NumDigestWords = 2;
  parameter int NumSwCfgWindowWords = 4096;
  parameter int NumPart = 16;
  parameter int NumPartUnbuf = 7;
  parameter int NumPartBuf = 9;
  parameter int SecretTestUnlockPartitionOffset = 0;
  parameter int SecretTestUnlockPartitionSize = 72;
  parameter int CptraCoreManufDebugUnlockTokenOffset = 0;
  parameter int CptraCoreManufDebugUnlockTokenSize = 64;
  parameter int SecretTestUnlockPartitionDigestOffset = 64;
  parameter int SecretTestUnlockPartitionDigestSize = 8;
  parameter int SecretManufPartitionOffset = 72;
  parameter int SecretManufPartitionSize = 72;
  parameter int CptraCoreUdsSeedOffset = 72;
  parameter int CptraCoreUdsSeedSize = 64;
  parameter int SecretManufPartitionDigestOffset = 136;
  parameter int SecretManufPartitionDigestSize = 8;
  parameter int SecretProdPartition0Offset = 144;
  parameter int SecretProdPartition0Size = 16;
  parameter int CptraCoreFieldEntropy0Offset = 144;
  parameter int CptraCoreFieldEntropy0Size = 8;
  parameter int SecretProdPartition0DigestOffset = 152;
  parameter int SecretProdPartition0DigestSize = 8;
  parameter int SecretProdPartition1Offset = 160;
  parameter int SecretProdPartition1Size = 16;
  parameter int CptraCoreFieldEntropy1Offset = 160;
  parameter int CptraCoreFieldEntropy1Size = 8;
  parameter int SecretProdPartition1DigestOffset = 168;
  parameter int SecretProdPartition1DigestSize = 8;
  parameter int SecretProdPartition2Offset = 176;
  parameter int SecretProdPartition2Size = 16;
  parameter int CptraCoreFieldEntropy2Offset = 176;
  parameter int CptraCoreFieldEntropy2Size = 8;
  parameter int SecretProdPartition2DigestOffset = 184;
  parameter int SecretProdPartition2DigestSize = 8;
  parameter int SecretProdPartition3Offset = 192;
  parameter int SecretProdPartition3Size = 16;
  parameter int CptraCoreFieldEntropy3Offset = 192;
  parameter int CptraCoreFieldEntropy3Size = 8;
  parameter int SecretProdPartition3DigestOffset = 200;
  parameter int SecretProdPartition3DigestSize = 8;
  parameter int SwManufPartitionOffset = 208;
  parameter int SwManufPartitionSize = 11080;
  parameter int CptraCoreAntiRollbackDisableOffset = 208;
  parameter int CptraCoreAntiRollbackDisableSize = 1;
  parameter int CptraCoreIdevidCertIdevidAttrOffset = 209;
  parameter int CptraCoreIdevidCertIdevidAttrSize = 7952;
  parameter int CptraCoreIdevidManufHsmIdentifierOffset = 8161;
  parameter int CptraCoreIdevidManufHsmIdentifierSize = 16;
  parameter int CptraCoreSocSteppingIdOffset = 8177;
  parameter int CptraCoreSocSteppingIdSize = 2;
  parameter int CptraSsProdDebugUnlockPks0Offset = 8179;
  parameter int CptraSsProdDebugUnlockPks0Size = 48;
  parameter int CptraSsProdDebugUnlockPks1Offset = 8227;
  parameter int CptraSsProdDebugUnlockPks1Size = 48;
  parameter int CptraSsProdDebugUnlockPks2Offset = 8275;
  parameter int CptraSsProdDebugUnlockPks2Size = 48;
  parameter int CptraSsProdDebugUnlockPks3Offset = 8323;
  parameter int CptraSsProdDebugUnlockPks3Size = 48;
  parameter int CptraSsProdDebugUnlockPks4Offset = 8371;
  parameter int CptraSsProdDebugUnlockPks4Size = 48;
  parameter int CptraSsProdDebugUnlockPks5Offset = 8419;
  parameter int CptraSsProdDebugUnlockPks5Size = 48;
  parameter int CptraSsProdDebugUnlockPks6Offset = 8467;
  parameter int CptraSsProdDebugUnlockPks6Size = 48;
  parameter int CptraSsProdDebugUnlockPks7Offset = 8515;
  parameter int CptraSsProdDebugUnlockPks7Size = 48;
  parameter int SwManufPartitionDigestOffset = 11280;
  parameter int SwManufPartitionDigestSize = 8;
  parameter int SecretLcTransitionPartitionOffset = 11288;
  parameter int SecretLcTransitionPartitionSize = 184;
  parameter int CptraSsTestUnlockToken1Offset = 11288;
  parameter int CptraSsTestUnlockToken1Size = 16;
  parameter int CptraSsTestUnlockToken2Offset = 11304;
  parameter int CptraSsTestUnlockToken2Size = 16;
  parameter int CptraSsTestUnlockToken3Offset = 11320;
  parameter int CptraSsTestUnlockToken3Size = 16;
  parameter int CptraSsTestUnlockToken4Offset = 11336;
  parameter int CptraSsTestUnlockToken4Size = 16;
  parameter int CptraSsTestUnlockToken5Offset = 11352;
  parameter int CptraSsTestUnlockToken5Size = 16;
  parameter int CptraSsTestUnlockToken6Offset = 11368;
  parameter int CptraSsTestUnlockToken6Size = 16;
  parameter int CptraSsTestUnlockToken7Offset = 11384;
  parameter int CptraSsTestUnlockToken7Size = 16;
  parameter int CptraSsTestExitToManufTokenOffset = 11400;
  parameter int CptraSsTestExitToManufTokenSize = 16;
  parameter int CptraSsManufToProdTokenOffset = 11416;
  parameter int CptraSsManufToProdTokenSize = 16;
  parameter int CptraSsProdToProdEndTokenOffset = 11432;
  parameter int CptraSsProdToProdEndTokenSize = 16;
  parameter int CptraSsRmaTokenOffset = 11448;
  parameter int CptraSsRmaTokenSize = 16;
  parameter int SecretLcTransitionPartitionDigestOffset = 11464;
  parameter int SecretLcTransitionPartitionDigestSize = 8;
  parameter int SvnPartitionOffset = 11472;
  parameter int SvnPartitionSize = 40;
  parameter int CptraCoreFmcKeyManifestSvnOffset = 11472;
  parameter int CptraCoreFmcKeyManifestSvnSize = 4;
  parameter int CptraCoreRuntimeSvnOffset = 11476;
  parameter int CptraCoreRuntimeSvnSize = 16;
  parameter int CptraCoreSocManifestSvnOffset = 11492;
  parameter int CptraCoreSocManifestSvnSize = 16;
  parameter int CptraCoreSocManifestMaxSvnOffset = 11508;
  parameter int CptraCoreSocManifestMaxSvnSize = 1;
  parameter int VendorTestPartitionOffset = 11512;
  parameter int VendorTestPartitionSize = 64;
  parameter int VendorTestOffset = 11512;
  parameter int VendorTestSize = 32;
  parameter int VendorTestPartitionDigestOffset = 11568;
  parameter int VendorTestPartitionDigestSize = 8;
  parameter int VendorHashesManufPartitionOffset = 11576;
  parameter int VendorHashesManufPartitionSize = 64;
  parameter int CptraCoreVendorPkHash0Offset = 11576;
  parameter int CptraCoreVendorPkHash0Size = 48;
  parameter int CptraCorePqcKeyType0Offset = 11624;
  parameter int CptraCorePqcKeyType0Size = 1;
  parameter int VendorHashesManufPartitionDigestOffset = 11632;
  parameter int VendorHashesManufPartitionDigestSize = 8;
  parameter int VendorHashesProdPartitionOffset = 11640;
  parameter int VendorHashesProdPartitionSize = 752;
  parameter int CptraCoreVendorPkHash1Offset = 11640;
  parameter int CptraCoreVendorPkHash1Size = 48;
  parameter int CptraCorePqcKeyType1Offset = 11688;
  parameter int CptraCorePqcKeyType1Size = 1;
  parameter int CptraCoreVendorPkHash2Offset = 11689;
  parameter int CptraCoreVendorPkHash2Size = 48;
  parameter int CptraCorePqcKeyType2Offset = 11737;
  parameter int CptraCorePqcKeyType2Size = 1;
  parameter int CptraCoreVendorPkHash3Offset = 11738;
  parameter int CptraCoreVendorPkHash3Size = 48;
  parameter int CptraCorePqcKeyType3Offset = 11786;
  parameter int CptraCorePqcKeyType3Size = 1;
  parameter int CptraCoreVendorPkHash4Offset = 11787;
  parameter int CptraCoreVendorPkHash4Size = 48;
  parameter int CptraCorePqcKeyType4Offset = 11835;
  parameter int CptraCorePqcKeyType4Size = 1;
  parameter int CptraCoreVendorPkHash5Offset = 11836;
  parameter int CptraCoreVendorPkHash5Size = 48;
  parameter int CptraCorePqcKeyType5Offset = 11884;
  parameter int CptraCorePqcKeyType5Size = 1;
  parameter int CptraCoreVendorPkHash6Offset = 11885;
  parameter int CptraCoreVendorPkHash6Size = 48;
  parameter int CptraCorePqcKeyType6Offset = 11933;
  parameter int CptraCorePqcKeyType6Size = 1;
  parameter int CptraCoreVendorPkHash7Offset = 11934;
  parameter int CptraCoreVendorPkHash7Size = 48;
  parameter int CptraCorePqcKeyType7Offset = 11982;
  parameter int CptraCorePqcKeyType7Size = 1;
  parameter int CptraCoreVendorPkHash8Offset = 11983;
  parameter int CptraCoreVendorPkHash8Size = 48;
  parameter int CptraCorePqcKeyType8Offset = 12031;
  parameter int CptraCorePqcKeyType8Size = 1;
  parameter int CptraCoreVendorPkHash9Offset = 12032;
  parameter int CptraCoreVendorPkHash9Size = 48;
  parameter int CptraCorePqcKeyType9Offset = 12080;
  parameter int CptraCorePqcKeyType9Size = 1;
  parameter int CptraCoreVendorPkHash10Offset = 12081;
  parameter int CptraCoreVendorPkHash10Size = 48;
  parameter int CptraCorePqcKeyType10Offset = 12129;
  parameter int CptraCorePqcKeyType10Size = 1;
  parameter int CptraCoreVendorPkHash11Offset = 12130;
  parameter int CptraCoreVendorPkHash11Size = 48;
  parameter int CptraCorePqcKeyType11Offset = 12178;
  parameter int CptraCorePqcKeyType11Size = 1;
  parameter int CptraCoreVendorPkHash12Offset = 12179;
  parameter int CptraCoreVendorPkHash12Size = 48;
  parameter int CptraCorePqcKeyType12Offset = 12227;
  parameter int CptraCorePqcKeyType12Size = 1;
  parameter int CptraCoreVendorPkHash13Offset = 12228;
  parameter int CptraCoreVendorPkHash13Size = 48;
  parameter int CptraCorePqcKeyType13Offset = 12276;
  parameter int CptraCorePqcKeyType13Size = 1;
  parameter int CptraCoreVendorPkHash14Offset = 12277;
  parameter int CptraCoreVendorPkHash14Size = 48;
  parameter int CptraCorePqcKeyType14Offset = 12325;
  parameter int CptraCorePqcKeyType14Size = 1;
  parameter int CptraCoreVendorPkHash15Offset = 12326;
  parameter int CptraCoreVendorPkHash15Size = 48;
  parameter int CptraCorePqcKeyType15Offset = 12374;
  parameter int CptraCorePqcKeyType15Size = 1;
  parameter int CptraCoreVendorPkHashValidOffset = 12375;
  parameter int CptraCoreVendorPkHashValidSize = 2;
  parameter int VendorHashesProdPartitionDigestOffset = 12384;
  parameter int VendorHashesProdPartitionDigestSize = 8;
  parameter int VendorRevocationsProdPartitionOffset = 12392;
  parameter int VendorRevocationsProdPartitionSize = 152;
  parameter int CptraCoreEccRevocation0Offset = 12392;
  parameter int CptraCoreEccRevocation0Size = 1;
  parameter int CptraCoreLmsRevocation0Offset = 12393;
  parameter int CptraCoreLmsRevocation0Size = 4;
  parameter int CptraCoreMldsaRevocation0Offset = 12397;
  parameter int CptraCoreMldsaRevocation0Size = 4;
  parameter int CptraCoreEccRevocation1Offset = 12401;
  parameter int CptraCoreEccRevocation1Size = 1;
  parameter int CptraCoreLmsRevocation1Offset = 12402;
  parameter int CptraCoreLmsRevocation1Size = 4;
  parameter int CptraCoreMldsaRevocation1Offset = 12406;
  parameter int CptraCoreMldsaRevocation1Size = 4;
  parameter int CptraCoreEccRevocation2Offset = 12410;
  parameter int CptraCoreEccRevocation2Size = 1;
  parameter int CptraCoreLmsRevocation2Offset = 12411;
  parameter int CptraCoreLmsRevocation2Size = 4;
  parameter int CptraCoreMldsaRevocation2Offset = 12415;
  parameter int CptraCoreMldsaRevocation2Size = 4;
  parameter int CptraCoreEccRevocation3Offset = 12419;
  parameter int CptraCoreEccRevocation3Size = 1;
  parameter int CptraCoreLmsRevocation3Offset = 12420;
  parameter int CptraCoreLmsRevocation3Size = 4;
  parameter int CptraCoreMldsaRevocation3Offset = 12424;
  parameter int CptraCoreMldsaRevocation3Size = 4;
  parameter int CptraCoreEccRevocation4Offset = 12428;
  parameter int CptraCoreEccRevocation4Size = 1;
  parameter int CptraCoreLmsRevocation4Offset = 12429;
  parameter int CptraCoreLmsRevocation4Size = 4;
  parameter int CptraCoreMldsaRevocation4Offset = 12433;
  parameter int CptraCoreMldsaRevocation4Size = 4;
  parameter int CptraCoreEccRevocation5Offset = 12437;
  parameter int CptraCoreEccRevocation5Size = 1;
  parameter int CptraCoreLmsRevocation5Offset = 12438;
  parameter int CptraCoreLmsRevocation5Size = 4;
  parameter int CptraCoreMldsaRevocation5Offset = 12442;
  parameter int CptraCoreMldsaRevocation5Size = 4;
  parameter int CptraCoreEccRevocation6Offset = 12446;
  parameter int CptraCoreEccRevocation6Size = 1;
  parameter int CptraCoreLmsRevocation6Offset = 12447;
  parameter int CptraCoreLmsRevocation6Size = 4;
  parameter int CptraCoreMldsaRevocation6Offset = 12451;
  parameter int CptraCoreMldsaRevocation6Size = 4;
  parameter int CptraCoreEccRevocation7Offset = 12455;
  parameter int CptraCoreEccRevocation7Size = 1;
  parameter int CptraCoreLmsRevocation7Offset = 12456;
  parameter int CptraCoreLmsRevocation7Size = 4;
  parameter int CptraCoreMldsaRevocation7Offset = 12460;
  parameter int CptraCoreMldsaRevocation7Size = 4;
  parameter int CptraCoreEccRevocation8Offset = 12464;
  parameter int CptraCoreEccRevocation8Size = 1;
  parameter int CptraCoreLmsRevocation8Offset = 12465;
  parameter int CptraCoreLmsRevocation8Size = 4;
  parameter int CptraCoreMldsaRevocation8Offset = 12469;
  parameter int CptraCoreMldsaRevocation8Size = 4;
  parameter int CptraCoreEccRevocation9Offset = 12473;
  parameter int CptraCoreEccRevocation9Size = 1;
  parameter int CptraCoreLmsRevocation9Offset = 12474;
  parameter int CptraCoreLmsRevocation9Size = 4;
  parameter int CptraCoreMldsaRevocation9Offset = 12478;
  parameter int CptraCoreMldsaRevocation9Size = 4;
  parameter int CptraCoreEccRevocation10Offset = 12482;
  parameter int CptraCoreEccRevocation10Size = 1;
  parameter int CptraCoreLmsRevocation10Offset = 12483;
  parameter int CptraCoreLmsRevocation10Size = 4;
  parameter int CptraCoreMldsaRevocation10Offset = 12487;
  parameter int CptraCoreMldsaRevocation10Size = 4;
  parameter int CptraCoreEccRevocation11Offset = 12491;
  parameter int CptraCoreEccRevocation11Size = 1;
  parameter int CptraCoreLmsRevocation11Offset = 12492;
  parameter int CptraCoreLmsRevocation11Size = 4;
  parameter int CptraCoreMldsaRevocation11Offset = 12496;
  parameter int CptraCoreMldsaRevocation11Size = 4;
  parameter int CptraCoreEccRevocation12Offset = 12500;
  parameter int CptraCoreEccRevocation12Size = 1;
  parameter int CptraCoreLmsRevocation12Offset = 12501;
  parameter int CptraCoreLmsRevocation12Size = 4;
  parameter int CptraCoreMldsaRevocation12Offset = 12505;
  parameter int CptraCoreMldsaRevocation12Size = 4;
  parameter int CptraCoreEccRevocation13Offset = 12509;
  parameter int CptraCoreEccRevocation13Size = 1;
  parameter int CptraCoreLmsRevocation13Offset = 12510;
  parameter int CptraCoreLmsRevocation13Size = 4;
  parameter int CptraCoreMldsaRevocation13Offset = 12514;
  parameter int CptraCoreMldsaRevocation13Size = 4;
  parameter int CptraCoreEccRevocation14Offset = 12518;
  parameter int CptraCoreEccRevocation14Size = 1;
  parameter int CptraCoreLmsRevocation14Offset = 12519;
  parameter int CptraCoreLmsRevocation14Size = 4;
  parameter int CptraCoreMldsaRevocation14Offset = 12523;
  parameter int CptraCoreMldsaRevocation14Size = 4;
  parameter int CptraCoreEccRevocation15Offset = 12527;
  parameter int CptraCoreEccRevocation15Size = 1;
  parameter int CptraCoreLmsRevocation15Offset = 12528;
  parameter int CptraCoreLmsRevocation15Size = 4;
  parameter int CptraCoreMldsaRevocation15Offset = 12532;
  parameter int CptraCoreMldsaRevocation15Size = 4;
  parameter int VendorRevocationsProdPartitionDigestOffset = 12536;
  parameter int VendorRevocationsProdPartitionDigestSize = 8;
  parameter int VendorSecretProdPartitionOffset = 12544;
  parameter int VendorSecretProdPartitionSize = 520;
  parameter int CptraSsVendorSpecificSecretFuse0Offset = 12544;
  parameter int CptraSsVendorSpecificSecretFuse0Size = 32;
  parameter int CptraSsVendorSpecificSecretFuse1Offset = 12576;
  parameter int CptraSsVendorSpecificSecretFuse1Size = 32;
  parameter int CptraSsVendorSpecificSecretFuse2Offset = 12608;
  parameter int CptraSsVendorSpecificSecretFuse2Size = 32;
  parameter int CptraSsVendorSpecificSecretFuse3Offset = 12640;
  parameter int CptraSsVendorSpecificSecretFuse3Size = 32;
  parameter int CptraSsVendorSpecificSecretFuse4Offset = 12672;
  parameter int CptraSsVendorSpecificSecretFuse4Size = 32;
  parameter int CptraSsVendorSpecificSecretFuse5Offset = 12704;
  parameter int CptraSsVendorSpecificSecretFuse5Size = 32;
  parameter int CptraSsVendorSpecificSecretFuse6Offset = 12736;
  parameter int CptraSsVendorSpecificSecretFuse6Size = 32;
  parameter int CptraSsVendorSpecificSecretFuse7Offset = 12768;
  parameter int CptraSsVendorSpecificSecretFuse7Size = 32;
  parameter int CptraSsVendorSpecificSecretFuse8Offset = 12800;
  parameter int CptraSsVendorSpecificSecretFuse8Size = 32;
  parameter int CptraSsVendorSpecificSecretFuse9Offset = 12832;
  parameter int CptraSsVendorSpecificSecretFuse9Size = 32;
  parameter int CptraSsVendorSpecificSecretFuse10Offset = 12864;
  parameter int CptraSsVendorSpecificSecretFuse10Size = 32;
  parameter int CptraSsVendorSpecificSecretFuse11Offset = 12896;
  parameter int CptraSsVendorSpecificSecretFuse11Size = 32;
  parameter int CptraSsVendorSpecificSecretFuse12Offset = 12928;
  parameter int CptraSsVendorSpecificSecretFuse12Size = 32;
  parameter int CptraSsVendorSpecificSecretFuse13Offset = 12960;
  parameter int CptraSsVendorSpecificSecretFuse13Size = 32;
  parameter int CptraSsVendorSpecificSecretFuse14Offset = 12992;
  parameter int CptraSsVendorSpecificSecretFuse14Size = 32;
  parameter int CptraSsVendorSpecificSecretFuse15Offset = 13024;
  parameter int CptraSsVendorSpecificSecretFuse15Size = 32;
  parameter int VendorSecretProdPartitionDigestOffset = 13056;
  parameter int VendorSecretProdPartitionDigestSize = 8;
  parameter int VendorNonSecretProdPartitionOffset = 13064;
  parameter int VendorNonSecretProdPartitionSize = 3232;
  parameter int CptraSsVendorSpecificNonSecretFuse0Offset = 13064;
  parameter int CptraSsVendorSpecificNonSecretFuse0Size = 32;
  parameter int CptraSsVendorSpecificNonSecretFuse1Offset = 13096;
  parameter int CptraSsVendorSpecificNonSecretFuse1Size = 32;
  parameter int CptraSsVendorSpecificNonSecretFuse2Offset = 13128;
  parameter int CptraSsVendorSpecificNonSecretFuse2Size = 32;
  parameter int CptraSsVendorSpecificNonSecretFuse3Offset = 13160;
  parameter int CptraSsVendorSpecificNonSecretFuse3Size = 32;
  parameter int CptraSsVendorSpecificNonSecretFuse4Offset = 13192;
  parameter int CptraSsVendorSpecificNonSecretFuse4Size = 32;
  parameter int CptraSsVendorSpecificNonSecretFuse5Offset = 13224;
  parameter int CptraSsVendorSpecificNonSecretFuse5Size = 32;
  parameter int CptraSsVendorSpecificNonSecretFuse6Offset = 13256;
  parameter int CptraSsVendorSpecificNonSecretFuse6Size = 32;
  parameter int CptraSsVendorSpecificNonSecretFuse7Offset = 13288;
  parameter int CptraSsVendorSpecificNonSecretFuse7Size = 32;
  parameter int CptraSsVendorSpecificNonSecretFuse8Offset = 13320;
  parameter int CptraSsVendorSpecificNonSecretFuse8Size = 32;
  parameter int CptraSsVendorSpecificNonSecretFuse9Offset = 13352;
  parameter int CptraSsVendorSpecificNonSecretFuse9Size = 32;
  parameter int CptraSsVendorSpecificNonSecretFuse10Offset = 13384;
  parameter int CptraSsVendorSpecificNonSecretFuse10Size = 32;
  parameter int CptraSsVendorSpecificNonSecretFuse11Offset = 13416;
  parameter int CptraSsVendorSpecificNonSecretFuse11Size = 32;
  parameter int CptraSsVendorSpecificNonSecretFuse12Offset = 13448;
  parameter int CptraSsVendorSpecificNonSecretFuse12Size = 32;
  parameter int CptraSsVendorSpecificNonSecretFuse13Offset = 13480;
  parameter int CptraSsVendorSpecificNonSecretFuse13Size = 32;
  parameter int CptraSsVendorSpecificNonSecretFuse14Offset = 13512;
  parameter int CptraSsVendorSpecificNonSecretFuse14Size = 32;
  parameter int CptraSsVendorSpecificNonSecretFuse15Offset = 13544;
  parameter int CptraSsVendorSpecificNonSecretFuse15Size = 32;
  parameter int VendorNonSecretProdPartitionDigestOffset = 16288;
  parameter int VendorNonSecretProdPartitionDigestSize = 8;
  parameter int LifeCycleOffset = 16296;
  parameter int LifeCycleSize = 88;
  parameter int LcTransitionCntOffset = 16296;
  parameter int LcTransitionCntSize = 48;
  parameter int LcStateOffset = 16344;
  parameter int LcStateSize = 40;
  parameter int NumAlerts = 5;

  // Address widths within the block
  parameter int CoreAw = 15;
  parameter int PrimAw = 5;

  // Number of registers for every interface
  parameter int NumRegsCore = 72;
  parameter int NumRegsPrim = 8;

  ///////////////////////////////////////////////
  // Typedefs for registers for core interface //
  ///////////////////////////////////////////////

  typedef struct packed {
    struct packed {
      logic        q;
    } otp_error;
    struct packed {
      logic        q;
    } otp_operation_done;
  } otp_ctrl_reg2hw_intr_state_reg_t;

  typedef struct packed {
    struct packed {
      logic        q;
    } otp_error;
    struct packed {
      logic        q;
    } otp_operation_done;
  } otp_ctrl_reg2hw_intr_enable_reg_t;

  typedef struct packed {
    struct packed {
      logic        q;
      logic        qe;
    } otp_error;
    struct packed {
      logic        q;
      logic        qe;
    } otp_operation_done;
  } otp_ctrl_reg2hw_intr_test_reg_t;

  typedef struct packed {
    struct packed {
      logic        q;
      logic        qe;
    } recov_prim_otp_alert;
    struct packed {
      logic        q;
      logic        qe;
    } fatal_prim_otp_alert;
    struct packed {
      logic        q;
      logic        qe;
    } fatal_bus_integ_error;
    struct packed {
      logic        q;
      logic        qe;
    } fatal_check_error;
    struct packed {
      logic        q;
      logic        qe;
    } fatal_macro_error;
  } otp_ctrl_reg2hw_alert_test_reg_t;

  typedef struct packed {
    logic        q;
    logic        qe;
  } otp_ctrl_reg2hw_direct_access_regwen_reg_t;

  typedef struct packed {
    struct packed {
      logic        q;
      logic        qe;
    } digest;
    struct packed {
      logic        q;
      logic        qe;
    } wr;
    struct packed {
      logic        q;
      logic        qe;
    } rd;
  } otp_ctrl_reg2hw_direct_access_cmd_reg_t;

  typedef struct packed {
    logic [13:0] q;
  } otp_ctrl_reg2hw_direct_access_address_reg_t;

  typedef struct packed {
    logic [31:0] q;
  } otp_ctrl_reg2hw_direct_access_wdata_mreg_t;

  typedef struct packed {
    struct packed {
      logic        q;
      logic        qe;
    } consistency;
    struct packed {
      logic        q;
      logic        qe;
    } integrity;
  } otp_ctrl_reg2hw_check_trigger_reg_t;

  typedef struct packed {
    logic [31:0] q;
  } otp_ctrl_reg2hw_check_timeout_reg_t;

  typedef struct packed {
    logic [31:0] q;
  } otp_ctrl_reg2hw_integrity_check_period_reg_t;

  typedef struct packed {
    logic [31:0] q;
  } otp_ctrl_reg2hw_consistency_check_period_reg_t;

  typedef struct packed {
    logic        q;
  } otp_ctrl_reg2hw_sw_manuf_partition_read_lock_reg_t;

  typedef struct packed {
    logic        q;
  } otp_ctrl_reg2hw_svn_partition_read_lock_reg_t;

  typedef struct packed {
    logic        q;
  } otp_ctrl_reg2hw_vendor_test_partition_read_lock_reg_t;

  typedef struct packed {
    logic        q;
  } otp_ctrl_reg2hw_vendor_hashes_manuf_partition_read_lock_reg_t;

  typedef struct packed {
    logic        q;
  } otp_ctrl_reg2hw_vendor_hashes_prod_partition_read_lock_reg_t;

  typedef struct packed {
    logic        q;
  } otp_ctrl_reg2hw_vendor_revocations_prod_partition_read_lock_reg_t;

  typedef struct packed {
    logic        q;
  } otp_ctrl_reg2hw_vendor_non_secret_prod_partition_read_lock_reg_t;

  typedef struct packed {
    logic [31:0] q;
  } otp_ctrl_reg2hw_vendor_pk_hash_volatile_lock_reg_t;

  typedef struct packed {
    struct packed {
      logic        d;
      logic        de;
    } otp_operation_done;
    struct packed {
      logic        d;
      logic        de;
    } otp_error;
  } otp_ctrl_hw2reg_intr_state_reg_t;

  typedef struct packed {
    struct packed {
      logic        d;
    } secret_test_unlock_partition_error;
    struct packed {
      logic        d;
    } secret_manuf_partition_error;
    struct packed {
      logic        d;
    } secret_prod_partition_0_error;
    struct packed {
      logic        d;
    } secret_prod_partition_1_error;
    struct packed {
      logic        d;
    } secret_prod_partition_2_error;
    struct packed {
      logic        d;
    } secret_prod_partition_3_error;
    struct packed {
      logic        d;
    } sw_manuf_partition_error;
    struct packed {
      logic        d;
    } secret_lc_transition_partition_error;
    struct packed {
      logic        d;
    } svn_partition_error;
    struct packed {
      logic        d;
    } vendor_test_partition_error;
    struct packed {
      logic        d;
    } vendor_hashes_manuf_partition_error;
    struct packed {
      logic        d;
    } vendor_hashes_prod_partition_error;
    struct packed {
      logic        d;
    } vendor_revocations_prod_partition_error;
    struct packed {
      logic        d;
    } vendor_secret_prod_partition_error;
    struct packed {
      logic        d;
    } vendor_non_secret_prod_partition_error;
    struct packed {
      logic        d;
    } life_cycle_error;
    struct packed {
      logic        d;
    } dai_error;
    struct packed {
      logic        d;
    } lci_error;
    struct packed {
      logic        d;
    } timeout_error;
    struct packed {
      logic        d;
    } lfsr_fsm_error;
    struct packed {
      logic        d;
    } scrambling_fsm_error;
    struct packed {
      logic        d;
    } bus_integ_error;
    struct packed {
      logic        d;
    } dai_idle;
    struct packed {
      logic        d;
    } check_pending;
  } otp_ctrl_hw2reg_status_reg_t;

  typedef struct packed {
    logic [2:0]  d;
  } otp_ctrl_hw2reg_err_code_mreg_t;

  typedef struct packed {
    logic        d;
  } otp_ctrl_hw2reg_direct_access_regwen_reg_t;

  typedef struct packed {
    logic [31:0] d;
  } otp_ctrl_hw2reg_direct_access_rdata_mreg_t;

  typedef struct packed {
    logic [31:0] d;
  } otp_ctrl_hw2reg_secret_test_unlock_partition_digest_mreg_t;

  typedef struct packed {
    logic [31:0] d;
  } otp_ctrl_hw2reg_secret_manuf_partition_digest_mreg_t;

  typedef struct packed {
    logic [31:0] d;
  } otp_ctrl_hw2reg_secret_prod_partition_0_digest_mreg_t;

  typedef struct packed {
    logic [31:0] d;
  } otp_ctrl_hw2reg_secret_prod_partition_1_digest_mreg_t;

  typedef struct packed {
    logic [31:0] d;
  } otp_ctrl_hw2reg_secret_prod_partition_2_digest_mreg_t;

  typedef struct packed {
    logic [31:0] d;
  } otp_ctrl_hw2reg_secret_prod_partition_3_digest_mreg_t;

  typedef struct packed {
    logic [31:0] d;
  } otp_ctrl_hw2reg_sw_manuf_partition_digest_mreg_t;

  typedef struct packed {
    logic [31:0] d;
  } otp_ctrl_hw2reg_secret_lc_transition_partition_digest_mreg_t;

  typedef struct packed {
    logic [31:0] d;
  } otp_ctrl_hw2reg_vendor_test_partition_digest_mreg_t;

  typedef struct packed {
    logic [31:0] d;
  } otp_ctrl_hw2reg_vendor_hashes_manuf_partition_digest_mreg_t;

  typedef struct packed {
    logic [31:0] d;
  } otp_ctrl_hw2reg_vendor_hashes_prod_partition_digest_mreg_t;

  typedef struct packed {
    logic [31:0] d;
  } otp_ctrl_hw2reg_vendor_revocations_prod_partition_digest_mreg_t;

  typedef struct packed {
    logic [31:0] d;
  } otp_ctrl_hw2reg_vendor_secret_prod_partition_digest_mreg_t;

  typedef struct packed {
    logic [31:0] d;
  } otp_ctrl_hw2reg_vendor_non_secret_prod_partition_digest_mreg_t;

  // Register -> HW type for core interface
  typedef struct packed {
    otp_ctrl_reg2hw_intr_state_reg_t intr_state; // [242:241]
    otp_ctrl_reg2hw_intr_enable_reg_t intr_enable; // [240:239]
    otp_ctrl_reg2hw_intr_test_reg_t intr_test; // [238:235]
    otp_ctrl_reg2hw_alert_test_reg_t alert_test; // [234:225]
    otp_ctrl_reg2hw_direct_access_regwen_reg_t direct_access_regwen; // [224:223]
    otp_ctrl_reg2hw_direct_access_cmd_reg_t direct_access_cmd; // [222:217]
    otp_ctrl_reg2hw_direct_access_address_reg_t direct_access_address; // [216:203]
    otp_ctrl_reg2hw_direct_access_wdata_mreg_t [1:0] direct_access_wdata; // [202:139]
    otp_ctrl_reg2hw_check_trigger_reg_t check_trigger; // [138:135]
    otp_ctrl_reg2hw_check_timeout_reg_t check_timeout; // [134:103]
    otp_ctrl_reg2hw_integrity_check_period_reg_t integrity_check_period; // [102:71]
    otp_ctrl_reg2hw_consistency_check_period_reg_t consistency_check_period; // [70:39]
    otp_ctrl_reg2hw_sw_manuf_partition_read_lock_reg_t sw_manuf_partition_read_lock; // [38:38]
    otp_ctrl_reg2hw_svn_partition_read_lock_reg_t svn_partition_read_lock; // [37:37]
    otp_ctrl_reg2hw_vendor_test_partition_read_lock_reg_t
        vendor_test_partition_read_lock; // [36:36]
    otp_ctrl_reg2hw_vendor_hashes_manuf_partition_read_lock_reg_t
        vendor_hashes_manuf_partition_read_lock; // [35:35]
    otp_ctrl_reg2hw_vendor_hashes_prod_partition_read_lock_reg_t
        vendor_hashes_prod_partition_read_lock; // [34:34]
    otp_ctrl_reg2hw_vendor_revocations_prod_partition_read_lock_reg_t
        vendor_revocations_prod_partition_read_lock; // [33:33]
    otp_ctrl_reg2hw_vendor_non_secret_prod_partition_read_lock_reg_t
        vendor_non_secret_prod_partition_read_lock; // [32:32]
    otp_ctrl_reg2hw_vendor_pk_hash_volatile_lock_reg_t vendor_pk_hash_volatile_lock; // [31:0]
  } otp_ctrl_core_reg2hw_t;

  // HW -> register type for core interface
  typedef struct packed {
    otp_ctrl_hw2reg_intr_state_reg_t intr_state; // [1042:1039]
    otp_ctrl_hw2reg_status_reg_t status; // [1038:1015]
    otp_ctrl_hw2reg_err_code_mreg_t [17:0] err_code; // [1014:961]
    otp_ctrl_hw2reg_direct_access_regwen_reg_t direct_access_regwen; // [960:960]
    otp_ctrl_hw2reg_direct_access_rdata_mreg_t [1:0] direct_access_rdata; // [959:896]
    otp_ctrl_hw2reg_secret_test_unlock_partition_digest_mreg_t [1:0]
        secret_test_unlock_partition_digest; // [895:832]
    otp_ctrl_hw2reg_secret_manuf_partition_digest_mreg_t [1:0]
        secret_manuf_partition_digest; // [831:768]
    otp_ctrl_hw2reg_secret_prod_partition_0_digest_mreg_t [1:0]
        secret_prod_partition_0_digest; // [767:704]
    otp_ctrl_hw2reg_secret_prod_partition_1_digest_mreg_t [1:0]
        secret_prod_partition_1_digest; // [703:640]
    otp_ctrl_hw2reg_secret_prod_partition_2_digest_mreg_t [1:0]
        secret_prod_partition_2_digest; // [639:576]
    otp_ctrl_hw2reg_secret_prod_partition_3_digest_mreg_t [1:0]
        secret_prod_partition_3_digest; // [575:512]
    otp_ctrl_hw2reg_sw_manuf_partition_digest_mreg_t [1:0] sw_manuf_partition_digest; // [511:448]
    otp_ctrl_hw2reg_secret_lc_transition_partition_digest_mreg_t [1:0]
        secret_lc_transition_partition_digest; // [447:384]
    otp_ctrl_hw2reg_vendor_test_partition_digest_mreg_t [1:0]
        vendor_test_partition_digest; // [383:320]
    otp_ctrl_hw2reg_vendor_hashes_manuf_partition_digest_mreg_t [1:0]
        vendor_hashes_manuf_partition_digest; // [319:256]
    otp_ctrl_hw2reg_vendor_hashes_prod_partition_digest_mreg_t [1:0]
        vendor_hashes_prod_partition_digest; // [255:192]
    otp_ctrl_hw2reg_vendor_revocations_prod_partition_digest_mreg_t [1:0]
        vendor_revocations_prod_partition_digest; // [191:128]
    otp_ctrl_hw2reg_vendor_secret_prod_partition_digest_mreg_t [1:0]
        vendor_secret_prod_partition_digest; // [127:64]
    otp_ctrl_hw2reg_vendor_non_secret_prod_partition_digest_mreg_t [1:0]
        vendor_non_secret_prod_partition_digest; // [63:0]
  } otp_ctrl_core_hw2reg_t;

  // Register offsets for core interface
  parameter logic [CoreAw-1:0] OTP_CTRL_INTR_STATE_OFFSET = 15'h 0;
  parameter logic [CoreAw-1:0] OTP_CTRL_INTR_ENABLE_OFFSET = 15'h 4;
  parameter logic [CoreAw-1:0] OTP_CTRL_INTR_TEST_OFFSET = 15'h 8;
  parameter logic [CoreAw-1:0] OTP_CTRL_ALERT_TEST_OFFSET = 15'h c;
  parameter logic [CoreAw-1:0] OTP_CTRL_STATUS_OFFSET = 15'h 10;
  parameter logic [CoreAw-1:0] OTP_CTRL_ERR_CODE_0_OFFSET = 15'h 14;
  parameter logic [CoreAw-1:0] OTP_CTRL_ERR_CODE_1_OFFSET = 15'h 18;
  parameter logic [CoreAw-1:0] OTP_CTRL_ERR_CODE_2_OFFSET = 15'h 1c;
  parameter logic [CoreAw-1:0] OTP_CTRL_ERR_CODE_3_OFFSET = 15'h 20;
  parameter logic [CoreAw-1:0] OTP_CTRL_ERR_CODE_4_OFFSET = 15'h 24;
  parameter logic [CoreAw-1:0] OTP_CTRL_ERR_CODE_5_OFFSET = 15'h 28;
  parameter logic [CoreAw-1:0] OTP_CTRL_ERR_CODE_6_OFFSET = 15'h 2c;
  parameter logic [CoreAw-1:0] OTP_CTRL_ERR_CODE_7_OFFSET = 15'h 30;
  parameter logic [CoreAw-1:0] OTP_CTRL_ERR_CODE_8_OFFSET = 15'h 34;
  parameter logic [CoreAw-1:0] OTP_CTRL_ERR_CODE_9_OFFSET = 15'h 38;
  parameter logic [CoreAw-1:0] OTP_CTRL_ERR_CODE_10_OFFSET = 15'h 3c;
  parameter logic [CoreAw-1:0] OTP_CTRL_ERR_CODE_11_OFFSET = 15'h 40;
  parameter logic [CoreAw-1:0] OTP_CTRL_ERR_CODE_12_OFFSET = 15'h 44;
  parameter logic [CoreAw-1:0] OTP_CTRL_ERR_CODE_13_OFFSET = 15'h 48;
  parameter logic [CoreAw-1:0] OTP_CTRL_ERR_CODE_14_OFFSET = 15'h 4c;
  parameter logic [CoreAw-1:0] OTP_CTRL_ERR_CODE_15_OFFSET = 15'h 50;
  parameter logic [CoreAw-1:0] OTP_CTRL_ERR_CODE_16_OFFSET = 15'h 54;
  parameter logic [CoreAw-1:0] OTP_CTRL_ERR_CODE_17_OFFSET = 15'h 58;
  parameter logic [CoreAw-1:0] OTP_CTRL_DIRECT_ACCESS_REGWEN_OFFSET = 15'h 5c;
  parameter logic [CoreAw-1:0] OTP_CTRL_DIRECT_ACCESS_CMD_OFFSET = 15'h 60;
  parameter logic [CoreAw-1:0] OTP_CTRL_DIRECT_ACCESS_ADDRESS_OFFSET = 15'h 64;
  parameter logic [CoreAw-1:0] OTP_CTRL_DIRECT_ACCESS_WDATA_0_OFFSET = 15'h 68;
  parameter logic [CoreAw-1:0] OTP_CTRL_DIRECT_ACCESS_WDATA_1_OFFSET = 15'h 6c;
  parameter logic [CoreAw-1:0] OTP_CTRL_DIRECT_ACCESS_RDATA_0_OFFSET = 15'h 70;
  parameter logic [CoreAw-1:0] OTP_CTRL_DIRECT_ACCESS_RDATA_1_OFFSET = 15'h 74;
  parameter logic [CoreAw-1:0] OTP_CTRL_CHECK_TRIGGER_REGWEN_OFFSET = 15'h 78;
  parameter logic [CoreAw-1:0] OTP_CTRL_CHECK_TRIGGER_OFFSET = 15'h 7c;
  parameter logic [CoreAw-1:0] OTP_CTRL_CHECK_REGWEN_OFFSET = 15'h 80;
  parameter logic [CoreAw-1:0] OTP_CTRL_CHECK_TIMEOUT_OFFSET = 15'h 84;
  parameter logic [CoreAw-1:0] OTP_CTRL_INTEGRITY_CHECK_PERIOD_OFFSET = 15'h 88;
  parameter logic [CoreAw-1:0] OTP_CTRL_CONSISTENCY_CHECK_PERIOD_OFFSET = 15'h 8c;
  parameter logic [CoreAw-1:0] OTP_CTRL_SW_MANUF_PARTITION_READ_LOCK_OFFSET = 15'h 90;
  parameter logic [CoreAw-1:0] OTP_CTRL_SVN_PARTITION_READ_LOCK_OFFSET = 15'h 94;
  parameter logic [CoreAw-1:0] OTP_CTRL_VENDOR_TEST_PARTITION_READ_LOCK_OFFSET = 15'h 98;
  parameter logic [CoreAw-1:0] OTP_CTRL_VENDOR_HASHES_MANUF_PARTITION_READ_LOCK_OFFSET = 15'h 9c;
  parameter logic [CoreAw-1:0] OTP_CTRL_VENDOR_HASHES_PROD_PARTITION_READ_LOCK_OFFSET = 15'h a0;
  parameter logic [CoreAw-1:0] OTP_CTRL_VENDOR_REVOCATIONS_PROD_PARTITION_READ_LOCK_OFFSET = 15'h a4;
  parameter logic [CoreAw-1:0] OTP_CTRL_VENDOR_NON_SECRET_PROD_PARTITION_READ_LOCK_OFFSET = 15'h a8;
  parameter logic [CoreAw-1:0] OTP_CTRL_VENDOR_PK_HASH_VOLATILE_LOCK_OFFSET = 15'h ac;
  parameter logic [CoreAw-1:0] OTP_CTRL_SECRET_TEST_UNLOCK_PARTITION_DIGEST_0_OFFSET = 15'h b0;
  parameter logic [CoreAw-1:0] OTP_CTRL_SECRET_TEST_UNLOCK_PARTITION_DIGEST_1_OFFSET = 15'h b4;
  parameter logic [CoreAw-1:0] OTP_CTRL_SECRET_MANUF_PARTITION_DIGEST_0_OFFSET = 15'h b8;
  parameter logic [CoreAw-1:0] OTP_CTRL_SECRET_MANUF_PARTITION_DIGEST_1_OFFSET = 15'h bc;
  parameter logic [CoreAw-1:0] OTP_CTRL_SECRET_PROD_PARTITION_0_DIGEST_0_OFFSET = 15'h c0;
  parameter logic [CoreAw-1:0] OTP_CTRL_SECRET_PROD_PARTITION_0_DIGEST_1_OFFSET = 15'h c4;
  parameter logic [CoreAw-1:0] OTP_CTRL_SECRET_PROD_PARTITION_1_DIGEST_0_OFFSET = 15'h c8;
  parameter logic [CoreAw-1:0] OTP_CTRL_SECRET_PROD_PARTITION_1_DIGEST_1_OFFSET = 15'h cc;
  parameter logic [CoreAw-1:0] OTP_CTRL_SECRET_PROD_PARTITION_2_DIGEST_0_OFFSET = 15'h d0;
  parameter logic [CoreAw-1:0] OTP_CTRL_SECRET_PROD_PARTITION_2_DIGEST_1_OFFSET = 15'h d4;
  parameter logic [CoreAw-1:0] OTP_CTRL_SECRET_PROD_PARTITION_3_DIGEST_0_OFFSET = 15'h d8;
  parameter logic [CoreAw-1:0] OTP_CTRL_SECRET_PROD_PARTITION_3_DIGEST_1_OFFSET = 15'h dc;
  parameter logic [CoreAw-1:0] OTP_CTRL_SW_MANUF_PARTITION_DIGEST_0_OFFSET = 15'h e0;
  parameter logic [CoreAw-1:0] OTP_CTRL_SW_MANUF_PARTITION_DIGEST_1_OFFSET = 15'h e4;
  parameter logic [CoreAw-1:0] OTP_CTRL_SECRET_LC_TRANSITION_PARTITION_DIGEST_0_OFFSET = 15'h e8;
  parameter logic [CoreAw-1:0] OTP_CTRL_SECRET_LC_TRANSITION_PARTITION_DIGEST_1_OFFSET = 15'h ec;
  parameter logic [CoreAw-1:0] OTP_CTRL_VENDOR_TEST_PARTITION_DIGEST_0_OFFSET = 15'h f0;
  parameter logic [CoreAw-1:0] OTP_CTRL_VENDOR_TEST_PARTITION_DIGEST_1_OFFSET = 15'h f4;
  parameter logic [CoreAw-1:0] OTP_CTRL_VENDOR_HASHES_MANUF_PARTITION_DIGEST_0_OFFSET = 15'h f8;
  parameter logic [CoreAw-1:0] OTP_CTRL_VENDOR_HASHES_MANUF_PARTITION_DIGEST_1_OFFSET = 15'h fc;
  parameter logic [CoreAw-1:0] OTP_CTRL_VENDOR_HASHES_PROD_PARTITION_DIGEST_0_OFFSET = 15'h 100;
  parameter logic [CoreAw-1:0] OTP_CTRL_VENDOR_HASHES_PROD_PARTITION_DIGEST_1_OFFSET = 15'h 104;
  parameter logic [CoreAw-1:0] OTP_CTRL_VENDOR_REVOCATIONS_PROD_PARTITION_DIGEST_0_OFFSET = 15'h 108;
  parameter logic [CoreAw-1:0] OTP_CTRL_VENDOR_REVOCATIONS_PROD_PARTITION_DIGEST_1_OFFSET = 15'h 10c;
  parameter logic [CoreAw-1:0] OTP_CTRL_VENDOR_SECRET_PROD_PARTITION_DIGEST_0_OFFSET = 15'h 110;
  parameter logic [CoreAw-1:0] OTP_CTRL_VENDOR_SECRET_PROD_PARTITION_DIGEST_1_OFFSET = 15'h 114;
  parameter logic [CoreAw-1:0] OTP_CTRL_VENDOR_NON_SECRET_PROD_PARTITION_DIGEST_0_OFFSET = 15'h 118;
  parameter logic [CoreAw-1:0] OTP_CTRL_VENDOR_NON_SECRET_PROD_PARTITION_DIGEST_1_OFFSET = 15'h 11c;

  // Reset values for hwext registers and their fields for core interface
  parameter logic [1:0] OTP_CTRL_INTR_TEST_RESVAL = 2'h 0;
  parameter logic [0:0] OTP_CTRL_INTR_TEST_OTP_OPERATION_DONE_RESVAL = 1'h 0;
  parameter logic [0:0] OTP_CTRL_INTR_TEST_OTP_ERROR_RESVAL = 1'h 0;
  parameter logic [4:0] OTP_CTRL_ALERT_TEST_RESVAL = 5'h 0;
  parameter logic [0:0] OTP_CTRL_ALERT_TEST_FATAL_MACRO_ERROR_RESVAL = 1'h 0;
  parameter logic [0:0] OTP_CTRL_ALERT_TEST_FATAL_CHECK_ERROR_RESVAL = 1'h 0;
  parameter logic [0:0] OTP_CTRL_ALERT_TEST_FATAL_BUS_INTEG_ERROR_RESVAL = 1'h 0;
  parameter logic [0:0] OTP_CTRL_ALERT_TEST_FATAL_PRIM_OTP_ALERT_RESVAL = 1'h 0;
  parameter logic [0:0] OTP_CTRL_ALERT_TEST_RECOV_PRIM_OTP_ALERT_RESVAL = 1'h 0;
  parameter logic [23:0] OTP_CTRL_STATUS_RESVAL = 24'h 0;
  parameter logic [0:0] OTP_CTRL_STATUS_SECRET_TEST_UNLOCK_PARTITION_ERROR_RESVAL = 1'h 0;
  parameter logic [0:0] OTP_CTRL_STATUS_SECRET_MANUF_PARTITION_ERROR_RESVAL = 1'h 0;
  parameter logic [0:0] OTP_CTRL_STATUS_SECRET_PROD_PARTITION_0_ERROR_RESVAL = 1'h 0;
  parameter logic [0:0] OTP_CTRL_STATUS_SECRET_PROD_PARTITION_1_ERROR_RESVAL = 1'h 0;
  parameter logic [0:0] OTP_CTRL_STATUS_SECRET_PROD_PARTITION_2_ERROR_RESVAL = 1'h 0;
  parameter logic [0:0] OTP_CTRL_STATUS_SECRET_PROD_PARTITION_3_ERROR_RESVAL = 1'h 0;
  parameter logic [0:0] OTP_CTRL_STATUS_SW_MANUF_PARTITION_ERROR_RESVAL = 1'h 0;
  parameter logic [0:0] OTP_CTRL_STATUS_SECRET_LC_TRANSITION_PARTITION_ERROR_RESVAL = 1'h 0;
  parameter logic [0:0] OTP_CTRL_STATUS_SVN_PARTITION_ERROR_RESVAL = 1'h 0;
  parameter logic [0:0] OTP_CTRL_STATUS_VENDOR_TEST_PARTITION_ERROR_RESVAL = 1'h 0;
  parameter logic [0:0] OTP_CTRL_STATUS_VENDOR_HASHES_MANUF_PARTITION_ERROR_RESVAL = 1'h 0;
  parameter logic [0:0] OTP_CTRL_STATUS_VENDOR_HASHES_PROD_PARTITION_ERROR_RESVAL = 1'h 0;
  parameter logic [0:0] OTP_CTRL_STATUS_VENDOR_REVOCATIONS_PROD_PARTITION_ERROR_RESVAL = 1'h 0;
  parameter logic [0:0] OTP_CTRL_STATUS_VENDOR_SECRET_PROD_PARTITION_ERROR_RESVAL = 1'h 0;
  parameter logic [0:0] OTP_CTRL_STATUS_VENDOR_NON_SECRET_PROD_PARTITION_ERROR_RESVAL = 1'h 0;
  parameter logic [0:0] OTP_CTRL_STATUS_LIFE_CYCLE_ERROR_RESVAL = 1'h 0;
  parameter logic [0:0] OTP_CTRL_STATUS_DAI_ERROR_RESVAL = 1'h 0;
  parameter logic [0:0] OTP_CTRL_STATUS_LCI_ERROR_RESVAL = 1'h 0;
  parameter logic [0:0] OTP_CTRL_STATUS_TIMEOUT_ERROR_RESVAL = 1'h 0;
  parameter logic [0:0] OTP_CTRL_STATUS_LFSR_FSM_ERROR_RESVAL = 1'h 0;
  parameter logic [0:0] OTP_CTRL_STATUS_SCRAMBLING_FSM_ERROR_RESVAL = 1'h 0;
  parameter logic [0:0] OTP_CTRL_STATUS_BUS_INTEG_ERROR_RESVAL = 1'h 0;
  parameter logic [0:0] OTP_CTRL_STATUS_DAI_IDLE_RESVAL = 1'h 0;
  parameter logic [0:0] OTP_CTRL_STATUS_CHECK_PENDING_RESVAL = 1'h 0;
  parameter logic [2:0] OTP_CTRL_ERR_CODE_0_RESVAL = 3'h 0;
  parameter logic [2:0] OTP_CTRL_ERR_CODE_0_ERR_CODE_0_RESVAL = 3'h 0;
  parameter logic [2:0] OTP_CTRL_ERR_CODE_1_RESVAL = 3'h 0;
  parameter logic [2:0] OTP_CTRL_ERR_CODE_1_ERR_CODE_1_RESVAL = 3'h 0;
  parameter logic [2:0] OTP_CTRL_ERR_CODE_2_RESVAL = 3'h 0;
  parameter logic [2:0] OTP_CTRL_ERR_CODE_2_ERR_CODE_2_RESVAL = 3'h 0;
  parameter logic [2:0] OTP_CTRL_ERR_CODE_3_RESVAL = 3'h 0;
  parameter logic [2:0] OTP_CTRL_ERR_CODE_3_ERR_CODE_3_RESVAL = 3'h 0;
  parameter logic [2:0] OTP_CTRL_ERR_CODE_4_RESVAL = 3'h 0;
  parameter logic [2:0] OTP_CTRL_ERR_CODE_4_ERR_CODE_4_RESVAL = 3'h 0;
  parameter logic [2:0] OTP_CTRL_ERR_CODE_5_RESVAL = 3'h 0;
  parameter logic [2:0] OTP_CTRL_ERR_CODE_5_ERR_CODE_5_RESVAL = 3'h 0;
  parameter logic [2:0] OTP_CTRL_ERR_CODE_6_RESVAL = 3'h 0;
  parameter logic [2:0] OTP_CTRL_ERR_CODE_6_ERR_CODE_6_RESVAL = 3'h 0;
  parameter logic [2:0] OTP_CTRL_ERR_CODE_7_RESVAL = 3'h 0;
  parameter logic [2:0] OTP_CTRL_ERR_CODE_7_ERR_CODE_7_RESVAL = 3'h 0;
  parameter logic [2:0] OTP_CTRL_ERR_CODE_8_RESVAL = 3'h 0;
  parameter logic [2:0] OTP_CTRL_ERR_CODE_8_ERR_CODE_8_RESVAL = 3'h 0;
  parameter logic [2:0] OTP_CTRL_ERR_CODE_9_RESVAL = 3'h 0;
  parameter logic [2:0] OTP_CTRL_ERR_CODE_9_ERR_CODE_9_RESVAL = 3'h 0;
  parameter logic [2:0] OTP_CTRL_ERR_CODE_10_RESVAL = 3'h 0;
  parameter logic [2:0] OTP_CTRL_ERR_CODE_10_ERR_CODE_10_RESVAL = 3'h 0;
  parameter logic [2:0] OTP_CTRL_ERR_CODE_11_RESVAL = 3'h 0;
  parameter logic [2:0] OTP_CTRL_ERR_CODE_11_ERR_CODE_11_RESVAL = 3'h 0;
  parameter logic [2:0] OTP_CTRL_ERR_CODE_12_RESVAL = 3'h 0;
  parameter logic [2:0] OTP_CTRL_ERR_CODE_12_ERR_CODE_12_RESVAL = 3'h 0;
  parameter logic [2:0] OTP_CTRL_ERR_CODE_13_RESVAL = 3'h 0;
  parameter logic [2:0] OTP_CTRL_ERR_CODE_13_ERR_CODE_13_RESVAL = 3'h 0;
  parameter logic [2:0] OTP_CTRL_ERR_CODE_14_RESVAL = 3'h 0;
  parameter logic [2:0] OTP_CTRL_ERR_CODE_14_ERR_CODE_14_RESVAL = 3'h 0;
  parameter logic [2:0] OTP_CTRL_ERR_CODE_15_RESVAL = 3'h 0;
  parameter logic [2:0] OTP_CTRL_ERR_CODE_15_ERR_CODE_15_RESVAL = 3'h 0;
  parameter logic [2:0] OTP_CTRL_ERR_CODE_16_RESVAL = 3'h 0;
  parameter logic [2:0] OTP_CTRL_ERR_CODE_16_ERR_CODE_16_RESVAL = 3'h 0;
  parameter logic [2:0] OTP_CTRL_ERR_CODE_17_RESVAL = 3'h 0;
  parameter logic [2:0] OTP_CTRL_ERR_CODE_17_ERR_CODE_17_RESVAL = 3'h 0;
  parameter logic [0:0] OTP_CTRL_DIRECT_ACCESS_REGWEN_RESVAL = 1'h 1;
  parameter logic [0:0] OTP_CTRL_DIRECT_ACCESS_REGWEN_DIRECT_ACCESS_REGWEN_RESVAL = 1'h 1;
  parameter logic [2:0] OTP_CTRL_DIRECT_ACCESS_CMD_RESVAL = 3'h 0;
  parameter logic [0:0] OTP_CTRL_DIRECT_ACCESS_CMD_RD_RESVAL = 1'h 0;
  parameter logic [0:0] OTP_CTRL_DIRECT_ACCESS_CMD_WR_RESVAL = 1'h 0;
  parameter logic [0:0] OTP_CTRL_DIRECT_ACCESS_CMD_DIGEST_RESVAL = 1'h 0;
  parameter logic [31:0] OTP_CTRL_DIRECT_ACCESS_RDATA_0_RESVAL = 32'h 0;
  parameter logic [31:0] OTP_CTRL_DIRECT_ACCESS_RDATA_0_DIRECT_ACCESS_RDATA_0_RESVAL = 32'h 0;
  parameter logic [31:0] OTP_CTRL_DIRECT_ACCESS_RDATA_1_RESVAL = 32'h 0;
  parameter logic [31:0] OTP_CTRL_DIRECT_ACCESS_RDATA_1_DIRECT_ACCESS_RDATA_1_RESVAL = 32'h 0;
  parameter logic [1:0] OTP_CTRL_CHECK_TRIGGER_RESVAL = 2'h 0;
  parameter logic [0:0] OTP_CTRL_CHECK_TRIGGER_INTEGRITY_RESVAL = 1'h 0;
  parameter logic [0:0] OTP_CTRL_CHECK_TRIGGER_CONSISTENCY_RESVAL = 1'h 0;
  parameter logic [31:0] OTP_CTRL_SECRET_TEST_UNLOCK_PARTITION_DIGEST_0_RESVAL = 32'h 0;
  parameter logic [31:0]
      OTP_CTRL_SECRET_TEST_UNLOCK_PARTITION_DIGEST_0_SECRET_TEST_UNLOCK_PARTITION_DIGEST_0_RESVAL =
      32'h 0;
  parameter logic [31:0] OTP_CTRL_SECRET_TEST_UNLOCK_PARTITION_DIGEST_1_RESVAL = 32'h 0;
  parameter logic [31:0]
      OTP_CTRL_SECRET_TEST_UNLOCK_PARTITION_DIGEST_1_SECRET_TEST_UNLOCK_PARTITION_DIGEST_1_RESVAL =
      32'h 0;
  parameter logic [31:0] OTP_CTRL_SECRET_MANUF_PARTITION_DIGEST_0_RESVAL = 32'h 0;
  parameter logic [31:0]
      OTP_CTRL_SECRET_MANUF_PARTITION_DIGEST_0_SECRET_MANUF_PARTITION_DIGEST_0_RESVAL =
      32'h 0;
  parameter logic [31:0] OTP_CTRL_SECRET_MANUF_PARTITION_DIGEST_1_RESVAL = 32'h 0;
  parameter logic [31:0]
      OTP_CTRL_SECRET_MANUF_PARTITION_DIGEST_1_SECRET_MANUF_PARTITION_DIGEST_1_RESVAL =
      32'h 0;
  parameter logic [31:0] OTP_CTRL_SECRET_PROD_PARTITION_0_DIGEST_0_RESVAL = 32'h 0;
  parameter logic [31:0]
      OTP_CTRL_SECRET_PROD_PARTITION_0_DIGEST_0_SECRET_PROD_PARTITION_0_DIGEST_0_RESVAL =
      32'h 0;
  parameter logic [31:0] OTP_CTRL_SECRET_PROD_PARTITION_0_DIGEST_1_RESVAL = 32'h 0;
  parameter logic [31:0]
      OTP_CTRL_SECRET_PROD_PARTITION_0_DIGEST_1_SECRET_PROD_PARTITION_0_DIGEST_1_RESVAL =
      32'h 0;
  parameter logic [31:0] OTP_CTRL_SECRET_PROD_PARTITION_1_DIGEST_0_RESVAL = 32'h 0;
  parameter logic [31:0]
      OTP_CTRL_SECRET_PROD_PARTITION_1_DIGEST_0_SECRET_PROD_PARTITION_1_DIGEST_0_RESVAL =
      32'h 0;
  parameter logic [31:0] OTP_CTRL_SECRET_PROD_PARTITION_1_DIGEST_1_RESVAL = 32'h 0;
  parameter logic [31:0]
      OTP_CTRL_SECRET_PROD_PARTITION_1_DIGEST_1_SECRET_PROD_PARTITION_1_DIGEST_1_RESVAL =
      32'h 0;
  parameter logic [31:0] OTP_CTRL_SECRET_PROD_PARTITION_2_DIGEST_0_RESVAL = 32'h 0;
  parameter logic [31:0]
      OTP_CTRL_SECRET_PROD_PARTITION_2_DIGEST_0_SECRET_PROD_PARTITION_2_DIGEST_0_RESVAL =
      32'h 0;
  parameter logic [31:0] OTP_CTRL_SECRET_PROD_PARTITION_2_DIGEST_1_RESVAL = 32'h 0;
  parameter logic [31:0]
      OTP_CTRL_SECRET_PROD_PARTITION_2_DIGEST_1_SECRET_PROD_PARTITION_2_DIGEST_1_RESVAL =
      32'h 0;
  parameter logic [31:0] OTP_CTRL_SECRET_PROD_PARTITION_3_DIGEST_0_RESVAL = 32'h 0;
  parameter logic [31:0]
      OTP_CTRL_SECRET_PROD_PARTITION_3_DIGEST_0_SECRET_PROD_PARTITION_3_DIGEST_0_RESVAL =
      32'h 0;
  parameter logic [31:0] OTP_CTRL_SECRET_PROD_PARTITION_3_DIGEST_1_RESVAL = 32'h 0;
  parameter logic [31:0]
      OTP_CTRL_SECRET_PROD_PARTITION_3_DIGEST_1_SECRET_PROD_PARTITION_3_DIGEST_1_RESVAL =
      32'h 0;
  parameter logic [31:0] OTP_CTRL_SW_MANUF_PARTITION_DIGEST_0_RESVAL = 32'h 0;
  parameter logic [31:0]
      OTP_CTRL_SW_MANUF_PARTITION_DIGEST_0_SW_MANUF_PARTITION_DIGEST_0_RESVAL =
      32'h 0;
  parameter logic [31:0] OTP_CTRL_SW_MANUF_PARTITION_DIGEST_1_RESVAL = 32'h 0;
  parameter logic [31:0]
      OTP_CTRL_SW_MANUF_PARTITION_DIGEST_1_SW_MANUF_PARTITION_DIGEST_1_RESVAL =
      32'h 0;
  parameter logic [31:0] OTP_CTRL_SECRET_LC_TRANSITION_PARTITION_DIGEST_0_RESVAL = 32'h 0;
  parameter logic [31:0]
      OTP_CTRL_SECRET_LC_TRANSITION_PARTITION_DIGEST_0_SECRET_LC_TRANSITION_PARTITION_DIGEST_0_RESVAL =
      32'h 0;
  parameter logic [31:0] OTP_CTRL_SECRET_LC_TRANSITION_PARTITION_DIGEST_1_RESVAL = 32'h 0;
  parameter logic [31:0]
      OTP_CTRL_SECRET_LC_TRANSITION_PARTITION_DIGEST_1_SECRET_LC_TRANSITION_PARTITION_DIGEST_1_RESVAL =
      32'h 0;
  parameter logic [31:0] OTP_CTRL_VENDOR_TEST_PARTITION_DIGEST_0_RESVAL = 32'h 0;
  parameter logic [31:0]
      OTP_CTRL_VENDOR_TEST_PARTITION_DIGEST_0_VENDOR_TEST_PARTITION_DIGEST_0_RESVAL =
      32'h 0;
  parameter logic [31:0] OTP_CTRL_VENDOR_TEST_PARTITION_DIGEST_1_RESVAL = 32'h 0;
  parameter logic [31:0]
      OTP_CTRL_VENDOR_TEST_PARTITION_DIGEST_1_VENDOR_TEST_PARTITION_DIGEST_1_RESVAL =
      32'h 0;
  parameter logic [31:0] OTP_CTRL_VENDOR_HASHES_MANUF_PARTITION_DIGEST_0_RESVAL = 32'h 0;
  parameter logic [31:0]
      OTP_CTRL_VENDOR_HASHES_MANUF_PARTITION_DIGEST_0_VENDOR_HASHES_MANUF_PARTITION_DIGEST_0_RESVAL =
      32'h 0;
  parameter logic [31:0] OTP_CTRL_VENDOR_HASHES_MANUF_PARTITION_DIGEST_1_RESVAL = 32'h 0;
  parameter logic [31:0]
      OTP_CTRL_VENDOR_HASHES_MANUF_PARTITION_DIGEST_1_VENDOR_HASHES_MANUF_PARTITION_DIGEST_1_RESVAL =
      32'h 0;
  parameter logic [31:0] OTP_CTRL_VENDOR_HASHES_PROD_PARTITION_DIGEST_0_RESVAL = 32'h 0;
  parameter logic [31:0]
      OTP_CTRL_VENDOR_HASHES_PROD_PARTITION_DIGEST_0_VENDOR_HASHES_PROD_PARTITION_DIGEST_0_RESVAL =
      32'h 0;
  parameter logic [31:0] OTP_CTRL_VENDOR_HASHES_PROD_PARTITION_DIGEST_1_RESVAL = 32'h 0;
  parameter logic [31:0]
      OTP_CTRL_VENDOR_HASHES_PROD_PARTITION_DIGEST_1_VENDOR_HASHES_PROD_PARTITION_DIGEST_1_RESVAL =
      32'h 0;
  parameter logic [31:0] OTP_CTRL_VENDOR_REVOCATIONS_PROD_PARTITION_DIGEST_0_RESVAL = 32'h 0;
  parameter logic [31:0]
      OTP_CTRL_VENDOR_REVOCATIONS_PROD_PARTITION_DIGEST_0_VENDOR_REVOCATIONS_PROD_PARTITION_DIGEST_0_RESVAL =
      32'h 0;
  parameter logic [31:0] OTP_CTRL_VENDOR_REVOCATIONS_PROD_PARTITION_DIGEST_1_RESVAL = 32'h 0;
  parameter logic [31:0]
      OTP_CTRL_VENDOR_REVOCATIONS_PROD_PARTITION_DIGEST_1_VENDOR_REVOCATIONS_PROD_PARTITION_DIGEST_1_RESVAL =
      32'h 0;
  parameter logic [31:0] OTP_CTRL_VENDOR_SECRET_PROD_PARTITION_DIGEST_0_RESVAL = 32'h 0;
  parameter logic [31:0]
      OTP_CTRL_VENDOR_SECRET_PROD_PARTITION_DIGEST_0_VENDOR_SECRET_PROD_PARTITION_DIGEST_0_RESVAL =
      32'h 0;
  parameter logic [31:0] OTP_CTRL_VENDOR_SECRET_PROD_PARTITION_DIGEST_1_RESVAL = 32'h 0;
  parameter logic [31:0]
      OTP_CTRL_VENDOR_SECRET_PROD_PARTITION_DIGEST_1_VENDOR_SECRET_PROD_PARTITION_DIGEST_1_RESVAL =
      32'h 0;
  parameter logic [31:0] OTP_CTRL_VENDOR_NON_SECRET_PROD_PARTITION_DIGEST_0_RESVAL = 32'h 0;
  parameter logic [31:0]
      OTP_CTRL_VENDOR_NON_SECRET_PROD_PARTITION_DIGEST_0_VENDOR_NON_SECRET_PROD_PARTITION_DIGEST_0_RESVAL =
      32'h 0;
  parameter logic [31:0] OTP_CTRL_VENDOR_NON_SECRET_PROD_PARTITION_DIGEST_1_RESVAL = 32'h 0;
  parameter logic [31:0]
      OTP_CTRL_VENDOR_NON_SECRET_PROD_PARTITION_DIGEST_1_VENDOR_NON_SECRET_PROD_PARTITION_DIGEST_1_RESVAL =
      32'h 0;

  // Window parameters for core interface
  parameter logic [CoreAw-1:0] OTP_CTRL_SW_CFG_WINDOW_OFFSET = 15'h 4000;
  parameter int unsigned       OTP_CTRL_SW_CFG_WINDOW_SIZE   = 'h 4000;
  parameter int unsigned       OTP_CTRL_SW_CFG_WINDOW_IDX    = 0;

  // Register index for core interface
  typedef enum logic [31:0] {
    OTP_CTRL_INTR_STATE,
    OTP_CTRL_INTR_ENABLE,
    OTP_CTRL_INTR_TEST,
    OTP_CTRL_ALERT_TEST,
    OTP_CTRL_STATUS,
    OTP_CTRL_ERR_CODE_0,
    OTP_CTRL_ERR_CODE_1,
    OTP_CTRL_ERR_CODE_2,
    OTP_CTRL_ERR_CODE_3,
    OTP_CTRL_ERR_CODE_4,
    OTP_CTRL_ERR_CODE_5,
    OTP_CTRL_ERR_CODE_6,
    OTP_CTRL_ERR_CODE_7,
    OTP_CTRL_ERR_CODE_8,
    OTP_CTRL_ERR_CODE_9,
    OTP_CTRL_ERR_CODE_10,
    OTP_CTRL_ERR_CODE_11,
    OTP_CTRL_ERR_CODE_12,
    OTP_CTRL_ERR_CODE_13,
    OTP_CTRL_ERR_CODE_14,
    OTP_CTRL_ERR_CODE_15,
    OTP_CTRL_ERR_CODE_16,
    OTP_CTRL_ERR_CODE_17,
    OTP_CTRL_DIRECT_ACCESS_REGWEN,
    OTP_CTRL_DIRECT_ACCESS_CMD,
    OTP_CTRL_DIRECT_ACCESS_ADDRESS,
    OTP_CTRL_DIRECT_ACCESS_WDATA_0,
    OTP_CTRL_DIRECT_ACCESS_WDATA_1,
    OTP_CTRL_DIRECT_ACCESS_RDATA_0,
    OTP_CTRL_DIRECT_ACCESS_RDATA_1,
    OTP_CTRL_CHECK_TRIGGER_REGWEN,
    OTP_CTRL_CHECK_TRIGGER,
    OTP_CTRL_CHECK_REGWEN,
    OTP_CTRL_CHECK_TIMEOUT,
    OTP_CTRL_INTEGRITY_CHECK_PERIOD,
    OTP_CTRL_CONSISTENCY_CHECK_PERIOD,
    OTP_CTRL_SW_MANUF_PARTITION_READ_LOCK,
    OTP_CTRL_SVN_PARTITION_READ_LOCK,
    OTP_CTRL_VENDOR_TEST_PARTITION_READ_LOCK,
    OTP_CTRL_VENDOR_HASHES_MANUF_PARTITION_READ_LOCK,
    OTP_CTRL_VENDOR_HASHES_PROD_PARTITION_READ_LOCK,
    OTP_CTRL_VENDOR_REVOCATIONS_PROD_PARTITION_READ_LOCK,
    OTP_CTRL_VENDOR_NON_SECRET_PROD_PARTITION_READ_LOCK,
    OTP_CTRL_VENDOR_PK_HASH_VOLATILE_LOCK,
    OTP_CTRL_SECRET_TEST_UNLOCK_PARTITION_DIGEST_0,
    OTP_CTRL_SECRET_TEST_UNLOCK_PARTITION_DIGEST_1,
    OTP_CTRL_SECRET_MANUF_PARTITION_DIGEST_0,
    OTP_CTRL_SECRET_MANUF_PARTITION_DIGEST_1,
    OTP_CTRL_SECRET_PROD_PARTITION_0_DIGEST_0,
    OTP_CTRL_SECRET_PROD_PARTITION_0_DIGEST_1,
    OTP_CTRL_SECRET_PROD_PARTITION_1_DIGEST_0,
    OTP_CTRL_SECRET_PROD_PARTITION_1_DIGEST_1,
    OTP_CTRL_SECRET_PROD_PARTITION_2_DIGEST_0,
    OTP_CTRL_SECRET_PROD_PARTITION_2_DIGEST_1,
    OTP_CTRL_SECRET_PROD_PARTITION_3_DIGEST_0,
    OTP_CTRL_SECRET_PROD_PARTITION_3_DIGEST_1,
    OTP_CTRL_SW_MANUF_PARTITION_DIGEST_0,
    OTP_CTRL_SW_MANUF_PARTITION_DIGEST_1,
    OTP_CTRL_SECRET_LC_TRANSITION_PARTITION_DIGEST_0,
    OTP_CTRL_SECRET_LC_TRANSITION_PARTITION_DIGEST_1,
    OTP_CTRL_VENDOR_TEST_PARTITION_DIGEST_0,
    OTP_CTRL_VENDOR_TEST_PARTITION_DIGEST_1,
    OTP_CTRL_VENDOR_HASHES_MANUF_PARTITION_DIGEST_0,
    OTP_CTRL_VENDOR_HASHES_MANUF_PARTITION_DIGEST_1,
    OTP_CTRL_VENDOR_HASHES_PROD_PARTITION_DIGEST_0,
    OTP_CTRL_VENDOR_HASHES_PROD_PARTITION_DIGEST_1,
    OTP_CTRL_VENDOR_REVOCATIONS_PROD_PARTITION_DIGEST_0,
    OTP_CTRL_VENDOR_REVOCATIONS_PROD_PARTITION_DIGEST_1,
    OTP_CTRL_VENDOR_SECRET_PROD_PARTITION_DIGEST_0,
    OTP_CTRL_VENDOR_SECRET_PROD_PARTITION_DIGEST_1,
    OTP_CTRL_VENDOR_NON_SECRET_PROD_PARTITION_DIGEST_0,
    OTP_CTRL_VENDOR_NON_SECRET_PROD_PARTITION_DIGEST_1
  } otp_ctrl_core_id_e;

  // Register width information to check illegal writes for core interface
  parameter logic [3:0] OTP_CTRL_CORE_PERMIT [72] = '{
    4'b 0001, // index[ 0] OTP_CTRL_INTR_STATE
    4'b 0001, // index[ 1] OTP_CTRL_INTR_ENABLE
    4'b 0001, // index[ 2] OTP_CTRL_INTR_TEST
    4'b 0001, // index[ 3] OTP_CTRL_ALERT_TEST
    4'b 0111, // index[ 4] OTP_CTRL_STATUS
    4'b 0001, // index[ 5] OTP_CTRL_ERR_CODE_0
    4'b 0001, // index[ 6] OTP_CTRL_ERR_CODE_1
    4'b 0001, // index[ 7] OTP_CTRL_ERR_CODE_2
    4'b 0001, // index[ 8] OTP_CTRL_ERR_CODE_3
    4'b 0001, // index[ 9] OTP_CTRL_ERR_CODE_4
    4'b 0001, // index[10] OTP_CTRL_ERR_CODE_5
    4'b 0001, // index[11] OTP_CTRL_ERR_CODE_6
    4'b 0001, // index[12] OTP_CTRL_ERR_CODE_7
    4'b 0001, // index[13] OTP_CTRL_ERR_CODE_8
    4'b 0001, // index[14] OTP_CTRL_ERR_CODE_9
    4'b 0001, // index[15] OTP_CTRL_ERR_CODE_10
    4'b 0001, // index[16] OTP_CTRL_ERR_CODE_11
    4'b 0001, // index[17] OTP_CTRL_ERR_CODE_12
    4'b 0001, // index[18] OTP_CTRL_ERR_CODE_13
    4'b 0001, // index[19] OTP_CTRL_ERR_CODE_14
    4'b 0001, // index[20] OTP_CTRL_ERR_CODE_15
    4'b 0001, // index[21] OTP_CTRL_ERR_CODE_16
    4'b 0001, // index[22] OTP_CTRL_ERR_CODE_17
    4'b 0001, // index[23] OTP_CTRL_DIRECT_ACCESS_REGWEN
    4'b 0001, // index[24] OTP_CTRL_DIRECT_ACCESS_CMD
    4'b 0011, // index[25] OTP_CTRL_DIRECT_ACCESS_ADDRESS
    4'b 1111, // index[26] OTP_CTRL_DIRECT_ACCESS_WDATA_0
    4'b 1111, // index[27] OTP_CTRL_DIRECT_ACCESS_WDATA_1
    4'b 1111, // index[28] OTP_CTRL_DIRECT_ACCESS_RDATA_0
    4'b 1111, // index[29] OTP_CTRL_DIRECT_ACCESS_RDATA_1
    4'b 0001, // index[30] OTP_CTRL_CHECK_TRIGGER_REGWEN
    4'b 0001, // index[31] OTP_CTRL_CHECK_TRIGGER
    4'b 0001, // index[32] OTP_CTRL_CHECK_REGWEN
    4'b 1111, // index[33] OTP_CTRL_CHECK_TIMEOUT
    4'b 1111, // index[34] OTP_CTRL_INTEGRITY_CHECK_PERIOD
    4'b 1111, // index[35] OTP_CTRL_CONSISTENCY_CHECK_PERIOD
    4'b 0001, // index[36] OTP_CTRL_SW_MANUF_PARTITION_READ_LOCK
    4'b 0001, // index[37] OTP_CTRL_SVN_PARTITION_READ_LOCK
    4'b 0001, // index[38] OTP_CTRL_VENDOR_TEST_PARTITION_READ_LOCK
    4'b 0001, // index[39] OTP_CTRL_VENDOR_HASHES_MANUF_PARTITION_READ_LOCK
    4'b 0001, // index[40] OTP_CTRL_VENDOR_HASHES_PROD_PARTITION_READ_LOCK
    4'b 0001, // index[41] OTP_CTRL_VENDOR_REVOCATIONS_PROD_PARTITION_READ_LOCK
    4'b 0001, // index[42] OTP_CTRL_VENDOR_NON_SECRET_PROD_PARTITION_READ_LOCK
    4'b 1111, // index[43] OTP_CTRL_VENDOR_PK_HASH_VOLATILE_LOCK
    4'b 1111, // index[44] OTP_CTRL_SECRET_TEST_UNLOCK_PARTITION_DIGEST_0
    4'b 1111, // index[45] OTP_CTRL_SECRET_TEST_UNLOCK_PARTITION_DIGEST_1
    4'b 1111, // index[46] OTP_CTRL_SECRET_MANUF_PARTITION_DIGEST_0
    4'b 1111, // index[47] OTP_CTRL_SECRET_MANUF_PARTITION_DIGEST_1
    4'b 1111, // index[48] OTP_CTRL_SECRET_PROD_PARTITION_0_DIGEST_0
    4'b 1111, // index[49] OTP_CTRL_SECRET_PROD_PARTITION_0_DIGEST_1
    4'b 1111, // index[50] OTP_CTRL_SECRET_PROD_PARTITION_1_DIGEST_0
    4'b 1111, // index[51] OTP_CTRL_SECRET_PROD_PARTITION_1_DIGEST_1
    4'b 1111, // index[52] OTP_CTRL_SECRET_PROD_PARTITION_2_DIGEST_0
    4'b 1111, // index[53] OTP_CTRL_SECRET_PROD_PARTITION_2_DIGEST_1
    4'b 1111, // index[54] OTP_CTRL_SECRET_PROD_PARTITION_3_DIGEST_0
    4'b 1111, // index[55] OTP_CTRL_SECRET_PROD_PARTITION_3_DIGEST_1
    4'b 1111, // index[56] OTP_CTRL_SW_MANUF_PARTITION_DIGEST_0
    4'b 1111, // index[57] OTP_CTRL_SW_MANUF_PARTITION_DIGEST_1
    4'b 1111, // index[58] OTP_CTRL_SECRET_LC_TRANSITION_PARTITION_DIGEST_0
    4'b 1111, // index[59] OTP_CTRL_SECRET_LC_TRANSITION_PARTITION_DIGEST_1
    4'b 1111, // index[60] OTP_CTRL_VENDOR_TEST_PARTITION_DIGEST_0
    4'b 1111, // index[61] OTP_CTRL_VENDOR_TEST_PARTITION_DIGEST_1
    4'b 1111, // index[62] OTP_CTRL_VENDOR_HASHES_MANUF_PARTITION_DIGEST_0
    4'b 1111, // index[63] OTP_CTRL_VENDOR_HASHES_MANUF_PARTITION_DIGEST_1
    4'b 1111, // index[64] OTP_CTRL_VENDOR_HASHES_PROD_PARTITION_DIGEST_0
    4'b 1111, // index[65] OTP_CTRL_VENDOR_HASHES_PROD_PARTITION_DIGEST_1
    4'b 1111, // index[66] OTP_CTRL_VENDOR_REVOCATIONS_PROD_PARTITION_DIGEST_0
    4'b 1111, // index[67] OTP_CTRL_VENDOR_REVOCATIONS_PROD_PARTITION_DIGEST_1
    4'b 1111, // index[68] OTP_CTRL_VENDOR_SECRET_PROD_PARTITION_DIGEST_0
    4'b 1111, // index[69] OTP_CTRL_VENDOR_SECRET_PROD_PARTITION_DIGEST_1
    4'b 1111, // index[70] OTP_CTRL_VENDOR_NON_SECRET_PROD_PARTITION_DIGEST_0
    4'b 1111  // index[71] OTP_CTRL_VENDOR_NON_SECRET_PROD_PARTITION_DIGEST_1
  };

  ///////////////////////////////////////////////
  // Typedefs for registers for prim interface //
  ///////////////////////////////////////////////

  typedef struct packed {
    struct packed {
      logic [10:0] q;
    } field4;
    struct packed {
      logic [9:0] q;
    } field3;
    struct packed {
      logic        q;
    } field2;
    struct packed {
      logic        q;
    } field1;
    struct packed {
      logic        q;
    } field0;
  } otp_ctrl_reg2hw_csr0_reg_t;

  typedef struct packed {
    struct packed {
      logic [15:0] q;
    } field4;
    struct packed {
      logic        q;
    } field3;
    struct packed {
      logic [6:0]  q;
    } field2;
    struct packed {
      logic        q;
    } field1;
    struct packed {
      logic [6:0]  q;
    } field0;
  } otp_ctrl_reg2hw_csr1_reg_t;

  typedef struct packed {
    logic        q;
  } otp_ctrl_reg2hw_csr2_reg_t;

  typedef struct packed {
    struct packed {
      logic        q;
    } field8;
    struct packed {
      logic        q;
    } field7;
    struct packed {
      logic        q;
    } field6;
    struct packed {
      logic        q;
    } field5;
    struct packed {
      logic        q;
    } field4;
    struct packed {
      logic        q;
    } field3;
    struct packed {
      logic        q;
    } field2;
    struct packed {
      logic [9:0] q;
    } field1;
    struct packed {
      logic [2:0]  q;
    } field0;
  } otp_ctrl_reg2hw_csr3_reg_t;

  typedef struct packed {
    struct packed {
      logic        q;
    } field3;
    struct packed {
      logic        q;
    } field2;
    struct packed {
      logic        q;
    } field1;
    struct packed {
      logic [9:0] q;
    } field0;
  } otp_ctrl_reg2hw_csr4_reg_t;

  typedef struct packed {
    struct packed {
      logic [15:0] q;
    } field6;
    struct packed {
      logic        q;
    } field5;
    struct packed {
      logic        q;
    } field4;
    struct packed {
      logic [2:0]  q;
    } field3;
    struct packed {
      logic        q;
    } field2;
    struct packed {
      logic [1:0]  q;
    } field1;
    struct packed {
      logic [5:0]  q;
    } field0;
  } otp_ctrl_reg2hw_csr5_reg_t;

  typedef struct packed {
    struct packed {
      logic [15:0] q;
    } field3;
    struct packed {
      logic        q;
    } field2;
    struct packed {
      logic        q;
    } field1;
    struct packed {
      logic [9:0] q;
    } field0;
  } otp_ctrl_reg2hw_csr6_reg_t;

  typedef struct packed {
    struct packed {
      logic        q;
    } field3;
    struct packed {
      logic        q;
    } field2;
    struct packed {
      logic [2:0]  q;
    } field1;
    struct packed {
      logic [5:0]  q;
    } field0;
  } otp_ctrl_reg2hw_csr7_reg_t;

  typedef struct packed {
    struct packed {
      logic [2:0]  d;
      logic        de;
    } field0;
    struct packed {
      logic [9:0] d;
      logic        de;
    } field1;
    struct packed {
      logic        d;
      logic        de;
    } field2;
    struct packed {
      logic        d;
      logic        de;
    } field3;
    struct packed {
      logic        d;
      logic        de;
    } field4;
    struct packed {
      logic        d;
      logic        de;
    } field5;
    struct packed {
      logic        d;
      logic        de;
    } field6;
    struct packed {
      logic        d;
      logic        de;
    } field7;
    struct packed {
      logic        d;
      logic        de;
    } field8;
  } otp_ctrl_hw2reg_csr3_reg_t;

  typedef struct packed {
    struct packed {
      logic [5:0]  d;
      logic        de;
    } field0;
    struct packed {
      logic [1:0]  d;
      logic        de;
    } field1;
    struct packed {
      logic        d;
      logic        de;
    } field2;
    struct packed {
      logic [2:0]  d;
      logic        de;
    } field3;
    struct packed {
      logic        d;
      logic        de;
    } field4;
    struct packed {
      logic        d;
      logic        de;
    } field5;
    struct packed {
      logic [15:0] d;
      logic        de;
    } field6;
  } otp_ctrl_hw2reg_csr5_reg_t;

  typedef struct packed {
    struct packed {
      logic [5:0]  d;
      logic        de;
    } field0;
    struct packed {
      logic [2:0]  d;
      logic        de;
    } field1;
    struct packed {
      logic        d;
      logic        de;
    } field2;
    struct packed {
      logic        d;
      logic        de;
    } field3;
  } otp_ctrl_hw2reg_csr7_reg_t;

  // Register -> HW type for prim interface
  typedef struct packed {
    otp_ctrl_reg2hw_csr0_reg_t csr0; // [158:135]
    otp_ctrl_reg2hw_csr1_reg_t csr1; // [134:103]
    otp_ctrl_reg2hw_csr2_reg_t csr2; // [102:102]
    otp_ctrl_reg2hw_csr3_reg_t csr3; // [101:82]
    otp_ctrl_reg2hw_csr4_reg_t csr4; // [81:69]
    otp_ctrl_reg2hw_csr5_reg_t csr5; // [68:39]
    otp_ctrl_reg2hw_csr6_reg_t csr6; // [38:11]
    otp_ctrl_reg2hw_csr7_reg_t csr7; // [10:0]
  } otp_ctrl_prim_reg2hw_t;

  // HW -> register type for prim interface
  typedef struct packed {
    otp_ctrl_hw2reg_csr3_reg_t csr3; // [80:52]
    otp_ctrl_hw2reg_csr5_reg_t csr5; // [51:15]
    otp_ctrl_hw2reg_csr7_reg_t csr7; // [14:0]
  } otp_ctrl_prim_hw2reg_t;

  // Register offsets for prim interface
  parameter logic [PrimAw-1:0] OTP_CTRL_CSR0_OFFSET = 5'h 0;
  parameter logic [PrimAw-1:0] OTP_CTRL_CSR1_OFFSET = 5'h 4;
  parameter logic [PrimAw-1:0] OTP_CTRL_CSR2_OFFSET = 5'h 8;
  parameter logic [PrimAw-1:0] OTP_CTRL_CSR3_OFFSET = 5'h c;
  parameter logic [PrimAw-1:0] OTP_CTRL_CSR4_OFFSET = 5'h 10;
  parameter logic [PrimAw-1:0] OTP_CTRL_CSR5_OFFSET = 5'h 14;
  parameter logic [PrimAw-1:0] OTP_CTRL_CSR6_OFFSET = 5'h 18;
  parameter logic [PrimAw-1:0] OTP_CTRL_CSR7_OFFSET = 5'h 1c;

  // Register index for prim interface
  typedef enum logic [31:0] {
    OTP_CTRL_CSR0,
    OTP_CTRL_CSR1,
    OTP_CTRL_CSR2,
    OTP_CTRL_CSR3,
    OTP_CTRL_CSR4,
    OTP_CTRL_CSR5,
    OTP_CTRL_CSR6,
    OTP_CTRL_CSR7
  } otp_ctrl_prim_id_e;

  // Register width information to check illegal writes for prim interface
  parameter logic [3:0] OTP_CTRL_PRIM_PERMIT [8] = '{
    4'b 1111, // index[0] OTP_CTRL_CSR0
    4'b 1111, // index[1] OTP_CTRL_CSR1
    4'b 0001, // index[2] OTP_CTRL_CSR2
    4'b 0111, // index[3] OTP_CTRL_CSR3
    4'b 0011, // index[4] OTP_CTRL_CSR4
    4'b 1111, // index[5] OTP_CTRL_CSR5
    4'b 1111, // index[6] OTP_CTRL_CSR6
    4'b 0011  // index[7] OTP_CTRL_CSR7
  };

endpackage
