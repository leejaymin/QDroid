.class final Lcom/inisoft/mediaplayer/ef;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/inisoft/mediaplayer/MediaPlayer;


# direct methods
.method constructor <init>(Lcom/inisoft/mediaplayer/MediaPlayer;)V
    .locals 0

    iput-object p1, p0, Lcom/inisoft/mediaplayer/ef;->a:Lcom/inisoft/mediaplayer/MediaPlayer;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    :cond_0
    const/4 v0, 0x1

    :try_start_0
    iget-object v1, p0, Lcom/inisoft/mediaplayer/ef;->a:Lcom/inisoft/mediaplayer/MediaPlayer;

    #calls: Lcom/inisoft/mediaplayer/MediaPlayer;->waitEvent0()Z
    invoke-static {v1}, Lcom/inisoft/mediaplayer/MediaPlayer;->access$13(Lcom/inisoft/mediaplayer/MediaPlayer;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    if-nez v0, :cond_0

    return-void

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method
