.class public final enum Lng/vace/android/highwayracing/game/GameEnums$SoundType;
.super Ljava/lang/Enum;
.source "GameEnums.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lng/vace/android/highwayracing/game/GameEnums;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SoundType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lng/vace/android/highwayracing/game/GameEnums$SoundType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lng/vace/android/highwayracing/game/GameEnums$SoundType;

.field public static final enum BONUS:Lng/vace/android/highwayracing/game/GameEnums$SoundType;

.field public static final enum CRASH2:Lng/vace/android/highwayracing/game/GameEnums$SoundType;

.field public static final enum CRASH3:Lng/vace/android/highwayracing/game/GameEnums$SoundType;

.field public static final enum CRASHBIG:Lng/vace/android/highwayracing/game/GameEnums$SoundType;

.field public static final enum HORN:Lng/vace/android/highwayracing/game/GameEnums$SoundType;

.field public static final enum HORN2:Lng/vace/android/highwayracing/game/GameEnums$SoundType;

.field public static final enum HORN3:Lng/vace/android/highwayracing/game/GameEnums$SoundType;

.field public static final enum SPLAT:Lng/vace/android/highwayracing/game/GameEnums$SoundType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 9
    new-instance v0, Lng/vace/android/highwayracing/game/GameEnums$SoundType;

    const-string v1, "CRASHBIG"

    invoke-direct {v0, v1, v3}, Lng/vace/android/highwayracing/game/GameEnums$SoundType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lng/vace/android/highwayracing/game/GameEnums$SoundType;->CRASHBIG:Lng/vace/android/highwayracing/game/GameEnums$SoundType;

    new-instance v0, Lng/vace/android/highwayracing/game/GameEnums$SoundType;

    const-string v1, "CRASH2"

    invoke-direct {v0, v1, v4}, Lng/vace/android/highwayracing/game/GameEnums$SoundType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lng/vace/android/highwayracing/game/GameEnums$SoundType;->CRASH2:Lng/vace/android/highwayracing/game/GameEnums$SoundType;

    new-instance v0, Lng/vace/android/highwayracing/game/GameEnums$SoundType;

    const-string v1, "CRASH3"

    invoke-direct {v0, v1, v5}, Lng/vace/android/highwayracing/game/GameEnums$SoundType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lng/vace/android/highwayracing/game/GameEnums$SoundType;->CRASH3:Lng/vace/android/highwayracing/game/GameEnums$SoundType;

    new-instance v0, Lng/vace/android/highwayracing/game/GameEnums$SoundType;

    const-string v1, "HORN"

    invoke-direct {v0, v1, v6}, Lng/vace/android/highwayracing/game/GameEnums$SoundType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lng/vace/android/highwayracing/game/GameEnums$SoundType;->HORN:Lng/vace/android/highwayracing/game/GameEnums$SoundType;

    new-instance v0, Lng/vace/android/highwayracing/game/GameEnums$SoundType;

    const-string v1, "HORN2"

    invoke-direct {v0, v1, v7}, Lng/vace/android/highwayracing/game/GameEnums$SoundType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lng/vace/android/highwayracing/game/GameEnums$SoundType;->HORN2:Lng/vace/android/highwayracing/game/GameEnums$SoundType;

    new-instance v0, Lng/vace/android/highwayracing/game/GameEnums$SoundType;

    const-string v1, "HORN3"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lng/vace/android/highwayracing/game/GameEnums$SoundType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lng/vace/android/highwayracing/game/GameEnums$SoundType;->HORN3:Lng/vace/android/highwayracing/game/GameEnums$SoundType;

    new-instance v0, Lng/vace/android/highwayracing/game/GameEnums$SoundType;

    const-string v1, "SPLAT"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lng/vace/android/highwayracing/game/GameEnums$SoundType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lng/vace/android/highwayracing/game/GameEnums$SoundType;->SPLAT:Lng/vace/android/highwayracing/game/GameEnums$SoundType;

    new-instance v0, Lng/vace/android/highwayracing/game/GameEnums$SoundType;

    const-string v1, "BONUS"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lng/vace/android/highwayracing/game/GameEnums$SoundType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lng/vace/android/highwayracing/game/GameEnums$SoundType;->BONUS:Lng/vace/android/highwayracing/game/GameEnums$SoundType;

    .line 8
    const/16 v0, 0x8

    new-array v0, v0, [Lng/vace/android/highwayracing/game/GameEnums$SoundType;

    sget-object v1, Lng/vace/android/highwayracing/game/GameEnums$SoundType;->CRASHBIG:Lng/vace/android/highwayracing/game/GameEnums$SoundType;

    aput-object v1, v0, v3

    sget-object v1, Lng/vace/android/highwayracing/game/GameEnums$SoundType;->CRASH2:Lng/vace/android/highwayracing/game/GameEnums$SoundType;

    aput-object v1, v0, v4

    sget-object v1, Lng/vace/android/highwayracing/game/GameEnums$SoundType;->CRASH3:Lng/vace/android/highwayracing/game/GameEnums$SoundType;

    aput-object v1, v0, v5

    sget-object v1, Lng/vace/android/highwayracing/game/GameEnums$SoundType;->HORN:Lng/vace/android/highwayracing/game/GameEnums$SoundType;

    aput-object v1, v0, v6

    sget-object v1, Lng/vace/android/highwayracing/game/GameEnums$SoundType;->HORN2:Lng/vace/android/highwayracing/game/GameEnums$SoundType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lng/vace/android/highwayracing/game/GameEnums$SoundType;->HORN3:Lng/vace/android/highwayracing/game/GameEnums$SoundType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lng/vace/android/highwayracing/game/GameEnums$SoundType;->SPLAT:Lng/vace/android/highwayracing/game/GameEnums$SoundType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lng/vace/android/highwayracing/game/GameEnums$SoundType;->BONUS:Lng/vace/android/highwayracing/game/GameEnums$SoundType;

    aput-object v2, v0, v1

    sput-object v0, Lng/vace/android/highwayracing/game/GameEnums$SoundType;->$VALUES:[Lng/vace/android/highwayracing/game/GameEnums$SoundType;

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
    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lng/vace/android/highwayracing/game/GameEnums$SoundType;
    .locals 1
    .parameter "name"

    .prologue
    .line 8
    const-class v0, Lng/vace/android/highwayracing/game/GameEnums$SoundType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Lng/vace/android/highwayracing/game/GameEnums$SoundType;

    return-object p0
.end method

.method public static values()[Lng/vace/android/highwayracing/game/GameEnums$SoundType;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lng/vace/android/highwayracing/game/GameEnums$SoundType;->$VALUES:[Lng/vace/android/highwayracing/game/GameEnums$SoundType;

    invoke-virtual {v0}, [Lng/vace/android/highwayracing/game/GameEnums$SoundType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lng/vace/android/highwayracing/game/GameEnums$SoundType;

    return-object v0
.end method
