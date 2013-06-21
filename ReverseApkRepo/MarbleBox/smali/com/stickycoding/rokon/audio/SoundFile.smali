.class public Lcom/stickycoding/rokon/audio/SoundFile;
.super Ljava/lang/Object;
.source "SoundFile.java"


# instance fields
.field private audioStream:Lcom/stickycoding/rokon/audio/AudioStream;

.field private id:I

.field private res:Z

.field private result:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .parameter "streamId"

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput p1, p0, Lcom/stickycoding/rokon/audio/SoundFile;->id:I

    .line 20
    return-void
.end method


# virtual methods
.method public getId()I
    .locals 1

    .prologue
    .line 23
    iget v0, p0, Lcom/stickycoding/rokon/audio/SoundFile;->id:I

    return v0
.end method

.method public play()Lcom/stickycoding/rokon/audio/AudioStream;
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v5, 0x0

    .line 30
    sget-boolean v0, Lcom/stickycoding/rokon/audio/RokonAudio;->mute:Z

    if-eqz v0, :cond_0

    move-object v0, v7

    .line 37
    :goto_0
    return-object v0

    .line 32
    :cond_0
    sget-object v0, Lcom/stickycoding/rokon/audio/RokonAudio;->singleton:Lcom/stickycoding/rokon/audio/RokonAudio;

    invoke-virtual {v0}, Lcom/stickycoding/rokon/audio/RokonAudio;->getSoundPool()Landroid/media/SoundPool;

    move-result-object v0

    iget v1, p0, Lcom/stickycoding/rokon/audio/SoundFile;->id:I

    sget-object v2, Lcom/stickycoding/rokon/audio/RokonAudio;->singleton:Lcom/stickycoding/rokon/audio/RokonAudio;

    invoke-virtual {v2}, Lcom/stickycoding/rokon/audio/RokonAudio;->getMasterVolume()F

    move-result v2

    sget-object v3, Lcom/stickycoding/rokon/audio/RokonAudio;->singleton:Lcom/stickycoding/rokon/audio/RokonAudio;

    invoke-virtual {v3}, Lcom/stickycoding/rokon/audio/RokonAudio;->getMasterVolume()F

    move-result v3

    const/4 v4, 0x1

    const/high16 v6, 0x3f80

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result v0

    iput v0, p0, Lcom/stickycoding/rokon/audio/SoundFile;->result:I

    .line 33
    iget v0, p0, Lcom/stickycoding/rokon/audio/SoundFile;->result:I

    if-eqz v0, :cond_1

    .line 34
    new-instance v0, Lcom/stickycoding/rokon/audio/AudioStream;

    iget v1, p0, Lcom/stickycoding/rokon/audio/SoundFile;->result:I

    sget-object v2, Lcom/stickycoding/rokon/audio/RokonAudio;->singleton:Lcom/stickycoding/rokon/audio/RokonAudio;

    invoke-virtual {v2}, Lcom/stickycoding/rokon/audio/RokonAudio;->getMasterVolume()F

    move-result v2

    invoke-direct {v0, v1, v5, v2}, Lcom/stickycoding/rokon/audio/AudioStream;-><init>(IZF)V

    iput-object v0, p0, Lcom/stickycoding/rokon/audio/SoundFile;->audioStream:Lcom/stickycoding/rokon/audio/AudioStream;

    .line 35
    iget-object v0, p0, Lcom/stickycoding/rokon/audio/SoundFile;->audioStream:Lcom/stickycoding/rokon/audio/AudioStream;

    goto :goto_0

    :cond_1
    move-object v0, v7

    .line 37
    goto :goto_0
.end method

.method public playContinuous()Lcom/stickycoding/rokon/audio/AudioStream;
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 44
    sget-boolean v0, Lcom/stickycoding/rokon/audio/RokonAudio;->mute:Z

    if-eqz v0, :cond_0

    move-object v0, v8

    .line 51
    :goto_0
    return-object v0

    .line 46
    :cond_0
    sget-object v0, Lcom/stickycoding/rokon/audio/RokonAudio;->singleton:Lcom/stickycoding/rokon/audio/RokonAudio;

    invoke-virtual {v0}, Lcom/stickycoding/rokon/audio/RokonAudio;->getSoundPool()Landroid/media/SoundPool;

    move-result-object v0

    iget v1, p0, Lcom/stickycoding/rokon/audio/SoundFile;->id:I

    sget-object v2, Lcom/stickycoding/rokon/audio/RokonAudio;->singleton:Lcom/stickycoding/rokon/audio/RokonAudio;

    invoke-virtual {v2}, Lcom/stickycoding/rokon/audio/RokonAudio;->getMasterVolume()F

    move-result v2

    sget-object v3, Lcom/stickycoding/rokon/audio/RokonAudio;->singleton:Lcom/stickycoding/rokon/audio/RokonAudio;

    invoke-virtual {v3}, Lcom/stickycoding/rokon/audio/RokonAudio;->getMasterVolume()F

    move-result v3

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/high16 v6, 0x3f80

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result v7

    .line 47
    .local v7, result:I
    if-eqz v7, :cond_1

    .line 48
    new-instance v0, Lcom/stickycoding/rokon/audio/AudioStream;

    const/4 v1, 0x1

    sget-object v2, Lcom/stickycoding/rokon/audio/RokonAudio;->singleton:Lcom/stickycoding/rokon/audio/RokonAudio;

    invoke-virtual {v2}, Lcom/stickycoding/rokon/audio/RokonAudio;->getMasterVolume()F

    move-result v2

    invoke-direct {v0, v7, v1, v2}, Lcom/stickycoding/rokon/audio/AudioStream;-><init>(IZF)V

    iput-object v0, p0, Lcom/stickycoding/rokon/audio/SoundFile;->audioStream:Lcom/stickycoding/rokon/audio/AudioStream;

    .line 49
    iget-object v0, p0, Lcom/stickycoding/rokon/audio/SoundFile;->audioStream:Lcom/stickycoding/rokon/audio/AudioStream;

    goto :goto_0

    :cond_1
    move-object v0, v8

    .line 51
    goto :goto_0
.end method

.method public unload()V
    .locals 2

    .prologue
    .line 58
    sget-object v0, Lcom/stickycoding/rokon/audio/RokonAudio;->singleton:Lcom/stickycoding/rokon/audio/RokonAudio;

    invoke-virtual {v0}, Lcom/stickycoding/rokon/audio/RokonAudio;->getSoundPool()Landroid/media/SoundPool;

    move-result-object v0

    iget v1, p0, Lcom/stickycoding/rokon/audio/SoundFile;->id:I

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->unload(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/stickycoding/rokon/audio/SoundFile;->res:Z

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unloading "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/stickycoding/rokon/audio/SoundFile;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/stickycoding/rokon/audio/SoundFile;->res:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/stickycoding/rokon/Debug;->print(Ljava/lang/String;)V

    .line 60
    return-void
.end method
