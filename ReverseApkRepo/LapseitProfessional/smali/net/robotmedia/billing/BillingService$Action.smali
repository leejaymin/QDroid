.class final enum Lnet/robotmedia/billing/BillingService$Action;
.super Ljava/lang/Enum;
.source "BillingService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/robotmedia/billing/BillingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Action"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lnet/robotmedia/billing/BillingService$Action;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CHECK_BILLING_SUPPORTED:Lnet/robotmedia/billing/BillingService$Action;

.field public static final enum CONFIRM_NOTIFICATIONS:Lnet/robotmedia/billing/BillingService$Action;

.field private static final synthetic ENUM$VALUES:[Lnet/robotmedia/billing/BillingService$Action;

.field public static final enum GET_PURCHASE_INFORMATION:Lnet/robotmedia/billing/BillingService$Action;

.field public static final enum REQUEST_PURCHASE:Lnet/robotmedia/billing/BillingService$Action;

.field public static final enum RESTORE_TRANSACTIONS:Lnet/robotmedia/billing/BillingService$Action;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 38
    new-instance v0, Lnet/robotmedia/billing/BillingService$Action;

    const-string v1, "CHECK_BILLING_SUPPORTED"

    invoke-direct {v0, v1, v2}, Lnet/robotmedia/billing/BillingService$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/robotmedia/billing/BillingService$Action;->CHECK_BILLING_SUPPORTED:Lnet/robotmedia/billing/BillingService$Action;

    new-instance v0, Lnet/robotmedia/billing/BillingService$Action;

    const-string v1, "CONFIRM_NOTIFICATIONS"

    invoke-direct {v0, v1, v3}, Lnet/robotmedia/billing/BillingService$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/robotmedia/billing/BillingService$Action;->CONFIRM_NOTIFICATIONS:Lnet/robotmedia/billing/BillingService$Action;

    new-instance v0, Lnet/robotmedia/billing/BillingService$Action;

    const-string v1, "GET_PURCHASE_INFORMATION"

    invoke-direct {v0, v1, v4}, Lnet/robotmedia/billing/BillingService$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/robotmedia/billing/BillingService$Action;->GET_PURCHASE_INFORMATION:Lnet/robotmedia/billing/BillingService$Action;

    new-instance v0, Lnet/robotmedia/billing/BillingService$Action;

    const-string v1, "REQUEST_PURCHASE"

    invoke-direct {v0, v1, v5}, Lnet/robotmedia/billing/BillingService$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/robotmedia/billing/BillingService$Action;->REQUEST_PURCHASE:Lnet/robotmedia/billing/BillingService$Action;

    new-instance v0, Lnet/robotmedia/billing/BillingService$Action;

    const-string v1, "RESTORE_TRANSACTIONS"

    invoke-direct {v0, v1, v6}, Lnet/robotmedia/billing/BillingService$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/robotmedia/billing/BillingService$Action;->RESTORE_TRANSACTIONS:Lnet/robotmedia/billing/BillingService$Action;

    .line 37
    const/4 v0, 0x5

    new-array v0, v0, [Lnet/robotmedia/billing/BillingService$Action;

    sget-object v1, Lnet/robotmedia/billing/BillingService$Action;->CHECK_BILLING_SUPPORTED:Lnet/robotmedia/billing/BillingService$Action;

    aput-object v1, v0, v2

    sget-object v1, Lnet/robotmedia/billing/BillingService$Action;->CONFIRM_NOTIFICATIONS:Lnet/robotmedia/billing/BillingService$Action;

    aput-object v1, v0, v3

    sget-object v1, Lnet/robotmedia/billing/BillingService$Action;->GET_PURCHASE_INFORMATION:Lnet/robotmedia/billing/BillingService$Action;

    aput-object v1, v0, v4

    sget-object v1, Lnet/robotmedia/billing/BillingService$Action;->REQUEST_PURCHASE:Lnet/robotmedia/billing/BillingService$Action;

    aput-object v1, v0, v5

    sget-object v1, Lnet/robotmedia/billing/BillingService$Action;->RESTORE_TRANSACTIONS:Lnet/robotmedia/billing/BillingService$Action;

    aput-object v1, v0, v6

    sput-object v0, Lnet/robotmedia/billing/BillingService$Action;->ENUM$VALUES:[Lnet/robotmedia/billing/BillingService$Action;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/robotmedia/billing/BillingService$Action;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lnet/robotmedia/billing/BillingService$Action;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lnet/robotmedia/billing/BillingService$Action;

    return-object v0
.end method

.method public static values()[Lnet/robotmedia/billing/BillingService$Action;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lnet/robotmedia/billing/BillingService$Action;->ENUM$VALUES:[Lnet/robotmedia/billing/BillingService$Action;

    array-length v1, v0

    new-array v2, v1, [Lnet/robotmedia/billing/BillingService$Action;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
