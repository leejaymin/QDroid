.class public final enum Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/Consts$ResponseCode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/Consts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ResponseCode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/Consts$ResponseCode;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum RESULT_BILLING_UNAVAILABLE:Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/Consts$ResponseCode;

.field public static final enum RESULT_DEVELOPER_ERROR:Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/Consts$ResponseCode;

.field public static final enum RESULT_ERROR:Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/Consts$ResponseCode;

.field public static final enum RESULT_ITEM_UNAVAILABLE:Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/Consts$ResponseCode;

.field public static final enum RESULT_OK:Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/Consts$ResponseCode;

.field public static final enum RESULT_SERVICE_UNAVAILABLE:Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/Consts$ResponseCode;

.field public static final enum RESULT_USER_CANCELED:Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/Consts$ResponseCode;

.field private static final synthetic a:[Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/Consts$ResponseCode;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 30
    new-instance v0, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/Consts$ResponseCode;

    const-string v1, "RESULT_OK"

    invoke-direct {v0, v1, v3}, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/Consts$ResponseCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/Consts$ResponseCode;->RESULT_OK:Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/Consts$ResponseCode;

    new-instance v0, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/Consts$ResponseCode;

    const-string v1, "RESULT_USER_CANCELED"

    invoke-direct {v0, v1, v4}, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/Consts$ResponseCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/Consts$ResponseCode;->RESULT_USER_CANCELED:Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/Consts$ResponseCode;

    new-instance v0, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/Consts$ResponseCode;

    const-string v1, "RESULT_SERVICE_UNAVAILABLE"

    invoke-direct {v0, v1, v5}, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/Consts$ResponseCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/Consts$ResponseCode;->RESULT_SERVICE_UNAVAILABLE:Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/Consts$ResponseCode;

    new-instance v0, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/Consts$ResponseCode;

    const-string v1, "RESULT_BILLING_UNAVAILABLE"

    invoke-direct {v0, v1, v6}, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/Consts$ResponseCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/Consts$ResponseCode;->RESULT_BILLING_UNAVAILABLE:Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/Consts$ResponseCode;

    new-instance v0, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/Consts$ResponseCode;

    const-string v1, "RESULT_ITEM_UNAVAILABLE"

    invoke-direct {v0, v1, v7}, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/Consts$ResponseCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/Consts$ResponseCode;->RESULT_ITEM_UNAVAILABLE:Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/Consts$ResponseCode;

    new-instance v0, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/Consts$ResponseCode;

    const-string v1, "RESULT_DEVELOPER_ERROR"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/Consts$ResponseCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/Consts$ResponseCode;->RESULT_DEVELOPER_ERROR:Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/Consts$ResponseCode;

    new-instance v0, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/Consts$ResponseCode;

    const-string v1, "RESULT_ERROR"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/Consts$ResponseCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/Consts$ResponseCode;->RESULT_ERROR:Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/Consts$ResponseCode;

    .line 29
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/Consts$ResponseCode;

    sget-object v1, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/Consts$ResponseCode;->RESULT_OK:Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/Consts$ResponseCode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/Consts$ResponseCode;->RESULT_USER_CANCELED:Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/Consts$ResponseCode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/Consts$ResponseCode;->RESULT_SERVICE_UNAVAILABLE:Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/Consts$ResponseCode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/Consts$ResponseCode;->RESULT_BILLING_UNAVAILABLE:Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/Consts$ResponseCode;

    aput-object v1, v0, v6

    sget-object v1, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/Consts$ResponseCode;->RESULT_ITEM_UNAVAILABLE:Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/Consts$ResponseCode;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/Consts$ResponseCode;->RESULT_DEVELOPER_ERROR:Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/Consts$ResponseCode;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/Consts$ResponseCode;->RESULT_ERROR:Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/Consts$ResponseCode;

    aput-object v2, v0, v1

    sput-object v0, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/Consts$ResponseCode;->a:[Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/Consts$ResponseCode;

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
    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(I)Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/Consts$ResponseCode;
    .locals 2
    .parameter

    .prologue
    .line 34
    invoke-static {}, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/Consts$ResponseCode;->values()[Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/Consts$ResponseCode;

    move-result-object v0

    .line 35
    if-ltz p0, :cond_0

    array-length v1, v0

    if-lt p0, v1, :cond_1

    .line 36
    :cond_0
    sget-object v0, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/Consts$ResponseCode;->RESULT_ERROR:Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/Consts$ResponseCode;

    .line 38
    :goto_0
    return-object v0

    :cond_1
    aget-object v0, v0, p0

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/Consts$ResponseCode;
    .locals 1
    .parameter

    .prologue
    .line 29
    const-class v0, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/Consts$ResponseCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/Consts$ResponseCode;

    return-object v0
.end method

.method public static values()[Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/Consts$ResponseCode;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/Consts$ResponseCode;->a:[Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/Consts$ResponseCode;

    invoke-virtual {v0}, [Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/Consts$ResponseCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/scoreloop/client/android/core/paymentprovider/googlemarket/Consts$ResponseCode;

    return-object v0
.end method
