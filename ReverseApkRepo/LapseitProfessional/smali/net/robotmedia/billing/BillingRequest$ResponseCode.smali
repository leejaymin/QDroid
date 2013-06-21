.class public final enum Lnet/robotmedia/billing/BillingRequest$ResponseCode;
.super Ljava/lang/Enum;
.source "BillingRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/robotmedia/billing/BillingRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ResponseCode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lnet/robotmedia/billing/BillingRequest$ResponseCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lnet/robotmedia/billing/BillingRequest$ResponseCode;

.field public static final enum RESULT_BILLING_UNAVAILABLE:Lnet/robotmedia/billing/BillingRequest$ResponseCode;

.field public static final enum RESULT_DEVELOPER_ERROR:Lnet/robotmedia/billing/BillingRequest$ResponseCode;

.field public static final enum RESULT_ERROR:Lnet/robotmedia/billing/BillingRequest$ResponseCode;

.field public static final enum RESULT_ITEM_UNAVAILABLE:Lnet/robotmedia/billing/BillingRequest$ResponseCode;

.field public static final enum RESULT_OK:Lnet/robotmedia/billing/BillingRequest$ResponseCode;

.field public static final enum RESULT_SERVICE_UNAVAILABLE:Lnet/robotmedia/billing/BillingRequest$ResponseCode;

.field public static final enum RESULT_USER_CANCELED:Lnet/robotmedia/billing/BillingRequest$ResponseCode;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 134
    new-instance v0, Lnet/robotmedia/billing/BillingRequest$ResponseCode;

    const-string v1, "RESULT_OK"

    invoke-direct {v0, v1, v3}, Lnet/robotmedia/billing/BillingRequest$ResponseCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/robotmedia/billing/BillingRequest$ResponseCode;->RESULT_OK:Lnet/robotmedia/billing/BillingRequest$ResponseCode;

    .line 135
    new-instance v0, Lnet/robotmedia/billing/BillingRequest$ResponseCode;

    const-string v1, "RESULT_USER_CANCELED"

    invoke-direct {v0, v1, v4}, Lnet/robotmedia/billing/BillingRequest$ResponseCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/robotmedia/billing/BillingRequest$ResponseCode;->RESULT_USER_CANCELED:Lnet/robotmedia/billing/BillingRequest$ResponseCode;

    .line 136
    new-instance v0, Lnet/robotmedia/billing/BillingRequest$ResponseCode;

    const-string v1, "RESULT_SERVICE_UNAVAILABLE"

    invoke-direct {v0, v1, v5}, Lnet/robotmedia/billing/BillingRequest$ResponseCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/robotmedia/billing/BillingRequest$ResponseCode;->RESULT_SERVICE_UNAVAILABLE:Lnet/robotmedia/billing/BillingRequest$ResponseCode;

    .line 137
    new-instance v0, Lnet/robotmedia/billing/BillingRequest$ResponseCode;

    const-string v1, "RESULT_BILLING_UNAVAILABLE"

    invoke-direct {v0, v1, v6}, Lnet/robotmedia/billing/BillingRequest$ResponseCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/robotmedia/billing/BillingRequest$ResponseCode;->RESULT_BILLING_UNAVAILABLE:Lnet/robotmedia/billing/BillingRequest$ResponseCode;

    .line 138
    new-instance v0, Lnet/robotmedia/billing/BillingRequest$ResponseCode;

    const-string v1, "RESULT_ITEM_UNAVAILABLE"

    invoke-direct {v0, v1, v7}, Lnet/robotmedia/billing/BillingRequest$ResponseCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/robotmedia/billing/BillingRequest$ResponseCode;->RESULT_ITEM_UNAVAILABLE:Lnet/robotmedia/billing/BillingRequest$ResponseCode;

    .line 139
    new-instance v0, Lnet/robotmedia/billing/BillingRequest$ResponseCode;

    const-string v1, "RESULT_DEVELOPER_ERROR"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lnet/robotmedia/billing/BillingRequest$ResponseCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/robotmedia/billing/BillingRequest$ResponseCode;->RESULT_DEVELOPER_ERROR:Lnet/robotmedia/billing/BillingRequest$ResponseCode;

    .line 140
    new-instance v0, Lnet/robotmedia/billing/BillingRequest$ResponseCode;

    const-string v1, "RESULT_ERROR"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lnet/robotmedia/billing/BillingRequest$ResponseCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/robotmedia/billing/BillingRequest$ResponseCode;->RESULT_ERROR:Lnet/robotmedia/billing/BillingRequest$ResponseCode;

    .line 133
    const/4 v0, 0x7

    new-array v0, v0, [Lnet/robotmedia/billing/BillingRequest$ResponseCode;

    sget-object v1, Lnet/robotmedia/billing/BillingRequest$ResponseCode;->RESULT_OK:Lnet/robotmedia/billing/BillingRequest$ResponseCode;

    aput-object v1, v0, v3

    sget-object v1, Lnet/robotmedia/billing/BillingRequest$ResponseCode;->RESULT_USER_CANCELED:Lnet/robotmedia/billing/BillingRequest$ResponseCode;

    aput-object v1, v0, v4

    sget-object v1, Lnet/robotmedia/billing/BillingRequest$ResponseCode;->RESULT_SERVICE_UNAVAILABLE:Lnet/robotmedia/billing/BillingRequest$ResponseCode;

    aput-object v1, v0, v5

    sget-object v1, Lnet/robotmedia/billing/BillingRequest$ResponseCode;->RESULT_BILLING_UNAVAILABLE:Lnet/robotmedia/billing/BillingRequest$ResponseCode;

    aput-object v1, v0, v6

    sget-object v1, Lnet/robotmedia/billing/BillingRequest$ResponseCode;->RESULT_ITEM_UNAVAILABLE:Lnet/robotmedia/billing/BillingRequest$ResponseCode;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lnet/robotmedia/billing/BillingRequest$ResponseCode;->RESULT_DEVELOPER_ERROR:Lnet/robotmedia/billing/BillingRequest$ResponseCode;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lnet/robotmedia/billing/BillingRequest$ResponseCode;->RESULT_ERROR:Lnet/robotmedia/billing/BillingRequest$ResponseCode;

    aput-object v2, v0, v1

    sput-object v0, Lnet/robotmedia/billing/BillingRequest$ResponseCode;->ENUM$VALUES:[Lnet/robotmedia/billing/BillingRequest$ResponseCode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 133
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static isResponseOk(I)Z
    .locals 1
    .parameter "response"

    .prologue
    .line 143
    sget-object v0, Lnet/robotmedia/billing/BillingRequest$ResponseCode;->RESULT_OK:Lnet/robotmedia/billing/BillingRequest$ResponseCode;

    invoke-virtual {v0}, Lnet/robotmedia/billing/BillingRequest$ResponseCode;->ordinal()I

    move-result v0

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static valueOf(I)Lnet/robotmedia/billing/BillingRequest$ResponseCode;
    .locals 2
    .parameter "index"

    .prologue
    .line 148
    invoke-static {}, Lnet/robotmedia/billing/BillingRequest$ResponseCode;->values()[Lnet/robotmedia/billing/BillingRequest$ResponseCode;

    move-result-object v0

    .line 149
    .local v0, values:[Lnet/robotmedia/billing/BillingRequest$ResponseCode;
    if-ltz p0, :cond_0

    array-length v1, v0

    if-lt p0, v1, :cond_1

    .line 150
    :cond_0
    sget-object v1, Lnet/robotmedia/billing/BillingRequest$ResponseCode;->RESULT_ERROR:Lnet/robotmedia/billing/BillingRequest$ResponseCode;

    .line 152
    :goto_0
    return-object v1

    :cond_1
    aget-object v1, v0, p0

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/robotmedia/billing/BillingRequest$ResponseCode;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lnet/robotmedia/billing/BillingRequest$ResponseCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lnet/robotmedia/billing/BillingRequest$ResponseCode;

    return-object v0
.end method

.method public static values()[Lnet/robotmedia/billing/BillingRequest$ResponseCode;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lnet/robotmedia/billing/BillingRequest$ResponseCode;->ENUM$VALUES:[Lnet/robotmedia/billing/BillingRequest$ResponseCode;

    array-length v1, v0

    new-array v2, v1, [Lnet/robotmedia/billing/BillingRequest$ResponseCode;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
