.class Lorg/tf/stage/StageSoundEffects;
.super Ljava/lang/Object;
.source "StageSoundEffects.java"


# instance fields
.field private m_pool:Landroid/media/SoundPool;

.field private m_random:Ljava/util/Random;

.field private m_screwUpSounds:[I


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lorg/tf/stage/StageSoundEffects;->m_random:Ljava/util/Random;

    .line 28
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 45
    iget-object v0, p0, Lorg/tf/stage/StageSoundEffects;->m_pool:Landroid/media/SoundPool;

    if-nez v0, :cond_0

    .line 51
    :goto_0
    return-void

    .line 48
    :cond_0
    iget-object v0, p0, Lorg/tf/stage/StageSoundEffects;->m_pool:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    .line 49
    iput-object v1, p0, Lorg/tf/stage/StageSoundEffects;->m_pool:Landroid/media/SoundPool;

    .line 50
    iput-object v1, p0, Lorg/tf/stage/StageSoundEffects;->m_screwUpSounds:[I

    goto :goto_0
.end method

.method public load(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    const/4 v5, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 31
    iget-object v0, p0, Lorg/tf/stage/StageSoundEffects;->m_pool:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    .line 42
    :goto_0
    return-void

    .line 34
    :cond_0
    new-instance v0, Landroid/media/SoundPool;

    invoke-direct {v0, v4, v5, v3}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v0, p0, Lorg/tf/stage/StageSoundEffects;->m_pool:Landroid/media/SoundPool;

    .line 35
    const/4 v0, 0x6

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/tf/stage/StageSoundEffects;->m_screwUpSounds:[I

    .line 36
    iget-object v0, p0, Lorg/tf/stage/StageSoundEffects;->m_screwUpSounds:[I

    iget-object v1, p0, Lorg/tf/stage/StageSoundEffects;->m_pool:Landroid/media/SoundPool;

    const v2, 0x7f050003

    invoke-virtual {v1, p1, v2, v4}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v1

    aput v1, v0, v3

    .line 37
    iget-object v0, p0, Lorg/tf/stage/StageSoundEffects;->m_screwUpSounds:[I

    iget-object v1, p0, Lorg/tf/stage/StageSoundEffects;->m_pool:Landroid/media/SoundPool;

    const v2, 0x7f050004

    invoke-virtual {v1, p1, v2, v4}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v1

    aput v1, v0, v4

    .line 38
    iget-object v0, p0, Lorg/tf/stage/StageSoundEffects;->m_screwUpSounds:[I

    const/4 v1, 0x2

    iget-object v2, p0, Lorg/tf/stage/StageSoundEffects;->m_pool:Landroid/media/SoundPool;

    const v3, 0x7f050005

    invoke-virtual {v2, p1, v3, v4}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    aput v2, v0, v1

    .line 39
    iget-object v0, p0, Lorg/tf/stage/StageSoundEffects;->m_screwUpSounds:[I

    iget-object v1, p0, Lorg/tf/stage/StageSoundEffects;->m_pool:Landroid/media/SoundPool;

    const v2, 0x7f050006

    invoke-virtual {v1, p1, v2, v4}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v1

    aput v1, v0, v5

    .line 40
    iget-object v0, p0, Lorg/tf/stage/StageSoundEffects;->m_screwUpSounds:[I

    const/4 v1, 0x4

    iget-object v2, p0, Lorg/tf/stage/StageSoundEffects;->m_pool:Landroid/media/SoundPool;

    const v3, 0x7f050007

    invoke-virtual {v2, p1, v3, v4}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    aput v2, v0, v1

    .line 41
    iget-object v0, p0, Lorg/tf/stage/StageSoundEffects;->m_screwUpSounds:[I

    const/4 v1, 0x5

    iget-object v2, p0, Lorg/tf/stage/StageSoundEffects;->m_pool:Landroid/media/SoundPool;

    const v3, 0x7f050008

    invoke-virtual {v2, p1, v3, v4}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    aput v2, v0, v1

    goto :goto_0
.end method

.method public playScrewUpSound()V
    .locals 8

    .prologue
    .line 54
    iget-object v0, p0, Lorg/tf/stage/StageSoundEffects;->m_screwUpSounds:[I

    if-nez v0, :cond_1

    .line 65
    :cond_0
    :goto_0
    return-void

    .line 57
    :cond_1
    iget-object v0, p0, Lorg/tf/stage/StageSoundEffects;->m_random:Ljava/util/Random;

    iget-object v1, p0, Lorg/tf/stage/StageSoundEffects;->m_screwUpSounds:[I

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v7

    .line 58
    .local v7, soundIndex:I
    iget-object v0, p0, Lorg/tf/stage/StageSoundEffects;->m_screwUpSounds:[I

    array-length v0, v0

    if-ge v7, v0, :cond_0

    .line 61
    const/4 v0, 0x3

    invoke-static {v0}, Lorg/tf/Config;->getScaledVolume(I)F

    move-result v2

    .line 62
    .local v2, volume:F
    const/4 v0, 0x0

    cmpl-float v0, v2, v0

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lorg/tf/stage/StageSoundEffects;->m_pool:Landroid/media/SoundPool;

    iget-object v1, p0, Lorg/tf/stage/StageSoundEffects;->m_screwUpSounds:[I

    aget v1, v1, v7

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/high16 v6, 0x3f80

    move v3, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    goto :goto_0
.end method
