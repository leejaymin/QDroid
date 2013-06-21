.class public Lng/vace/android/highwayracing/GameSettings;
.super Ljava/lang/Object;
.source "GameSettings.java"


# static fields
.field protected static final HIGHWAY_CAR:Ljava/lang/String; = "highway-car"

.field protected static final HIGHWAY_DIFFICULTY:Ljava/lang/String; = "highway-difficulty"

.field protected static final HIGHWAY_HIGHESTSCORE:Ljava/lang/String; = "highway-highestScore"

.field protected static final HIGHWAY_MUSIC:Ljava/lang/String; = "highway-music"

.field protected static final HIGHWAY_SOUND:Ljava/lang/String; = "highway-sound"

.field protected static final HIGHWAY_UNLOCK_LEVEL:Ljava/lang/String; = "highway-unlock-level"

.field protected static final HIGHWAY_VIBRATE:Ljava/lang/String; = "highway-vibrate"

.field protected static final PREFS_NAME:Ljava/lang/String; = "highway-prefs"


# instance fields
.field car:I

.field difficulty:I

.field highestScore:I

.field music:Z

.field sound:Z

.field unlockLevel:I

.field vibrate:Z


# direct methods
.method public constructor <init>(ZZZIIII)V
    .locals 2
    .parameter "sound"
    .parameter "music"
    .parameter "vibrate"
    .parameter "difficulty"
    .parameter "highestScore"
    .parameter "car"
    .parameter "unlockLevel"

    .prologue
    const/4 v1, 0x0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput v1, p0, Lng/vace/android/highwayracing/GameSettings;->highestScore:I

    .line 16
    const/4 v0, 0x1

    iput v0, p0, Lng/vace/android/highwayracing/GameSettings;->difficulty:I

    .line 18
    iput v1, p0, Lng/vace/android/highwayracing/GameSettings;->car:I

    .line 19
    iput v1, p0, Lng/vace/android/highwayracing/GameSettings;->unlockLevel:I

    .line 22
    iput-boolean p1, p0, Lng/vace/android/highwayracing/GameSettings;->sound:Z

    .line 23
    iput-boolean p2, p0, Lng/vace/android/highwayracing/GameSettings;->music:Z

    .line 24
    iput p5, p0, Lng/vace/android/highwayracing/GameSettings;->highestScore:I

    .line 25
    iput p4, p0, Lng/vace/android/highwayracing/GameSettings;->difficulty:I

    .line 26
    iput-boolean p3, p0, Lng/vace/android/highwayracing/GameSettings;->vibrate:Z

    .line 27
    iput p6, p0, Lng/vace/android/highwayracing/GameSettings;->car:I

    .line 28
    iput p7, p0, Lng/vace/android/highwayracing/GameSettings;->unlockLevel:I

    .line 29
    return-void
.end method


# virtual methods
.method public getCar()I
    .locals 1

    .prologue
    .line 76
    iget v0, p0, Lng/vace/android/highwayracing/GameSettings;->car:I

    if-gez v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lng/vace/android/highwayracing/GameSettings;->car:I

    .line 77
    :cond_0
    iget v0, p0, Lng/vace/android/highwayracing/GameSettings;->car:I

    return v0
.end method

.method public getDifficulty()I
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lng/vace/android/highwayracing/GameSettings;->difficulty:I

    return v0
.end method

.method public getHighestScore()I
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lng/vace/android/highwayracing/GameSettings;->highestScore:I

    return v0
.end method

.method public getUnlockLevel()I
    .locals 1

    .prologue
    .line 85
    iget v0, p0, Lng/vace/android/highwayracing/GameSettings;->unlockLevel:I

    return v0
.end method

.method public isMusic()Z
    .locals 1

    .prologue
    .line 40
    iget-boolean v0, p0, Lng/vace/android/highwayracing/GameSettings;->music:Z

    return v0
.end method

.method public isSound()Z
    .locals 1

    .prologue
    .line 32
    iget-boolean v0, p0, Lng/vace/android/highwayracing/GameSettings;->sound:Z

    return v0
.end method

.method public isVibrate()Z
    .locals 1

    .prologue
    .line 68
    iget-boolean v0, p0, Lng/vace/android/highwayracing/GameSettings;->vibrate:Z

    return v0
.end method

.method public setCar(I)V
    .locals 0
    .parameter "car"

    .prologue
    .line 72
    iput p1, p0, Lng/vace/android/highwayracing/GameSettings;->car:I

    .line 73
    return-void
.end method

.method public setDifficulty(I)V
    .locals 0
    .parameter "difficulty"

    .prologue
    .line 60
    iput p1, p0, Lng/vace/android/highwayracing/GameSettings;->difficulty:I

    .line 61
    return-void
.end method

.method public setHighestScore(I)V
    .locals 0
    .parameter "highestScore"

    .prologue
    .line 52
    iput p1, p0, Lng/vace/android/highwayracing/GameSettings;->highestScore:I

    .line 53
    return-void
.end method

.method public setMusic(Z)V
    .locals 0
    .parameter "music"

    .prologue
    .line 44
    iput-boolean p1, p0, Lng/vace/android/highwayracing/GameSettings;->music:Z

    .line 45
    return-void
.end method

.method public setSound(Z)V
    .locals 0
    .parameter "sound"

    .prologue
    .line 36
    iput-boolean p1, p0, Lng/vace/android/highwayracing/GameSettings;->sound:Z

    .line 37
    return-void
.end method

.method public setUnlockLevel(I)V
    .locals 0
    .parameter "unlockLevel"

    .prologue
    .line 81
    iput p1, p0, Lng/vace/android/highwayracing/GameSettings;->unlockLevel:I

    .line 82
    return-void
.end method

.method public setVibrate(Z)V
    .locals 0
    .parameter "vibrate"

    .prologue
    .line 64
    iput-boolean p1, p0, Lng/vace/android/highwayracing/GameSettings;->vibrate:Z

    .line 65
    return-void
.end method
