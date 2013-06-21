.class final enum Lcom/addthis/utils/ATConstants$StatusCode;
.super Ljava/lang/Enum;
.source "ATConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/addthis/utils/ATConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "StatusCode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/addthis/utils/ATConstants$StatusCode;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DOES_NOT_SUPPORT_IMAGE_SHARE:Lcom/addthis/utils/ATConstants$StatusCode;

.field private static final synthetic ENUM$VALUES:[Lcom/addthis/utils/ATConstants$StatusCode;

.field public static final enum SHARE_ITEM_MISSING:Lcom/addthis/utils/ATConstants$StatusCode;

.field public static final enum SUCCESS:Lcom/addthis/utils/ATConstants$StatusCode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 19
    new-instance v0, Lcom/addthis/utils/ATConstants$StatusCode;

    const-string v1, "SUCCESS"

    invoke-direct {v0, v1, v2}, Lcom/addthis/utils/ATConstants$StatusCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/addthis/utils/ATConstants$StatusCode;->SUCCESS:Lcom/addthis/utils/ATConstants$StatusCode;

    new-instance v0, Lcom/addthis/utils/ATConstants$StatusCode;

    const-string v1, "DOES_NOT_SUPPORT_IMAGE_SHARE"

    invoke-direct {v0, v1, v3}, Lcom/addthis/utils/ATConstants$StatusCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/addthis/utils/ATConstants$StatusCode;->DOES_NOT_SUPPORT_IMAGE_SHARE:Lcom/addthis/utils/ATConstants$StatusCode;

    new-instance v0, Lcom/addthis/utils/ATConstants$StatusCode;

    const-string v1, "SHARE_ITEM_MISSING"

    invoke-direct {v0, v1, v4}, Lcom/addthis/utils/ATConstants$StatusCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/addthis/utils/ATConstants$StatusCode;->SHARE_ITEM_MISSING:Lcom/addthis/utils/ATConstants$StatusCode;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/addthis/utils/ATConstants$StatusCode;

    sget-object v1, Lcom/addthis/utils/ATConstants$StatusCode;->SUCCESS:Lcom/addthis/utils/ATConstants$StatusCode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/addthis/utils/ATConstants$StatusCode;->DOES_NOT_SUPPORT_IMAGE_SHARE:Lcom/addthis/utils/ATConstants$StatusCode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/addthis/utils/ATConstants$StatusCode;->SHARE_ITEM_MISSING:Lcom/addthis/utils/ATConstants$StatusCode;

    aput-object v1, v0, v4

    sput-object v0, Lcom/addthis/utils/ATConstants$StatusCode;->ENUM$VALUES:[Lcom/addthis/utils/ATConstants$StatusCode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/addthis/utils/ATConstants$StatusCode;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/addthis/utils/ATConstants$StatusCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/addthis/utils/ATConstants$StatusCode;

    return-object v0
.end method

.method public static values()[Lcom/addthis/utils/ATConstants$StatusCode;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/addthis/utils/ATConstants$StatusCode;->ENUM$VALUES:[Lcom/addthis/utils/ATConstants$StatusCode;

    array-length v1, v0

    new-array v2, v1, [Lcom/addthis/utils/ATConstants$StatusCode;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
