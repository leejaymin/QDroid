.class public final enum Lcom/scoreloop/client/android/core/model/ScoreOrdering$Column;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scoreloop/client/android/core/model/ScoreOrdering;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Column"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/scoreloop/client/android/core/model/ScoreOrdering$Column;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum Level:Lcom/scoreloop/client/android/core/model/ScoreOrdering$Column;

.field public static final enum MinorResult:Lcom/scoreloop/client/android/core/model/ScoreOrdering$Column;

.field public static final enum Result:Lcom/scoreloop/client/android/core/model/ScoreOrdering$Column;

.field private static final synthetic a:[Lcom/scoreloop/client/android/core/model/ScoreOrdering$Column;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 18
    new-instance v0, Lcom/scoreloop/client/android/core/model/ScoreOrdering$Column;

    const-string v1, "Result"

    invoke-direct {v0, v1, v2}, Lcom/scoreloop/client/android/core/model/ScoreOrdering$Column;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/scoreloop/client/android/core/model/ScoreOrdering$Column;->Result:Lcom/scoreloop/client/android/core/model/ScoreOrdering$Column;

    new-instance v0, Lcom/scoreloop/client/android/core/model/ScoreOrdering$Column;

    const-string v1, "MinorResult"

    invoke-direct {v0, v1, v3}, Lcom/scoreloop/client/android/core/model/ScoreOrdering$Column;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/scoreloop/client/android/core/model/ScoreOrdering$Column;->MinorResult:Lcom/scoreloop/client/android/core/model/ScoreOrdering$Column;

    new-instance v0, Lcom/scoreloop/client/android/core/model/ScoreOrdering$Column;

    const-string v1, "Level"

    invoke-direct {v0, v1, v4}, Lcom/scoreloop/client/android/core/model/ScoreOrdering$Column;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/scoreloop/client/android/core/model/ScoreOrdering$Column;->Level:Lcom/scoreloop/client/android/core/model/ScoreOrdering$Column;

    .line 17
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/scoreloop/client/android/core/model/ScoreOrdering$Column;

    sget-object v1, Lcom/scoreloop/client/android/core/model/ScoreOrdering$Column;->Result:Lcom/scoreloop/client/android/core/model/ScoreOrdering$Column;

    aput-object v1, v0, v2

    sget-object v1, Lcom/scoreloop/client/android/core/model/ScoreOrdering$Column;->MinorResult:Lcom/scoreloop/client/android/core/model/ScoreOrdering$Column;

    aput-object v1, v0, v3

    sget-object v1, Lcom/scoreloop/client/android/core/model/ScoreOrdering$Column;->Level:Lcom/scoreloop/client/android/core/model/ScoreOrdering$Column;

    aput-object v1, v0, v4

    sput-object v0, Lcom/scoreloop/client/android/core/model/ScoreOrdering$Column;->a:[Lcom/scoreloop/client/android/core/model/ScoreOrdering$Column;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic a(Ljava/lang/String;)Lcom/scoreloop/client/android/core/model/ScoreOrdering$Column;
    .locals 5
    .parameter

    .prologue
    .line 17
    invoke-static {}, Lcom/scoreloop/client/android/core/model/ScoreOrdering$Column;->values()[Lcom/scoreloop/client/android/core/model/ScoreOrdering$Column;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/model/ScoreOrdering$Column;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/scoreloop/client/android/core/model/ScoreOrdering$Column;
    .locals 1
    .parameter

    .prologue
    .line 17
    const-class v0, Lcom/scoreloop/client/android/core/model/ScoreOrdering$Column;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/scoreloop/client/android/core/model/ScoreOrdering$Column;

    return-object v0
.end method

.method public static values()[Lcom/scoreloop/client/android/core/model/ScoreOrdering$Column;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/scoreloop/client/android/core/model/ScoreOrdering$Column;->a:[Lcom/scoreloop/client/android/core/model/ScoreOrdering$Column;

    invoke-virtual {v0}, [Lcom/scoreloop/client/android/core/model/ScoreOrdering$Column;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/scoreloop/client/android/core/model/ScoreOrdering$Column;

    return-object v0
.end method
