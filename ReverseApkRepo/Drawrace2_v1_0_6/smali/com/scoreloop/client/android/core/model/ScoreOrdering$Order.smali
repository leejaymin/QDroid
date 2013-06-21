.class public final enum Lcom/scoreloop/client/android/core/model/ScoreOrdering$Order;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scoreloop/client/android/core/model/ScoreOrdering;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Order"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/scoreloop/client/android/core/model/ScoreOrdering$Order;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum Ascending:Lcom/scoreloop/client/android/core/model/ScoreOrdering$Order;

.field public static final enum Descending:Lcom/scoreloop/client/android/core/model/ScoreOrdering$Order;

.field private static final synthetic b:[Lcom/scoreloop/client/android/core/model/ScoreOrdering$Order;


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 31
    new-instance v0, Lcom/scoreloop/client/android/core/model/ScoreOrdering$Order;

    const-string v1, "Ascending"

    const-string v2, "asc"

    invoke-direct {v0, v1, v3, v2}, Lcom/scoreloop/client/android/core/model/ScoreOrdering$Order;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/scoreloop/client/android/core/model/ScoreOrdering$Order;->Ascending:Lcom/scoreloop/client/android/core/model/ScoreOrdering$Order;

    new-instance v0, Lcom/scoreloop/client/android/core/model/ScoreOrdering$Order;

    const-string v1, "Descending"

    const-string v2, "desc"

    invoke-direct {v0, v1, v4, v2}, Lcom/scoreloop/client/android/core/model/ScoreOrdering$Order;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/scoreloop/client/android/core/model/ScoreOrdering$Order;->Descending:Lcom/scoreloop/client/android/core/model/ScoreOrdering$Order;

    .line 30
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/scoreloop/client/android/core/model/ScoreOrdering$Order;

    sget-object v1, Lcom/scoreloop/client/android/core/model/ScoreOrdering$Order;->Ascending:Lcom/scoreloop/client/android/core/model/ScoreOrdering$Order;

    aput-object v1, v0, v3

    sget-object v1, Lcom/scoreloop/client/android/core/model/ScoreOrdering$Order;->Descending:Lcom/scoreloop/client/android/core/model/ScoreOrdering$Order;

    aput-object v1, v0, v4

    sput-object v0, Lcom/scoreloop/client/android/core/model/ScoreOrdering$Order;->b:[Lcom/scoreloop/client/android/core/model/ScoreOrdering$Order;

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
    .line 35
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 36
    iput-object p3, p0, Lcom/scoreloop/client/android/core/model/ScoreOrdering$Order;->a:Ljava/lang/String;

    .line 37
    return-void
.end method

.method static synthetic a(Ljava/lang/String;)Lcom/scoreloop/client/android/core/model/ScoreOrdering$Order;
    .locals 5
    .parameter

    .prologue
    .line 30
    invoke-static {}, Lcom/scoreloop/client/android/core/model/ScoreOrdering$Order;->values()[Lcom/scoreloop/client/android/core/model/ScoreOrdering$Order;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_2

    aget-object v0, v2, v1

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/model/ScoreOrdering$Order;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, v0, Lcom/scoreloop/client/android/core/model/ScoreOrdering$Order;->a:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    :goto_1
    return-object v0

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/scoreloop/client/android/core/model/ScoreOrdering$Order;
    .locals 1
    .parameter

    .prologue
    .line 30
    const-class v0, Lcom/scoreloop/client/android/core/model/ScoreOrdering$Order;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/scoreloop/client/android/core/model/ScoreOrdering$Order;

    return-object v0
.end method

.method public static values()[Lcom/scoreloop/client/android/core/model/ScoreOrdering$Order;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/scoreloop/client/android/core/model/ScoreOrdering$Order;->b:[Lcom/scoreloop/client/android/core/model/ScoreOrdering$Order;

    invoke-virtual {v0}, [Lcom/scoreloop/client/android/core/model/ScoreOrdering$Order;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/scoreloop/client/android/core/model/ScoreOrdering$Order;

    return-object v0
.end method


# virtual methods
.method public final asSql()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/scoreloop/client/android/core/model/ScoreOrdering$Order;->a:Ljava/lang/String;

    return-object v0
.end method
