.class public Lcom/feelingk/lguiab/common/Defines;
.super Ljava/lang/Object;
.source "Defines.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/feelingk/lguiab/common/Defines$DLG_STATE;,
        Lcom/feelingk/lguiab/common/Defines$IAP_URI;,
        Lcom/feelingk/lguiab/common/Defines$IF_HTTP_RESPONSE;,
        Lcom/feelingk/lguiab/common/Defines$IF_SOCKET_RESPONSE;,
        Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_ERROR;,
        Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_GATEWAY_ERROR_CODE;,
        Lcom/feelingk/lguiab/common/Defines$KOR_TELECOM_INFO;,
        Lcom/feelingk/lguiab/common/Defines$KOR_TELECOM_TYPE;,
        Lcom/feelingk/lguiab/common/Defines$USIM_CHECK_LIB_FLOW;,
        Lcom/feelingk/lguiab/common/Defines$XML_SERVICE_NAME;
    }
.end annotation


# static fields
.field public static final DEBUGGABLE_LOG_ENABLED:Z = false

.field public static final DEBUGGABLE_TEST_FLAG:Z = false

.field public static final HTTP_CONNECTION_ERROR_CODE:I = 0x2329

.field public static final HTTP_PROTOCOL_ERROR_CODE:I = 0x232a

.field public static final HTTP_SERVER_ERROR_CODE:I = 0x1f7

.field public static final HTTP_TIMEOUT:I = 0x2710

.field public static final IAB_FLOW_END_CODE:I = 0x232b

.field public static final IAP_PROTOCOL_VERSION:Ljava/lang/String; = "IAP01.00"

.field public static final IF_SERVER_HOST:Ljava/lang/String; = null

.field public static final IF_SERVER_PORT:I = 0x1388

.field public static final IF_SERVER_PORT_BP:I = 0x138a

.field public static final MWLAN_ACTION:Ljava/lang/String; = null

.field public static final MWLAN_API_DISCONNECT:Ljava/lang/String; = "disconnectMwlan"

.field public static final MWLAN_API_GET_ERROR:Ljava/lang/String; = "getMwlanConnError"

.field public static final MWLAN_API_GET_STATE:Ljava/lang/String; = "getMwlanConnState"

.field public static final MWLAN_API_IS_CONNECTED:Ljava/lang/String; = "isMwlanConnected"

.field public static final MWLAN_API_START:Ljava/lang/String; = "startConnectMwlan"

.field public static final MWLAN_CONNECT_FAIL_CODE:I = 0x232c

.field public static final MWLAN_CONTENT_URI:Ljava/lang/String; = null

.field public static final NETWORK_TYPE_3G:Ljava/lang/String; = "G"

.field public static final NETWORK_TYPE_4G:Ljava/lang/String; = "L"

.field public static final NETWORK_TYPE_WIFI:Ljava/lang/String; = "D"

.field public static final PACKET_HEADER_SIZE:I = 0xc

.field public static final PARITY_BIT:B = 0x17t

.field public static final SDK_PERMISSIONS:[Ljava/lang/String; = null

.field public static final SDK_VERSION_INFO:Ljava/lang/String; = null

.field public static final SOCKET_TIMEOUT:I = 0x2710

.field public static final TAG:Ljava/lang/String; = "LGU_IAB"

.field public static URI_AUTH_ALL:Ljava/lang/String; = null

.field public static final URI_AUTH_ALL_POSTURL:Ljava/lang/String; = "/if/authAll.app"

.field public static URI_BUY_CHECK:Ljava/lang/String; = null

.field public static final URI_BUY_CHECK_POSTURL:Ljava/lang/String; = "/if/buyCheck.app"

.field public static URI_BUY_CONFIRM:Ljava/lang/String; = null

.field public static final URI_BUY_CONFIRM_POSTURL:Ljava/lang/String; = "/if/buyConfirm.app"

.field public static URI_FEE_CHARGING:Ljava/lang/String; = null

.field public static final URI_FEE_CHARGING_POSTURL:Ljava/lang/String; = "/if/feeCharging.app"

.field public static URI_PRODUCT_INFO:Ljava/lang/String; = null

.field public static final URI_PRODUCT_INFO_POSTURL:Ljava/lang/String; = "/if/productInfo.app"

.field public static URI_USER_AUTH:Ljava/lang/String; = null

.field public static final URI_USER_AUTH_POSTURL:Ljava/lang/String; = "/if/userAuth.app"

.field public static URI_USE_ITEM:Ljava/lang/String; = null

.field public static final URI_USE_ITEM_POSTURL:Ljava/lang/String; = "/if/useItem.app"

.field public static final WifigtSCode:Ljava/lang/String; = "50"

.field public static WifigwErrorMsg:Ljava/lang/String;

.field private static anydensity:Ljava/lang/String;

.field private static stype:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    .line 49
    sget-boolean v0, Lcom/feelingk/lguiab/vo/IAPLibSetting;->serverType:Z

    if-eqz v0, :cond_0

    const-string v0, ""

    :goto_0
    sput-object v0, Lcom/feelingk/lguiab/common/Defines;->stype:Ljava/lang/String;

    .line 50
    sget-boolean v0, Lcom/feelingk/lguiab/util/DeviceUtil;->mAnydensity:Z

    if-eqz v0, :cond_1

    const-string v0, ""

    :goto_1
    sput-object v0, Lcom/feelingk/lguiab/common/Defines;->anydensity:Ljava/lang/String;

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "v.1.0.8."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/feelingk/lguiab/common/Defines;->stype:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/feelingk/lguiab/common/Defines;->anydensity:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/feelingk/lguiab/common/Defines;->SDK_VERSION_INFO:Ljava/lang/String;

    .line 68
    sget-boolean v0, Lcom/feelingk/lguiab/vo/IAPLibSetting;->serverType:Z

    if-eqz v0, :cond_2

    const-string v0, "61.101.244.200"

    :goto_2
    sput-object v0, Lcom/feelingk/lguiab/common/Defines;->IF_SERVER_HOST:Ljava/lang/String;

    .line 73
    const/4 v0, 0x0

    sput-object v0, Lcom/feelingk/lguiab/common/Defines;->WifigwErrorMsg:Ljava/lang/String;

    .line 80
    const-string v0, ":5000/if/buyCheck.app"

    sput-object v0, Lcom/feelingk/lguiab/common/Defines;->URI_BUY_CHECK:Ljava/lang/String;

    .line 85
    const-string v0, ":5000/if/buyConfirm.app"

    sput-object v0, Lcom/feelingk/lguiab/common/Defines;->URI_BUY_CONFIRM:Ljava/lang/String;

    .line 90
    const-string v0, ":5000/if/feeCharging.app"

    sput-object v0, Lcom/feelingk/lguiab/common/Defines;->URI_FEE_CHARGING:Ljava/lang/String;

    .line 95
    const-string v0, ":5000/if/authAll.app"

    sput-object v0, Lcom/feelingk/lguiab/common/Defines;->URI_AUTH_ALL:Ljava/lang/String;

    .line 100
    const-string v0, ":5000/if/productInfo.app"

    sput-object v0, Lcom/feelingk/lguiab/common/Defines;->URI_PRODUCT_INFO:Ljava/lang/String;

    .line 105
    const-string v0, ":5000/if/userAuth.app"

    sput-object v0, Lcom/feelingk/lguiab/common/Defines;->URI_USER_AUTH:Ljava/lang/String;

    .line 110
    const-string v0, ":5000/if/useItem.app"

    sput-object v0, Lcom/feelingk/lguiab/common/Defines;->URI_USE_ITEM:Ljava/lang/String;

    .line 121
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 122
    const-string v2, "android.permission.INTERNET"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 123
    const-string v2, "android.permission.ACCESS_NETWORK_STATE"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 124
    const-string v2, "android.permission.READ_PHONE_STATE"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 125
    const-string v2, "android.permission.ACCESS_WIFI_STATE"

    aput-object v2, v0, v1

    .line 121
    sput-object v0, Lcom/feelingk/lguiab/common/Defines;->SDK_PERMISSIONS:[Ljava/lang/String;

    .line 142
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gt v0, v3, :cond_3

    .line 143
    const-string v0, "com.lguplus.common.wificm.interface"

    .line 142
    :goto_3
    sput-object v0, Lcom/feelingk/lguiab/common/Defines;->MWLAN_ACTION:Ljava/lang/String;

    .line 146
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gt v0, v3, :cond_4

    .line 147
    const-string v0, "content://com.lguplus.common.wificm"

    .line 146
    :goto_4
    sput-object v0, Lcom/feelingk/lguiab/common/Defines;->MWLAN_CONTENT_URI:Ljava/lang/String;

    .line 11
    return-void

    .line 49
    :cond_0
    const-string v0, "D"

    goto :goto_0

    .line 50
    :cond_1
    const-string v0, "f"

    goto :goto_1

    .line 68
    :cond_2
    const-string v0, "211.115.75.53"

    goto :goto_2

    .line 144
    :cond_3
    const-string v0, "com.lguplus.common.wificm.mwlan.interface"

    goto :goto_3

    .line 148
    :cond_4
    const-string v0, "content://com.lguplus.common.wificm.mwlan"

    goto :goto_4
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get_GATEWAY_ERROR_CODE(I)Ljava/lang/String;
    .locals 2
    .parameter "iCode"

    .prologue
    .line 386
    sparse-switch p0, :sswitch_data_0

    .line 438
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\ubb34\uc120AP "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_ERROR;->ERR_SOCKET_ERROR:Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_ERROR;

    invoke-virtual {v1}, Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_ERROR;->getMsg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 387
    :sswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "1000"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_GATEWAY_ERROR_CODE;->CODE_1000:Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_GATEWAY_ERROR_CODE;

    invoke-virtual {v1}, Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_GATEWAY_ERROR_CODE;->getMsg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 388
    :sswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "1001"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_GATEWAY_ERROR_CODE;->CODE_1001:Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_GATEWAY_ERROR_CODE;

    invoke-virtual {v1}, Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_GATEWAY_ERROR_CODE;->getMsg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 389
    :sswitch_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "1002"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_GATEWAY_ERROR_CODE;->CODE_1002:Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_GATEWAY_ERROR_CODE;

    invoke-virtual {v1}, Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_GATEWAY_ERROR_CODE;->getMsg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 390
    :sswitch_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "1003"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_GATEWAY_ERROR_CODE;->CODE_1003:Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_GATEWAY_ERROR_CODE;

    invoke-virtual {v1}, Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_GATEWAY_ERROR_CODE;->getMsg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 391
    :sswitch_4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "1004"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_GATEWAY_ERROR_CODE;->CODE_1004:Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_GATEWAY_ERROR_CODE;

    invoke-virtual {v1}, Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_GATEWAY_ERROR_CODE;->getMsg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 392
    :sswitch_5
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "1005"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_GATEWAY_ERROR_CODE;->CODE_1005:Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_GATEWAY_ERROR_CODE;

    invoke-virtual {v1}, Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_GATEWAY_ERROR_CODE;->getMsg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 393
    :sswitch_6
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "1006"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_GATEWAY_ERROR_CODE;->CODE_1006:Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_GATEWAY_ERROR_CODE;

    invoke-virtual {v1}, Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_GATEWAY_ERROR_CODE;->getMsg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 394
    :sswitch_7
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "1007"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_GATEWAY_ERROR_CODE;->CODE_1007:Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_GATEWAY_ERROR_CODE;

    invoke-virtual {v1}, Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_GATEWAY_ERROR_CODE;->getMsg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 395
    :sswitch_8
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "1008"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_GATEWAY_ERROR_CODE;->CODE_1008:Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_GATEWAY_ERROR_CODE;

    invoke-virtual {v1}, Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_GATEWAY_ERROR_CODE;->getMsg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 396
    :sswitch_9
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "1009"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_GATEWAY_ERROR_CODE;->CODE_1009:Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_GATEWAY_ERROR_CODE;

    invoke-virtual {v1}, Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_GATEWAY_ERROR_CODE;->getMsg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 397
    :sswitch_a
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "1010"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_GATEWAY_ERROR_CODE;->CODE_1010:Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_GATEWAY_ERROR_CODE;

    invoke-virtual {v1}, Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_GATEWAY_ERROR_CODE;->getMsg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 398
    :sswitch_b
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "1011"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_GATEWAY_ERROR_CODE;->CODE_1011:Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_GATEWAY_ERROR_CODE;

    invoke-virtual {v1}, Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_GATEWAY_ERROR_CODE;->getMsg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 399
    :sswitch_c
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "1012"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_GATEWAY_ERROR_CODE;->CODE_1012:Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_GATEWAY_ERROR_CODE;

    invoke-virtual {v1}, Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_GATEWAY_ERROR_CODE;->getMsg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 400
    :sswitch_d
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "1013"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_GATEWAY_ERROR_CODE;->CODE_1013:Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_GATEWAY_ERROR_CODE;

    invoke-virtual {v1}, Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_GATEWAY_ERROR_CODE;->getMsg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 401
    :sswitch_e
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "1014"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_GATEWAY_ERROR_CODE;->CODE_1014:Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_GATEWAY_ERROR_CODE;

    invoke-virtual {v1}, Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_GATEWAY_ERROR_CODE;->getMsg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 402
    :sswitch_f
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "1015"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_GATEWAY_ERROR_CODE;->CODE_1015:Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_GATEWAY_ERROR_CODE;

    invoke-virtual {v1}, Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_GATEWAY_ERROR_CODE;->getMsg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 403
    :sswitch_10
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "1016"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_GATEWAY_ERROR_CODE;->CODE_1016:Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_GATEWAY_ERROR_CODE;

    invoke-virtual {v1}, Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_GATEWAY_ERROR_CODE;->getMsg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 404
    :sswitch_11
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "1017"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_GATEWAY_ERROR_CODE;->CODE_1017:Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_GATEWAY_ERROR_CODE;

    invoke-virtual {v1}, Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_GATEWAY_ERROR_CODE;->getMsg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 405
    :sswitch_12
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "1018"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_GATEWAY_ERROR_CODE;->CODE_1018:Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_GATEWAY_ERROR_CODE;

    invoke-virtual {v1}, Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_GATEWAY_ERROR_CODE;->getMsg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 406
    :sswitch_13
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "1019"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_GATEWAY_ERROR_CODE;->CODE_1019:Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_GATEWAY_ERROR_CODE;

    invoke-virtual {v1}, Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_GATEWAY_ERROR_CODE;->getMsg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 407
    :sswitch_14
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "1020"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_GATEWAY_ERROR_CODE;->CODE_1020:Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_GATEWAY_ERROR_CODE;

    invoke-virtual {v1}, Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_GATEWAY_ERROR_CODE;->getMsg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 408
    :sswitch_15
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "1021"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_GATEWAY_ERROR_CODE;->CODE_1021:Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_GATEWAY_ERROR_CODE;

    invoke-virtual {v1}, Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_GATEWAY_ERROR_CODE;->getMsg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 409
    :sswitch_16
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "2001"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_GATEWAY_ERROR_CODE;->CODE_2001:Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_GATEWAY_ERROR_CODE;

    invoke-virtual {v1}, Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_GATEWAY_ERROR_CODE;->getMsg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 410
    :sswitch_17
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "2002"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_GATEWAY_ERROR_CODE;->CODE_2002:Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_GATEWAY_ERROR_CODE;

    invoke-virtual {v1}, Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_GATEWAY_ERROR_CODE;->getMsg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 411
    :sswitch_18
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "2003"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_GATEWAY_ERROR_CODE;->CODE_2003:Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_GATEWAY_ERROR_CODE;

    invoke-virtual {v1}, Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_GATEWAY_ERROR_CODE;->getMsg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 412
    :sswitch_19
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "2004"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_GATEWAY_ERROR_CODE;->CODE_2004:Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_GATEWAY_ERROR_CODE;

    invoke-virtual {v1}, Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_GATEWAY_ERROR_CODE;->getMsg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 413
    :sswitch_1a
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "2005"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_GATEWAY_ERROR_CODE;->CODE_2005:Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_GATEWAY_ERROR_CODE;

    invoke-virtual {v1}, Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_GATEWAY_ERROR_CODE;->getMsg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 414
    :sswitch_1b
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "2006"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_GATEWAY_ERROR_CODE;->CODE_2006:Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_GATEWAY_ERROR_CODE;

    invoke-virtual {v1}, Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_GATEWAY_ERROR_CODE;->getMsg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 415
    :sswitch_1c
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "2007"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_GATEWAY_ERROR_CODE;->CODE_2007:Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_GATEWAY_ERROR_CODE;

    invoke-virtual {v1}, Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_GATEWAY_ERROR_CODE;->getMsg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 416
    :sswitch_1d
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "2008"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_GATEWAY_ERROR_CODE;->CODE_2008:Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_GATEWAY_ERROR_CODE;

    invoke-virtual {v1}, Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_GATEWAY_ERROR_CODE;->getMsg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 417
    :sswitch_1e
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "2009"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_GATEWAY_ERROR_CODE;->CODE_2009:Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_GATEWAY_ERROR_CODE;

    invoke-virtual {v1}, Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_GATEWAY_ERROR_CODE;->getMsg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 418
    :sswitch_1f
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "2010"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_GATEWAY_ERROR_CODE;->CODE_2010:Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_GATEWAY_ERROR_CODE;

    invoke-virtual {v1}, Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_GATEWAY_ERROR_CODE;->getMsg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 419
    :sswitch_20
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "3000"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_GATEWAY_ERROR_CODE;->CODE_3000:Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_GATEWAY_ERROR_CODE;

    invoke-virtual {v1}, Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_GATEWAY_ERROR_CODE;->getMsg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 420
    :sswitch_21
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "3001"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_GATEWAY_ERROR_CODE;->CODE_3001:Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_GATEWAY_ERROR_CODE;

    invoke-virtual {v1}, Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_GATEWAY_ERROR_CODE;->getMsg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 421
    :sswitch_22
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "4000"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_GATEWAY_ERROR_CODE;->CODE_4000:Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_GATEWAY_ERROR_CODE;

    invoke-virtual {v1}, Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_GATEWAY_ERROR_CODE;->getMsg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 422
    :sswitch_23
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "4001"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_GATEWAY_ERROR_CODE;->CODE_4001:Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_GATEWAY_ERROR_CODE;

    invoke-virtual {v1}, Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_GATEWAY_ERROR_CODE;->getMsg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 423
    :sswitch_24
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "4002"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_GATEWAY_ERROR_CODE;->CODE_4002:Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_GATEWAY_ERROR_CODE;

    invoke-virtual {v1}, Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_GATEWAY_ERROR_CODE;->getMsg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 424
    :sswitch_25
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "4003"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_GATEWAY_ERROR_CODE;->CODE_4003:Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_GATEWAY_ERROR_CODE;

    invoke-virtual {v1}, Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_GATEWAY_ERROR_CODE;->getMsg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 425
    :sswitch_26
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "4004"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_GATEWAY_ERROR_CODE;->CODE_4004:Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_GATEWAY_ERROR_CODE;

    invoke-virtual {v1}, Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_GATEWAY_ERROR_CODE;->getMsg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 426
    :sswitch_27
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "4005"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_GATEWAY_ERROR_CODE;->CODE_4005:Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_GATEWAY_ERROR_CODE;

    invoke-virtual {v1}, Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_GATEWAY_ERROR_CODE;->getMsg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 427
    :sswitch_28
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "4006"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_GATEWAY_ERROR_CODE;->CODE_4006:Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_GATEWAY_ERROR_CODE;

    invoke-virtual {v1}, Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_GATEWAY_ERROR_CODE;->getMsg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 428
    :sswitch_29
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "4007"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_GATEWAY_ERROR_CODE;->CODE_4007:Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_GATEWAY_ERROR_CODE;

    invoke-virtual {v1}, Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_GATEWAY_ERROR_CODE;->getMsg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 429
    :sswitch_2a
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "4008"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_GATEWAY_ERROR_CODE;->CODE_4008:Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_GATEWAY_ERROR_CODE;

    invoke-virtual {v1}, Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_GATEWAY_ERROR_CODE;->getMsg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 430
    :sswitch_2b
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "4009"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_GATEWAY_ERROR_CODE;->CODE_4009:Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_GATEWAY_ERROR_CODE;

    invoke-virtual {v1}, Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_GATEWAY_ERROR_CODE;->getMsg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 431
    :sswitch_2c
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "4010"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_GATEWAY_ERROR_CODE;->CODE_4010:Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_GATEWAY_ERROR_CODE;

    invoke-virtual {v1}, Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_GATEWAY_ERROR_CODE;->getMsg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 432
    :sswitch_2d
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "4011"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_GATEWAY_ERROR_CODE;->CODE_4011:Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_GATEWAY_ERROR_CODE;

    invoke-virtual {v1}, Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_GATEWAY_ERROR_CODE;->getMsg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 433
    :sswitch_2e
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "4012"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_GATEWAY_ERROR_CODE;->CODE_4012:Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_GATEWAY_ERROR_CODE;

    invoke-virtual {v1}, Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_GATEWAY_ERROR_CODE;->getMsg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 434
    :sswitch_2f
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "5000"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_GATEWAY_ERROR_CODE;->CODE_5000:Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_GATEWAY_ERROR_CODE;

    invoke-virtual {v1}, Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_GATEWAY_ERROR_CODE;->getMsg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 435
    :sswitch_30
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "5001"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_GATEWAY_ERROR_CODE;->CODE_5001:Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_GATEWAY_ERROR_CODE;

    invoke-virtual {v1}, Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_GATEWAY_ERROR_CODE;->getMsg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 436
    :sswitch_31
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "5002"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_GATEWAY_ERROR_CODE;->CODE_5002:Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_GATEWAY_ERROR_CODE;

    invoke-virtual {v1}, Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_GATEWAY_ERROR_CODE;->getMsg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 386
    :sswitch_data_0
    .sparse-switch
        0x3e8 -> :sswitch_0
        0x3e9 -> :sswitch_1
        0x3ea -> :sswitch_2
        0x3eb -> :sswitch_3
        0x3ec -> :sswitch_4
        0x3ed -> :sswitch_5
        0x3ee -> :sswitch_6
        0x3ef -> :sswitch_7
        0x3f0 -> :sswitch_8
        0x3f1 -> :sswitch_9
        0x3f2 -> :sswitch_a
        0x3f3 -> :sswitch_b
        0x3f4 -> :sswitch_c
        0x3f5 -> :sswitch_d
        0x3f6 -> :sswitch_e
        0x3f7 -> :sswitch_f
        0x3f8 -> :sswitch_10
        0x3f9 -> :sswitch_11
        0x3fa -> :sswitch_12
        0x3fb -> :sswitch_13
        0x3fc -> :sswitch_14
        0x3fd -> :sswitch_15
        0x7d1 -> :sswitch_16
        0x7d2 -> :sswitch_17
        0x7d3 -> :sswitch_18
        0x7d4 -> :sswitch_19
        0x7d5 -> :sswitch_1a
        0x7d6 -> :sswitch_1b
        0x7d7 -> :sswitch_1c
        0x7d8 -> :sswitch_1d
        0x7d9 -> :sswitch_1e
        0x7da -> :sswitch_1f
        0xbb8 -> :sswitch_20
        0xbb9 -> :sswitch_21
        0xfa0 -> :sswitch_22
        0xfa1 -> :sswitch_23
        0xfa2 -> :sswitch_24
        0xfa3 -> :sswitch_25
        0xfa4 -> :sswitch_26
        0xfa5 -> :sswitch_27
        0xfa6 -> :sswitch_28
        0xfa7 -> :sswitch_29
        0xfa8 -> :sswitch_2a
        0xfa9 -> :sswitch_2b
        0xfaa -> :sswitch_2c
        0xfab -> :sswitch_2d
        0xfac -> :sswitch_2e
        0x1388 -> :sswitch_2f
        0x1389 -> :sswitch_30
        0x138a -> :sswitch_31
    .end sparse-switch
.end method
