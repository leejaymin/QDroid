.class public final enum Lcom/urbanairship/iap/marketinterface/Consts$PurchaseState;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/urbanairship/iap/marketinterface/Consts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PurchaseState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/urbanairship/iap/marketinterface/Consts$PurchaseState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/urbanairship/iap/marketinterface/Consts$PurchaseState;

.field public static final enum CANCELED:Lcom/urbanairship/iap/marketinterface/Consts$PurchaseState;

.field public static final enum PURCHASED:Lcom/urbanairship/iap/marketinterface/Consts$PurchaseState;

.field public static final enum REFUNDED:Lcom/urbanairship/iap/marketinterface/Consts$PurchaseState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/urbanairship/iap/marketinterface/Consts$PurchaseState;

    const-string v1, "PURCHASED"

    invoke-direct {v0, v1, v2}, Lcom/urbanairship/iap/marketinterface/Consts$PurchaseState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/urbanairship/iap/marketinterface/Consts$PurchaseState;->PURCHASED:Lcom/urbanairship/iap/marketinterface/Consts$PurchaseState;

    new-instance v0, Lcom/urbanairship/iap/marketinterface/Consts$PurchaseState;

    const-string v1, "CANCELED"

    invoke-direct {v0, v1, v3}, Lcom/urbanairship/iap/marketinterface/Consts$PurchaseState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/urbanairship/iap/marketinterface/Consts$PurchaseState;->CANCELED:Lcom/urbanairship/iap/marketinterface/Consts$PurchaseState;

    new-instance v0, Lcom/urbanairship/iap/marketinterface/Consts$PurchaseState;

    const-string v1, "REFUNDED"

    invoke-direct {v0, v1, v4}, Lcom/urbanairship/iap/marketinterface/Consts$PurchaseState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/urbanairship/iap/marketinterface/Consts$PurchaseState;->REFUNDED:Lcom/urbanairship/iap/marketinterface/Consts$PurchaseState;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/urbanairship/iap/marketinterface/Consts$PurchaseState;

    sget-object v1, Lcom/urbanairship/iap/marketinterface/Consts$PurchaseState;->PURCHASED:Lcom/urbanairship/iap/marketinterface/Consts$PurchaseState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/urbanairship/iap/marketinterface/Consts$PurchaseState;->CANCELED:Lcom/urbanairship/iap/marketinterface/Consts$PurchaseState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/urbanairship/iap/marketinterface/Consts$PurchaseState;->REFUNDED:Lcom/urbanairship/iap/marketinterface/Consts$PurchaseState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/urbanairship/iap/marketinterface/Consts$PurchaseState;->$VALUES:[Lcom/urbanairship/iap/marketinterface/Consts$PurchaseState;

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

.method public static valueOf(I)Lcom/urbanairship/iap/marketinterface/Consts$PurchaseState;
    .locals 2

    invoke-static {}, Lcom/urbanairship/iap/marketinterface/Consts$PurchaseState;->values()[Lcom/urbanairship/iap/marketinterface/Consts$PurchaseState;

    move-result-object v0

    if-ltz p0, :cond_0

    array-length v1, v0

    if-lt p0, v1, :cond_1

    :cond_0
    sget-object v0, Lcom/urbanairship/iap/marketinterface/Consts$PurchaseState;->CANCELED:Lcom/urbanairship/iap/marketinterface/Consts$PurchaseState;

    :goto_0
    return-object v0

    :cond_1
    aget-object v0, v0, p0

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/urbanairship/iap/marketinterface/Consts$PurchaseState;
    .locals 1

    const-class v0, Lcom/urbanairship/iap/marketinterface/Consts$PurchaseState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/urbanairship/iap/marketinterface/Consts$PurchaseState;

    return-object v0
.end method

.method public static values()[Lcom/urbanairship/iap/marketinterface/Consts$PurchaseState;
    .locals 1

    sget-object v0, Lcom/urbanairship/iap/marketinterface/Consts$PurchaseState;->$VALUES:[Lcom/urbanairship/iap/marketinterface/Consts$PurchaseState;

    invoke-virtual {v0}, [Lcom/urbanairship/iap/marketinterface/Consts$PurchaseState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/urbanairship/iap/marketinterface/Consts$PurchaseState;

    return-object v0
.end method
