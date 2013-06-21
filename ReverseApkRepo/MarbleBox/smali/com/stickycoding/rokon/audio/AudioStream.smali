.class public Lcom/stickycoding/rokon/audio/AudioStream;
.super Ljava/lang/Object;
.source "AudioStream.java"


# instance fields
.field private continuous:Z

.field private id:I

.field private paused:Z

.field private rate:F

.field private volume:F


# direct methods
.method public constructor <init>(IZF)V
    .locals 1
    .parameter "id"
    .parameter "continuous"
    .parameter "volume"

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput p1, p0, Lcom/stickycoding/rokon/audio/AudioStream;->id:I

    .line 25
    iput-boolean p2, p0, Lcom/stickycoding/rokon/audio/AudioStream;->continuous:Z

    .line 26
    iput p3, p0, Lcom/stickycoding/rokon/audio/AudioStream;->volume:F

    .line 27
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/stickycoding/rokon/audio/AudioStream;->rate:F

    .line 28
    return-void
.end method


# virtual methods
.method public getId()I
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lcom/stickycoding/rokon/audio/AudioStream;->id:I

    return v0
.end method

.method public getRate()F
    .locals 1

    .prologue
    .line 120
    iget v0, p0, Lcom/stickycoding/rokon/audio/AudioStream;->rate:F

    return v0
.end method

.method public getVolume()F
    .locals 1

    .prologue
    .line 101
    iget v0, p0, Lcom/stickycoding/rokon/audio/AudioStream;->volume:F

    return v0
.end method

.method public isContinuous()Z
    .locals 1

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/stickycoding/rokon/audio/AudioStream;->continuous:Z

    return v0
.end method

.method public isPaused()Z
    .locals 1

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/stickycoding/rokon/audio/AudioStream;->paused:Z

    return v0
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/stickycoding/rokon/audio/AudioStream;->paused:Z

    .line 49
    sget-object v0, Lcom/stickycoding/rokon/audio/RokonAudio;->singleton:Lcom/stickycoding/rokon/audio/RokonAudio;

    invoke-virtual {v0}, Lcom/stickycoding/rokon/audio/RokonAudio;->getSoundPool()Landroid/media/SoundPool;

    move-result-object v0

    iget v1, p0, Lcom/stickycoding/rokon/audio/AudioStream;->id:I

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->pause(I)V

    .line 50
    return-void
.end method

.method public resume()V
    .locals 2

    .prologue
    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/stickycoding/rokon/audio/AudioStream;->paused:Z

    .line 57
    sget-object v0, Lcom/stickycoding/rokon/audio/RokonAudio;->singleton:Lcom/stickycoding/rokon/audio/RokonAudio;

    invoke-virtual {v0}, Lcom/stickycoding/rokon/audio/RokonAudio;->getSoundPool()Landroid/media/SoundPool;

    move-result-object v0

    iget v1, p0, Lcom/stickycoding/rokon/audio/AudioStream;->id:I

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->resume(I)V

    .line 58
    return-void
.end method

.method public setContinuous(Z)V
    .locals 3
    .parameter "continuous"

    .prologue
    .line 73
    if-eqz p1, :cond_0

    .line 74
    sget-object v0, Lcom/stickycoding/rokon/audio/RokonAudio;->singleton:Lcom/stickycoding/rokon/audio/RokonAudio;

    invoke-virtual {v0}, Lcom/stickycoding/rokon/audio/RokonAudio;->getSoundPool()Landroid/media/SoundPool;

    move-result-object v0

    iget v1, p0, Lcom/stickycoding/rokon/audio/AudioStream;->id:I

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/media/SoundPool;->setLoop(II)V

    .line 77
    :goto_0
    iput-boolean p1, p0, Lcom/stickycoding/rokon/audio/AudioStream;->continuous:Z

    .line 78
    return-void

    .line 76
    :cond_0
    sget-object v0, Lcom/stickycoding/rokon/audio/RokonAudio;->singleton:Lcom/stickycoding/rokon/audio/RokonAudio;

    invoke-virtual {v0}, Lcom/stickycoding/rokon/audio/RokonAudio;->getSoundPool()Landroid/media/SoundPool;

    move-result-object v0

    iget v1, p0, Lcom/stickycoding/rokon/audio/AudioStream;->id:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/media/SoundPool;->setLoop(II)V

    goto :goto_0
.end method

.method public setRate(F)V
    .locals 2
    .parameter "rate"

    .prologue
    .line 110
    iput p1, p0, Lcom/stickycoding/rokon/audio/AudioStream;->rate:F

    .line 111
    sget-object v0, Lcom/stickycoding/rokon/audio/RokonAudio;->singleton:Lcom/stickycoding/rokon/audio/RokonAudio;

    invoke-virtual {v0}, Lcom/stickycoding/rokon/audio/RokonAudio;->getSoundPool()Landroid/media/SoundPool;

    move-result-object v0

    iget v1, p0, Lcom/stickycoding/rokon/audio/AudioStream;->id:I

    invoke-virtual {v0, v1, p1}, Landroid/media/SoundPool;->setRate(IF)V

    .line 112
    return-void
.end method

.method public setVolume(F)V
    .locals 2
    .parameter "volume"

    .prologue
    .line 93
    iput p1, p0, Lcom/stickycoding/rokon/audio/AudioStream;->volume:F

    .line 94
    sget-object v0, Lcom/stickycoding/rokon/audio/RokonAudio;->singleton:Lcom/stickycoding/rokon/audio/RokonAudio;

    invoke-virtual {v0}, Lcom/stickycoding/rokon/audio/RokonAudio;->getSoundPool()Landroid/media/SoundPool;

    move-result-object v0

    iget v1, p0, Lcom/stickycoding/rokon/audio/AudioStream;->id:I

    invoke-virtual {v0, v1, p1, p1}, Landroid/media/SoundPool;->setVolume(IFF)V

    .line 95
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 64
    sget-object v0, Lcom/stickycoding/rokon/audio/RokonAudio;->singleton:Lcom/stickycoding/rokon/audio/RokonAudio;

    invoke-virtual {v0}, Lcom/stickycoding/rokon/audio/RokonAudio;->getSoundPool()Landroid/media/SoundPool;

    move-result-object v0

    iget v1, p0, Lcom/stickycoding/rokon/audio/AudioStream;->id:I

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->stop(I)V

    .line 65
    return-void
.end method
