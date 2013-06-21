.class public final enum Lcom/scoreloop/client/android/core/model/Activity$ImageSize;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation build Lcom/scoreloop/client/android/core/PublishedFor__2_2_0;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scoreloop/client/android/core/model/Activity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ImageSize"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/scoreloop/client/android/core/model/Activity$ImageSize;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum LARGE:Lcom/scoreloop/client/android/core/model/Activity$ImageSize;

.field public static final enum MEDIUM:Lcom/scoreloop/client/android/core/model/Activity$ImageSize;

.field public static final enum SMALL:Lcom/scoreloop/client/android/core/model/Activity$ImageSize;

.field private static final synthetic b:[Lcom/scoreloop/client/android/core/model/Activity$ImageSize;


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 222
    new-instance v0, Lcom/scoreloop/client/android/core/model/Activity$ImageSize;

    const-string v1, "SMALL"

    const-string v2, "small"

    invoke-direct {v0, v1, v3, v2}, Lcom/scoreloop/client/android/core/model/Activity$ImageSize;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/scoreloop/client/android/core/model/Activity$ImageSize;->SMALL:Lcom/scoreloop/client/android/core/model/Activity$ImageSize;

    .line 223
    new-instance v0, Lcom/scoreloop/client/android/core/model/Activity$ImageSize;

    const-string v1, "MEDIUM"

    const-string v2, "medium"

    invoke-direct {v0, v1, v4, v2}, Lcom/scoreloop/client/android/core/model/Activity$ImageSize;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/scoreloop/client/android/core/model/Activity$ImageSize;->MEDIUM:Lcom/scoreloop/client/android/core/model/Activity$ImageSize;

    .line 224
    new-instance v0, Lcom/scoreloop/client/android/core/model/Activity$ImageSize;

    const-string v1, "LARGE"

    const-string v2, "large"

    invoke-direct {v0, v1, v5, v2}, Lcom/scoreloop/client/android/core/model/Activity$ImageSize;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/scoreloop/client/android/core/model/Activity$ImageSize;->LARGE:Lcom/scoreloop/client/android/core/model/Activity$ImageSize;

    .line 220
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/scoreloop/client/android/core/model/Activity$ImageSize;

    sget-object v1, Lcom/scoreloop/client/android/core/model/Activity$ImageSize;->SMALL:Lcom/scoreloop/client/android/core/model/Activity$ImageSize;

    aput-object v1, v0, v3

    sget-object v1, Lcom/scoreloop/client/android/core/model/Activity$ImageSize;->MEDIUM:Lcom/scoreloop/client/android/core/model/Activity$ImageSize;

    aput-object v1, v0, v4

    sget-object v1, Lcom/scoreloop/client/android/core/model/Activity$ImageSize;->LARGE:Lcom/scoreloop/client/android/core/model/Activity$ImageSize;

    aput-object v1, v0, v5

    sput-object v0, Lcom/scoreloop/client/android/core/model/Activity$ImageSize;->b:[Lcom/scoreloop/client/android/core/model/Activity$ImageSize;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 229
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 230
    iput-object p3, p0, Lcom/scoreloop/client/android/core/model/Activity$ImageSize;->a:Ljava/lang/String;

    .line 231
    return-void
.end method

.method static synthetic a(Lcom/scoreloop/client/android/core/model/Activity$ImageSize;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 221
    iget-object v0, p0, Lcom/scoreloop/client/android/core/model/Activity$ImageSize;->a:Ljava/lang/String;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/scoreloop/client/android/core/model/Activity$ImageSize;
    .locals 1
    .parameter

    .prologue
    .line 220
    const-class v0, Lcom/scoreloop/client/android/core/model/Activity$ImageSize;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/scoreloop/client/android/core/model/Activity$ImageSize;

    return-object v0
.end method

.method public static values()[Lcom/scoreloop/client/android/core/model/Activity$ImageSize;
    .locals 1

    .prologue
    .line 220
    sget-object v0, Lcom/scoreloop/client/android/core/model/Activity$ImageSize;->b:[Lcom/scoreloop/client/android/core/model/Activity$ImageSize;

    invoke-virtual {v0}, [Lcom/scoreloop/client/android/core/model/Activity$ImageSize;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/scoreloop/client/android/core/model/Activity$ImageSize;

    return-object v0
.end method
