.class public Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;
.super Landroid/widget/VideoView;
.source "AVPlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# static fields
.field private static final a:I = 0x3e9

.field private static g:Ljava/lang/String;

.field private static h:Ljava/lang/String;

.field private static i:Ljava/lang/String;

.field private static j:I

.field private static k:I

.field private static l:Ljava/lang/String;


# instance fields
.field private b:Lcom/inmobi/androidsdk/ai/controller/JSController$PlayerProperties;

.field private c:Landroid/media/AudioManager;

.field private d:Lcom/inmobi/androidsdk/ai/controller/util/AVPlayerListener;

.field private e:Ljava/lang/String;

.field private f:Landroid/widget/RelativeLayout;

.field private m:Z

.field private n:Z

.field private o:Lcom/inmobi/androidsdk/ai/container/IMWebView;

.field private p:I

.field private q:I

.field private r:I

.field private s:Lcom/inmobi/androidsdk/impl/Constants$playerState;

.field private t:Landroid/media/MediaPlayer;

.field private u:Z

.field private v:Landroid/view/ViewGroup;

.field private w:Lcom/inmobi/androidsdk/ai/controller/JSController$Dimensions;

.field private x:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const-string v0, "play"

    sput-object v0, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->g:Ljava/lang/String;

    .line 48
    const-string v0, "pause"

    sput-object v0, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->h:Ljava/lang/String;

    .line 49
    const-string v0, "ended"

    sput-object v0, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->i:Ljava/lang/String;

    .line 51
    const/4 v0, -0x1

    sput v0, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->j:I

    .line 52
    const/4 v0, 0x2

    sput v0, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->k:I

    .line 54
    const-string v0, "Loading. Please Wait.."

    sput-object v0, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->l:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/inmobi/androidsdk/ai/container/IMWebView;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 92
    invoke-direct {p0, p1}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;)V

    .line 61
    iput-boolean v0, p0, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->m:Z

    iput-boolean v0, p0, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->n:Z

    .line 71
    const/4 v0, -0x1

    iput v0, p0, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->r:I

    .line 474
    new-instance v0, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer$1;

    invoke-direct {v0, p0}, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer$1;-><init>(Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;)V

    iput-object v0, p0, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->x:Landroid/os/Handler;

    .line 93
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 94
    const-string v1, "audio"

    .line 93
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->c:Landroid/media/AudioManager;

    .line 96
    iput-object p2, p0, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->o:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    .line 97
    invoke-virtual {p0, v2}, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->setFocusable(Z)V

    .line 98
    invoke-virtual {p0, v2}, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->setFocusableInTouchMode(Z)V

    .line 100
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->c:Landroid/media/AudioManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    iput v0, p0, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->p:I

    .line 101
    iget v0, p0, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->p:I

    iput v0, p0, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->q:I

    .line 103
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    new-instance v1, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer$2;

    invoke-direct {v1, p0}, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer$2;-><init>(Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;)V

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 126
    return-void
.end method

.method private a(I)V
    .locals 3
    .parameter

    .prologue
    .line 426
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->o:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    if-eqz v0, :cond_0

    .line 427
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->o:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    .line 428
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "window.mraidview.fireMediaErrorEvent(\'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 429
    iget-object v2, p0, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->b:Lcom/inmobi/androidsdk/ai/controller/JSController$PlayerProperties;

    iget-object v2, v2, Lcom/inmobi/androidsdk/ai/controller/JSController$PlayerProperties;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\',"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ");"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 428
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->injectJavaScript(Ljava/lang/String;)V

    .line 431
    :cond_0
    return-void
.end method

.method private a(II)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 435
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->o:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    if-eqz v0, :cond_0

    .line 436
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->o:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    .line 437
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "window.mraidview.fireMediaTimeUpdateEvent(\'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 438
    iget-object v2, p0, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->b:Lcom/inmobi/androidsdk/ai/controller/JSController$PlayerProperties;

    iget-object v2, v2, Lcom/inmobi/androidsdk/ai/controller/JSController$PlayerProperties;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 439
    const-string v2, "\',"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 440
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 441
    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 442
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ");"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 437
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->injectJavaScript(Ljava/lang/String;)V

    .line 444
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 71
    iput p1, p0, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->p:I

    return-void
.end method

.method static synthetic a(Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;II)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 433
    invoke-direct {p0, p1, p2}, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->a(II)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 417
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->o:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    if-eqz v0, :cond_0

    .line 418
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->o:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    .line 419
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "window.mraidview.fireMediaTrackingEvent(\'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 420
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\',\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->b:Lcom/inmobi/androidsdk/ai/controller/JSController$PlayerProperties;

    iget-object v2, v2, Lcom/inmobi/androidsdk/ai/controller/JSController$PlayerProperties;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\');"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 419
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->injectJavaScript(Ljava/lang/String;)V

    .line 422
    :cond_0
    return-void
.end method

.method private a(ZI)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 448
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->o:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    if-eqz v0, :cond_0

    .line 449
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->o:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    .line 450
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "window.mraidview.fireMediaCloseEvent(\'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 451
    iget-object v2, p0, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->b:Lcom/inmobi/androidsdk/ai/controller/JSController$PlayerProperties;

    iget-object v2, v2, Lcom/inmobi/androidsdk/ai/controller/JSController$PlayerProperties;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\',"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 452
    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ");"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 450
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->injectJavaScript(Ljava/lang/String;)V

    .line 454
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;)Z
    .locals 1
    .parameter

    .prologue
    .line 537
    invoke-direct {p0}, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->l()Z

    move-result v0

    return v0
.end method

.method private b(I)I
    .locals 2
    .parameter

    .prologue
    .line 628
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->c:Landroid/media/AudioManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    mul-int/2addr v0, p1

    div-int/lit8 v0, v0, 0x64

    return v0
.end method

.method static synthetic b(Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;)Landroid/media/AudioManager;
    .locals 1
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->c:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic b(Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 71
    iput p1, p0, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->q:I

    return-void
.end method

.method static synthetic c(Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;)I
    .locals 1
    .parameter

    .prologue
    .line 71
    iget v0, p0, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->p:I

    return v0
.end method

.method static synthetic c(Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 71
    iput p1, p0, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->r:I

    return-void
.end method

.method static synthetic d(Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;)V
    .locals 0
    .parameter

    .prologue
    .line 456
    invoke-direct {p0}, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->g()V

    return-void
.end method

.method static synthetic e(Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;)I
    .locals 1
    .parameter

    .prologue
    .line 71
    iget v0, p0, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->r:I

    return v0
.end method

.method static synthetic f(Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 474
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->x:Landroid/os/Handler;

    return-object v0
.end method

.method private g()V
    .locals 3

    .prologue
    .line 458
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->o:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    if-eqz v0, :cond_0

    .line 459
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->o:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    .line 460
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "window.mraidview.fireMediaVolumeChangeEvent(\'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 461
    iget-object v2, p0, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->b:Lcom/inmobi/androidsdk/ai/controller/JSController$PlayerProperties;

    iget-object v2, v2, Lcom/inmobi/androidsdk/ai/controller/JSController$PlayerProperties;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\',"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->getVolume()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->isMediaMuted()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ");"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 460
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->injectJavaScript(Ljava/lang/String;)V

    .line 463
    :cond_0
    return-void
.end method

.method private h()V
    .locals 2

    .prologue
    .line 467
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->x:Landroid/os/Handler;

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 468
    return-void
.end method

.method private i()V
    .locals 2

    .prologue
    .line 471
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->x:Landroid/os/Handler;

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 472
    return-void
.end method

.method private j()Z
    .locals 2

    .prologue
    .line 530
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->s:Lcom/inmobi/androidsdk/impl/Constants$playerState;

    sget-object v1, Lcom/inmobi/androidsdk/impl/Constants$playerState;->PAUSED:Lcom/inmobi/androidsdk/impl/Constants$playerState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->s:Lcom/inmobi/androidsdk/impl/Constants$playerState;

    sget-object v1, Lcom/inmobi/androidsdk/impl/Constants$playerState;->HIDDEN:Lcom/inmobi/androidsdk/impl/Constants$playerState;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private k()Z
    .locals 2

    .prologue
    .line 534
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->s:Lcom/inmobi/androidsdk/impl/Constants$playerState;

    sget-object v1, Lcom/inmobi/androidsdk/impl/Constants$playerState;->RELEASED:Lcom/inmobi/androidsdk/impl/Constants$playerState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private l()Z
    .locals 2

    .prologue
    .line 538
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->s:Lcom/inmobi/androidsdk/impl/Constants$playerState;

    sget-object v1, Lcom/inmobi/androidsdk/impl/Constants$playerState;->PLAYING:Lcom/inmobi/androidsdk/impl/Constants$playerState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private m()V
    .locals 4

    .prologue
    .line 560
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->c:Landroid/media/AudioManager;

    const/4 v1, 0x3

    iget v2, p0, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->q:I

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 561
    return-void
.end method


# virtual methods
.method a()V
    .locals 2

    .prologue
    .line 145
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->b:Lcom/inmobi/androidsdk/ai/controller/JSController$PlayerProperties;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/ai/controller/JSController$PlayerProperties;->showControl()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    new-instance v0, Landroid/widget/MediaController;

    invoke-virtual {p0}, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/MediaController;-><init>(Landroid/content/Context;)V

    .line 147
    invoke-virtual {p0, v0}, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->setMediaController(Landroid/widget/MediaController;)V

    .line 148
    invoke-virtual {v0, p0}, Landroid/widget/MediaController;->setAnchorView(Landroid/view/View;)V

    .line 150
    :cond_0
    return-void
.end method

.method b()V
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->e:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->e:Ljava/lang/String;

    .line 159
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->e:Ljava/lang/String;

    invoke-static {v0}, Lcom/inmobi/androidsdk/ai/controller/util/Utils;->convert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->e:Ljava/lang/String;

    .line 161
    sget-object v0, Lcom/inmobi/androidsdk/impl/Constants$playerState;->INIT:Lcom/inmobi/androidsdk/impl/Constants$playerState;

    iput-object v0, p0, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->s:Lcom/inmobi/androidsdk/impl/Constants$playerState;

    .line 163
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->e()V

    .line 165
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->e:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->setVideoPath(Ljava/lang/String;)V

    .line 167
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->a()V

    .line 169
    invoke-virtual {p0, p0}, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 170
    invoke-virtual {p0, p0}, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 171
    invoke-virtual {p0, p0}, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 173
    return-void
.end method

.method c()V
    .locals 2

    .prologue
    .line 180
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->s:Lcom/inmobi/androidsdk/impl/Constants$playerState;

    sget-object v1, Lcom/inmobi/androidsdk/impl/Constants$playerState;->SHOWING:Lcom/inmobi/androidsdk/impl/Constants$playerState;

    if-ne v0, v1, :cond_2

    .line 181
    iget-boolean v0, p0, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->n:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/inmobi/androidsdk/impl/Constants$playerState;->COMPLETED:Lcom/inmobi/androidsdk/impl/Constants$playerState;

    :goto_0
    iput-object v0, p0, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->s:Lcom/inmobi/androidsdk/impl/Constants$playerState;

    .line 185
    :cond_0
    :goto_1
    return-void

    .line 181
    :cond_1
    sget-object v0, Lcom/inmobi/androidsdk/impl/Constants$playerState;->PAUSED:Lcom/inmobi/androidsdk/impl/Constants$playerState;

    goto :goto_0

    .line 182
    :cond_2
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->b:Lcom/inmobi/androidsdk/ai/controller/JSController$PlayerProperties;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/ai/controller/JSController$PlayerProperties;->isAutoPlay()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->s:Lcom/inmobi/androidsdk/impl/Constants$playerState;

    sget-object v1, Lcom/inmobi/androidsdk/impl/Constants$playerState;->INIT:Lcom/inmobi/androidsdk/impl/Constants$playerState;

    if-ne v0, v1, :cond_0

    .line 183
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->start()V

    goto :goto_1
.end method

.method d()V
    .locals 1

    .prologue
    .line 293
    :try_start_0
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 294
    if-eqz v0, :cond_0

    .line 295
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 300
    :cond_0
    :goto_0
    return-void

    .line 297
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method e()V
    .locals 3

    .prologue
    const/4 v2, -0x2

    .line 339
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->f:Landroid/widget/RelativeLayout;

    .line 340
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->f:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 341
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->f:Landroid/widget/RelativeLayout;

    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 344
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 345
    sget-object v1, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 346
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 348
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 350
    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 352
    iget-object v2, p0, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->f:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 353
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 354
    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->f:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 355
    return-void
.end method

.method f()V
    .locals 2

    .prologue
    .line 361
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->f:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 362
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 363
    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->f:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 365
    :cond_0
    return-void
.end method

.method public getBackGroundLayout()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 681
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->v:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getMediaURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 547
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getPlayDimensions()Lcom/inmobi/androidsdk/ai/controller/JSController$Dimensions;
    .locals 1

    .prologue
    .line 699
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->w:Lcom/inmobi/androidsdk/ai/controller/JSController$Dimensions;

    return-object v0
.end method

.method public getProperties()Lcom/inmobi/androidsdk/ai/controller/JSController$PlayerProperties;
    .locals 1

    .prologue
    .line 690
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->b:Lcom/inmobi/androidsdk/ai/controller/JSController$PlayerProperties;

    return-object v0
.end method

.method public getPropertyID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 516
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->b:Lcom/inmobi/androidsdk/ai/controller/JSController$PlayerProperties;

    iget-object v0, v0, Lcom/inmobi/androidsdk/ai/controller/JSController$PlayerProperties;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getState()Lcom/inmobi/androidsdk/impl/Constants$playerState;
    .locals 1

    .prologue
    .line 556
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->s:Lcom/inmobi/androidsdk/impl/Constants$playerState;

    return-object v0
.end method

.method public declared-synchronized getVolume()I
    .locals 3

    .prologue
    .line 622
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    .line 623
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->c:Landroid/media/AudioManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    iput v0, p0, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->p:I

    .line 624
    :cond_0
    iget v0, p0, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->p:I

    mul-int/lit8 v0, v0, 0x64

    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->c:Landroid/media/AudioManager;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v1

    div-int/2addr v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 622
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public hide()V
    .locals 2

    .prologue
    .line 636
    :try_start_0
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 637
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->pause()V

    .line 639
    :cond_0
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->v:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 641
    sget-object v0, Lcom/inmobi/androidsdk/impl/Constants$playerState;->HIDDEN:Lcom/inmobi/androidsdk/impl/Constants$playerState;

    iput-object v0, p0, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->s:Lcom/inmobi/androidsdk/impl/Constants$playerState;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 644
    :goto_0
    return-void

    .line 642
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public isInlineVideo()Z
    .locals 1

    .prologue
    .line 526
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->b:Lcom/inmobi/androidsdk/ai/controller/JSController$PlayerProperties;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/ai/controller/JSController$PlayerProperties;->isFullScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isMediaMuted()Z
    .locals 1

    .prologue
    .line 595
    iget v0, p0, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->p:I

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->u:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public mute()V
    .locals 3

    .prologue
    .line 567
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->t:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->u:Z

    if-nez v0, :cond_0

    .line 568
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->u:Z

    .line 570
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->t:Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaPlayer;->setVolume(FF)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 572
    :goto_0
    invoke-direct {p0}, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->g()V

    .line 574
    :cond_0
    return-void

    .line 571
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2
    .parameter

    .prologue
    .line 211
    sget-boolean v0, Lcom/inmobi/androidsdk/impl/Constants;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 212
    const-string v0, "InMobiAndroidSDK_3.5.4"

    const-string v1, "AVPlayer-> onCompletion"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    :cond_0
    sget-object v0, Lcom/inmobi/androidsdk/impl/Constants$playerState;->COMPLETED:Lcom/inmobi/androidsdk/impl/Constants$playerState;

    iput-object v0, p0, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->s:Lcom/inmobi/androidsdk/impl/Constants$playerState;

    .line 216
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->n:Z

    .line 219
    sget-object v0, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->i:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->a(Ljava/lang/String;)V

    .line 222
    invoke-direct {p0}, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->i()V

    .line 224
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->b:Lcom/inmobi/androidsdk/ai/controller/JSController$PlayerProperties;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/ai/controller/JSController$PlayerProperties;->doLoop()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 226
    monitor-enter p0

    .line 227
    :try_start_0
    invoke-direct {p0}, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->j()Z

    move-result v0

    if-nez v0, :cond_1

    .line 228
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->start()V

    .line 226
    :cond_1
    monitor-exit p0

    .line 235
    :cond_2
    :goto_0
    return-void

    .line 226
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 231
    :cond_3
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->b:Lcom/inmobi/androidsdk/ai/controller/JSController$PlayerProperties;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/ai/controller/JSController$PlayerProperties;->exitOnComplete()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 233
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->releasePlayer(Z)V

    goto :goto_0
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 239
    sget-boolean v0, Lcom/inmobi/androidsdk/impl/Constants;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 240
    const-string v0, "InMobiAndroidSDK_3.5.4"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "AVPlayer-> Player error : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    :cond_0
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->f()V

    .line 244
    invoke-virtual {p0, v3}, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->releasePlayer(Z)V

    .line 246
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->d:Lcom/inmobi/androidsdk/ai/controller/util/AVPlayerListener;

    if-eqz v0, :cond_1

    .line 247
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->d:Lcom/inmobi/androidsdk/ai/controller/util/AVPlayerListener;

    invoke-interface {v0, p0}, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayerListener;->onError(Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;)V

    .line 250
    :cond_1
    sget v0, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->j:I

    .line 251
    const/16 v1, 0x64

    if-ne p2, v1, :cond_2

    .line 252
    sget v0, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->k:I

    .line 254
    :cond_2
    invoke-direct {p0, v0}, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->a(I)V

    .line 256
    return v3
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 3
    .parameter

    .prologue
    .line 262
    iput-object p1, p0, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->t:Landroid/media/MediaPlayer;

    .line 268
    iget-boolean v0, p0, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->u:Z

    if-eqz v0, :cond_0

    .line 270
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->t:Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaPlayer;->setVolume(FF)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 274
    :cond_0
    :goto_0
    sget-boolean v0, Lcom/inmobi/androidsdk/impl/Constants;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 275
    const-string v0, "InMobiAndroidSDK_3.5.4"

    const-string v1, "AVPlayer-> onPrepared"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    :cond_1
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->f()V

    .line 279
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->d:Lcom/inmobi/androidsdk/ai/controller/util/AVPlayerListener;

    if-eqz v0, :cond_2

    .line 280
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->d:Lcom/inmobi/androidsdk/ai/controller/util/AVPlayerListener;

    invoke-interface {v0, p0}, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayerListener;->onPrepared(Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;)V

    .line 282
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->m:Z

    .line 283
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->c()V

    .line 285
    return-void

    .line 271
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 1
    .parameter

    .prologue
    .line 719
    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/VideoView;->onWindowVisibilityChanged(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 722
    :goto_0
    return-void

    .line 720
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public declared-synchronized pause()V
    .locals 2

    .prologue
    .line 399
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->s:Lcom/inmobi/androidsdk/impl/Constants$playerState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->s:Lcom/inmobi/androidsdk/impl/Constants$playerState;

    sget-object v1, Lcom/inmobi/androidsdk/impl/Constants$playerState;->PAUSED:Lcom/inmobi/androidsdk/impl/Constants$playerState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_0

    .line 413
    :goto_0
    monitor-exit p0

    return-void

    .line 402
    :cond_0
    :try_start_1
    invoke-super {p0}, Landroid/widget/VideoView;->pause()V

    .line 404
    sget-object v0, Lcom/inmobi/androidsdk/impl/Constants$playerState;->PAUSED:Lcom/inmobi/androidsdk/impl/Constants$playerState;

    iput-object v0, p0, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->s:Lcom/inmobi/androidsdk/impl/Constants$playerState;

    .line 406
    invoke-direct {p0}, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->i()V

    .line 408
    sget-boolean v0, Lcom/inmobi/androidsdk/impl/Constants;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 409
    const-string v0, "InMobiAndroidSDK_3.5.4"

    const-string v1, "AVPlayer -> pause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    :cond_1
    sget-object v0, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->h:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->a(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 399
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public play()V
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->b:Lcom/inmobi/androidsdk/ai/controller/JSController$PlayerProperties;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/ai/controller/JSController$PlayerProperties;->doMute()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 193
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->mute()V

    .line 195
    :cond_0
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->b()V

    .line 196
    return-void
.end method

.method public releasePlayer(Z)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, -0x1

    .line 308
    monitor-enter p0

    .line 309
    :try_start_0
    invoke-direct {p0}, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->k()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 310
    monitor-exit p0

    .line 332
    :cond_0
    :goto_0
    return-void

    .line 308
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 313
    sget-object v0, Lcom/inmobi/androidsdk/impl/Constants$playerState;->RELEASED:Lcom/inmobi/androidsdk/impl/Constants$playerState;

    iput-object v0, p0, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->s:Lcom/inmobi/androidsdk/impl/Constants$playerState;

    .line 316
    iget v0, p0, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->r:I

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->r:I

    :goto_1
    invoke-direct {p0, p1, v0}, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->a(ZI)V

    .line 318
    iput v1, p0, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->r:I

    .line 321
    invoke-direct {p0}, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->i()V

    .line 323
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->unMute()V

    .line 324
    invoke-direct {p0}, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->m()V

    .line 326
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->stopPlayback()V

    .line 327
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->d()V

    .line 329
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->d:Lcom/inmobi/androidsdk/ai/controller/util/AVPlayerListener;

    if-eqz v0, :cond_0

    .line 330
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->d:Lcom/inmobi/androidsdk/ai/controller/util/AVPlayerListener;

    invoke-interface {v0, p0}, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayerListener;->onComplete(Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;)V

    goto :goto_0

    .line 308
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 316
    :cond_2
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->getCurrentPosition()I

    move-result v0

    div-int/lit16 v0, v0, 0x3e8

    int-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    goto :goto_1
.end method

.method public seekPlayer(I)V
    .locals 1
    .parameter

    .prologue
    .line 661
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->getDuration()I

    move-result v0

    if-gt p1, v0, :cond_0

    .line 662
    invoke-virtual {p0, p1}, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->seekTo(I)V

    .line 664
    :cond_0
    return-void
.end method

.method public setBackGroundLayout(Landroid/view/ViewGroup;)V
    .locals 0
    .parameter

    .prologue
    .line 672
    iput-object p1, p0, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->v:Landroid/view/ViewGroup;

    .line 673
    return-void
.end method

.method public setListener(Lcom/inmobi/androidsdk/ai/controller/util/AVPlayerListener;)V
    .locals 0
    .parameter

    .prologue
    .line 205
    iput-object p1, p0, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->d:Lcom/inmobi/androidsdk/ai/controller/util/AVPlayerListener;

    .line 206
    return-void
.end method

.method public setPlayData(Lcom/inmobi/androidsdk/ai/controller/JSController$PlayerProperties;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 136
    iput-object p1, p0, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->b:Lcom/inmobi/androidsdk/ai/controller/JSController$PlayerProperties;

    .line 137
    iput-object p2, p0, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->e:Ljava/lang/String;

    .line 138
    return-void
.end method

.method public setPlayDimensions(Lcom/inmobi/androidsdk/ai/controller/JSController$Dimensions;)V
    .locals 0
    .parameter

    .prologue
    .line 708
    iput-object p1, p0, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->w:Lcom/inmobi/androidsdk/ai/controller/JSController$Dimensions;

    .line 709
    return-void
.end method

.method public declared-synchronized setVolume(I)V
    .locals 4
    .parameter

    .prologue
    .line 605
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->b(I)I

    move-result v0

    .line 606
    iget v1, p0, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->p:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v1, v0, :cond_0

    .line 613
    :goto_0
    monitor-exit p0

    return-void

    .line 610
    :cond_0
    :try_start_1
    iput v0, p0, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->p:I

    .line 611
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->c:Landroid/media/AudioManager;

    const/4 v1, 0x3

    iget v2, p0, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->p:I

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 612
    invoke-direct {p0}, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->g()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 605
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public show()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 650
    sget-object v0, Lcom/inmobi/androidsdk/impl/Constants$playerState;->SHOWING:Lcom/inmobi/androidsdk/impl/Constants$playerState;

    iput-object v0, p0, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->s:Lcom/inmobi/androidsdk/impl/Constants$playerState;

    .line 651
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->v:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 652
    invoke-virtual {p0, v1}, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->setVisibility(I)V

    .line 653
    return-void
.end method

.method public declared-synchronized start()V
    .locals 2

    .prologue
    .line 373
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->s:Lcom/inmobi/androidsdk/impl/Constants$playerState;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->s:Lcom/inmobi/androidsdk/impl/Constants$playerState;

    sget-object v1, Lcom/inmobi/androidsdk/impl/Constants$playerState;->PLAYING:Lcom/inmobi/androidsdk/impl/Constants$playerState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_1

    .line 392
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 376
    :cond_1
    :try_start_1
    invoke-super {p0}, Landroid/widget/VideoView;->start()V

    .line 378
    sget-object v0, Lcom/inmobi/androidsdk/impl/Constants$playerState;->PLAYING:Lcom/inmobi/androidsdk/impl/Constants$playerState;

    iput-object v0, p0, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->s:Lcom/inmobi/androidsdk/impl/Constants$playerState;

    .line 379
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->n:Z

    .line 381
    invoke-direct {p0}, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->h()V

    .line 383
    sget-boolean v0, Lcom/inmobi/androidsdk/impl/Constants;->DEBUG:Z

    if-eqz v0, :cond_2

    .line 384
    const-string v0, "InMobiAndroidSDK_3.5.4"

    const-string v1, "AVPlayer -> start playing"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    :cond_2
    iget-boolean v0, p0, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->m:Z

    if-eqz v0, :cond_0

    .line 389
    sget-object v0, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->g:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->a(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 373
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public unMute()V
    .locals 3

    .prologue
    .line 580
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->t:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->u:Z

    if-eqz v0, :cond_0

    .line 581
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->u:Z

    .line 583
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->t:Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    const/high16 v2, 0x3f80

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaPlayer;->setVolume(FF)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 585
    :goto_0
    invoke-direct {p0}, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->g()V

    .line 587
    :cond_0
    return-void

    .line 584
    :catch_0
    move-exception v0

    goto :goto_0
.end method
