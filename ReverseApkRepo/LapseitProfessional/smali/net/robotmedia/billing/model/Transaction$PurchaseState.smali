.class public final enum Lnet/robotmedia/billing/model/Transaction$PurchaseState;
.super Ljava/lang/Enum;
.source "Transaction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/robotmedia/billing/model/Transaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PurchaseState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lnet/robotmedia/billing/model/Transaction$PurchaseState;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CANCELLED:Lnet/robotmedia/billing/model/Transaction$PurchaseState;

.field private static final synthetic ENUM$VALUES:[Lnet/robotmedia/billing/model/Transaction$PurchaseState;

.field public static final enum PURCHASED:Lnet/robotmedia/billing/model/Transaction$PurchaseState;

.field public static final enum REFUNDED:Lnet/robotmedia/billing/model/Transaction$PurchaseState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 24
    new-instance v0, Lnet/robotmedia/billing/model/Transaction$PurchaseState;

    const-string v1, "PURCHASED"

    invoke-direct {v0, v1, v2}, Lnet/robotmedia/billing/model/Transaction$PurchaseState;-><init>(Ljava/lang/String;I)V

    .line 25
    sput-object v0, Lnet/robotmedia/billing/model/Transaction$PurchaseState;->PURCHASED:Lnet/robotmedia/billing/model/Transaction$PurchaseState;

    .line 26
    new-instance v0, Lnet/robotmedia/billing/model/Transaction$PurchaseState;

    const-string v1, "CANCELLED"

    invoke-direct {v0, v1, v3}, Lnet/robotmedia/billing/model/Transaction$PurchaseState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/robotmedia/billing/model/Transaction$PurchaseState;->CANCELLED:Lnet/robotmedia/billing/model/Transaction$PurchaseState;

    .line 27
    new-instance v0, Lnet/robotmedia/billing/model/Transaction$PurchaseState;

    const-string v1, "REFUNDED"

    invoke-direct {v0, v1, v4}, Lnet/robotmedia/billing/model/Transaction$PurchaseState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/robotmedia/billing/model/Transaction$PurchaseState;->REFUNDED:Lnet/robotmedia/billing/model/Transaction$PurchaseState;

    .line 23
    const/4 v0, 0x3

    new-array v0, v0, [Lnet/robotmedia/billing/model/Transaction$PurchaseState;

    sget-object v1, Lnet/robotmedia/billing/model/Transaction$PurchaseState;->PURCHASED:Lnet/robotmedia/billing/model/Transaction$PurchaseState;

    aput-object v1, v0, v2

    sget-object v1, Lnet/robotmedia/billing/model/Transaction$PurchaseState;->CANCELLED:Lnet/robotmedia/billing/model/Transaction$PurchaseState;

    aput-object v1, v0, v3

    sget-object v1, Lnet/robotmedia/billing/model/Transaction$PurchaseState;->REFUNDED:Lnet/robotmedia/billing/model/Transaction$PurchaseState;

    aput-object v1, v0, v4

    sput-object v0, Lnet/robotmedia/billing/model/Transaction$PurchaseState;->ENUM$VALUES:[Lnet/robotmedia/billing/model/Transaction$PurchaseState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(I)Lnet/robotmedia/billing/model/Transaction$PurchaseState;
    .locals 2
    .parameter "index"

    .prologue
    .line 31
    invoke-static {}, Lnet/robotmedia/billing/model/Transaction$PurchaseState;->values()[Lnet/robotmedia/billing/model/Transaction$PurchaseState;

    move-result-object v0

    .line 32
    .local v0, values:[Lnet/robotmedia/billing/model/Transaction$PurchaseState;
    if-ltz p0, :cond_0

    array-length v1, v0

    if-lt p0, v1, :cond_1

    .line 33
    :cond_0
    sget-object v1, Lnet/robotmedia/billing/model/Transaction$PurchaseState;->CANCELLED:Lnet/robotmedia/billing/model/Transaction$PurchaseState;

    .line 35
    :goto_0
    return-object v1

    :cond_1
    aget-object v1, v0, p0

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/robotmedia/billing/model/Transaction$PurchaseState;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lnet/robotmedia/billing/model/Transaction$PurchaseState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lnet/robotmedia/billing/model/Transaction$PurchaseState;

    return-object v0
.end method

.method public static values()[Lnet/robotmedia/billing/model/Transaction$PurchaseState;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lnet/robotmedia/billing/model/Transaction$PurchaseState;->ENUM$VALUES:[Lnet/robotmedia/billing/model/Transaction$PurchaseState;

    array-length v1, v0

    new-array v2, v1, [Lnet/robotmedia/billing/model/Transaction$PurchaseState;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
