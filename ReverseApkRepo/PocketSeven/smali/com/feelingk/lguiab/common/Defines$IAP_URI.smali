.class public final enum Lcom/feelingk/lguiab/common/Defines$IAP_URI;
.super Ljava/lang/Enum;
.source "Defines.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/feelingk/lguiab/common/Defines;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "IAP_URI"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/feelingk/lguiab/common/Defines$IAP_URI;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum AUTH_ALL:Lcom/feelingk/lguiab/common/Defines$IAP_URI;

.field public static final enum BUY_CHECK:Lcom/feelingk/lguiab/common/Defines$IAP_URI;

.field public static final enum BUY_CONFIRM:Lcom/feelingk/lguiab/common/Defines$IAP_URI;

.field private static final synthetic ENUM$VALUES:[Lcom/feelingk/lguiab/common/Defines$IAP_URI;

.field public static final enum FEE_CHARGING:Lcom/feelingk/lguiab/common/Defines$IAP_URI;

.field public static final enum PRODUCT_INFO:Lcom/feelingk/lguiab/common/Defines$IAP_URI;

.field public static final enum USER_AUTH:Lcom/feelingk/lguiab/common/Defines$IAP_URI;

.field public static final enum USE_ITEM:Lcom/feelingk/lguiab/common/Defines$IAP_URI;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 116
    new-instance v0, Lcom/feelingk/lguiab/common/Defines$IAP_URI;

    const-string v1, "BUY_CHECK"

    invoke-direct {v0, v1, v3}, Lcom/feelingk/lguiab/common/Defines$IAP_URI;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/feelingk/lguiab/common/Defines$IAP_URI;->BUY_CHECK:Lcom/feelingk/lguiab/common/Defines$IAP_URI;

    new-instance v0, Lcom/feelingk/lguiab/common/Defines$IAP_URI;

    const-string v1, "BUY_CONFIRM"

    invoke-direct {v0, v1, v4}, Lcom/feelingk/lguiab/common/Defines$IAP_URI;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/feelingk/lguiab/common/Defines$IAP_URI;->BUY_CONFIRM:Lcom/feelingk/lguiab/common/Defines$IAP_URI;

    new-instance v0, Lcom/feelingk/lguiab/common/Defines$IAP_URI;

    const-string v1, "FEE_CHARGING"

    invoke-direct {v0, v1, v5}, Lcom/feelingk/lguiab/common/Defines$IAP_URI;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/feelingk/lguiab/common/Defines$IAP_URI;->FEE_CHARGING:Lcom/feelingk/lguiab/common/Defines$IAP_URI;

    new-instance v0, Lcom/feelingk/lguiab/common/Defines$IAP_URI;

    const-string v1, "AUTH_ALL"

    invoke-direct {v0, v1, v6}, Lcom/feelingk/lguiab/common/Defines$IAP_URI;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/feelingk/lguiab/common/Defines$IAP_URI;->AUTH_ALL:Lcom/feelingk/lguiab/common/Defines$IAP_URI;

    new-instance v0, Lcom/feelingk/lguiab/common/Defines$IAP_URI;

    const-string v1, "PRODUCT_INFO"

    invoke-direct {v0, v1, v7}, Lcom/feelingk/lguiab/common/Defines$IAP_URI;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/feelingk/lguiab/common/Defines$IAP_URI;->PRODUCT_INFO:Lcom/feelingk/lguiab/common/Defines$IAP_URI;

    new-instance v0, Lcom/feelingk/lguiab/common/Defines$IAP_URI;

    const-string v1, "USER_AUTH"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/feelingk/lguiab/common/Defines$IAP_URI;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/feelingk/lguiab/common/Defines$IAP_URI;->USER_AUTH:Lcom/feelingk/lguiab/common/Defines$IAP_URI;

    new-instance v0, Lcom/feelingk/lguiab/common/Defines$IAP_URI;

    const-string v1, "USE_ITEM"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/feelingk/lguiab/common/Defines$IAP_URI;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/feelingk/lguiab/common/Defines$IAP_URI;->USE_ITEM:Lcom/feelingk/lguiab/common/Defines$IAP_URI;

    .line 115
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/feelingk/lguiab/common/Defines$IAP_URI;

    sget-object v1, Lcom/feelingk/lguiab/common/Defines$IAP_URI;->BUY_CHECK:Lcom/feelingk/lguiab/common/Defines$IAP_URI;

    aput-object v1, v0, v3

    sget-object v1, Lcom/feelingk/lguiab/common/Defines$IAP_URI;->BUY_CONFIRM:Lcom/feelingk/lguiab/common/Defines$IAP_URI;

    aput-object v1, v0, v4

    sget-object v1, Lcom/feelingk/lguiab/common/Defines$IAP_URI;->FEE_CHARGING:Lcom/feelingk/lguiab/common/Defines$IAP_URI;

    aput-object v1, v0, v5

    sget-object v1, Lcom/feelingk/lguiab/common/Defines$IAP_URI;->AUTH_ALL:Lcom/feelingk/lguiab/common/Defines$IAP_URI;

    aput-object v1, v0, v6

    sget-object v1, Lcom/feelingk/lguiab/common/Defines$IAP_URI;->PRODUCT_INFO:Lcom/feelingk/lguiab/common/Defines$IAP_URI;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/feelingk/lguiab/common/Defines$IAP_URI;->USER_AUTH:Lcom/feelingk/lguiab/common/Defines$IAP_URI;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/feelingk/lguiab/common/Defines$IAP_URI;->USE_ITEM:Lcom/feelingk/lguiab/common/Defines$IAP_URI;

    aput-object v2, v0, v1

    sput-object v0, Lcom/feelingk/lguiab/common/Defines$IAP_URI;->ENUM$VALUES:[Lcom/feelingk/lguiab/common/Defines$IAP_URI;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 115
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/feelingk/lguiab/common/Defines$IAP_URI;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/feelingk/lguiab/common/Defines$IAP_URI;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/feelingk/lguiab/common/Defines$IAP_URI;

    return-object v0
.end method

.method public static values()[Lcom/feelingk/lguiab/common/Defines$IAP_URI;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/feelingk/lguiab/common/Defines$IAP_URI;->ENUM$VALUES:[Lcom/feelingk/lguiab/common/Defines$IAP_URI;

    array-length v1, v0

    new-array v2, v1, [Lcom/feelingk/lguiab/common/Defines$IAP_URI;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
