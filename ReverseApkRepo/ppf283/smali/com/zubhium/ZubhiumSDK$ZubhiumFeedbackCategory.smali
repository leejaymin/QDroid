.class public final enum Lcom/zubhium/ZubhiumSDK$ZubhiumFeedbackCategory;
.super Ljava/lang/Enum;
.source "ZubhiumSDK.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zubhium/ZubhiumSDK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ZubhiumFeedbackCategory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/zubhium/ZubhiumSDK$ZubhiumFeedbackCategory;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum BUG:Lcom/zubhium/ZubhiumSDK$ZubhiumFeedbackCategory;

.field private static final synthetic ENUM$VALUES:[Lcom/zubhium/ZubhiumSDK$ZubhiumFeedbackCategory;

.field public static final enum FEATURE:Lcom/zubhium/ZubhiumSDK$ZubhiumFeedbackCategory;

.field public static final enum OTHER:Lcom/zubhium/ZubhiumSDK$ZubhiumFeedbackCategory;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 868
    new-instance v0, Lcom/zubhium/ZubhiumSDK$ZubhiumFeedbackCategory;

    const-string v1, "BUG"

    invoke-direct {v0, v1, v2}, Lcom/zubhium/ZubhiumSDK$ZubhiumFeedbackCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zubhium/ZubhiumSDK$ZubhiumFeedbackCategory;->BUG:Lcom/zubhium/ZubhiumSDK$ZubhiumFeedbackCategory;

    new-instance v0, Lcom/zubhium/ZubhiumSDK$ZubhiumFeedbackCategory;

    const-string v1, "FEATURE"

    invoke-direct {v0, v1, v3}, Lcom/zubhium/ZubhiumSDK$ZubhiumFeedbackCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zubhium/ZubhiumSDK$ZubhiumFeedbackCategory;->FEATURE:Lcom/zubhium/ZubhiumSDK$ZubhiumFeedbackCategory;

    new-instance v0, Lcom/zubhium/ZubhiumSDK$ZubhiumFeedbackCategory;

    const-string v1, "OTHER"

    invoke-direct {v0, v1, v4}, Lcom/zubhium/ZubhiumSDK$ZubhiumFeedbackCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zubhium/ZubhiumSDK$ZubhiumFeedbackCategory;->OTHER:Lcom/zubhium/ZubhiumSDK$ZubhiumFeedbackCategory;

    .line 867
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/zubhium/ZubhiumSDK$ZubhiumFeedbackCategory;

    sget-object v1, Lcom/zubhium/ZubhiumSDK$ZubhiumFeedbackCategory;->BUG:Lcom/zubhium/ZubhiumSDK$ZubhiumFeedbackCategory;

    aput-object v1, v0, v2

    sget-object v1, Lcom/zubhium/ZubhiumSDK$ZubhiumFeedbackCategory;->FEATURE:Lcom/zubhium/ZubhiumSDK$ZubhiumFeedbackCategory;

    aput-object v1, v0, v3

    sget-object v1, Lcom/zubhium/ZubhiumSDK$ZubhiumFeedbackCategory;->OTHER:Lcom/zubhium/ZubhiumSDK$ZubhiumFeedbackCategory;

    aput-object v1, v0, v4

    sput-object v0, Lcom/zubhium/ZubhiumSDK$ZubhiumFeedbackCategory;->ENUM$VALUES:[Lcom/zubhium/ZubhiumSDK$ZubhiumFeedbackCategory;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 867
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/zubhium/ZubhiumSDK$ZubhiumFeedbackCategory;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/zubhium/ZubhiumSDK$ZubhiumFeedbackCategory;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/zubhium/ZubhiumSDK$ZubhiumFeedbackCategory;

    return-object v0
.end method

.method public static values()[Lcom/zubhium/ZubhiumSDK$ZubhiumFeedbackCategory;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/zubhium/ZubhiumSDK$ZubhiumFeedbackCategory;->ENUM$VALUES:[Lcom/zubhium/ZubhiumSDK$ZubhiumFeedbackCategory;

    array-length v1, v0

    new-array v2, v1, [Lcom/zubhium/ZubhiumSDK$ZubhiumFeedbackCategory;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
