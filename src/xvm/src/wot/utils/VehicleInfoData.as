/**
 * ...
 * @author sirmax2
 */
class wot.utils.VehicleInfoData
{
    public static var data:Object = {
        // unknown
/*
        france_AMX_50_68t:              { level: 0,  type: "LT",  tiers: [ 1, 2 ],   premium: false, name: null },
        germany_G47_E10:                { level: 0,  type: "LT",  tiers: [ 1, 2 ],   premium: false, name: null },
        germany_Pz_IV_AusfGH:           { level: 0,  type: "LT",  tiers: [ 1, 2 ],   premium: false, name: null },
        germany_PzIV_capt:              { level: 0,  type: "LT",  tiers: [ 1, 2 ],   premium: false, name: null },
        germany_PzV_capt:               { level: 0,  type: "LT",  tiers: [ 1, 2 ],   premium: false, name: null },
        Lorraine_155_51:                { level: 0,  type: "LT",  tiers: [ 1, 2 ],   premium: false, name: null },
        Lorraine155_50:                 { level: 0,  type: "LT",  tiers: [ 1, 2 ],   premium: false, name: null },
        uk_Centurion_Mk3:               { level: 0,  type: "LT",  tiers: [ 1, 2 ],   premium: false, name: null },
        usa_A59_T88:                    { level: 0,  type: "LT",  tiers: [ 1, 2 ],   premium: false, name: null },
        usa_A74_T1_E6:                  { level: 0,  type: "LT",  tiers: [ 1, 2 ],   premium: false, name: null },
        usa_T23:                        { level: 0,  type: "LT",  tiers: [ 1, 2 ],   premium: false, name: null },
        ussr_62A:                       { level: 0,  type: "LT",  tiers: [ 1, 2 ],   premium: false, name: null },
        ussr_GAZ75:                     { level: 0,  type: "LT",  tiers: [ 1, 2 ],   premium: false, name: null },
        ussr_Observer:                  { level: 0,  type: "LT",  tiers: [ 1, 2 ],   premium: false, name: null },
        ussr_R80_KV1:                   { level: 0,  type: "LT",  tiers: [ 1, 2 ],   premium: false, name: null },
        ussr_RBT_5:                     { level: 0,  type: "LT",  tiers: [ 1, 2 ],   premium: false, name: null },
        ussr_SU101:                     { level: 0,  type: "LT",  tiers: [ 1, 2 ],   premium: false, name: null },
        ussr_T_24:                      { level: 0,  type: "LT",  tiers: [ 1, 2 ],   premium: false, name: null },
        ussr_T_70:                      { level: 0,  type: "LT",  tiers: [ 1, 2 ],   premium: false, name: null },

france-FCM_50t.png
uk-GB01_Medium_Mark_I.png
uk-GB03_Cruiser_Mk_I.png
uk-GB04_Valentine.png
uk-GB05_Vickers_Medium_Mk_II.png
uk-GB06_Vickers_Medium_Mk_III.png
uk-GB07_Matilda.png
uk-GB08_Churchill_I.png
uk-GB09_Churchill_VII.png
uk-GB10_Black_Prince.png
uk-GB11_Caernarvon.png
uk-GB12_Conqueror.png
uk-GB13_FV215b.png
uk-GB20_Crusader.png
uk-GB21_Cromwell.png
uk-GB22_Comet.png
uk-GB23_Centurion.png
uk-GB24_Centurion_Mk3.png
uk-GB58_Cruiser_Mk_III.png
uk-GB59_Cruiser_Mk_IV.png
uk-GB60_Covenanter.png
uk-GB63_TOG_II.png
uk-GB69_Cruiser_Mk_II.png
uk-GB70_FV4202_105.png
uk-GB71_AT_15A.png
usa-T1_E6.png
*/

        // level 1
        germany_Ltraktor:               { level: 1,  type: "LT",  tiers: [ 1, 2 ],   premium: false, name: null },
        ussr_MS_1:                      { level: 1,  type: "LT",  tiers: [ 1, 2 ],   premium: false, name: null },
        france_RenaultFT:               { level: 1,  type: "LT",  tiers: [ 1, 2 ],   premium: false, name: null },
        usa_T1_Cunningham:              { level: 1,  type: "LT",  tiers: [ 1, 2 ],   premium: false, name: null },

        // level 2
        ussr_BT_2:                      { level: 2,  type: "LT",  tiers: [ 2, 3 ],   premium: false, name: null },
        france_D1:                      { level: 2,  type: "LT",  tiers: [ 2, 3 ],   premium: false, name: null },
        germany_H39_captured:           { level: 2,  type: "LT",  tiers: [ 2, 3 ],   premium: true,  name: null },
        france_Hotchkiss_H35:           { level: 2,  type: "LT",  tiers: [ 2, 3 ],   premium: false, name: null },
        usa_M2_lt:                      { level: 2,  type: "LT",  tiers: [ 2, 3 ],   premium: false, name: null },
        germany_Pz35t:                  { level: 2,  type: "LT",  tiers: [ 2, 3 ],   premium: false, name: null },
        germany_PzII:                   { level: 2,  type: "LT",  tiers: [ 2, 3 ],   premium: false, name: null },
        ussr_T_26:                      { level: 2,  type: "LT",  tiers: [ 2, 3 ],   premium: false, name: null },
        ussr_Tetrarch_LL:               { level: 2,  type: "LT",  tiers: [ 2, 3 ],   premium: true,  name: null },
        usa_T2_med:                     { level: 2,  type: "MT",  tiers: [ 2, 3 ],   premium: false, name: null },
        france_RenaultBS:               { level: 2,  type: "SPG", tiers: [ 3, 4 ],   premium: false, name: null },
        ussr_SU_18:                     { level: 2,  type: "SPG", tiers: [ 3, 4 ],   premium: false, name: null },
        usa_T57:                        { level: 2,  type: "SPG", tiers: [ 3, 4 ],   premium: false, name: null },
        ussr_AT_1:                      { level: 2,  type: "TD",  tiers: [ 2, 3 ],   premium: false, name: null },
        germany_PanzerJager_I:          { level: 2,  type: "TD",  tiers: [ 2, 3 ],   premium: false, name: null },
        usa_T18:                        { level: 2,  type: "TD",  tiers: [ 2, 3 ],   premium: false, name: null },
        france_RenaultFT_AC:            { level: 2,  type: "TD",  tiers: [ 2, 3 ],   premium: false, name: null },

        // level 3
        france_AMX38:                   { level: 3,  type: "LT",  tiers: [ 3, 5 ],   premium: false, name: null },
        ussr_BT_7:                      { level: 3,  type: "LT",  tiers: [ 3, 5 ],   premium: false, name: null },
        usa_M22_Locust:                 { level: 3,  type: "LT",  tiers: [ 3, 5 ],   premium: true,  name: null },
        usa_M3_Stuart:                  { level: 3,  type: "LT",  tiers: [ 3, 5 ],   premium: false, name: null },
        usa_MTLS_1G14:                  { level: 3,  type: "LT",  tiers: [ 3, 5 ],   premium: true,  name: null },
        germany_Pz38t:                  { level: 3,  type: "LT",  tiers: [ 3, 5 ],   premium: false, name: null },
        germany_PzIII_A:                { level: 3,  type: "LT",  tiers: [ 3, 5 ],   premium: false, name: null },
        germany_PzII_Luchs:             { level: 3,  type: "LT",  tiers: [ 3, 5 ],   premium: false, name: null },
        germany_T_15:                   { level: 3,  type: "LT",  tiers: [ 3, 5 ],   premium: true,  name: null },
        ussr_T_46:                      { level: 3,  type: "LT",  tiers: [ 3, 5 ],   premium: false, name: null },
        france_D2:                      { level: 3,  type: "MT",  tiers: [ 3, 5 ],   premium: false, name: null },
        usa_M2_med:                     { level: 3,  type: "MT",  tiers: [ 3, 5 ],   premium: false, name: null },
        germany_S35_captured:           { level: 3,  type: "MT",  tiers: [ 3, 5 ],   premium: true,  name: null },
        usa_M37:                        { level: 3,  type: "SPG", tiers: [ 4, 6 ],   premium: false, name: null },
        ussr_SU_26:                     { level: 3,  type: "SPG", tiers: [ 4, 6 ],   premium: false, name: null },
        germany_Sturmpanzer_II:         { level: 3,  type: "SPG", tiers: [ 4, 6 ],   premium: false, name: null },
        germany_Wespe:                  { level: 3,  type: "SPG", tiers: [ 4, 6 ],   premium: false, name: null },
        france_Lorraine39_L_AM:         { level: 3,  type: "SPG", tiers: [ 4, 6 ],   premium: false, name: null },
        france_FCM_36Pak40:             { level: 3,  type: "TD",  tiers: [ 3, 5 ],   premium: true,  name: null },
        germany_G20_Marder_II:          { level: 3,  type: "TD",  tiers: [ 3, 5 ],   premium: false, name: null },
        ussr_SU_76:                     { level: 3,  type: "TD",  tiers: [ 3, 5 ],   premium: false, name: null },
        usa_T82:                        { level: 3,  type: "TD",  tiers: [ 3, 5 ],   premium: false, name: null },
        france_RenaultUE57:             { level: 3,  type: "TD",  tiers: [ 3, 5 ],   premium: false, name: null },

        // level 4
        ussr_A_20:                      { level: 4,  type: "LT",  tiers: [ 4, 8 ],   premium: false, name: null },
        usa_M5_Stuart:                  { level: 4,  type: "LT",  tiers: [ 4, 8 ],   premium: false, name: null },
        germany_Pz38_NA:                { level: 4,  type: "LT",  tiers: [ 4, 8 ],   premium: false, name: null },
        usa_M3_Grant:                   { level: 4,  type: "MT",  tiers: [ 4, 6 ],   premium: false, name: null },
        germany_PzIII:                  { level: 4,  type: "MT",  tiers: [ 4, 6 ],   premium: false, name: null },
        ussr_T_28:                      { level: 4,  type: "MT",  tiers: [ 4, 6 ],   premium: false, name: null },
        france_B1:                      { level: 4,  type: "HT",  tiers: [ 4, 5 ],   premium: false, name: null },
        germany_Grille:                 { level: 4,  type: "SPG", tiers: [ 5, 8 ],   premium: false, name: null },
        usa_M7_Priest:                  { level: 4,  type: "SPG", tiers: [ 5, 8 ],   premium: false, name: null },
        ussr_SU_5:                      { level: 4,  type: "SPG", tiers: [ 5, 8 ],   premium: false, name: null },
        france_AMX_105AM:               { level: 4,  type: "SPG", tiers: [ 5, 8 ],   premium: false, name: null },
        ussr_GAZ_74b:                   { level: 4,  type: "TD",  tiers: [ 4, 6 ],   premium: false, name: null },
        germany_Hetzer:                 { level: 4,  type: "TD",  tiers: [ 4, 6 ],   premium: false, name: null },
        usa_M8A1:                       { level: 4,  type: "TD",  tiers: [ 4, 6 ],   premium: false, name: null },
        usa_T40:                        { level: 4,  type: "TD",  tiers: [ 4, 6 ],   premium: false, name: null },
        france_Somua_Sau_40:            { level: 4,  type: "TD",  tiers: [ 4, 6 ],   premium: false, name: null },

        // level 5
        usa_M24_Chaffee:                { level: 5,  type: "LT",  tiers: [ 7, 12 ],  premium: false, name: null },
        ussr_T_50_2:                    { level: 5,  type: "LT",  tiers: [ 7, 12 ],  premium: false, name: null },
        germany_VK2801:                 { level: 5,  type: "LT",  tiers: [ 7, 12 ],  premium: false, name: null },
        usa_M4_Sherman:                 { level: 5,  type: "MT",  tiers: [ 5, 7 ],   premium: false, name: null },
        usa_M7_med:                     { level: 5,  type: "MT",  tiers: [ 5, 7 ],   premium: false, name: null },
        germany_PzIII_IV:               { level: 5,  type: "MT",  tiers: [ 5, 7 ],   premium: false, name: null },
        germany_PzIV:                   { level: 5,  type: "MT",  tiers: [ 5, 7 ],   premium: false, name: null },
        usa_Ram_II:                     { level: 5,  type: "MT",  tiers: [ 5, 7 ],   premium: true,  name: null },
        germany_T_25:                   { level: 5,  type: "MT",  tiers: [ 5, 7 ],   premium: true,  name: null },
        ussr_T_34:                      { level: 5,  type: "MT",  tiers: [ 5, 7 ],   premium: false, name: null },
        france_BDR_G1B:                 { level: 5,  type: "HT",  tiers: [ 5, 7 ],   premium: false, name: null },
        usa_T1_hvy:                     { level: 5,  type: "HT",  tiers: [ 5, 7 ],   premium: false, name: null },
        ussr_KV1:                       { level: 5,  type: "HT",  tiers: [ 5, 7 ],   premium: false, name: null },
        ussr_KV_220_action:             { level: 5,  type: "HT",  tiers: [ 5, 7 ],   premium: true,  name: null },
        germany_Hummel:                 { level: 5,  type: "SPG", tiers: [ 7, 9 ],   premium: false, name: null },
        usa_M41:                        { level: 5,  type: "SPG", tiers: [ 7, 9 ],   premium: false, name: null },
        ussr_SU_8:                      { level: 5,  type: "SPG", tiers: [ 7, 9 ],   premium: false, name: null },
        france_AMX_13F3AM:              { level: 5,  type: "SPG", tiers: [ 7, 9 ],   premium: false, name: null },
        usa_M10_Wolverine:              { level: 5,  type: "TD",  tiers: [ 5, 7 ],   premium: false, name: null },
        ussr_SU_85:                     { level: 5,  type: "TD",  tiers: [ 5, 7 ],   premium: false, name: null },
        ussr_SU_85I:                    { level: 5,  type: "TD",  tiers: [ 5, 7 ],   premium: true,  name: null },
        germany_StuGIII:                { level: 5,  type: "TD",  tiers: [ 5, 7 ],   premium: false, name: null },
        usa_T49:                        { level: 5,  type: "TD",  tiers: [ 5, 7 ],   premium: false, name: null },
        france_S_35CA:                  { level: 5,  type: "TD",  tiers: [ 5, 7 ],   premium: false, name: null },

        // level 6
        france_AMX_12t:                 { level: 6,  type: "LT",  tiers: [ 7, 11 ],  premium: false, name: null },
        usa_M4A3E8_Sherman:             { level: 6,  type: "MT",  tiers: [ 6, 8 ],   premium: false, name: null },
        usa_Sherman_Jumbo:              { level: 6,  type: "MT",  tiers: [ 6, 8 ],   premium: false, name: null },
        ussr_T_34_85:                   { level: 6,  type: "MT",  tiers: [ 6, 8 ],   premium: false, name: null },
        germany_VK3001H:                { level: 6,  type: "MT",  tiers: [ 6, 8 ],   premium: false, name: null },
        germany_VK3001P:                { level: 6,  type: "MT",  tiers: [ 6, 8 ],   premium: false, name: null },
        germany_VK3601H:                { level: 6,  type: "MT",  tiers: [ 6, 8 ],   premium: false, name: null },
        germany_PzIV_schmalturm:        { level: 6,  type: "MT",  tiers: [ 6, 8 ],   premium: true,  name: null },
        france_ARL_44:                  { level: 6,  type: "HT",  tiers: [ 6, 8 ],   premium: false, name: null },
        ussr_KV2:                       { level: 6,  type: "HT",  tiers: [ 6, 8 ],   premium: false, name: null },
        ussr_KV_1s:                     { level: 6,  type: "HT",  tiers: [ 6, 8 ],   premium: false, name: null },
        usa_M6:                         { level: 6,  type: "HT",  tiers: [ 6, 8 ],   premium: false, name: null },
        ussr_T150:                      { level: 6,  type: "HT",  tiers: [ 6, 8 ],   premium: false, name: null },
        germany_G_Panther:              { level: 6,  type: "SPG", tiers: [ 9, 10 ],  premium: false, name: null },
        usa_M12:                        { level: 6,  type: "SPG", tiers: [ 9, 10 ],  premium: false, name: null },
        ussr_SU_14:                     { level: 6,  type: "SPG", tiers: [ 9, 10 ],  premium: false, name: null },
        ussr_S_51:                      { level: 6,  type: "SPG", tiers: [ 9, 10 ],  premium: false, name: null },
        france_Lorraine155_50:          { level: 6,  type: "SPG", tiers: [ 9, 10 ],  premium: false, name: null },
        germany_JagdPzIV:               { level: 6,  type: "TD",  tiers: [ 6, 8 ],   premium: false, name: null },
        usa_M18_Hellcat:                { level: 6,  type: "TD",  tiers: [ 6, 8 ],   premium: false, name: null },
        usa_M36_Slagger:                { level: 6,  type: "TD",  tiers: [ 6, 8 ],   premium: false, name: null },
        ussr_SU_100:                    { level: 6,  type: "TD",  tiers: [ 6, 8 ],   premium: false, name: null },
        france_ARL_V39:                 { level: 6,  type: "TD",  tiers: [ 6, 8 ],   premium: false, name: null },
        germany_DickerMax:              { level: 6,  type: "TD",  tiers: [ 6, 8 ],   premium: false, name: null },

        // level 7
        france_AMX_13_75:               { level: 7,  type: "LT",  tiers: [ 8, 11 ],  premium: false, name: null },
        ussr_KV_13:                     { level: 7,  type: "MT",  tiers: [ 7, 9 ],   premium: false, name: null },
        germany_PzV:                    { level: 7,  type: "MT",  tiers: [ 7, 9 ],   premium: false, name: null },
        usa_T20:                        { level: 7,  type: "MT",  tiers: [ 7, 9 ],   premium: false, name: null },
        ussr_T_43:                      { level: 7,  type: "MT",  tiers: [ 7, 9 ],   premium: false, name: null },
        germany_VK3002DB:               { level: 7,  type: "MT",  tiers: [ 7, 9 ],   premium: false, name: null },
        germany_Panther_M10:            { level: 7,  type: "MT",  tiers: [ 7, 9 ],   premium: true,  name: null },
        france_AMX_M4_1945:             { level: 7,  type: "HT",  tiers: [ 7, 9 ],   premium: false, name: null },
        ussr_IS:                        { level: 7,  type: "HT",  tiers: [ 7, 9 ],   premium: false, name: null },
        ussr_KV_3:                      { level: 7,  type: "HT",  tiers: [ 7, 9 ],   premium: false, name: null },
        germany_PzVI:                   { level: 7,  type: "HT",  tiers: [ 7, 9 ],   premium: false, name: null },
        germany_PzVI_Tiger_P:           { level: 7,  type: "HT",  tiers: [ 7, 9 ],   premium: false, name: null },
        usa_T29:                        { level: 7,  type: "HT",  tiers: [ 7, 9 ],   premium: false, name: null },
        germany_G_Tiger:                { level: 7,  type: "SPG", tiers: [ 10, 11 ], premium: false, name: null },
        usa_M40M43:                     { level: 7,  type: "SPG", tiers: [ 10, 11 ], premium: false, name: null },
        ussr_Object_212:                { level: 7,  type: "SPG", tiers: [ 10, 11 ], premium: false, name: null },
        france_Lorraine155_51:          { level: 7,  type: "SPG", tiers: [ 10, 11 ], premium: false, name: null },
        france_AMX_AC_Mle1946:          { level: 7,  type: "TD",  tiers: [ 7, 9 ],   premium: false, name: null },
        germany_JagdPanther:            { level: 7,  type: "TD",  tiers: [ 7, 9 ],   premium: false, name: null },
        usa_T25_2:                      { level: 7,  type: "TD",  tiers: [ 7, 9 ],   premium: false, name: null },
        usa_T25_AT:                     { level: 7,  type: "TD",  tiers: [ 7, 9 ],   premium: false, name: null },
        ussr_SU_152:                    { level: 7,  type: "TD",  tiers: [ 7, 9 ],   premium: false, name: null },
        ussr_SU100M1:                   { level: 7,  type: "TD",  tiers: [ 7, 9 ],   premium: false, name: null },
        ussr_SU122_44:                  { level: 7,  type: "TD",  tiers: [ 7, 9 ],   premium: true,  name: null },

        // level 8
        france_AMX_13_90:               { level: 8,  type: "LT",  tiers: [ 9, 12 ],  premium: false, name: null },
        germany_Panther_II:             { level: 8,  type: "MT",  tiers: [ 8, 10 ],  premium: false, name: null },
        usa_Pershing:                   { level: 8,  type: "MT",  tiers: [ 8, 10 ],  premium: false, name: null },
        ussr_T_44:                      { level: 8,  type: "MT",  tiers: [ 8, 10 ],  premium: false, name: null },
        france_AMX_50_100:              { level: 8,  type: "HT",  tiers: [ 8, 10 ],  premium: false, name: null },
        china_Ch03_WZ_111:              { level: 8,  type: "HT",  tiers: [ 8, 10 ],  premium: true,  name: null },
        ussr_IS_3:                      { level: 8,  type: "HT",  tiers: [ 8, 10 ],  premium: false, name: null },
        ussr_KV4:                       { level: 8,  type: "HT",  tiers: [ 8, 10 ],  premium: false, name: null },
        germany_PzVIB_Tiger_II:         { level: 8,  type: "HT",  tiers: [ 8, 10 ],  premium: false, name: null },
        germany_Lowe:                   { level: 8,  type: "HT",  tiers: [ 8, 10 ],  premium: true,  name: null },
        usa_M6A2E1:                     { level: 8,  type: "HT",  tiers: [ 8, 10 ],  premium: true,  name: null },
        usa_T32:                        { level: 8,  type: "HT",  tiers: [ 8, 10 ],  premium: false, name: null },
        usa_T34_hvy:                    { level: 8,  type: "HT",  tiers: [ 8, 10 ],  premium: true,  name: null },
        germany_VK4502A:                { level: 8,  type: "HT",  tiers: [ 8, 10 ],  premium: false, name: null },
        germany_G_E:                    { level: 8,  type: "SPG", tiers: [ 11, 12 ], premium: false, name: null },
        ussr_Object_261:                { level: 8,  type: "SPG", tiers: [ 11, 12 ], premium: false, name: null },
        usa_T92:                        { level: 8,  type: "SPG", tiers: [ 11, 12 ], premium: false, name: null },
        france_Bat_Chatillon155:        { level: 8,  type: "SPG", tiers: [ 11, 12 ], premium: false, name: null },
        france_AMX_AC_Mle1948:          { level: 8,  type: "TD",  tiers: [ 8, 10 ],  premium: false, name: null },
        germany_Ferdinand:              { level: 8,  type: "TD",  tiers: [ 8, 10 ],  premium: false, name: null },
        germany_JagdPantherII:          { level: 8,  type: "TD",  tiers: [ 8, 10 ],  premium: false, name: null },
        usa_T28:                        { level: 8,  type: "TD",  tiers: [ 8, 10 ],  premium: false, name: null },
        usa_T28_Prototype:              { level: 8,  type: "TD",  tiers: [ 8, 10 ],  premium: false, name: null },
        ussr_ISU_152:                   { level: 8,  type: "TD",  tiers: [ 8, 10 ],  premium: false, name: null },
        ussr_SU_101:                    { level: 8,  type: "TD",  tiers: [ 8, 10 ],  premium: false, name: null },

        // level 9
        france_Lorraine40t:             { level: 9,  type: "MT",  tiers: [ 9, 11 ],  premium: false, name: null },
        germany_E_50:                   { level: 9,  type: "MT",  tiers: [ 9, 11 ],  premium: false, name: null },
        usa_M46_Patton:                 { level: 9,  type: "MT",  tiers: [ 9, 11 ],  premium: false, name: null },
        ussr_T_54:                      { level: 9,  type: "MT",  tiers: [ 9, 11 ],  premium: false, name: null },
        france_AMX_50_120:              { level: 9,  type: "HT",  tiers: [ 9, 11 ],  premium: false, name: null },
        germany_E_75:                   { level: 9,  type: "HT",  tiers: [ 9, 11 ],  premium: false, name: null },
        ussr_IS8:                       { level: 9,  type: "HT",  tiers: [ 9, 11 ],  premium: false, name: null },
        usa_M103:                       { level: 9,  type: "HT",  tiers: [ 9, 11 ],  premium: false, name: null },
        ussr_ST_I:                      { level: 9,  type: "HT",  tiers: [ 9, 11 ],  premium: false, name: null },
        germany_VK4502P:                { level: 9,  type: "HT",  tiers: [ 9, 11 ],  premium: false, name: null },
        france_AMX50_Foch:              { level: 9,  type: "TD",  tiers: [ 9, 11 ],  premium: false, name: null },
        germany_JagdTiger:              { level: 9,  type: "TD",  tiers: [ 9, 11 ],  premium: false, name: null },
        usa_T30:                        { level: 9,  type: "TD",  tiers: [ 9, 11 ],  premium: false, name: null },
        usa_T95:                        { level: 9,  type: "TD",  tiers: [ 9, 11 ],  premium: false, name: null },
        ussr_Object_704:                { level: 9,  type: "TD",  tiers: [ 9, 11 ],  premium: false, name: null },
        ussr_SU122_54:                  { level: 9,  type: "TD",  tiers: [ 9, 11 ],  premium: false, name: null },

        // level 10
        france_Bat_Chatillon25t:        { level: 10, type: "MT",  tiers: [ 10, 12 ], premium: false, name: null },
        germany_E50_Ausf_M:             { level: 10, type: "MT",  tiers: [ 10, 12 ], premium: false, name: null },
        usa_M48A1:                      { level: 10, type: "MT",  tiers: [ 10, 12 ], premium: false, name: null },
        ussr_T62A:                      { level: 10, type: "MT",  tiers: [ 10, 12 ], premium: false, name: null },
        germany_E_100:                  { level: 10, type: "HT",  tiers: [ 10, 12 ], premium: false, name: null },
        france_F10_AMX_50B:             { level: 10, type: "HT",  tiers: [ 10, 12 ], premium: false, name: null },
        ussr_IS_4:                      { level: 10, type: "HT",  tiers: [ 10, 12 ], premium: false, name: null },
        ussr_IS_7:                      { level: 10, type: "HT",  tiers: [ 10, 12 ], premium: false, name: null },
        germany_Maus:                   { level: 10, type: "HT",  tiers: [ 10, 12 ], premium: false, name: null },
        usa_T110:                       { level: 10, type: "HT",  tiers: [ 10, 12 ], premium: false, name: null },
        france_AMX_50Fosh_155:          { level: 10, type: "TD",  tiers: [ 10, 12 ], premium: false, name: null },
        germany_JagdPz_E100:            { level: 10, type: "TD",  tiers: [ 10, 12 ], premium: false, name: null },
        usa_T110E3:                     { level: 10, type: "TD",  tiers: [ 10, 12 ], premium: false, name: null },
        usa_T110E4:                     { level: 10, type: "TD",  tiers: [ 10, 12 ], premium: false, name: null },
        ussr_Object268:                 { level: 10, type: "TD",  tiers: [ 10, 12 ], premium: false, name: null },
        ussr_Object263:                 { level: 10, type: "TD",  tiers: [ 10, 12 ], premium: false, name: null },

        // non-standard
        germany_Bison_I:                { level: 2,  type: "SPG", tiers: [ 3, 5 ],   premium: false, name: null },
        usa_T2_lt:                      { level: 2,  type: "LT",  tiers: [ 2, 4 ],   premium: true,  name: null },
        ussr_M3_Stuart_LL:              { level: 3,  type: "LT",  tiers: [ 3, 4 ],   premium: true,  name: null },
        ussr_BT_SV:                     { level: 3,  type: "LT",  tiers: [ 3, 4 ],   premium: true,  name: null },
        germany_PzII_J:                 { level: 3,  type: "LT",  tiers: [ 3, 4 ],   premium: true,  name: null },
        ussr_T_127:                     { level: 3,  type: "LT",  tiers: [ 3, 4 ],   premium: true,  name: null },
        ussr_T_50:                      { level: 4,  type: "LT",  tiers: [ 5, 9 ],   premium: false, name: null },
        germany_VK1602:                 { level: 4,  type: "LT",  tiers: [ 5, 9 ],   premium: false, name: null },
        ussr_Valentine_LL:              { level: 4,  type: "LT",  tiers: [ 4, 4 ],   premium: true,  name: null },
        germany_B_1bis_captured:        { level: 4,  type: "HT",  tiers: [ 4, 4 ],   premium: true,  name: null },
        ussr_A_32:                      { level: 4,  type: "MT",  tiers: [ 4, 5 ],   premium: true,  name: null },
        france_AMX40:                   { level: 4,  type: "LT",  tiers: [ 4, 6 ],   premium: false, name: null },
        france__105_leFH18B2:           { level: 4,  type: "SPG", tiers: [ 5, 7 ],   premium: true,  name: null },
        france_ELC_AMX:                 { level: 5,  type: "LT",  tiers: [ 6, 9 ],   premium: false, name: null },
        germany_PzIV_Hydro:             { level: 5,  type: "MT",  tiers: [ 5, 6 ],   premium: true,  name: null },
        ussr_Churchill_LL:              { level: 5,  type: "HT",  tiers: [ 5, 6 ],   premium: true,  name: null },
        ussr_Matilda_II_LL:             { level: 5,  type: "MT",  tiers: [ 5, 6 ],   premium: true,  name: null },
        usa_T14:                        { level: 5,  type: "HT",  tiers: [ 5, 6 ],   premium: true,  name: null },
        ussr_KV_220:                    { level: 5,  type: "HT",  tiers: [ 5, 6 ],   premium: true,  name: null },
        usa_M4A2E4:                     { level: 5,  type: "MT",  tiers: [ 5, 6 ],   premium: true,  name: null },
        uk_GB68_Matilda_Black_Prince:   { level: 5,  type: "MT",  tiers: [ 5, 6 ],   premium: false, name: null },
        germany_PzV_PzIV:               { level: 6,  type: "MT",  tiers: [ 6, 7 ],   premium: true,  name: null },
        germany_PzV_PzIV_ausf_Alfa:     { level: 6,  type: "MT",  tiers: [ 6, 7 ],   premium: true,  name: null },
        china_Ch02_Type62:              { level: 6,  type: "LT",  tiers: [ 7, 10 ],  premium: true,  name: null },
        ussr_KV_5:                      { level: 8,  type: "HT",  tiers: [ 8, 9 ],   premium: true,  name: null },
        ussr_Object252:                 { level: 8,  type: "HT",  tiers: [ 8, 9 ],   premium: true,  name: null },
        usa_T26_E4_SuperPershing:       { level: 8,  type: "MT",  tiers: [ 8, 9 ],   premium: true,  name: null },
        china_Ch01_Type59:              { level: 8,  type: "MT",  tiers: [ 8, 9 ],   premium: true,  name: null },
        germany_JagdTiger_SdKfz_185:    { level: 8,  type: "TD",  tiers: [ 8, 9 ],   premium: true,  name: null }
    }
}
