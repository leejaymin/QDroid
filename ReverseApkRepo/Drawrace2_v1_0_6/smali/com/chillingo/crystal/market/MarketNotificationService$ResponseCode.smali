.class public final enum Lcom/chillingo/crystal/market/MarketNotificationService$ResponseCode;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chillingo/crystal/market/MarketNotificationService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ResponseCode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/chillingo/crystal/market/MarketNotificationService$ResponseCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/chillingo/crystal/market/MarketNotificationService$ResponseCode;

.field public static final enum RESULT_BILLING_UNAVAILABLE:Lcom/chillingo/crystal/market/MarketNotificationService$ResponseCode;

.field public static final enum RESULT_DEVELOPER_ERROR:Lcom/chillingo/crystal/market/MarketNotificationService$ResponseCode;

.field public static final enum RESULT_ERROR:Lcom/chillingo/crystal/market/MarketNotificationService$ResponseCode;

.field public static final enum RESULT_ITEM_UNAVAILABLE:Lcom/chillingo/crystal/market/MarketNotificationService$ResponseCode;

.field public static final enum RESULT_OK:Lcom/chillingo/crystal/market/MarketNotificationService$ResponseCode;

.field public static final enum RESULT_SERVICE_UNAVAILABLE:Lcom/chillingo/crystal/market/MarketNotificationService$ResponseCode;

.field public static final enum RESULT_USER_CANCELED:Lcom/chillingo/crystal/market/MarketNotificationService$ResponseCode;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/chillingo/crystal/market/MarketNotificationService$ResponseCode;

    const-string v1, "RESULT_OK"

    invoke-direct {v0, v1, v3}, Lcom/chillingo/crystal/market/MarketNotificationService$ResponseCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chillingo/crystal/market/MarketNotificationService$ResponseCode;->RESULT_OK:Lcom/chillingo/crystal/market/MarketNotificationService$ResponseCode;

    new-instance v0, Lcom/chillingo/crystal/market/MarketNotificationService$ResponseCode;

    const-string v1, "RESULT_USER_CANCELED"

    invoke-direct {v0, v1, v4}, Lcom/chillingo/crystal/market/MarketNotificationService$ResponseCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chillingo/crystal/market/MarketNotificationService$ResponseCode;->RESULT_USER_CANCELED:Lcom/chillingo/crystal/market/MarketNotificationService$ResponseCode;

    new-instance v0, Lcom/chillingo/crystal/market/MarketNotificationService$ResponseCode;

    const-string v1, "RESULT_SERVICE_UNAVAILABLE"

    invoke-direct {v0, v1, v5}, Lcom/chillingo/crystal/market/MarketNotificationService$ResponseCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chillingo/crystal/market/MarketNotificationService$ResponseCode;->RESULT_SERVICE_UNAVAILABLE:Lcom/chillingo/crystal/market/MarketNotificationService$ResponseCode;

    new-instance v0, Lcom/chillingo/crystal/market/MarketNotificationService$ResponseCode;

    const-string v1, "RESULT_BILLING_UNAVAILABLE"

    invoke-direct {v0, v1, v6}, Lcom/chillingo/crystal/market/MarketNotificationService$ResponseCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chillingo/crystal/market/MarketNotificationService$ResponseCode;->RESULT_BILLING_UNAVAILABLE:Lcom/chillingo/crystal/market/MarketNotificationService$ResponseCode;

    new-instance v0, Lcom/chillingo/crystal/market/MarketNotificationService$ResponseCode;

    const-string v1, "RESULT_ITEM_UNAVAILABLE"

    invoke-direct {v0, v1, v7}, Lcom/chillingo/crystal/market/MarketNotificationService$ResponseCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chillingo/crystal/market/MarketNotificationService$ResponseCode;->RESULT_ITEM_UNAVAILABLE:Lcom/chillingo/crystal/market/MarketNotificationService$ResponseCode;

    new-instance v0, Lcom/chillingo/crystal/market/MarketNotificationService$ResponseCode;

    const-string v1, "RESULT_DEVELOPER_ERROR"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/chillingo/crystal/market/MarketNotificationService$ResponseCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chillingo/crystal/market/MarketNotificationService$ResponseCode;->RESULT_DEVELOPER_ERROR:Lcom/chillingo/crystal/market/MarketNotificationService$ResponseCode;

    new-instance v0, Lcom/chillingo/crystal/market/MarketNotificationService$ResponseCode;

    const-string v1, "RESULT_ERROR"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/chillingo/crystal/market/MarketNotificationService$ResponseCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chillingo/crystal/market/MarketNotificationService$ResponseCode;->RESULT_ERROR:Lcom/chillingo/crystal/market/MarketNotificationService$ResponseCode;

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/chillingo/crystal/market/MarketNotificationService$ResponseCode;

    sget-object v1, Lcom/chillingo/crystal/market/MarketNotificationService$ResponseCode;->RESULT_OK:Lcom/chillingo/crystal/market/MarketNotificationService$ResponseCode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/chillingo/crystal/market/MarketNotificationService$ResponseCode;->RESULT_USER_CANCELED:Lcom/chillingo/crystal/market/MarketNotificationService$ResponseCode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/chillingo/crystal/market/MarketNotificationService$ResponseCode;->RESULT_SERVICE_UNAVAILABLE:Lcom/chillingo/crystal/market/MarketNotificationService$ResponseCode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/chillingo/crystal/market/MarketNotificationService$ResponseCode;->RESULT_BILLING_UNAVAILABLE:Lcom/chillingo/crystal/market/MarketNotificationService$ResponseCode;

    aput-object v1, v0, v6

    sget-object v1, Lcom/chillingo/crystal/market/MarketNotificationService$ResponseCode;->RESULT_ITEM_UNAVAILABLE:Lcom/chillingo/crystal/market/MarketNotificationService$ResponseCode;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/chillingo/crystal/market/MarketNotificationService$ResponseCode;->RESULT_DEVELOPER_ERROR:Lcom/chillingo/crystal/market/MarketNotificationService$ResponseCode;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/chillingo/crystal/market/MarketNotificationService$ResponseCode;->RESULT_ERROR:Lcom/chillingo/crystal/market/MarketNotificationService$ResponseCode;

    aput-object v2, v0, v1

    sput-object v0, Lcom/chillingo/crystal/market/MarketNotificationService$ResponseCode;->$VALUES:[Lcom/chillingo/crystal/market/MarketNotificationService$ResponseCode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(I)Lcom/chillingo/crystal/market/MarketNotificationService$ResponseCode;
    .locals 2

    invoke-static {}, Lcom/chillingo/crystal/market/MarketNotificationService$ResponseCode;->values()[Lcom/chillingo/crystal/market/MarketNotificationService$ResponseCode;

    move-result-object v0

    if-ltz p0, :cond_0

    array-length v1, v0

    if-lt p0, v1, :cond_1

    :cond_0
    sget-object v0, Lcom/chillingo/crystal/market/MarketNotificationService$ResponseCode;->RESULT_ERROR:Lcom/chillingo/crystal/market/MarketNotificationService$ResponseCode;

    :goto_0
    return-object v0

    :cond_1
    aget-object v0, v0, p0

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/chillingo/crystal/market/MarketNotificationService$ResponseCode;
    .locals 1

    const-class v0, Lcom/chillingo/crystal/market/MarketNotificationService$ResponseCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/chillingo/crystal/market/MarketNotificationService$ResponseCode;

    return-object v0
.end method

.method public static values()[Lcom/chillingo/crystal/market/MarketNotificationService$ResponseCode;
    .locals 1

    sget-object v0, Lcom/chillingo/crystal/market/MarketNotificationService$ResponseCode;->$VALUES:[Lcom/chillingo/crystal/market/MarketNotificationService$ResponseCode;

    invoke-virtual {v0}, [Lcom/chillingo/crystal/market/MarketNotificationService$ResponseCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/chillingo/crystal/market/MarketNotificationService$ResponseCode;

    return-object v0
.end method
