.class public Lcom/spritefish/fastburstcamera/core/SoundManager;
.super Ljava/lang/Object;
.source "SoundManager.java"


# static fields
.field public static USED_SOUND_STREAM:I


# instance fields
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


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const/4 v0, 0x1

    sput v0, Lcom/spritefish/fastburstcamera/core/SoundManager;->USED_SOUND_STREAM:I

    .line 11
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    return-void
.end method


# virtual methods
.method public addSound(II)V
    .locals 5
    .parameter "Index"
    .parameter "SoundID"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/core/SoundManager;->mSoundPoolMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/spritefish/fastburstcamera/core/SoundManager;->mSoundPool:Landroid/media/SoundPool;

    iget-object v3, p0, Lcom/spritefish/fastburstcamera/core/SoundManager;->mContext:Landroid/content/Context;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, p2, v4}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    return-void
.end method

.method public initSounds(Landroid/content/Context;)V
    .locals 4
    .parameter "theContext"

    .prologue
    const/4 v3, 0x0

    .line 25
    iput-object p1, p0, Lcom/spritefish/fastburstcamera/core/SoundManager;->mContext:Landroid/content/Context;

    .line 26
    new-instance v0, Landroid/media/SoundPool;

    const/4 v1, 0x4

    sget v2, Lcom/spritefish/fastburstcamera/core/SoundManager;->USED_SOUND_STREAM:I

    invoke-direct {v0, v1, v2, v3}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v0, p0, Lcom/spritefish/fastburstcamera/core/SoundManager;->mSoundPool:Landroid/media/SoundPool;

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/spritefish/fastburstcamera/core/SoundManager;->mSoundPoolMap:Ljava/util/HashMap;

    .line 28
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/core/SoundManager;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/spritefish/fastburstcamera/core/SoundManager;->mAudioManager:Landroid/media/AudioManager;

    .line 29
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/core/SoundManager;->mAudioManager:Landroid/media/AudioManager;

    sget v1, Lcom/spritefish/fastburstcamera/core/SoundManager;->USED_SOUND_STREAM:I

    invoke-virtual {v0, v1, v3}, Landroid/media/AudioManager;->setStreamMute(IZ)V

    .line 30
    return-void
.end method

.method public playLoopedSound(I)V
    .locals 8
    .parameter "index"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/core/SoundManager;->mAudioManager:Landroid/media/AudioManager;

    sget v1, Lcom/spritefish/fastburstcamera/core/SoundManager;->USED_SOUND_STREAM:I

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v7

    .line 55
    .local v7, streamVolume:I
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/core/SoundManager;->mSoundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/spritefish/fastburstcamera/core/SoundManager;->mSoundPoolMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-float v2, v7

    int-to-float v3, v7

    const/4 v4, 0x1

    const/4 v5, -0x1

    const/high16 v6, 0x3f80

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 56
    return-void
.end method

.method public playSound(I)V
    .locals 8
    .parameter "index"

    .prologue
    const/4 v5, 0x0

    const/high16 v2, 0x3f80

    .line 39
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/core/SoundManager;->mAudioManager:Landroid/media/AudioManager;

    sget v1, Lcom/spritefish/fastburstcamera/core/SoundManager;->USED_SOUND_STREAM:I

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v7

    .line 40
    .local v7, streamVolume:I
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/core/SoundManager;->mAudioManager:Landroid/media/AudioManager;

    sget v1, Lcom/spritefish/fastburstcamera/core/SoundManager;->USED_SOUND_STREAM:I

    invoke-virtual {v0, v1, v7, v5}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 41
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/core/SoundManager;->mSoundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/spritefish/fastburstcamera/core/SoundManager;->mSoundPoolMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v4, 0x1

    move v3, v2

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 42
    return-void
.end method

.method public playSoundAlways(I)V
    .locals 7
    .parameter "index"

    .prologue
    const/high16 v2, 0x42c8

    .line 48
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/core/SoundManager;->mSoundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/spritefish/fastburstcamera/core/SoundManager;->mSoundPoolMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/high16 v6, 0x3f80

    move v3, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 49
    return-void
.end method
