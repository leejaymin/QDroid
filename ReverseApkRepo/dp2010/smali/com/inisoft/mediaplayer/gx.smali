.class final Lcom/inisoft/mediaplayer/gx;
.super Ljava/util/TimerTask;


# instance fields
.field a:Ljava/lang/Runnable;

.field final synthetic b:Lcom/inisoft/mediaplayer/gt;


# direct methods
.method private constructor <init>(Lcom/inisoft/mediaplayer/gt;)V
    .locals 1

    iput-object p1, p0, Lcom/inisoft/mediaplayer/gx;->b:Lcom/inisoft/mediaplayer/gt;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    new-instance v0, Lcom/inisoft/mediaplayer/gy;

    invoke-direct {v0, p0}, Lcom/inisoft/mediaplayer/gy;-><init>(Lcom/inisoft/mediaplayer/gx;)V

    iput-object v0, p0, Lcom/inisoft/mediaplayer/gx;->a:Ljava/lang/Runnable;

    return-void
.end method

.method synthetic constructor <init>(Lcom/inisoft/mediaplayer/gt;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/inisoft/mediaplayer/gx;-><init>(Lcom/inisoft/mediaplayer/gt;)V

    return-void
.end method

.method static synthetic a(Lcom/inisoft/mediaplayer/gx;)Lcom/inisoft/mediaplayer/gt;
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gx;->b:Lcom/inisoft/mediaplayer/gt;

    return-object v0
.end method


# virtual methods
.method public final run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/inisoft/mediaplayer/gx;->b:Lcom/inisoft/mediaplayer/gt;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/gt;->f(Lcom/inisoft/mediaplayer/gt;)Lcom/inisoft/mediaplayer/hm;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gx;->b:Lcom/inisoft/mediaplayer/gt;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/gt;->f(Lcom/inisoft/mediaplayer/gt;)Lcom/inisoft/mediaplayer/hm;

    move-result-object v0

    iget-object v1, p0, Lcom/inisoft/mediaplayer/gx;->a:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/inisoft/mediaplayer/hm;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
