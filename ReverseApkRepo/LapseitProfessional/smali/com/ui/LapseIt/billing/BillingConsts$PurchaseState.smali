.class public final enum Lcom/ui/LapseIt/billing/BillingConsts$PurchaseState;
.super Ljava/lang/Enum;
.source "BillingConsts.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ui/LapseIt/billing/BillingConsts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PurchaseState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/ui/LapseIt/billing/BillingConsts$PurchaseState;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CANCELED:Lcom/ui/LapseIt/billing/BillingConsts$PurchaseState;

.field private static final synthetic ENUM$VALUES:[Lcom/ui/LapseIt/billing/BillingConsts$PurchaseState;

.field public static final enum PURCHASED:Lcom/ui/LapseIt/billing/BillingConsts$PurchaseState;

.field public static final enum REFUNDED:Lcom/ui/LapseIt/billing/BillingConsts$PurchaseState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 72
    new-instance v0, Lcom/ui/LapseIt/billing/BillingConsts$PurchaseState;

    const-string v1, "PURCHASED"

    invoke-direct {v0, v1, v2}, Lcom/ui/LapseIt/billing/BillingConsts$PurchaseState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ui/LapseIt/billing/BillingConsts$PurchaseState;->PURCHASED:Lcom/ui/LapseIt/billing/BillingConsts$PurchaseState;

    .line 73
    new-instance v0, Lcom/ui/LapseIt/billing/BillingConsts$PurchaseState;

    const-string v1, "CANCELED"

    invoke-direct {v0, v1, v3}, Lcom/ui/LapseIt/billing/BillingConsts$PurchaseState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ui/LapseIt/billing/BillingConsts$PurchaseState;->CANCELED:Lcom/ui/LapseIt/billing/BillingConsts$PurchaseState;

    .line 74
    new-instance v0, Lcom/ui/LapseIt/billing/BillingConsts$PurchaseState;

    const-string v1, "REFUNDED"

    invoke-direct {v0, v1, v4}, Lcom/ui/LapseIt/billing/BillingConsts$PurchaseState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ui/LapseIt/billing/BillingConsts$PurchaseState;->REFUNDED:Lcom/ui/LapseIt/billing/BillingConsts$PurchaseState;

    .line 71
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/ui/LapseIt/billing/BillingConsts$PurchaseState;

    sget-object v1, Lcom/ui/LapseIt/billing/BillingConsts$PurchaseState;->PURCHASED:Lcom/ui/LapseIt/billing/BillingConsts$PurchaseState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/ui/LapseIt/billing/BillingConsts$PurchaseState;->CANCELED:Lcom/ui/LapseIt/billing/BillingConsts$PurchaseState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/ui/LapseIt/billing/BillingConsts$PurchaseState;->REFUNDED:Lcom/ui/LapseIt/billing/BillingConsts$PurchaseState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/ui/LapseIt/billing/BillingConsts$PurchaseState;->ENUM$VALUES:[Lcom/ui/LapseIt/billing/BillingConsts$PurchaseState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 71
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(I)Lcom/ui/LapseIt/billing/BillingConsts$PurchaseState;
    .locals 2
    .parameter "index"

    .prologue
    .line 77
    invoke-static {}, Lcom/ui/LapseIt/billing/BillingConsts$PurchaseState;->values()[Lcom/ui/LapseIt/billing/BillingConsts$PurchaseState;

    move-result-object v0

    .line 78
    .local v0, values:[Lcom/ui/LapseIt/billing/BillingConsts$PurchaseState;
    if-ltz p0, :cond_0

    array-length v1, v0

    if-lt p0, v1, :cond_1

    .line 79
    :cond_0
    sget-object v1, Lcom/ui/LapseIt/billing/BillingConsts$PurchaseState;->CANCELED:Lcom/ui/LapseIt/billing/BillingConsts$PurchaseState;

    .line 81
    :goto_0
    return-object v1

    :cond_1
    aget-object v1, v0, p0

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ui/LapseIt/billing/BillingConsts$PurchaseState;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/ui/LapseIt/billing/BillingConsts$PurchaseState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ui/LapseIt/billing/BillingConsts$PurchaseState;

    return-object v0
.end method

.method public static values()[Lcom/ui/LapseIt/billing/BillingConsts$PurchaseState;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/ui/LapseIt/billing/BillingConsts$PurchaseState;->ENUM$VALUES:[Lcom/ui/LapseIt/billing/BillingConsts$PurchaseState;

    array-length v1, v0

    new-array v2, v1, [Lcom/ui/LapseIt/billing/BillingConsts$PurchaseState;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
