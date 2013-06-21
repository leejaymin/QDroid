.class public final enum Lcom/feelingk/lguiab/common/Defines$KOR_TELECOM_INFO;
.super Ljava/lang/Enum;
.source "Defines.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/feelingk/lguiab/common/Defines;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "KOR_TELECOM_INFO"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/feelingk/lguiab/common/Defines$KOR_TELECOM_INFO;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/feelingk/lguiab/common/Defines$KOR_TELECOM_INFO;

.field public static final enum KT_TELECOM:Lcom/feelingk/lguiab/common/Defines$KOR_TELECOM_INFO;

.field public static final enum LG_TELECOM:Lcom/feelingk/lguiab/common/Defines$KOR_TELECOM_INFO;

.field public static final enum NO_TELECOM:Lcom/feelingk/lguiab/common/Defines$KOR_TELECOM_INFO;

.field public static final enum SK_TELECOM:Lcom/feelingk/lguiab/common/Defines$KOR_TELECOM_INFO;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 179
    new-instance v0, Lcom/feelingk/lguiab/common/Defines$KOR_TELECOM_INFO;

    const-string v1, "NO_TELECOM"

    invoke-direct {v0, v1, v2}, Lcom/feelingk/lguiab/common/Defines$KOR_TELECOM_INFO;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/feelingk/lguiab/common/Defines$KOR_TELECOM_INFO;->NO_TELECOM:Lcom/feelingk/lguiab/common/Defines$KOR_TELECOM_INFO;

    new-instance v0, Lcom/feelingk/lguiab/common/Defines$KOR_TELECOM_INFO;

    const-string v1, "LG_TELECOM"

    invoke-direct {v0, v1, v3}, Lcom/feelingk/lguiab/common/Defines$KOR_TELECOM_INFO;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/feelingk/lguiab/common/Defines$KOR_TELECOM_INFO;->LG_TELECOM:Lcom/feelingk/lguiab/common/Defines$KOR_TELECOM_INFO;

    new-instance v0, Lcom/feelingk/lguiab/common/Defines$KOR_TELECOM_INFO;

    const-string v1, "KT_TELECOM"

    invoke-direct {v0, v1, v4}, Lcom/feelingk/lguiab/common/Defines$KOR_TELECOM_INFO;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/feelingk/lguiab/common/Defines$KOR_TELECOM_INFO;->KT_TELECOM:Lcom/feelingk/lguiab/common/Defines$KOR_TELECOM_INFO;

    new-instance v0, Lcom/feelingk/lguiab/common/Defines$KOR_TELECOM_INFO;

    const-string v1, "SK_TELECOM"

    invoke-direct {v0, v1, v5}, Lcom/feelingk/lguiab/common/Defines$KOR_TELECOM_INFO;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/feelingk/lguiab/common/Defines$KOR_TELECOM_INFO;->SK_TELECOM:Lcom/feelingk/lguiab/common/Defines$KOR_TELECOM_INFO;

    .line 178
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/feelingk/lguiab/common/Defines$KOR_TELECOM_INFO;

    sget-object v1, Lcom/feelingk/lguiab/common/Defines$KOR_TELECOM_INFO;->NO_TELECOM:Lcom/feelingk/lguiab/common/Defines$KOR_TELECOM_INFO;

    aput-object v1, v0, v2

    sget-object v1, Lcom/feelingk/lguiab/common/Defines$KOR_TELECOM_INFO;->LG_TELECOM:Lcom/feelingk/lguiab/common/Defines$KOR_TELECOM_INFO;

    aput-object v1, v0, v3

    sget-object v1, Lcom/feelingk/lguiab/common/Defines$KOR_TELECOM_INFO;->KT_TELECOM:Lcom/feelingk/lguiab/common/Defines$KOR_TELECOM_INFO;

    aput-object v1, v0, v4

    sget-object v1, Lcom/feelingk/lguiab/common/Defines$KOR_TELECOM_INFO;->SK_TELECOM:Lcom/feelingk/lguiab/common/Defines$KOR_TELECOM_INFO;

    aput-object v1, v0, v5

    sput-object v0, Lcom/feelingk/lguiab/common/Defines$KOR_TELECOM_INFO;->ENUM$VALUES:[Lcom/feelingk/lguiab/common/Defines$KOR_TELECOM_INFO;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 178
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/feelingk/lguiab/common/Defines$KOR_TELECOM_INFO;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/feelingk/lguiab/common/Defines$KOR_TELECOM_INFO;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/feelingk/lguiab/common/Defines$KOR_TELECOM_INFO;

    return-object v0
.end method

.method public static values()[Lcom/feelingk/lguiab/common/Defines$KOR_TELECOM_INFO;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/feelingk/lguiab/common/Defines$KOR_TELECOM_INFO;->ENUM$VALUES:[Lcom/feelingk/lguiab/common/Defines$KOR_TELECOM_INFO;

    array-length v1, v0

    new-array v2, v1, [Lcom/feelingk/lguiab/common/Defines$KOR_TELECOM_INFO;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
