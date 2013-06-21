.class public final enum Lnet/robotmedia/billing/BillingController$BillingStatus;
.super Ljava/lang/Enum;
.source "BillingController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/robotmedia/billing/BillingController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BillingStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lnet/robotmedia/billing/BillingController$BillingStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lnet/robotmedia/billing/BillingController$BillingStatus;

.field public static final enum SUPPORTED:Lnet/robotmedia/billing/BillingController$BillingStatus;

.field public static final enum UNKNOWN:Lnet/robotmedia/billing/BillingController$BillingStatus;

.field public static final enum UNSUPPORTED:Lnet/robotmedia/billing/BillingController$BillingStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 46
    new-instance v0, Lnet/robotmedia/billing/BillingController$BillingStatus;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v2}, Lnet/robotmedia/billing/BillingController$BillingStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/robotmedia/billing/BillingController$BillingStatus;->UNKNOWN:Lnet/robotmedia/billing/BillingController$BillingStatus;

    new-instance v0, Lnet/robotmedia/billing/BillingController$BillingStatus;

    const-string v1, "SUPPORTED"

    invoke-direct {v0, v1, v3}, Lnet/robotmedia/billing/BillingController$BillingStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/robotmedia/billing/BillingController$BillingStatus;->SUPPORTED:Lnet/robotmedia/billing/BillingController$BillingStatus;

    new-instance v0, Lnet/robotmedia/billing/BillingController$BillingStatus;

    const-string v1, "UNSUPPORTED"

    invoke-direct {v0, v1, v4}, Lnet/robotmedia/billing/BillingController$BillingStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/robotmedia/billing/BillingController$BillingStatus;->UNSUPPORTED:Lnet/robotmedia/billing/BillingController$BillingStatus;

    .line 45
    const/4 v0, 0x3

    new-array v0, v0, [Lnet/robotmedia/billing/BillingController$BillingStatus;

    sget-object v1, Lnet/robotmedia/billing/BillingController$BillingStatus;->UNKNOWN:Lnet/robotmedia/billing/BillingController$BillingStatus;

    aput-object v1, v0, v2

    sget-object v1, Lnet/robotmedia/billing/BillingController$BillingStatus;->SUPPORTED:Lnet/robotmedia/billing/BillingController$BillingStatus;

    aput-object v1, v0, v3

    sget-object v1, Lnet/robotmedia/billing/BillingController$BillingStatus;->UNSUPPORTED:Lnet/robotmedia/billing/BillingController$BillingStatus;

    aput-object v1, v0, v4

    sput-object v0, Lnet/robotmedia/billing/BillingController$BillingStatus;->ENUM$VALUES:[Lnet/robotmedia/billing/BillingController$BillingStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/robotmedia/billing/BillingController$BillingStatus;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lnet/robotmedia/billing/BillingController$BillingStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lnet/robotmedia/billing/BillingController$BillingStatus;

    return-object v0
.end method

.method public static values()[Lnet/robotmedia/billing/BillingController$BillingStatus;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lnet/robotmedia/billing/BillingController$BillingStatus;->ENUM$VALUES:[Lnet/robotmedia/billing/BillingController$BillingStatus;

    array-length v1, v0

    new-array v2, v1, [Lnet/robotmedia/billing/BillingController$BillingStatus;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
