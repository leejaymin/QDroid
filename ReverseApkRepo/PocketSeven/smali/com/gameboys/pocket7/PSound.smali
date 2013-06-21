.class public Lcom/gameboys/pocket7/PSound;
.super Ljava/lang/Object;
.source "PSound.java"


# instance fields
.field private FileName:Ljava/lang/String;

.field MAXVOLUME:I

.field private RealVol:I

.field context:Landroid/content/Context;

.field public isLoop:Z

.field public isPlay:Z

.field public isSoundOn:I

.field mediaPlayer:Landroid/media/MediaPlayer;

.field nowSoundNum:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/16 v1, 0x64

    const/4 v0, 0x0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/gameboys/pocket7/PSound;->context:Landroid/content/Context;

    .line 27
    iput-boolean v0, p0, Lcom/gameboys/pocket7/PSound;->isLoop:Z

    .line 28
    iput-boolean v0, p0, Lcom/gameboys/pocket7/PSound;->isPlay:Z

    .line 30
    iput v1, p0, Lcom/gameboys/pocket7/PSound;->RealVol:I

    .line 31
    iput v1, p0, Lcom/gameboys/pocket7/PSound;->MAXVOLUME:I

    .line 33
    const/4 v0, -0x1

    iput v0, p0, Lcom/gameboys/pocket7/PSound;->nowSoundNum:I

    .line 35
    return-void
.end method


# virtual methods
.method public Pause()V
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/gameboys/pocket7/PSound;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/gameboys/pocket7/PSound;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 95
    :cond_0
    return-void
.end method

.method public Play(IZ)V
    .locals 3
    .parameter "ID"
    .parameter "repeat"

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/gameboys/pocket7/PSound;->StopSound()V

    .line 41
    iget-object v1, p0, Lcom/gameboys/pocket7/PSound;->context:Landroid/content/Context;

    invoke-static {v1, p1}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v1

    iput-object v1, p0, Lcom/gameboys/pocket7/PSound;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 42
    iget-object v1, p0, Lcom/gameboys/pocket7/PSound;->mediaPlayer:Landroid/media/MediaPlayer;

    if-nez v1, :cond_1

    .line 71
    :cond_0
    :goto_0
    return-void

    .line 46
    :cond_1
    iget-object v1, p0, Lcom/gameboys/pocket7/PSound;->mediaPlayer:Landroid/media/MediaPlayer;

    new-instance v2, Lcom/gameboys/pocket7/PSound$1;

    invoke-direct {v2, p0}, Lcom/gameboys/pocket7/PSound$1;-><init>(Lcom/gameboys/pocket7/PSound;)V

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 57
    iget-boolean v1, p0, Lcom/gameboys/pocket7/PSound;->isPlay:Z

    if-nez v1, :cond_0

    .line 60
    iget-object v1, p0, Lcom/gameboys/pocket7/PSound;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_2

    .line 62
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/gameboys/pocket7/PSound;->isPlay:Z

    .line 63
    iget-object v1, p0, Lcom/gameboys/pocket7/PSound;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V

    .line 65
    :cond_2
    iget-object v1, p0, Lcom/gameboys/pocket7/PSound;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_3

    .line 67
    iget v1, p0, Lcom/gameboys/pocket7/PSound;->RealVol:I

    int-to-float v1, v1

    const/high16 v2, 0x42c8

    div-float v0, v1, v2

    .line 68
    .local v0, fVolume:F
    iget-object v1, p0, Lcom/gameboys/pocket7/PSound;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, v0, v0}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 70
    .end local v0           #fVolume:F
    :cond_3
    iput-boolean p2, p0, Lcom/gameboys/pocket7/PSound;->isLoop:Z

    goto :goto_0
.end method

.method public Resume()V
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/gameboys/pocket7/PSound;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/gameboys/pocket7/PSound;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 101
    :cond_0
    return-void
.end method

.method public StopSound()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 78
    iput-boolean v1, p0, Lcom/gameboys/pocket7/PSound;->isLoop:Z

    .line 80
    iget-boolean v0, p0, Lcom/gameboys/pocket7/PSound;->isPlay:Z

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/gameboys/pocket7/PSound;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 84
    iput-boolean v1, p0, Lcom/gameboys/pocket7/PSound;->isPlay:Z

    .line 85
    iget-object v0, p0, Lcom/gameboys/pocket7/PSound;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 86
    iget-object v0, p0, Lcom/gameboys/pocket7/PSound;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 87
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/gameboys/pocket7/PSound;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 90
    :cond_0
    return-void
.end method

.method public setVolume(I)V
    .locals 3
    .parameter "vol"

    .prologue
    .line 105
    iget v1, p0, Lcom/gameboys/pocket7/PSound;->MAXVOLUME:I

    div-int/lit8 v1, v1, 0x5

    mul-int/2addr v1, p1

    iput v1, p0, Lcom/gameboys/pocket7/PSound;->RealVol:I

    .line 106
    iget-object v1, p0, Lcom/gameboys/pocket7/PSound;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    .line 108
    iget v1, p0, Lcom/gameboys/pocket7/PSound;->RealVol:I

    int-to-float v1, v1

    const/high16 v2, 0x42c8

    div-float v0, v1, v2

    .line 109
    .local v0, fVolume:F
    iget-object v1, p0, Lcom/gameboys/pocket7/PSound;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, v0, v0}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 111
    .end local v0           #fVolume:F
    :cond_0
    return-void
.end method
