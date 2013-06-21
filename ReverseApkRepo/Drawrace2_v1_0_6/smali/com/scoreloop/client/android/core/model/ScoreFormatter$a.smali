.class final enum Lcom/scoreloop/client/android/core/model/ScoreFormatter$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scoreloop/client/android/core/model/ScoreFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/scoreloop/client/android/core/model/ScoreFormatter$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DefaultFormat:Lcom/scoreloop/client/android/core/model/ScoreFormatter$a;

.field public static final enum LevelAndModeFormat:Lcom/scoreloop/client/android/core/model/ScoreFormatter$a;

.field public static final enum LevelOnlyFormat:Lcom/scoreloop/client/android/core/model/ScoreFormatter$a;

.field public static final enum LevelSymbol:Lcom/scoreloop/client/android/core/model/ScoreFormatter$a;

.field public static final enum MinorResultSymbol:Lcom/scoreloop/client/android/core/model/ScoreFormatter$a;

.field public static final enum ModeOnlyFormat:Lcom/scoreloop/client/android/core/model/ScoreFormatter$a;

.field public static final enum ModeSymbol:Lcom/scoreloop/client/android/core/model/ScoreFormatter$a;

.field public static final enum NoLevelFormat:Lcom/scoreloop/client/android/core/model/ScoreFormatter$a;

.field public static final enum ResultSymbol:Lcom/scoreloop/client/android/core/model/ScoreFormatter$a;

.field public static final enum ResultTimeConversion:Lcom/scoreloop/client/android/core/model/ScoreFormatter$a;

.field public static final enum ScoresAndLevelFormat:Lcom/scoreloop/client/android/core/model/ScoreFormatter$a;

.field public static final enum ScoresOnlyFormat:Lcom/scoreloop/client/android/core/model/ScoreFormatter$a;

.field public static final enum Separator:Lcom/scoreloop/client/android/core/model/ScoreFormatter$a;

.field private static final synthetic a:[Lcom/scoreloop/client/android/core/model/ScoreFormatter$a;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 146
    new-instance v0, Lcom/scoreloop/client/android/core/model/ScoreFormatter$a;

    const-string v1, "DefaultFormat"

    invoke-direct {v0, v1, v3}, Lcom/scoreloop/client/android/core/model/ScoreFormatter$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/scoreloop/client/android/core/model/ScoreFormatter$a;->DefaultFormat:Lcom/scoreloop/client/android/core/model/ScoreFormatter$a;

    new-instance v0, Lcom/scoreloop/client/android/core/model/ScoreFormatter$a;

    const-string v1, "LevelAndModeFormat"

    invoke-direct {v0, v1, v4}, Lcom/scoreloop/client/android/core/model/ScoreFormatter$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/scoreloop/client/android/core/model/ScoreFormatter$a;->LevelAndModeFormat:Lcom/scoreloop/client/android/core/model/ScoreFormatter$a;

    new-instance v0, Lcom/scoreloop/client/android/core/model/ScoreFormatter$a;

    const-string v1, "LevelOnlyFormat"

    invoke-direct {v0, v1, v5}, Lcom/scoreloop/client/android/core/model/ScoreFormatter$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/scoreloop/client/android/core/model/ScoreFormatter$a;->LevelOnlyFormat:Lcom/scoreloop/client/android/core/model/ScoreFormatter$a;

    new-instance v0, Lcom/scoreloop/client/android/core/model/ScoreFormatter$a;

    const-string v1, "ModeOnlyFormat"

    invoke-direct {v0, v1, v6}, Lcom/scoreloop/client/android/core/model/ScoreFormatter$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/scoreloop/client/android/core/model/ScoreFormatter$a;->ModeOnlyFormat:Lcom/scoreloop/client/android/core/model/ScoreFormatter$a;

    new-instance v0, Lcom/scoreloop/client/android/core/model/ScoreFormatter$a;

    const-string v1, "NoLevelFormat"

    invoke-direct {v0, v1, v7}, Lcom/scoreloop/client/android/core/model/ScoreFormatter$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/scoreloop/client/android/core/model/ScoreFormatter$a;->NoLevelFormat:Lcom/scoreloop/client/android/core/model/ScoreFormatter$a;

    new-instance v0, Lcom/scoreloop/client/android/core/model/ScoreFormatter$a;

    const-string v1, "ScoresAndLevelFormat"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/scoreloop/client/android/core/model/ScoreFormatter$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/scoreloop/client/android/core/model/ScoreFormatter$a;->ScoresAndLevelFormat:Lcom/scoreloop/client/android/core/model/ScoreFormatter$a;

    new-instance v0, Lcom/scoreloop/client/android/core/model/ScoreFormatter$a;

    const-string v1, "ScoresOnlyFormat"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/scoreloop/client/android/core/model/ScoreFormatter$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/scoreloop/client/android/core/model/ScoreFormatter$a;->ScoresOnlyFormat:Lcom/scoreloop/client/android/core/model/ScoreFormatter$a;

    new-instance v0, Lcom/scoreloop/client/android/core/model/ScoreFormatter$a;

    const-string v1, "ResultTimeConversion"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/scoreloop/client/android/core/model/ScoreFormatter$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/scoreloop/client/android/core/model/ScoreFormatter$a;->ResultTimeConversion:Lcom/scoreloop/client/android/core/model/ScoreFormatter$a;

    new-instance v0, Lcom/scoreloop/client/android/core/model/ScoreFormatter$a;

    const-string v1, "LevelSymbol"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/scoreloop/client/android/core/model/ScoreFormatter$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/scoreloop/client/android/core/model/ScoreFormatter$a;->LevelSymbol:Lcom/scoreloop/client/android/core/model/ScoreFormatter$a;

    new-instance v0, Lcom/scoreloop/client/android/core/model/ScoreFormatter$a;

    const-string v1, "ModeSymbol"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/scoreloop/client/android/core/model/ScoreFormatter$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/scoreloop/client/android/core/model/ScoreFormatter$a;->ModeSymbol:Lcom/scoreloop/client/android/core/model/ScoreFormatter$a;

    new-instance v0, Lcom/scoreloop/client/android/core/model/ScoreFormatter$a;

    const-string v1, "ResultSymbol"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/scoreloop/client/android/core/model/ScoreFormatter$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/scoreloop/client/android/core/model/ScoreFormatter$a;->ResultSymbol:Lcom/scoreloop/client/android/core/model/ScoreFormatter$a;

    new-instance v0, Lcom/scoreloop/client/android/core/model/ScoreFormatter$a;

    const-string v1, "MinorResultSymbol"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/scoreloop/client/android/core/model/ScoreFormatter$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/scoreloop/client/android/core/model/ScoreFormatter$a;->MinorResultSymbol:Lcom/scoreloop/client/android/core/model/ScoreFormatter$a;

    new-instance v0, Lcom/scoreloop/client/android/core/model/ScoreFormatter$a;

    const-string v1, "Separator"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/scoreloop/client/android/core/model/ScoreFormatter$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/scoreloop/client/android/core/model/ScoreFormatter$a;->Separator:Lcom/scoreloop/client/android/core/model/ScoreFormatter$a;

    .line 145
    const/16 v0, 0xd

    new-array v0, v0, [Lcom/scoreloop/client/android/core/model/ScoreFormatter$a;

    sget-object v1, Lcom/scoreloop/client/android/core/model/ScoreFormatter$a;->DefaultFormat:Lcom/scoreloop/client/android/core/model/ScoreFormatter$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/scoreloop/client/android/core/model/ScoreFormatter$a;->LevelAndModeFormat:Lcom/scoreloop/client/android/core/model/ScoreFormatter$a;

    aput-object v1, v0, v4

    sget-object v1, Lcom/scoreloop/client/android/core/model/ScoreFormatter$a;->LevelOnlyFormat:Lcom/scoreloop/client/android/core/model/ScoreFormatter$a;

    aput-object v1, v0, v5

    sget-object v1, Lcom/scoreloop/client/android/core/model/ScoreFormatter$a;->ModeOnlyFormat:Lcom/scoreloop/client/android/core/model/ScoreFormatter$a;

    aput-object v1, v0, v6

    sget-object v1, Lcom/scoreloop/client/android/core/model/ScoreFormatter$a;->NoLevelFormat:Lcom/scoreloop/client/android/core/model/ScoreFormatter$a;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/scoreloop/client/android/core/model/ScoreFormatter$a;->ScoresAndLevelFormat:Lcom/scoreloop/client/android/core/model/ScoreFormatter$a;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/scoreloop/client/android/core/model/ScoreFormatter$a;->ScoresOnlyFormat:Lcom/scoreloop/client/android/core/model/ScoreFormatter$a;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/scoreloop/client/android/core/model/ScoreFormatter$a;->ResultTimeConversion:Lcom/scoreloop/client/android/core/model/ScoreFormatter$a;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/scoreloop/client/android/core/model/ScoreFormatter$a;->LevelSymbol:Lcom/scoreloop/client/android/core/model/ScoreFormatter$a;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/scoreloop/client/android/core/model/ScoreFormatter$a;->ModeSymbol:Lcom/scoreloop/client/android/core/model/ScoreFormatter$a;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/scoreloop/client/android/core/model/ScoreFormatter$a;->ResultSymbol:Lcom/scoreloop/client/android/core/model/ScoreFormatter$a;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/scoreloop/client/android/core/model/ScoreFormatter$a;->MinorResultSymbol:Lcom/scoreloop/client/android/core/model/ScoreFormatter$a;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/scoreloop/client/android/core/model/ScoreFormatter$a;->Separator:Lcom/scoreloop/client/android/core/model/ScoreFormatter$a;

    aput-object v2, v0, v1

    sput-object v0, Lcom/scoreloop/client/android/core/model/ScoreFormatter$a;->a:[Lcom/scoreloop/client/android/core/model/ScoreFormatter$a;

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
    .line 145
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static parse(Ljava/lang/String;)Lcom/scoreloop/client/android/core/model/ScoreFormatter$a;
    .locals 2
    .parameter

    .prologue
    .line 155
    const/4 v1, 0x0

    .line 158
    :try_start_0
    const-class v0, Lcom/scoreloop/client/android/core/model/ScoreFormatter$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/scoreloop/client/android/core/model/ScoreFormatter$a;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/scoreloop/client/android/core/model/ScoreFormatter$a;
    .locals 1
    .parameter

    .prologue
    .line 145
    const-class v0, Lcom/scoreloop/client/android/core/model/ScoreFormatter$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/scoreloop/client/android/core/model/ScoreFormatter$a;

    return-object v0
.end method

.method public static values()[Lcom/scoreloop/client/android/core/model/ScoreFormatter$a;
    .locals 1

    .prologue
    .line 145
    sget-object v0, Lcom/scoreloop/client/android/core/model/ScoreFormatter$a;->a:[Lcom/scoreloop/client/android/core/model/ScoreFormatter$a;

    invoke-virtual {v0}, [Lcom/scoreloop/client/android/core/model/ScoreFormatter$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/scoreloop/client/android/core/model/ScoreFormatter$a;

    return-object v0
.end method
