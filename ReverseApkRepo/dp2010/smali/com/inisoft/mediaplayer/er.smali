.class public final Lcom/inisoft/mediaplayer/er;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/MediaPlayer$OnBufferingUpdateListener;
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnInfoListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/media/MediaPlayer$OnSeekCompleteListener;
.implements Landroid/media/MediaPlayer$OnVideoSizeChangedListener;
.implements Lcom/inisoft/mediaplayer/es;


# instance fields
.field a:Lcom/inisoft/mediaplayer/el;

.field b:Lcom/inisoft/mediaplayer/ei;

.field c:Lcom/inisoft/mediaplayer/eh;

.field d:Lcom/inisoft/mediaplayer/em;

.field e:Lcom/inisoft/mediaplayer/eq;

.field f:Lcom/inisoft/mediaplayer/ej;

.field g:Lcom/inisoft/mediaplayer/ek;

.field h:Lcom/inisoft/mediaplayer/eo;

.field i:Lcom/inisoft/mediaplayer/eg;

.field j:Lcom/inisoft/mediaplayer/en;

.field private k:Landroid/media/MediaPlayer;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/inisoft/mediaplayer/er;->k:Landroid/media/MediaPlayer;

    iput-object v0, p0, Lcom/inisoft/mediaplayer/er;->a:Lcom/inisoft/mediaplayer/el;

    iput-object v0, p0, Lcom/inisoft/mediaplayer/er;->b:Lcom/inisoft/mediaplayer/ei;

    iput-object v0, p0, Lcom/inisoft/mediaplayer/er;->c:Lcom/inisoft/mediaplayer/eh;

    iput-object v0, p0, Lcom/inisoft/mediaplayer/er;->d:Lcom/inisoft/mediaplayer/em;

    iput-object v0, p0, Lcom/inisoft/mediaplayer/er;->e:Lcom/inisoft/mediaplayer/eq;

    iput-object v0, p0, Lcom/inisoft/mediaplayer/er;->f:Lcom/inisoft/mediaplayer/ej;

    iput-object v0, p0, Lcom/inisoft/mediaplayer/er;->g:Lcom/inisoft/mediaplayer/ek;

    iput-object v0, p0, Lcom/inisoft/mediaplayer/er;->h:Lcom/inisoft/mediaplayer/eo;

    iput-object v0, p0, Lcom/inisoft/mediaplayer/er;->i:Lcom/inisoft/mediaplayer/eg;

    iput-object v0, p0, Lcom/inisoft/mediaplayer/er;->j:Lcom/inisoft/mediaplayer/en;

    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/inisoft/mediaplayer/er;->k:Landroid/media/MediaPlayer;

    return-void
.end method


# virtual methods
.method public final getCurrentPosition()I
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/er;->k:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    return v0
.end method

.method public final getDuration()I
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/er;->k:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    return v0
.end method

.method public final getVideoHeight()I
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/er;->k:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v0

    return v0
.end method

.method public final getVideoWidth()I
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/er;->k:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v0

    return v0
.end method

.method public final isPlaying()Z
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/er;->k:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    return v0
.end method

.method public final onBufferingUpdate(Landroid/media/MediaPlayer;I)V
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/er;->c:Lcom/inisoft/mediaplayer/eh;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/er;->c:Lcom/inisoft/mediaplayer/eh;

    invoke-interface {v0, p2}, Lcom/inisoft/mediaplayer/eh;->a(I)V

    :cond_0
    return-void
.end method

.method public final onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/er;->b:Lcom/inisoft/mediaplayer/ei;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/er;->b:Lcom/inisoft/mediaplayer/ei;

    invoke-interface {v0}, Lcom/inisoft/mediaplayer/ei;->a()V

    :cond_0
    return-void
.end method

.method public final onError(Landroid/media/MediaPlayer;II)Z
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/er;->f:Lcom/inisoft/mediaplayer/ej;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/er;->f:Lcom/inisoft/mediaplayer/ej;

    invoke-interface {v0, p2, p3}, Lcom/inisoft/mediaplayer/ej;->a(II)Z

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final onInfo(Landroid/media/MediaPlayer;II)Z
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/er;->g:Lcom/inisoft/mediaplayer/ek;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/er;->g:Lcom/inisoft/mediaplayer/ek;

    invoke-interface {v0, p2}, Lcom/inisoft/mediaplayer/ek;->a(I)Z

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final onPrepared(Landroid/media/MediaPlayer;)V
    .locals 3

    iget-object v0, p0, Lcom/inisoft/mediaplayer/er;->a:Lcom/inisoft/mediaplayer/el;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/er;->a:Lcom/inisoft/mediaplayer/el;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, p0, v1, v2}, Lcom/inisoft/mediaplayer/el;->a(Lcom/inisoft/mediaplayer/es;I[B)V

    :cond_0
    return-void
.end method

.method public final onSeekComplete(Landroid/media/MediaPlayer;)V
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/er;->d:Lcom/inisoft/mediaplayer/em;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/er;->d:Lcom/inisoft/mediaplayer/em;

    :cond_0
    iget-object v0, p0, Lcom/inisoft/mediaplayer/er;->j:Lcom/inisoft/mediaplayer/en;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/er;->j:Lcom/inisoft/mediaplayer/en;

    invoke-interface {v0}, Lcom/inisoft/mediaplayer/en;->a()V

    :cond_1
    return-void
.end method

.method public final onVideoSizeChanged(Landroid/media/MediaPlayer;II)V
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/er;->e:Lcom/inisoft/mediaplayer/eq;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/er;->e:Lcom/inisoft/mediaplayer/eq;

    invoke-interface {v0, p0}, Lcom/inisoft/mediaplayer/eq;->a(Lcom/inisoft/mediaplayer/es;)V

    :cond_0
    return-void
.end method

.method public final pause()V
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/er;->k:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    return-void
.end method

.method public final prepareAsync()V
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/er;->k:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepareAsync()V

    return-void
.end method

.method public final release()V
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/er;->k:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    return-void
.end method

.method public final reset()V
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/er;->k:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    return-void
.end method

.method public final seekTo(I)V
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/er;->k:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    return-void
.end method

.method public final setAudioStreamType(I)V
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/er;->k:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    return-void
.end method

.method public final setAudioTrack(I)V
    .locals 0

    return-void
.end method

.method public final setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/inisoft/mediaplayer/er;->k:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1, p2}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/er;->f:Lcom/inisoft/mediaplayer/ej;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/er;->f:Lcom/inisoft/mediaplayer/ej;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/inisoft/mediaplayer/ej;->a(II)Z

    goto :goto_0
.end method

.method public final setDataSource(Lcom/inisoft/mediaplayer/ax;)V
    .locals 0

    return-void
.end method

.method public final setDisplay(Landroid/view/SurfaceHolder;)V
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/er;->k:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    return-void
.end method

.method public final setOnBufferingUpdateListener(Lcom/inisoft/mediaplayer/eh;)V
    .locals 1

    iput-object p1, p0, Lcom/inisoft/mediaplayer/er;->c:Lcom/inisoft/mediaplayer/eh;

    iget-object v0, p0, Lcom/inisoft/mediaplayer/er;->k:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    return-void
.end method

.method public final setOnCompletionListener(Lcom/inisoft/mediaplayer/ei;)V
    .locals 1

    iput-object p1, p0, Lcom/inisoft/mediaplayer/er;->b:Lcom/inisoft/mediaplayer/ei;

    iget-object v0, p0, Lcom/inisoft/mediaplayer/er;->k:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    return-void
.end method

.method public final setOnErrorListener(Lcom/inisoft/mediaplayer/ej;)V
    .locals 1

    iput-object p1, p0, Lcom/inisoft/mediaplayer/er;->f:Lcom/inisoft/mediaplayer/ej;

    iget-object v0, p0, Lcom/inisoft/mediaplayer/er;->k:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    return-void
.end method

.method public final setOnInfoListener(Lcom/inisoft/mediaplayer/ek;)V
    .locals 1

    iput-object p1, p0, Lcom/inisoft/mediaplayer/er;->g:Lcom/inisoft/mediaplayer/ek;

    iget-object v0, p0, Lcom/inisoft/mediaplayer/er;->k:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    return-void
.end method

.method public final setOnPreparedListener(Lcom/inisoft/mediaplayer/el;)V
    .locals 1

    iput-object p1, p0, Lcom/inisoft/mediaplayer/er;->a:Lcom/inisoft/mediaplayer/el;

    iget-object v0, p0, Lcom/inisoft/mediaplayer/er;->k:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    return-void
.end method

.method public final setOnSubtitleUpdateListener(Lcom/inisoft/mediaplayer/en;)V
    .locals 0

    iput-object p1, p0, Lcom/inisoft/mediaplayer/er;->j:Lcom/inisoft/mediaplayer/en;

    return-void
.end method

.method public final setOnVideoAspectRatioChangedListener(Lcom/inisoft/mediaplayer/ep;)V
    .locals 0

    return-void
.end method

.method public final setOnVideoSizeChangedListener(Lcom/inisoft/mediaplayer/eq;)V
    .locals 1

    iput-object p1, p0, Lcom/inisoft/mediaplayer/er;->e:Lcom/inisoft/mediaplayer/eq;

    iget-object v0, p0, Lcom/inisoft/mediaplayer/er;->k:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    return-void
.end method

.method public final setScreenOnWhilePlaying(Z)V
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/er;->k:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setScreenOnWhilePlaying(Z)V

    return-void
.end method

.method public final setSpeed(I)V
    .locals 0

    return-void
.end method

.method public final setSubtitleIndex(I)V
    .locals 0

    return-void
.end method

.method public final setUseModifyExtractor()V
    .locals 0

    return-void
.end method

.method public final setVolumeBooster(F)V
    .locals 0

    return-void
.end method

.method public final start()V
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/er;->k:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    return-void
.end method

.method public final stop()V
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/er;->k:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    return-void
.end method
