.class public Lrc;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# instance fields
.field final synthetic 癤욱븳援:Lcom/mxtech/videoplayer/service/PlayService;


# direct methods
.method private constructor <init>(Lcom/mxtech/videoplayer/service/PlayService;)V
    .locals 0

    iput-object p1, p0, Lrc;->癤욱븳援:Lcom/mxtech/videoplayer/service/PlayService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/mxtech/videoplayer/service/PlayService;Lrc;)V
    .locals 0

    invoke-direct {p0, p1}, Lrc;-><init>(Lcom/mxtech/videoplayer/service/PlayService;)V

    return-void
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .locals 2

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lrc;->癤욱븳援:Lcom/mxtech/videoplayer/service/PlayService;

    invoke-static {v0}, Lcom/mxtech/videoplayer/service/PlayService;->癤욱븳援(Lcom/mxtech/videoplayer/service/PlayService;)Lnb;

    move-result-object v0

    invoke-virtual {v0}, Lnb;->紐낆옱()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lrc;->癤욱븳援:Lcom/mxtech/videoplayer/service/PlayService;

    invoke-static {v0}, Lcom/mxtech/videoplayer/service/PlayService;->궗(Lcom/mxtech/videoplayer/service/PlayService;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lrc;->癤욱븳援:Lcom/mxtech/videoplayer/service/PlayService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mxtech/videoplayer/service/PlayService;->癤욱븳援(Lcom/mxtech/videoplayer/service/PlayService;Z)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lrc;->癤욱븳援:Lcom/mxtech/videoplayer/service/PlayService;

    invoke-static {v0}, Lcom/mxtech/videoplayer/service/PlayService;->癤욱븳援(Lcom/mxtech/videoplayer/service/PlayService;)Lnb;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lnb;->ㅼ꽑嫄(Z)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
