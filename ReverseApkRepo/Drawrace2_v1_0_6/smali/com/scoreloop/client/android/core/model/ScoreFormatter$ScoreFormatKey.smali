.class public final enum Lcom/scoreloop/client/android/core/model/ScoreFormatter$ScoreFormatKey;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation build Lcom/scoreloop/client/android/core/PublishedFor__2_3_0;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scoreloop/client/android/core/model/ScoreFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ScoreFormatKey"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/scoreloop/client/android/core/model/ScoreFormatter$ScoreFormatKey;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DefaultFormat:Lcom/scoreloop/client/android/core/model/ScoreFormatter$ScoreFormatKey;

.field public static final enum LevelAndModeFormat:Lcom/scoreloop/client/android/core/model/ScoreFormatter$ScoreFormatKey;

.field public static final enum LevelOnlyFormat:Lcom/scoreloop/client/android/core/model/ScoreFormatter$ScoreFormatKey;

.field public static final enum ModeOnlyFormat:Lcom/scoreloop/client/android/core/model/ScoreFormatter$ScoreFormatKey;

.field public static final enum NoLevelFormat:Lcom/scoreloop/client/android/core/model/ScoreFormatter$ScoreFormatKey;

.field public static final enum ScoresAndLevelFormat:Lcom/scoreloop/client/android/core/model/ScoreFormatter$ScoreFormatKey;

.field public static final enum ScoresOnlyFormat:Lcom/scoreloop/client/android/core/model/ScoreFormatter$ScoreFormatKey;

.field private static final synthetic b:[Lcom/scoreloop/client/android/core/model/ScoreFormatter$ScoreFormatKey;


# instance fields
.field private a:Lcom/scoreloop/client/android/core/model/ScoreFormatter$a;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 110
    new-instance v0, Lcom/scoreloop/client/android/core/model/ScoreFormatter$ScoreFormatKey;

    const-string v1, "DefaultFormat"

    sget-object v2, Lcom/scoreloop/client/android/core/model/ScoreFormatter$a;->DefaultFormat:Lcom/scoreloop/client/android/core/model/ScoreFormatter$a;

    invoke-direct {v0, v1, v4, v2}, Lcom/scoreloop/client/android/core/model/ScoreFormatter$ScoreFormatKey;-><init>(Ljava/lang/String;ILcom/scoreloop/client/android/core/model/ScoreFormatter$a;)V

    sput-object v0, Lcom/scoreloop/client/android/core/model/ScoreFormatter$ScoreFormatKey;->DefaultFormat:Lcom/scoreloop/client/android/core/model/ScoreFormatter$ScoreFormatKey;

    new-instance v0, Lcom/scoreloop/client/android/core/model/ScoreFormatter$ScoreFormatKey;

    const-string v1, "ScoresOnlyFormat"

    sget-object v2, Lcom/scoreloop/client/android/core/model/ScoreFormatter$a;->ScoresOnlyFormat:Lcom/scoreloop/client/android/core/model/ScoreFormatter$a;

    invoke-direct {v0, v1, v5, v2}, Lcom/scoreloop/client/android/core/model/ScoreFormatter$ScoreFormatKey;-><init>(Ljava/lang/String;ILcom/scoreloop/client/android/core/model/ScoreFormatter$a;)V

    sput-object v0, Lcom/scoreloop/client/android/core/model/ScoreFormatter$ScoreFormatKey;->ScoresOnlyFormat:Lcom/scoreloop/client/android/core/model/ScoreFormatter$ScoreFormatKey;

    new-instance v0, Lcom/scoreloop/client/android/core/model/ScoreFormatter$ScoreFormatKey;

    const-string v1, "LevelAndModeFormat"

    sget-object v2, Lcom/scoreloop/client/android/core/model/ScoreFormatter$a;->LevelAndModeFormat:Lcom/scoreloop/client/android/core/model/ScoreFormatter$a;

    invoke-direct {v0, v1, v6, v2}, Lcom/scoreloop/client/android/core/model/ScoreFormatter$ScoreFormatKey;-><init>(Ljava/lang/String;ILcom/scoreloop/client/android/core/model/ScoreFormatter$a;)V

    sput-object v0, Lcom/scoreloop/client/android/core/model/ScoreFormatter$ScoreFormatKey;->LevelAndModeFormat:Lcom/scoreloop/client/android/core/model/ScoreFormatter$ScoreFormatKey;

    .line 111
    new-instance v0, Lcom/scoreloop/client/android/core/model/ScoreFormatter$ScoreFormatKey;

    const-string v1, "LevelOnlyFormat"

    sget-object v2, Lcom/scoreloop/client/android/core/model/ScoreFormatter$a;->LevelOnlyFormat:Lcom/scoreloop/client/android/core/model/ScoreFormatter$a;

    invoke-direct {v0, v1, v7, v2}, Lcom/scoreloop/client/android/core/model/ScoreFormatter$ScoreFormatKey;-><init>(Ljava/lang/String;ILcom/scoreloop/client/android/core/model/ScoreFormatter$a;)V

    sput-object v0, Lcom/scoreloop/client/android/core/model/ScoreFormatter$ScoreFormatKey;->LevelOnlyFormat:Lcom/scoreloop/client/android/core/model/ScoreFormatter$ScoreFormatKey;

    new-instance v0, Lcom/scoreloop/client/android/core/model/ScoreFormatter$ScoreFormatKey;

    const-string v1, "ModeOnlyFormat"

    sget-object v2, Lcom/scoreloop/client/android/core/model/ScoreFormatter$a;->ModeOnlyFormat:Lcom/scoreloop/client/android/core/model/ScoreFormatter$a;

    invoke-direct {v0, v1, v8, v2}, Lcom/scoreloop/client/android/core/model/ScoreFormatter$ScoreFormatKey;-><init>(Ljava/lang/String;ILcom/scoreloop/client/android/core/model/ScoreFormatter$a;)V

    sput-object v0, Lcom/scoreloop/client/android/core/model/ScoreFormatter$ScoreFormatKey;->ModeOnlyFormat:Lcom/scoreloop/client/android/core/model/ScoreFormatter$ScoreFormatKey;

    .line 112
    new-instance v0, Lcom/scoreloop/client/android/core/model/ScoreFormatter$ScoreFormatKey;

    const-string v1, "NoLevelFormat"

    const/4 v2, 0x5

    sget-object v3, Lcom/scoreloop/client/android/core/model/ScoreFormatter$a;->NoLevelFormat:Lcom/scoreloop/client/android/core/model/ScoreFormatter$a;

    invoke-direct {v0, v1, v2, v3}, Lcom/scoreloop/client/android/core/model/ScoreFormatter$ScoreFormatKey;-><init>(Ljava/lang/String;ILcom/scoreloop/client/android/core/model/ScoreFormatter$a;)V

    sput-object v0, Lcom/scoreloop/client/android/core/model/ScoreFormatter$ScoreFormatKey;->NoLevelFormat:Lcom/scoreloop/client/android/core/model/ScoreFormatter$ScoreFormatKey;

    new-instance v0, Lcom/scoreloop/client/android/core/model/ScoreFormatter$ScoreFormatKey;

    const-string v1, "ScoresAndLevelFormat"

    const/4 v2, 0x6

    sget-object v3, Lcom/scoreloop/client/android/core/model/ScoreFormatter$a;->ScoresAndLevelFormat:Lcom/scoreloop/client/android/core/model/ScoreFormatter$a;

    invoke-direct {v0, v1, v2, v3}, Lcom/scoreloop/client/android/core/model/ScoreFormatter$ScoreFormatKey;-><init>(Ljava/lang/String;ILcom/scoreloop/client/android/core/model/ScoreFormatter$a;)V

    sput-object v0, Lcom/scoreloop/client/android/core/model/ScoreFormatter$ScoreFormatKey;->ScoresAndLevelFormat:Lcom/scoreloop/client/android/core/model/ScoreFormatter$ScoreFormatKey;

    .line 108
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/scoreloop/client/android/core/model/ScoreFormatter$ScoreFormatKey;

    sget-object v1, Lcom/scoreloop/client/android/core/model/ScoreFormatter$ScoreFormatKey;->DefaultFormat:Lcom/scoreloop/client/android/core/model/ScoreFormatter$ScoreFormatKey;

    aput-object v1, v0, v4

    sget-object v1, Lcom/scoreloop/client/android/core/model/ScoreFormatter$ScoreFormatKey;->ScoresOnlyFormat:Lcom/scoreloop/client/android/core/model/ScoreFormatter$ScoreFormatKey;

    aput-object v1, v0, v5

    sget-object v1, Lcom/scoreloop/client/android/core/model/ScoreFormatter$ScoreFormatKey;->LevelAndModeFormat:Lcom/scoreloop/client/android/core/model/ScoreFormatter$ScoreFormatKey;

    aput-object v1, v0, v6

    sget-object v1, Lcom/scoreloop/client/android/core/model/ScoreFormatter$ScoreFormatKey;->LevelOnlyFormat:Lcom/scoreloop/client/android/core/model/ScoreFormatter$ScoreFormatKey;

    aput-object v1, v0, v7

    sget-object v1, Lcom/scoreloop/client/android/core/model/ScoreFormatter$ScoreFormatKey;->ModeOnlyFormat:Lcom/scoreloop/client/android/core/model/ScoreFormatter$ScoreFormatKey;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/scoreloop/client/android/core/model/ScoreFormatter$ScoreFormatKey;->NoLevelFormat:Lcom/scoreloop/client/android/core/model/ScoreFormatter$ScoreFormatKey;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/scoreloop/client/android/core/model/ScoreFormatter$ScoreFormatKey;->ScoresAndLevelFormat:Lcom/scoreloop/client/android/core/model/ScoreFormatter$ScoreFormatKey;

    aput-object v2, v0, v1

    sput-object v0, Lcom/scoreloop/client/android/core/model/ScoreFormatter$ScoreFormatKey;->b:[Lcom/scoreloop/client/android/core/model/ScoreFormatter$ScoreFormatKey;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/scoreloop/client/android/core/model/ScoreFormatter$a;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/scoreloop/client/android/core/model/ScoreFormatter$a;",
            ")V"
        }
    .end annotation

    .prologue
    .line 117
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 118
    iput-object p3, p0, Lcom/scoreloop/client/android/core/model/ScoreFormatter$ScoreFormatKey;->a:Lcom/scoreloop/client/android/core/model/ScoreFormatter$a;

    .line 119
    return-void
.end method

.method public static parse(Ljava/lang/String;)Lcom/scoreloop/client/android/core/model/ScoreFormatter$ScoreFormatKey;
    .locals 2
    .parameter

    .prologue
    .line 128
    const/4 v1, 0x0

    .line 131
    :try_start_0
    const-class v0, Lcom/scoreloop/client/android/core/model/ScoreFormatter$ScoreFormatKey;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/scoreloop/client/android/core/model/ScoreFormatter$ScoreFormatKey;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/scoreloop/client/android/core/model/ScoreFormatter$ScoreFormatKey;
    .locals 1
    .parameter

    .prologue
    .line 108
    const-class v0, Lcom/scoreloop/client/android/core/model/ScoreFormatter$ScoreFormatKey;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/scoreloop/client/android/core/model/ScoreFormatter$ScoreFormatKey;

    return-object v0
.end method

.method public static values()[Lcom/scoreloop/client/android/core/model/ScoreFormatter$ScoreFormatKey;
    .locals 1

    .prologue
    .line 108
    sget-object v0, Lcom/scoreloop/client/android/core/model/ScoreFormatter$ScoreFormatKey;->b:[Lcom/scoreloop/client/android/core/model/ScoreFormatter$ScoreFormatKey;

    invoke-virtual {v0}, [Lcom/scoreloop/client/android/core/model/ScoreFormatter$ScoreFormatKey;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/scoreloop/client/android/core/model/ScoreFormatter$ScoreFormatKey;

    return-object v0
.end method


# virtual methods
.method final a()Lcom/scoreloop/client/android/core/model/ScoreFormatter$a;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/scoreloop/client/android/core/model/ScoreFormatter$ScoreFormatKey;->a:Lcom/scoreloop/client/android/core/model/ScoreFormatter$a;

    return-object v0
.end method
