.class public final enum Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_ERROR;
.super Ljava/lang/Enum;
.source "Defines.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/feelingk/lguiab/common/Defines;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "IF_WIFIGW_SOCKET_ERROR"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_ERROR;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum AE_INIT:Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_ERROR;

.field public static final enum AE_SUCCESS:Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_ERROR;

.field private static final synthetic ENUM$VALUES:[Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_ERROR;

.field public static final enum ERR_CONNECT_ARREDY_FAIL:Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_ERROR;

.field public static final enum ERR_CONNECT_EXCEPTION_FAIL:Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_ERROR;

.field public static final enum ERR_ENCRYPT:Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_ERROR;

.field public static final enum ERR_KEUINAL_RE:Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_ERROR;

.field public static final enum ERR_KEYINAL:Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_ERROR;

.field public static final enum ERR_RECV_BODY_BYTE_ISNULL_FAIL:Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_ERROR;

.field public static final enum ERR_RECV_BODY_BYTE_ISZERO_NOTINT_FAIL:Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_ERROR;

.field public static final enum ERR_RECV_BODY_READ_FAIL:Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_ERROR;

.field public static final enum ERR_RECV_DATA_LENGTH_EXCEPTION_FAIL:Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_ERROR;

.field public static final enum ERR_RECV_DATA_LENGTH_ISZERO_FAIL:Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_ERROR;

.field public static final enum ERR_RECV_DATA_LENGTH_NOTINT_FAIL:Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_ERROR;

.field public static final enum ERR_RECV_HEADER_BYTE_ISNULL_FAIL:Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_ERROR;

.field public static final enum ERR_RECV_HEADER_BYTE_ISZERO_NOTINT_FAIL:Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_ERROR;

.field public static final enum ERR_RECV_HEADER_ERROR_CODE:Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_ERROR;

.field public static final enum ERR_RECV_HEADER_READ_FAIL:Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_ERROR;

.field public static final enum ERR_SEND_WRITE_FAIL:Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_ERROR;

.field public static final enum ERR_SOCKET_ERROR:Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_ERROR;


# instance fields
.field private msg:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 283
    new-instance v0, Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_ERROR;

    const-string v1, "AE_SUCCESS"

    const-string v2, "\uc131\uacf5"

    invoke-direct {v0, v1, v4, v2}, Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_ERROR;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_ERROR;->AE_SUCCESS:Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_ERROR;

    .line 284
    new-instance v0, Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_ERROR;

    const-string v1, "AE_INIT"

    const-string v2, "\ucd08\uae30\ud654"

    invoke-direct {v0, v1, v5, v2}, Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_ERROR;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_ERROR;->AE_INIT:Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_ERROR;

    .line 286
    new-instance v0, Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_ERROR;

    const-string v1, "ERR_CONNECT_ARREDY_FAIL"

    const-string v2, "\uc811\uc18d \uc2e4\ud328[ARREDY CONNECT]"

    invoke-direct {v0, v1, v6, v2}, Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_ERROR;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_ERROR;->ERR_CONNECT_ARREDY_FAIL:Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_ERROR;

    .line 287
    new-instance v0, Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_ERROR;

    const-string v1, "ERR_CONNECT_EXCEPTION_FAIL"

    const-string v2, "\uc811\uc18d \uc2e4\ud328[EXCEPTION]"

    invoke-direct {v0, v1, v7, v2}, Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_ERROR;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_ERROR;->ERR_CONNECT_EXCEPTION_FAIL:Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_ERROR;

    .line 289
    new-instance v0, Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_ERROR;

    const-string v1, "ERR_SEND_WRITE_FAIL"

    const-string v2, "SEND \uc4f0\uae30 \uc2e4\ud328"

    invoke-direct {v0, v1, v8, v2}, Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_ERROR;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_ERROR;->ERR_SEND_WRITE_FAIL:Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_ERROR;

    .line 291
    new-instance v0, Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_ERROR;

    const-string v1, "ERR_RECV_HEADER_READ_FAIL"

    const/4 v2, 0x5

    const-string v3, "RECV HEADER \ubc84\ud37c READ \uc2e4\ud328"

    invoke-direct {v0, v1, v2, v3}, Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_ERROR;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_ERROR;->ERR_RECV_HEADER_READ_FAIL:Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_ERROR;

    .line 292
    new-instance v0, Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_ERROR;

    const-string v1, "ERR_RECV_BODY_READ_FAIL"

    const/4 v2, 0x6

    const-string v3, "RECV BODY \ubc84\ud37c READ \uc2e4\ud328"

    invoke-direct {v0, v1, v2, v3}, Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_ERROR;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_ERROR;->ERR_RECV_BODY_READ_FAIL:Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_ERROR;

    .line 293
    new-instance v0, Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_ERROR;

    const-string v1, "ERR_RECV_HEADER_ERROR_CODE"

    const/4 v2, 0x7

    const-string v3, "RECV HEADER \uc5d0\ub7ec\ucf54\ub4dc \uc218\uc2e0[0x02]"

    invoke-direct {v0, v1, v2, v3}, Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_ERROR;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_ERROR;->ERR_RECV_HEADER_ERROR_CODE:Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_ERROR;

    .line 295
    new-instance v0, Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_ERROR;

    const-string v1, "ERR_RECV_DATA_LENGTH_EXCEPTION_FAIL"

    const/16 v2, 0x8

    const-string v3, "RECV HEADER BYTE \ubcc0\ud658 \uc2e4\ud328[\ub370\uc774\ud130 BYTE \ubcc0\ud658 EXCEPTION]"

    invoke-direct {v0, v1, v2, v3}, Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_ERROR;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_ERROR;->ERR_RECV_DATA_LENGTH_EXCEPTION_FAIL:Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_ERROR;

    .line 296
    new-instance v0, Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_ERROR;

    const-string v1, "ERR_RECV_DATA_LENGTH_ISZERO_FAIL"

    const/16 v2, 0x9

    const-string v3, "RECV HEADER BYTE \ubcc0\ud658 \ub370\uc774\ud130 \uae38\uc774 \ub294 0[\ub370\uc774\ud130 LENGTH = 0]"

    invoke-direct {v0, v1, v2, v3}, Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_ERROR;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_ERROR;->ERR_RECV_DATA_LENGTH_ISZERO_FAIL:Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_ERROR;

    .line 297
    new-instance v0, Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_ERROR;

    const-string v1, "ERR_RECV_DATA_LENGTH_NOTINT_FAIL"

    const/16 v2, 0xa

    const-string v3, "RECV HEADER BYTE \ubcc0\ud658 \ub370\uc774\ud130 \uae38\uc774 \ub294 \uc74c\uc218[\ub370\uc774\ud130 LENGTH < 0]"

    invoke-direct {v0, v1, v2, v3}, Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_ERROR;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_ERROR;->ERR_RECV_DATA_LENGTH_NOTINT_FAIL:Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_ERROR;

    .line 299
    new-instance v0, Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_ERROR;

    const-string v1, "ERR_RECV_HEADER_BYTE_ISNULL_FAIL"

    const/16 v2, 0xb

    const-string v3, "RECV HEADER BYTE \uac00 NULL[HEADER BYTE = NULL]"

    invoke-direct {v0, v1, v2, v3}, Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_ERROR;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_ERROR;->ERR_RECV_HEADER_BYTE_ISNULL_FAIL:Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_ERROR;

    .line 300
    new-instance v0, Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_ERROR;

    const-string v1, "ERR_RECV_HEADER_BYTE_ISZERO_NOTINT_FAIL"

    const/16 v2, 0xc

    const-string v3, "RECV HEADER BYTE \uae38\uc774\uac00 0 \ud639\uc740 \uc74c\uc218[HEADER BYTE <= 0]"

    invoke-direct {v0, v1, v2, v3}, Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_ERROR;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_ERROR;->ERR_RECV_HEADER_BYTE_ISZERO_NOTINT_FAIL:Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_ERROR;

    .line 301
    new-instance v0, Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_ERROR;

    const-string v1, "ERR_RECV_BODY_BYTE_ISNULL_FAIL"

    const/16 v2, 0xd

    const-string v3, "RECV BODY BYTE \uae38\uc774\uac00 0 \ud639\uc740 \uc74c\uc218[BODY BYTE = NULL]"

    invoke-direct {v0, v1, v2, v3}, Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_ERROR;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_ERROR;->ERR_RECV_BODY_BYTE_ISNULL_FAIL:Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_ERROR;

    .line 302
    new-instance v0, Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_ERROR;

    const-string v1, "ERR_RECV_BODY_BYTE_ISZERO_NOTINT_FAIL"

    const/16 v2, 0xe

    const-string v3, "RECV BODY BYTE \uae38\uc774\uac00 0 \ud639\uc740 \uc74c\uc218[BODY BYTE <= 0]"

    invoke-direct {v0, v1, v2, v3}, Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_ERROR;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_ERROR;->ERR_RECV_BODY_BYTE_ISZERO_NOTINT_FAIL:Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_ERROR;

    .line 304
    new-instance v0, Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_ERROR;

    const-string v1, "ERR_KEYINAL"

    const/16 v2, 0xf

    const-string v3, "\uc554\ud638 \ucd08\uae30\ud654 \uc2e4\ud328"

    invoke-direct {v0, v1, v2, v3}, Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_ERROR;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_ERROR;->ERR_KEYINAL:Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_ERROR;

    .line 305
    new-instance v0, Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_ERROR;

    const-string v1, "ERR_KEUINAL_RE"

    const/16 v2, 0x10

    const-string v3, "\uc554\ud638 \ucd08\uae30\ud654 \uc2f6\ud328[\uc7ac\uc2dc\ub3c4]"

    invoke-direct {v0, v1, v2, v3}, Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_ERROR;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_ERROR;->ERR_KEUINAL_RE:Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_ERROR;

    .line 306
    new-instance v0, Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_ERROR;

    const-string v1, "ERR_ENCRYPT"

    const/16 v2, 0x11

    const-string v3, "\uc554\ud638\ud654 \uc2e4\ud328"

    invoke-direct {v0, v1, v2, v3}, Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_ERROR;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_ERROR;->ERR_ENCRYPT:Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_ERROR;

    .line 308
    new-instance v0, Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_ERROR;

    const-string v1, "ERR_SOCKET_ERROR"

    const/16 v2, 0x12

    const-string v3, "\ub124\ud2b8\uc6cc\ud06c \uc7a5\uc560\uc785\ub2c8\ub2e4. \ub124\ud2b8\uc6cc\ud06c \uc0c1\ud0dc\ub97c \ud655\uc778\ud558\uc2dc\uace0 \uc774\uc6a9\ubc14\ub78d\ub2c8\ub2e4."

    invoke-direct {v0, v1, v2, v3}, Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_ERROR;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_ERROR;->ERR_SOCKET_ERROR:Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_ERROR;

    .line 281
    const/16 v0, 0x13

    new-array v0, v0, [Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_ERROR;

    sget-object v1, Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_ERROR;->AE_SUCCESS:Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_ERROR;

    aput-object v1, v0, v4

    sget-object v1, Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_ERROR;->AE_INIT:Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_ERROR;

    aput-object v1, v0, v5

    sget-object v1, Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_ERROR;->ERR_CONNECT_ARREDY_FAIL:Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_ERROR;

    aput-object v1, v0, v6

    sget-object v1, Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_ERROR;->ERR_CONNECT_EXCEPTION_FAIL:Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_ERROR;

    aput-object v1, v0, v7

    sget-object v1, Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_ERROR;->ERR_SEND_WRITE_FAIL:Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_ERROR;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_ERROR;->ERR_RECV_HEADER_READ_FAIL:Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_ERROR;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_ERROR;->ERR_RECV_BODY_READ_FAIL:Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_ERROR;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_ERROR;->ERR_RECV_HEADER_ERROR_CODE:Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_ERROR;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_ERROR;->ERR_RECV_DATA_LENGTH_EXCEPTION_FAIL:Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_ERROR;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_ERROR;->ERR_RECV_DATA_LENGTH_ISZERO_FAIL:Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_ERROR;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_ERROR;->ERR_RECV_DATA_LENGTH_NOTINT_FAIL:Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_ERROR;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_ERROR;->ERR_RECV_HEADER_BYTE_ISNULL_FAIL:Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_ERROR;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_ERROR;->ERR_RECV_HEADER_BYTE_ISZERO_NOTINT_FAIL:Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_ERROR;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_ERROR;->ERR_RECV_BODY_BYTE_ISNULL_FAIL:Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_ERROR;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_ERROR;->ERR_RECV_BODY_BYTE_ISZERO_NOTINT_FAIL:Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_ERROR;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_ERROR;->ERR_KEYINAL:Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_ERROR;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_ERROR;->ERR_KEUINAL_RE:Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_ERROR;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_ERROR;->ERR_ENCRYPT:Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_ERROR;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_ERROR;->ERR_SOCKET_ERROR:Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_ERROR;

    aput-object v2, v0, v1

    sput-object v0, Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_ERROR;->ENUM$VALUES:[Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_ERROR;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter "msg"

    .prologue
    .line 312
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 313
    iput-object p3, p0, Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_ERROR;->msg:Ljava/lang/String;

    .line 314
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_ERROR;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_ERROR;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_ERROR;

    return-object v0
.end method

.method public static values()[Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_ERROR;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_ERROR;->ENUM$VALUES:[Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_ERROR;

    array-length v1, v0

    new-array v2, v1, [Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_ERROR;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public getMsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 316
    iget-object v0, p0, Lcom/feelingk/lguiab/common/Defines$IF_WIFIGW_SOCKET_ERROR;->msg:Ljava/lang/String;

    return-object v0
.end method
