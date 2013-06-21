.class public final enum Lng/vace/android/highwayracing/game/GameEnums$GameMode;
.super Ljava/lang/Enum;
.source "GameEnums.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lng/vace/android/highwayracing/game/GameEnums;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "GameMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lng/vace/android/highwayracing/game/GameEnums$GameMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lng/vace/android/highwayracing/game/GameEnums$GameMode;

.field public static final enum GAME_OVER:Lng/vace/android/highwayracing/game/GameEnums$GameMode;

.field public static final enum PAUSED:Lng/vace/android/highwayracing/game/GameEnums$GameMode;

.field public static final enum RUNNING:Lng/vace/android/highwayracing/game/GameEnums$GameMode;

.field public static final enum SHOW_SPLASH:Lng/vace/android/highwayracing/game/GameEnums$GameMode;

.field public static final enum SUBMIT_SCORE:Lng/vace/android/highwayracing/game/GameEnums$GameMode;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 5
    new-instance v0, Lng/vace/android/highwayracing/game/GameEnums$GameMode;

    const-string v1, "RUNNING"

    invoke-direct {v0, v1, v2}, Lng/vace/android/highwayracing/game/GameEnums$GameMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lng/vace/android/highwayracing/game/GameEnums$GameMode;->RUNNING:Lng/vace/android/highwayracing/game/GameEnums$GameMode;

    new-instance v0, Lng/vace/android/highwayracing/game/GameEnums$GameMode;

    const-string v1, "GAME_OVER"

    invoke-direct {v0, v1, v3}, Lng/vace/android/highwayracing/game/GameEnums$GameMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lng/vace/android/highwayracing/game/GameEnums$GameMode;->GAME_OVER:Lng/vace/android/highwayracing/game/GameEnums$GameMode;

    new-instance v0, Lng/vace/android/highwayracing/game/GameEnums$GameMode;

    const-string v1, "PAUSED"

    invoke-direct {v0, v1, v4}, Lng/vace/android/highwayracing/game/GameEnums$GameMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lng/vace/android/highwayracing/game/GameEnums$GameMode;->PAUSED:Lng/vace/android/highwayracing/game/GameEnums$GameMode;

    new-instance v0, Lng/vace/android/highwayracing/game/GameEnums$GameMode;

    const-string v1, "SUBMIT_SCORE"

    invoke-direct {v0, v1, v5}, Lng/vace/android/highwayracing/game/GameEnums$GameMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lng/vace/android/highwayracing/game/GameEnums$GameMode;->SUBMIT_SCORE:Lng/vace/android/highwayracing/game/GameEnums$GameMode;

    new-instance v0, Lng/vace/android/highwayracing/game/GameEnums$GameMode;

    const-string v1, "SHOW_SPLASH"

    invoke-direct {v0, v1, v6}, Lng/vace/android/highwayracing/game/GameEnums$GameMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lng/vace/android/highwayracing/game/GameEnums$GameMode;->SHOW_SPLASH:Lng/vace/android/highwayracing/game/GameEnums$GameMode;

    .line 4
    const/4 v0, 0x5

    new-array v0, v0, [Lng/vace/android/highwayracing/game/GameEnums$GameMode;

    sget-object v1, Lng/vace/android/highwayracing/game/GameEnums$GameMode;->RUNNING:Lng/vace/android/highwayracing/game/GameEnums$GameMode;

    aput-object v1, v0, v2

    sget-object v1, Lng/vace/android/highwayracing/game/GameEnums$GameMode;->GAME_OVER:Lng/vace/android/highwayracing/game/GameEnums$GameMode;

    aput-object v1, v0, v3

    sget-object v1, Lng/vace/android/highwayracing/game/GameEnums$GameMode;->PAUSED:Lng/vace/android/highwayracing/game/GameEnums$GameMode;

    aput-object v1, v0, v4

    sget-object v1, Lng/vace/android/highwayracing/game/GameEnums$GameMode;->SUBMIT_SCORE:Lng/vace/android/highwayracing/game/GameEnums$GameMode;

    aput-object v1, v0, v5

    sget-object v1, Lng/vace/android/highwayracing/game/GameEnums$GameMode;->SHOW_SPLASH:Lng/vace/android/highwayracing/game/GameEnums$GameMode;

    aput-object v1, v0, v6

    sput-object v0, Lng/vace/android/highwayracing/game/GameEnums$GameMode;->$VALUES:[Lng/vace/android/highwayracing/game/GameEnums$GameMode;

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
    .line 4
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lng/vace/android/highwayracing/game/GameEnums$GameMode;
    .locals 1
    .parameter "name"

    .prologue
    .line 4
    const-class v0, Lng/vace/android/highwayracing/game/GameEnums$GameMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Lng/vace/android/highwayracing/game/GameEnums$GameMode;

    return-object p0
.end method

.method public static values()[Lng/vace/android/highwayracing/game/GameEnums$GameMode;
    .locals 1

    .prologue
    .line 4
    sget-object v0, Lng/vace/android/highwayracing/game/GameEnums$GameMode;->$VALUES:[Lng/vace/android/highwayracing/game/GameEnums$GameMode;

    invoke-virtual {v0}, [Lng/vace/android/highwayracing/game/GameEnums$GameMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lng/vace/android/highwayracing/game/GameEnums$GameMode;

    return-object v0
.end method
