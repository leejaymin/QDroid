.class public Lcom/google/ads/internal/AdVideoView;
.super Landroid/widget/FrameLayout;

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# static fields
.field private static final 궗:Lau;


# instance fields
.field private ㅼ꽑嫄:Lcom/google/ads/internal/AdWebView;

.field private 弱밧:J

.field public 癤욱븳援:Landroid/widget/MediaController;

.field private 대쫫:Ljava/lang/String;

.field private 먯꽌:Ljava/lang/ref/WeakReference;

.field private 쇰뒗:Landroid/widget/VideoView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lau;->癤욱븳援:Lde;

    invoke-interface {v0}, Lde;->궗()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lau;

    sput-object v0, Lcom/google/ads/internal/AdVideoView;->궗:Lau;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/google/ads/internal/AdWebView;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, -0x1

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/ads/internal/AdVideoView;->먯꽌:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lcom/google/ads/internal/AdVideoView;->ㅼ꽑嫄:Lcom/google/ads/internal/AdWebView;

    new-instance v0, Landroid/widget/VideoView;

    invoke-direct {v0, p1}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/ads/internal/AdVideoView;->쇰뒗:Landroid/widget/VideoView;

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v1, 0x11

    invoke-direct {v0, v2, v2, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    iget-object v1, p0, Lcom/google/ads/internal/AdVideoView;->쇰뒗:Landroid/widget/VideoView;

    invoke-virtual {p0, v1, v0}, Lcom/google/ads/internal/AdVideoView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iput-object v3, p0, Lcom/google/ads/internal/AdVideoView;->癤욱븳援:Landroid/widget/MediaController;

    iput-object v3, p0, Lcom/google/ads/internal/AdVideoView;->대쫫:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/ads/internal/AdVideoView;->弱밧:J

    invoke-virtual {p0}, Lcom/google/ads/internal/AdVideoView;->癤욱븳援()V

    iget-object v0, p0, Lcom/google/ads/internal/AdVideoView;->쇰뒗:Landroid/widget/VideoView;

    invoke-virtual {v0, p0}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    iget-object v0, p0, Lcom/google/ads/internal/AdVideoView;->쇰뒗:Landroid/widget/VideoView;

    invoke-virtual {v0, p0}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    iget-object v0, p0, Lcom/google/ads/internal/AdVideoView;->쇰뒗:Landroid/widget/VideoView;

    invoke-virtual {v0, p0}, Landroid/widget/VideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 4

    sget-object v0, Lcom/google/ads/internal/AdVideoView;->궗:Lau;

    iget-object v1, p0, Lcom/google/ads/internal/AdVideoView;->ㅼ꽑嫄:Lcom/google/ads/internal/AdWebView;

    const-string v2, "onVideoEvent"

    const-string v3, "{\'event\': \'ended\'}"

    invoke-virtual {v0, v1, v2, v3}, Lau;->癤욱븳援(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Video threw error! <what:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", extra:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcv;->弱밧(Ljava/lang/String;)V

    sget-object v0, Lcom/google/ads/internal/AdVideoView;->궗:Lau;

    iget-object v1, p0, Lcom/google/ads/internal/AdVideoView;->ㅼ꽑嫄:Lcom/google/ads/internal/AdWebView;

    const-string v2, "onVideoEvent"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "{\'event\': \'error\', \'what\': \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\', \'extra\': \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'}"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lau;->癤욱븳援(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 6

    iget-object v0, p0, Lcom/google/ads/internal/AdVideoView;->쇰뒗:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->getDuration()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x447a

    div-float/2addr v0, v1

    sget-object v1, Lcom/google/ads/internal/AdVideoView;->궗:Lau;

    iget-object v2, p0, Lcom/google/ads/internal/AdVideoView;->ㅼ꽑嫄:Lcom/google/ads/internal/AdWebView;

    const-string v3, "onVideoEvent"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "{\'event\': \'canplaythrough\', \'duration\': \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\'}"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v0}, Lau;->癤욱븳援(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setMediaControllerEnabled(Z)V
    .locals 2

    iget-object v0, p0, Lcom/google/ads/internal/AdVideoView;->먯꽌:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-nez v0, :cond_0

    const-string v0, "adActivity was null while trying to enable controls on a video."

    invoke-static {v0}, Lcv;->弱밧(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/google/ads/internal/AdVideoView;->癤욱븳援:Landroid/widget/MediaController;

    if-nez v1, :cond_1

    new-instance v1, Landroid/widget/MediaController;

    invoke-direct {v1, v0}, Landroid/widget/MediaController;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/ads/internal/AdVideoView;->癤욱븳援:Landroid/widget/MediaController;

    :cond_1
    iget-object v0, p0, Lcom/google/ads/internal/AdVideoView;->쇰뒗:Landroid/widget/VideoView;

    iget-object v1, p0, Lcom/google/ads/internal/AdVideoView;->癤욱븳援:Landroid/widget/MediaController;

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setMediaController(Landroid/widget/MediaController;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/ads/internal/AdVideoView;->癤욱븳援:Landroid/widget/MediaController;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/ads/internal/AdVideoView;->癤욱븳援:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->hide()V

    :cond_3
    iget-object v0, p0, Lcom/google/ads/internal/AdVideoView;->쇰뒗:Landroid/widget/VideoView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setMediaController(Landroid/widget/MediaController;)V

    goto :goto_0
.end method

.method public setSrc(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/ads/internal/AdVideoView;->대쫫:Ljava/lang/String;

    return-void
.end method

.method public ㅼ꽑嫄()V
    .locals 1

    iget-object v0, p0, Lcom/google/ads/internal/AdVideoView;->쇰뒗:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    return-void
.end method

.method public 弱밧()V
    .locals 1

    iget-object v0, p0, Lcom/google/ads/internal/AdVideoView;->쇰뒗:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->stopPlayback()V

    return-void
.end method

.method protected 癤욱븳援()V
    .locals 1

    new-instance v0, Las;

    invoke-direct {v0, p0}, Las;-><init>(Lcom/google/ads/internal/AdVideoView;)V

    invoke-virtual {v0}, Las;->癤욱븳援()V

    return-void
.end method

.method public 癤욱븳援(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/ads/internal/AdVideoView;->쇰뒗:Landroid/widget/VideoView;

    invoke-virtual {v0, p1}, Landroid/widget/VideoView;->seekTo(I)V

    return-void
.end method

.method public 癤욱븳援(Landroid/view/MotionEvent;)V
    .locals 1

    iget-object v0, p0, Lcom/google/ads/internal/AdVideoView;->쇰뒗:Landroid/widget/VideoView;

    invoke-virtual {v0, p1}, Landroid/widget/VideoView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    return-void
.end method

.method public 궗()V
    .locals 4

    iget-object v0, p0, Lcom/google/ads/internal/AdVideoView;->대쫫:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/ads/internal/AdVideoView;->쇰뒗:Landroid/widget/VideoView;

    iget-object v1, p0, Lcom/google/ads/internal/AdVideoView;->대쫫:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setVideoPath(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/google/ads/internal/AdVideoView;->궗:Lau;

    iget-object v1, p0, Lcom/google/ads/internal/AdVideoView;->ㅼ꽑嫄:Lcom/google/ads/internal/AdWebView;

    const-string v2, "onVideoEvent"

    const-string v3, "{\'event\': \'error\', \'what\': \'no_src\'}"

    invoke-virtual {v0, v1, v2, v3}, Lau;->癤욱븳援(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public 먯꽌()V
    .locals 1

    iget-object v0, p0, Lcom/google/ads/internal/AdVideoView;->쇰뒗:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->pause()V

    return-void
.end method

.method public 쇰뒗()V
    .locals 8

    iget-object v0, p0, Lcom/google/ads/internal/AdVideoView;->쇰뒗:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v0

    int-to-long v0, v0

    iget-wide v2, p0, Lcom/google/ads/internal/AdVideoView;->弱밧:J

    cmp-long v2, v2, v0

    if-eqz v2, :cond_0

    long-to-float v2, v0

    const/high16 v3, 0x447a

    div-float/2addr v2, v3

    sget-object v3, Lcom/google/ads/internal/AdVideoView;->궗:Lau;

    iget-object v4, p0, Lcom/google/ads/internal/AdVideoView;->ㅼ꽑嫄:Lcom/google/ads/internal/AdWebView;

    const-string v5, "onVideoEvent"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "{\'event\': \'timeupdate\', \'time\': "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "}"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v4, v5, v2}, Lau;->癤욱븳援(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V

    iput-wide v0, p0, Lcom/google/ads/internal/AdVideoView;->弱밧:J

    :cond_0
    return-void
.end method
