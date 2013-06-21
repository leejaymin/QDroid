.class public Lcom/garageapps/android/spacetracks/hardware/HwSoundManager;
.super Ljava/lang/Object;
.source "HwSoundManager.java"


# instance fields
.field final MAX_CHANNELS:I

.field final MAX_SAMPLES:I

.field private mAudioManager:Landroid/media/AudioManager;

.field private mContext:Landroid/content/Context;

.field private mSoundPool:Landroid/media/SoundPool;

.field private mSoundPoolMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mSystemVolume:F

.field private mSystemVolumeMax:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x3

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput v3, p0, Lcom/garageapps/android/spacetracks/hardware/HwSoundManager;->MAX_CHANNELS:I

    .line 24
    const/16 v0, 0x17

    iput v0, p0, Lcom/garageapps/android/spacetracks/hardware/HwSoundManager;->MAX_SAMPLES:I

    .line 35
    iput-object p1, p0, Lcom/garageapps/android/spacetracks/hardware/HwSoundManager;->mContext:Landroid/content/Context;

    .line 36
    new-instance v0, Landroid/media/SoundPool;

    const/16 v1, 0x64

    invoke-direct {v0, v3, v2, v1}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v0, p0, Lcom/garageapps/android/spacetracks/hardware/HwSoundManager;->mSoundPool:Landroid/media/SoundPool;

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/garageapps/android/spacetracks/hardware/HwSoundManager;->mSoundPoolMap:Ljava/util/HashMap;

    .line 38
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/hardware/HwSoundManager;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/garageapps/android/spacetracks/hardware/HwSoundManager;->mAudioManager:Landroid/media/AudioManager;

    .line 39
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/hardware/HwSoundManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/garageapps/android/spacetracks/hardware/HwSoundManager;->mSystemVolume:F

    .line 40
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/hardware/HwSoundManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/garageapps/android/spacetracks/hardware/HwSoundManager;->mSystemVolumeMax:F

    .line 41
    return-void
.end method


# virtual methods
.method public getVolume()F
    .locals 2

    .prologue
    .line 91
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/hardware/HwSoundManager;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method public loadAll()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 45
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/hardware/HwSoundManager;->mSoundPoolMap:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/garageapps/android/spacetracks/hardware/HwSoundManager;->mSoundPool:Landroid/media/SoundPool;

    iget-object v3, p0, Lcom/garageapps/android/spacetracks/hardware/HwSoundManager;->mContext:Landroid/content/Context;

    const v4, 0x7f04000b

    invoke-virtual {v2, v3, v4, v5}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/hardware/HwSoundManager;->mSoundPoolMap:Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/garageapps/android/spacetracks/hardware/HwSoundManager;->mSoundPool:Landroid/media/SoundPool;

    iget-object v3, p0, Lcom/garageapps/android/spacetracks/hardware/HwSoundManager;->mContext:Landroid/content/Context;

    const v4, 0x7f040006

    invoke-virtual {v2, v3, v4, v5}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/hardware/HwSoundManager;->mSoundPoolMap:Ljava/util/HashMap;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/garageapps/android/spacetracks/hardware/HwSoundManager;->mSoundPool:Landroid/media/SoundPool;

    iget-object v3, p0, Lcom/garageapps/android/spacetracks/hardware/HwSoundManager;->mContext:Landroid/content/Context;

    const v4, 0x7f040007

    invoke-virtual {v2, v3, v4, v5}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/hardware/HwSoundManager;->mSoundPoolMap:Ljava/util/HashMap;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/garageapps/android/spacetracks/hardware/HwSoundManager;->mSoundPool:Landroid/media/SoundPool;

    iget-object v3, p0, Lcom/garageapps/android/spacetracks/hardware/HwSoundManager;->mContext:Landroid/content/Context;

    const v4, 0x7f040008

    invoke-virtual {v2, v3, v4, v5}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/hardware/HwSoundManager;->mSoundPoolMap:Ljava/util/HashMap;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/garageapps/android/spacetracks/hardware/HwSoundManager;->mSoundPool:Landroid/media/SoundPool;

    iget-object v3, p0, Lcom/garageapps/android/spacetracks/hardware/HwSoundManager;->mContext:Landroid/content/Context;

    const v4, 0x7f040009

    invoke-virtual {v2, v3, v4, v5}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/hardware/HwSoundManager;->mSoundPoolMap:Ljava/util/HashMap;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/garageapps/android/spacetracks/hardware/HwSoundManager;->mSoundPool:Landroid/media/SoundPool;

    iget-object v3, p0, Lcom/garageapps/android/spacetracks/hardware/HwSoundManager;->mContext:Landroid/content/Context;

    const v4, 0x7f04000a

    invoke-virtual {v2, v3, v4, v5}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/hardware/HwSoundManager;->mSoundPoolMap:Ljava/util/HashMap;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/garageapps/android/spacetracks/hardware/HwSoundManager;->mSoundPool:Landroid/media/SoundPool;

    iget-object v3, p0, Lcom/garageapps/android/spacetracks/hardware/HwSoundManager;->mContext:Landroid/content/Context;

    const/high16 v4, 0x7f04

    invoke-virtual {v2, v3, v4, v5}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/hardware/HwSoundManager;->mSoundPoolMap:Ljava/util/HashMap;

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/garageapps/android/spacetracks/hardware/HwSoundManager;->mSoundPool:Landroid/media/SoundPool;

    iget-object v3, p0, Lcom/garageapps/android/spacetracks/hardware/HwSoundManager;->mContext:Landroid/content/Context;

    const v4, 0x7f040001

    invoke-virtual {v2, v3, v4, v5}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/hardware/HwSoundManager;->mSoundPoolMap:Ljava/util/HashMap;

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/garageapps/android/spacetracks/hardware/HwSoundManager;->mSoundPool:Landroid/media/SoundPool;

    iget-object v3, p0, Lcom/garageapps/android/spacetracks/hardware/HwSoundManager;->mContext:Landroid/content/Context;

    const v4, 0x7f040002

    invoke-virtual {v2, v3, v4, v5}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/hardware/HwSoundManager;->mSoundPoolMap:Ljava/util/HashMap;

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/garageapps/android/spacetracks/hardware/HwSoundManager;->mSoundPool:Landroid/media/SoundPool;

    iget-object v3, p0, Lcom/garageapps/android/spacetracks/hardware/HwSoundManager;->mContext:Landroid/content/Context;

    const v4, 0x7f040003

    invoke-virtual {v2, v3, v4, v5}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/hardware/HwSoundManager;->mSoundPoolMap:Ljava/util/HashMap;

    const/16 v1, 0xb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/garageapps/android/spacetracks/hardware/HwSoundManager;->mSoundPool:Landroid/media/SoundPool;

    iget-object v3, p0, Lcom/garageapps/android/spacetracks/hardware/HwSoundManager;->mContext:Landroid/content/Context;

    const v4, 0x7f040004

    invoke-virtual {v2, v3, v4, v5}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/hardware/HwSoundManager;->mSoundPoolMap:Ljava/util/HashMap;

    const/16 v1, 0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/garageapps/android/spacetracks/hardware/HwSoundManager;->mSoundPool:Landroid/media/SoundPool;

    iget-object v3, p0, Lcom/garageapps/android/spacetracks/hardware/HwSoundManager;->mContext:Landroid/content/Context;

    const v4, 0x7f040005

    invoke-virtual {v2, v3, v4, v5}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/hardware/HwSoundManager;->mSoundPoolMap:Ljava/util/HashMap;

    const/16 v1, 0xd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/garageapps/android/spacetracks/hardware/HwSoundManager;->mSoundPool:Landroid/media/SoundPool;

    iget-object v3, p0, Lcom/garageapps/android/spacetracks/hardware/HwSoundManager;->mContext:Landroid/content/Context;

    const v4, 0x7f040013

    invoke-virtual {v2, v3, v4, v5}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/hardware/HwSoundManager;->mSoundPoolMap:Ljava/util/HashMap;

    const/16 v1, 0xe

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/garageapps/android/spacetracks/hardware/HwSoundManager;->mSoundPool:Landroid/media/SoundPool;

    iget-object v3, p0, Lcom/garageapps/android/spacetracks/hardware/HwSoundManager;->mContext:Landroid/content/Context;

    const v4, 0x7f040014

    invoke-virtual {v2, v3, v4, v5}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/hardware/HwSoundManager;->mSoundPoolMap:Ljava/util/HashMap;

    const/16 v1, 0x10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/garageapps/android/spacetracks/hardware/HwSoundManager;->mSoundPool:Landroid/media/SoundPool;

    iget-object v3, p0, Lcom/garageapps/android/spacetracks/hardware/HwSoundManager;->mContext:Landroid/content/Context;

    const v4, 0x7f04000c

    invoke-virtual {v2, v3, v4, v5}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/hardware/HwSoundManager;->mSoundPoolMap:Ljava/util/HashMap;

    const/16 v1, 0x11

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/garageapps/android/spacetracks/hardware/HwSoundManager;->mSoundPool:Landroid/media/SoundPool;

    iget-object v3, p0, Lcom/garageapps/android/spacetracks/hardware/HwSoundManager;->mContext:Landroid/content/Context;

    const v4, 0x7f04000d

    invoke-virtual {v2, v3, v4, v5}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/hardware/HwSoundManager;->mSoundPoolMap:Ljava/util/HashMap;

    const/16 v1, 0x12

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/garageapps/android/spacetracks/hardware/HwSoundManager;->mSoundPool:Landroid/media/SoundPool;

    iget-object v3, p0, Lcom/garageapps/android/spacetracks/hardware/HwSoundManager;->mContext:Landroid/content/Context;

    const v4, 0x7f04000e

    invoke-virtual {v2, v3, v4, v5}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/hardware/HwSoundManager;->mSoundPoolMap:Ljava/util/HashMap;

    const/16 v1, 0x13

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/garageapps/android/spacetracks/hardware/HwSoundManager;->mSoundPool:Landroid/media/SoundPool;

    iget-object v3, p0, Lcom/garageapps/android/spacetracks/hardware/HwSoundManager;->mContext:Landroid/content/Context;

    const v4, 0x7f04000f

    invoke-virtual {v2, v3, v4, v5}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/hardware/HwSoundManager;->mSoundPoolMap:Ljava/util/HashMap;

    const/16 v1, 0x14

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/garageapps/android/spacetracks/hardware/HwSoundManager;->mSoundPool:Landroid/media/SoundPool;

    iget-object v3, p0, Lcom/garageapps/android/spacetracks/hardware/HwSoundManager;->mContext:Landroid/content/Context;

    const v4, 0x7f040010

    invoke-virtual {v2, v3, v4, v5}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/hardware/HwSoundManager;->mSoundPoolMap:Ljava/util/HashMap;

    const/16 v1, 0x15

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/garageapps/android/spacetracks/hardware/HwSoundManager;->mSoundPool:Landroid/media/SoundPool;

    iget-object v3, p0, Lcom/garageapps/android/spacetracks/hardware/HwSoundManager;->mContext:Landroid/content/Context;

    const v4, 0x7f040011

    invoke-virtual {v2, v3, v4, v5}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/hardware/HwSoundManager;->mSoundPoolMap:Ljava/util/HashMap;

    const/16 v1, 0x16

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/garageapps/android/spacetracks/hardware/HwSoundManager;->mSoundPool:Landroid/media/SoundPool;

    iget-object v3, p0, Lcom/garageapps/android/spacetracks/hardware/HwSoundManager;->mContext:Landroid/content/Context;

    const v4, 0x7f040012

    invoke-virtual {v2, v3, v4, v5}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    return-void
.end method

.method public play(II)V
    .locals 7
    .parameter "type"
    .parameter "index"

    .prologue
    const/4 v4, 0x1

    .line 70
    iget v0, p0, Lcom/garageapps/android/spacetracks/hardware/HwSoundManager;->mSystemVolume:F

    iget v1, p0, Lcom/garageapps/android/spacetracks/hardware/HwSoundManager;->mSystemVolumeMax:F

    div-float v2, v0, v1

    .line 72
    .local v2, volume:F
    if-ne p1, v4, :cond_0

    sget-object v0, Lcom/garageapps/android/spacetracks/main;->cMain:Lcom/garageapps/android/spacetracks/main;

    iget-object v0, v0, Lcom/garageapps/android/spacetracks/main;->mApplication:Lcom/garageapps/android/spacetracks/mainApplication;

    iget-object v0, v0, Lcom/garageapps/android/spacetracks/mainApplication;->mPrefs:Lcom/garageapps/android/spacetracks/hardware/HwPrefsManager;

    iget v0, v0, Lcom/garageapps/android/spacetracks/hardware/HwPrefsManager;->soundMusic:I

    if-eq v0, v4, :cond_1

    .line 73
    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    sget-object v0, Lcom/garageapps/android/spacetracks/main;->cMain:Lcom/garageapps/android/spacetracks/main;

    iget-object v0, v0, Lcom/garageapps/android/spacetracks/main;->mApplication:Lcom/garageapps/android/spacetracks/mainApplication;

    iget-object v0, v0, Lcom/garageapps/android/spacetracks/mainApplication;->mPrefs:Lcom/garageapps/android/spacetracks/hardware/HwPrefsManager;

    iget v0, v0, Lcom/garageapps/android/spacetracks/hardware/HwPrefsManager;->soundFX:I

    if-ne v0, v4, :cond_2

    .line 74
    :cond_1
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/hardware/HwSoundManager;->mSoundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/garageapps/android/spacetracks/hardware/HwSoundManager;->mSoundPoolMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v5, 0x0

    const/high16 v6, 0x3f80

    move v3, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 76
    :cond_2
    return-void
.end method

.method public setVolume(I)V
    .locals 4
    .parameter "volume"

    .prologue
    .line 96
    add-int/lit8 v0, p1, 0x5

    int-to-float v0, v0

    iput v0, p0, Lcom/garageapps/android/spacetracks/hardware/HwSoundManager;->mSystemVolume:F

    .line 97
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/hardware/HwSoundManager;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x3

    add-int/lit8 v2, p1, 0x5

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 98
    return-void
.end method

.method public stop(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/hardware/HwSoundManager;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v0, p1}, Landroid/media/SoundPool;->stop(I)V

    .line 81
    return-void
.end method

.method public stopAll()V
    .locals 2

    .prologue
    .line 85
    const/4 v0, 0x1

    .local v0, i:I
    :goto_0
    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 87
    return-void

    .line 86
    :cond_0
    invoke-virtual {p0, v0}, Lcom/garageapps/android/spacetracks/hardware/HwSoundManager;->stop(I)V

    .line 85
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
