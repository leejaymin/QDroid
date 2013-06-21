.class public final enum Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/Consts$PurchaseState;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/Consts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PurchaseState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/Consts$PurchaseState;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CANCELED:Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/Consts$PurchaseState;

.field public static final enum PURCHASED:Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/Consts$PurchaseState;

.field public static final enum REFUNDED:Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/Consts$PurchaseState;

.field private static final synthetic a:[Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/Consts$PurchaseState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 45
    new-instance v0, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/Consts$PurchaseState;

    const-string v1, "PURCHASED"

    invoke-direct {v0, v1, v2}, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/Consts$PurchaseState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/Consts$PurchaseState;->PURCHASED:Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/Consts$PurchaseState;

    .line 46
    new-instance v0, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/Consts$PurchaseState;

    const-string v1, "CANCELED"

    invoke-direct {v0, v1, v3}, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/Consts$PurchaseState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/Consts$PurchaseState;->CANCELED:Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/Consts$PurchaseState;

    .line 47
    new-instance v0, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/Consts$PurchaseState;

    const-string v1, "REFUNDED"

    invoke-direct {v0, v1, v4}, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/Consts$PurchaseState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/Consts$PurchaseState;->REFUNDED:Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/Consts$PurchaseState;

    .line 43
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/Consts$PurchaseState;

    sget-object v1, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/Consts$PurchaseState;->PURCHASED:Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/Consts$PurchaseState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/Consts$PurchaseState;->CANCELED:Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/Consts$PurchaseState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/Consts$PurchaseState;->REFUNDED:Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/Consts$PurchaseState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/Consts$PurchaseState;->a:[Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/Consts$PurchaseState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(I)Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/Consts$PurchaseState;
    .locals 2
    .parameter

    .prologue
    .line 51
    invoke-static {}, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/Consts$PurchaseState;->values()[Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/Consts$PurchaseState;

    move-result-object v0

    .line 52
    if-ltz p0, :cond_0

    array-length v1, v0

    if-lt p0, v1, :cond_1

    .line 53
    :cond_0
    sget-object v0, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/Consts$PurchaseState;->CANCELED:Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/Consts$PurchaseState;

    .line 55
    :goto_0
    return-object v0

    :cond_1
    aget-object v0, v0, p0

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/Consts$PurchaseState;
    .locals 1
    .parameter

    .prologue
    .line 43
    const-class v0, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/Consts$PurchaseState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/Consts$PurchaseState;

    return-object v0
.end method

.method public static values()[Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/Consts$PurchaseState;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/Consts$PurchaseState;->a:[Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/Consts$PurchaseState;

    invoke-virtual {v0}, [Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/Consts$PurchaseState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/Consts$PurchaseState;

    return-object v0
.end method
