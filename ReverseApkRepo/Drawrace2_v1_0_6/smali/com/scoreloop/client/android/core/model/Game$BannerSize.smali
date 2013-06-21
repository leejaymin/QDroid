.class public final enum Lcom/scoreloop/client/android/core/model/Game$BannerSize;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation build Lcom/scoreloop/client/android/core/UsedByScoreloopApp;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scoreloop/client/android/core/model/Game;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BannerSize"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/scoreloop/client/android/core/model/Game$BannerSize;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum LARGE:Lcom/scoreloop/client/android/core/model/Game$BannerSize;

.field public static final enum MEDIUM:Lcom/scoreloop/client/android/core/model/Game$BannerSize;

.field public static final enum SMALL:Lcom/scoreloop/client/android/core/model/Game$BannerSize;

.field private static final synthetic b:[Lcom/scoreloop/client/android/core/model/Game$BannerSize;


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 521
    new-instance v0, Lcom/scoreloop/client/android/core/model/Game$BannerSize;

    const-string v1, "SMALL"

    const-string v2, "small-widescreen"

    invoke-direct {v0, v1, v3, v2}, Lcom/scoreloop/client/android/core/model/Game$BannerSize;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/scoreloop/client/android/core/model/Game$BannerSize;->SMALL:Lcom/scoreloop/client/android/core/model/Game$BannerSize;

    .line 522
    new-instance v0, Lcom/scoreloop/client/android/core/model/Game$BannerSize;

    const-string v1, "MEDIUM"

    const-string v2, "medium-widescreen"

    invoke-direct {v0, v1, v4, v2}, Lcom/scoreloop/client/android/core/model/Game$BannerSize;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/scoreloop/client/android/core/model/Game$BannerSize;->MEDIUM:Lcom/scoreloop/client/android/core/model/Game$BannerSize;

    .line 523
    new-instance v0, Lcom/scoreloop/client/android/core/model/Game$BannerSize;

    const-string v1, "LARGE"

    const-string v2, "large-widescreen"

    invoke-direct {v0, v1, v5, v2}, Lcom/scoreloop/client/android/core/model/Game$BannerSize;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/scoreloop/client/android/core/model/Game$BannerSize;->LARGE:Lcom/scoreloop/client/android/core/model/Game$BannerSize;

    .line 519
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/scoreloop/client/android/core/model/Game$BannerSize;

    sget-object v1, Lcom/scoreloop/client/android/core/model/Game$BannerSize;->SMALL:Lcom/scoreloop/client/android/core/model/Game$BannerSize;

    aput-object v1, v0, v3

    sget-object v1, Lcom/scoreloop/client/android/core/model/Game$BannerSize;->MEDIUM:Lcom/scoreloop/client/android/core/model/Game$BannerSize;

    aput-object v1, v0, v4

    sget-object v1, Lcom/scoreloop/client/android/core/model/Game$BannerSize;->LARGE:Lcom/scoreloop/client/android/core/model/Game$BannerSize;

    aput-object v1, v0, v5

    sput-object v0, Lcom/scoreloop/client/android/core/model/Game$BannerSize;->b:[Lcom/scoreloop/client/android/core/model/Game$BannerSize;

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
    .line 528
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 529
    iput-object p3, p0, Lcom/scoreloop/client/android/core/model/Game$BannerSize;->a:Ljava/lang/String;

    .line 530
    return-void
.end method

.method static synthetic a(Lcom/scoreloop/client/android/core/model/Game$BannerSize;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 520
    iget-object v0, p0, Lcom/scoreloop/client/android/core/model/Game$BannerSize;->a:Ljava/lang/String;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/scoreloop/client/android/core/model/Game$BannerSize;
    .locals 1
    .parameter

    .prologue
    .line 519
    const-class v0, Lcom/scoreloop/client/android/core/model/Game$BannerSize;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/scoreloop/client/android/core/model/Game$BannerSize;

    return-object v0
.end method

.method public static values()[Lcom/scoreloop/client/android/core/model/Game$BannerSize;
    .locals 1

    .prologue
    .line 519
    sget-object v0, Lcom/scoreloop/client/android/core/model/Game$BannerSize;->b:[Lcom/scoreloop/client/android/core/model/Game$BannerSize;

    invoke-virtual {v0}, [Lcom/scoreloop/client/android/core/model/Game$BannerSize;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/scoreloop/client/android/core/model/Game$BannerSize;

    return-object v0
.end method
