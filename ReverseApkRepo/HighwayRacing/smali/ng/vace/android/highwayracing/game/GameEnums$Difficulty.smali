.class public final enum Lng/vace/android/highwayracing/game/GameEnums$Difficulty;
.super Ljava/lang/Enum;
.source "GameEnums.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lng/vace/android/highwayracing/game/GameEnums;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Difficulty"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lng/vace/android/highwayracing/game/GameEnums$Difficulty;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lng/vace/android/highwayracing/game/GameEnums$Difficulty;

.field public static final enum EASY:Lng/vace/android/highwayracing/game/GameEnums$Difficulty;

.field public static final enum HARD:Lng/vace/android/highwayracing/game/GameEnums$Difficulty;

.field public static final enum MEDIUM:Lng/vace/android/highwayracing/game/GameEnums$Difficulty;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 13
    new-instance v0, Lng/vace/android/highwayracing/game/GameEnums$Difficulty;

    const-string v1, "EASY"

    invoke-direct {v0, v1, v2}, Lng/vace/android/highwayracing/game/GameEnums$Difficulty;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lng/vace/android/highwayracing/game/GameEnums$Difficulty;->EASY:Lng/vace/android/highwayracing/game/GameEnums$Difficulty;

    new-instance v0, Lng/vace/android/highwayracing/game/GameEnums$Difficulty;

    const-string v1, "MEDIUM"

    invoke-direct {v0, v1, v3}, Lng/vace/android/highwayracing/game/GameEnums$Difficulty;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lng/vace/android/highwayracing/game/GameEnums$Difficulty;->MEDIUM:Lng/vace/android/highwayracing/game/GameEnums$Difficulty;

    new-instance v0, Lng/vace/android/highwayracing/game/GameEnums$Difficulty;

    const-string v1, "HARD"

    invoke-direct {v0, v1, v4}, Lng/vace/android/highwayracing/game/GameEnums$Difficulty;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lng/vace/android/highwayracing/game/GameEnums$Difficulty;->HARD:Lng/vace/android/highwayracing/game/GameEnums$Difficulty;

    .line 12
    const/4 v0, 0x3

    new-array v0, v0, [Lng/vace/android/highwayracing/game/GameEnums$Difficulty;

    sget-object v1, Lng/vace/android/highwayracing/game/GameEnums$Difficulty;->EASY:Lng/vace/android/highwayracing/game/GameEnums$Difficulty;

    aput-object v1, v0, v2

    sget-object v1, Lng/vace/android/highwayracing/game/GameEnums$Difficulty;->MEDIUM:Lng/vace/android/highwayracing/game/GameEnums$Difficulty;

    aput-object v1, v0, v3

    sget-object v1, Lng/vace/android/highwayracing/game/GameEnums$Difficulty;->HARD:Lng/vace/android/highwayracing/game/GameEnums$Difficulty;

    aput-object v1, v0, v4

    sput-object v0, Lng/vace/android/highwayracing/game/GameEnums$Difficulty;->$VALUES:[Lng/vace/android/highwayracing/game/GameEnums$Difficulty;

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
    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lng/vace/android/highwayracing/game/GameEnums$Difficulty;
    .locals 1
    .parameter "name"

    .prologue
    .line 12
    const-class v0, Lng/vace/android/highwayracing/game/GameEnums$Difficulty;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Lng/vace/android/highwayracing/game/GameEnums$Difficulty;

    return-object p0
.end method

.method public static values()[Lng/vace/android/highwayracing/game/GameEnums$Difficulty;
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lng/vace/android/highwayracing/game/GameEnums$Difficulty;->$VALUES:[Lng/vace/android/highwayracing/game/GameEnums$Difficulty;

    invoke-virtual {v0}, [Lng/vace/android/highwayracing/game/GameEnums$Difficulty;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lng/vace/android/highwayracing/game/GameEnums$Difficulty;

    return-object v0
.end method
