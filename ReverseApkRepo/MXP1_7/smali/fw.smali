.class public final Lfw;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/MediaPlayer$OnBufferingUpdateListener;
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnInfoListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/media/MediaPlayer$OnSeekCompleteListener;
.implements Landroid/media/MediaPlayer$OnVideoSizeChangedListener;
.implements Lgd;


# static fields
.field private static 洹:Ljava/lang/reflect/Method;

.field public static final 癤욱븳援:Ljava/lang/String;


# instance fields
.field private final ㅼ꽑嫄:Landroid/content/Context;

.field private final 弱밧:Landroid/net/Uri;

.field private 궗:Lge;

.field private 대쫫:Z

.field private final 먯꽌:Landroid/media/MediaPlayer;

.field private 쇰뒗:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/mxtech/videoplayer/App;->癤욱븳援:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".Builtin"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfw;->癤욱븳援:Ljava/lang/String;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_0

    :try_start_0
    const-class v0, Landroid/media/MediaPlayer;

    const-string v1, "setSubGate"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lfw;->洹:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Lge;Landroid/net/Uri;I)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lfw;->먯꽌:Landroid/media/MediaPlayer;

    iput-object p2, p0, Lfw;->궗:Lge;

    iput-object p1, p0, Lfw;->ㅼ꽑嫄:Landroid/content/Context;

    iput-object p3, p0, Lfw;->弱밧:Landroid/net/Uri;

    and-int/lit8 v0, p4, 0x1

    if-nez v0, :cond_0

    sget-object v0, Lfw;->洹:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    :try_start_0
    sget-object v0, Lfw;->洹:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lfw;->먯꽌:Landroid/media/MediaPlayer;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lfw;->癤욱븳援:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static 癤욱븳援()Z
    .locals 1

    sget-object v0, Lfw;->洹:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public duration()I
    .locals 1

    iget-object v0, p0, Lfw;->먯꽌:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    return v0
.end method

.method protected finalize()V
    .locals 0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public getProcessing()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public height()I
    .locals 1

    iget-object v0, p0, Lfw;->먯꽌:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v0

    return v0
.end method

.method public onBufferingUpdate(Landroid/media/MediaPlayer;I)V
    .locals 1

    iget-object v0, p0, Lfw;->궗:Lge;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfw;->궗:Lge;

    invoke-interface {v0, p0, p2}, Lge;->癤욱븳援(Lgd;I)V

    :cond_0
    return-void
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1

    iget-object v0, p0, Lfw;->궗:Lge;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfw;->궗:Lge;

    invoke-interface {v0, p0}, Lge;->ㅼ꽑嫄(Lgd;)V

    :cond_0
    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 1

    iget-object v0, p0, Lfw;->궗:Lge;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lfw;->궗:Lge;

    invoke-interface {v0, p0, p2, p3}, Lge;->먯꽌(Lgd;II)Z

    move-result v0

    goto :goto_0
.end method

.method public onInfo(Landroid/media/MediaPlayer;II)Z
    .locals 1

    iget-object v0, p0, Lfw;->궗:Lge;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lfw;->궗:Lge;

    invoke-interface {v0, p0, p2, p3}, Lge;->궗(Lgd;II)Z

    move-result v0

    goto :goto_0
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lfw;->대쫫:Z

    iget-object v0, p0, Lfw;->궗:Lge;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfw;->궗:Lge;

    invoke-interface {v0, p0}, Lge;->궗(Lgd;)V

    :cond_0
    return-void
.end method

.method public onSeekComplete(Landroid/media/MediaPlayer;)V
    .locals 3

    sget-object v0, Lfw;->癤욱븳援:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Seek completed. Current="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lfw;->궗:Lge;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfw;->궗:Lge;

    invoke-interface {v0, p0}, Lge;->癤욱븳援(Lgd;)V

    :cond_0
    return-void
.end method

.method public onVideoSizeChanged(Landroid/media/MediaPlayer;II)V
    .locals 1

    iget-object v0, p0, Lfw;->궗:Lge;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfw;->궗:Lge;

    invoke-interface {v0, p0, p2, p3}, Lge;->癤욱븳援(Lgd;II)V

    :cond_0
    return-void
.end method

.method public prepareAsync()V
    .locals 3

    iget-object v0, p0, Lfw;->먯꽌:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    iget-object v0, p0, Lfw;->먯꽌:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    iget-object v0, p0, Lfw;->먯꽌:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    iget-object v0, p0, Lfw;->먯꽌:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    iget-object v0, p0, Lfw;->먯꽌:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    iget-object v0, p0, Lfw;->먯꽌:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    iget-object v0, p0, Lfw;->먯꽌:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    iget-object v0, p0, Lfw;->먯꽌:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lfw;->ㅼ꽑嫄:Landroid/content/Context;

    iget-object v2, p0, Lfw;->弱밧:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    iget-object v0, p0, Lfw;->먯꽌:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepareAsync()V

    return-void
.end method

.method public setAudioStreamType(I)V
    .locals 1

    iget-object v0, p0, Lfw;->먯꽌:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    return-void
.end method

.method public setProcessing(I)V
    .locals 0

    return-void
.end method

.method public setVolume(FF)V
    .locals 1

    iget-object v0, p0, Lfw;->먯꽌:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1, p2}, Landroid/media/MediaPlayer;->setVolume(FF)V

    return-void
.end method

.method public width()I
    .locals 1

    iget-object v0, p0, Lfw;->먯꽌:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v0

    return v0
.end method

.method public ㅼ꽑嫄()I
    .locals 1

    iget-object v0, p0, Lfw;->먯꽌:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    return v0
.end method

.method public 弱밧()Z
    .locals 1

    iget-boolean v0, p0, Lfw;->대쫫:Z

    return v0
.end method

.method public 洹()V
    .locals 2

    sget-object v0, Lfw;->癤욱븳援:Ljava/lang/String;

    const-string v1, "=== Begin closing built-in player"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lfw;->먯꽌:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    sget-object v0, Lfw;->癤욱븳援:Ljava/lang/String;

    const-string v1, "=== End closing built-in player"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public 癤욱븳援(II)V
    .locals 3

    sget-object v0, Lfw;->癤욱븳援:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Seek to "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lfw;->먯꽌:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    return-void
.end method

.method public 癤욱븳援(Landroid/view/SurfaceHolder;)V
    .locals 1

    iget-object v0, p0, Lfw;->먯꽌:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    return-void
.end method

.method public 癤욱븳援(Lge;)V
    .locals 0

    iput-object p1, p0, Lfw;->궗:Lge;

    return-void
.end method

.method public 癤욱븳援(Z)V
    .locals 1

    iget-object v0, p0, Lfw;->먯꽌:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setScreenOnWhilePlaying(Z)V

    return-void
.end method

.method public 궗()Lgf;
    .locals 3

    new-instance v0, Lfx;

    iget-object v1, p0, Lfw;->ㅼ꽑嫄:Landroid/content/Context;

    iget-object v2, p0, Lfw;->弱밧:Landroid/net/Uri;

    invoke-direct {v0, p0, v1, v2}, Lfx;-><init>(Lfw;Landroid/content/Context;Landroid/net/Uri;)V

    return-object v0
.end method

.method public 대쫫()V
    .locals 1

    iget-boolean v0, p0, Lfw;->쇰뒗:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfw;->먯꽌:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    :cond_0
    return-void
.end method

.method public 먯꽌()Lgg;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public 몃Ъ()V
    .locals 1

    iget-object v0, p0, Lfw;->먯꽌:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lfw;->쇰뒗:Z

    return-void
.end method

.method public 쇰뒗()Z
    .locals 1

    iget-object v0, p0, Lfw;->먯꽌:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    return v0
.end method
