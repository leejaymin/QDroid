.class public Ljw;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# instance fields
.field final synthetic 癤욱븳援:Lcom/mxtech/videoplayer/ActivityScreen;


# direct methods
.method private constructor <init>(Lcom/mxtech/videoplayer/ActivityScreen;)V
    .locals 0

    iput-object p1, p0, Ljw;->癤욱븳援:Lcom/mxtech/videoplayer/ActivityScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/mxtech/videoplayer/ActivityScreen;Ljw;)V
    .locals 0

    invoke-direct {p0, p1}, Ljw;-><init>(Lcom/mxtech/videoplayer/ActivityScreen;)V

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
    iget-object v0, p0, Ljw;->癤욱븳援:Lcom/mxtech/videoplayer/ActivityScreen;

    iget-object v0, v0, Lcom/mxtech/videoplayer/ActivityScreen;->붿슧:Lnb;

    invoke-virtual {v0}, Lnb;->덉쓣()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Ljw;->癤욱븳援:Lcom/mxtech/videoplayer/ActivityScreen;

    invoke-static {v0}, Lcom/mxtech/videoplayer/ActivityScreen;->ㅼ꽑嫄(Lcom/mxtech/videoplayer/ActivityScreen;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Ljw;->癤욱븳援:Lcom/mxtech/videoplayer/ActivityScreen;

    iget-object v0, v0, Lcom/mxtech/videoplayer/ActivityScreen;->붿슧:Lnb;

    invoke-virtual {v0}, Lnb;->紐낆옱()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljw;->癤욱븳援:Lcom/mxtech/videoplayer/ActivityScreen;

    invoke-virtual {v0}, Lcom/mxtech/videoplayer/ActivityScreen;->몃Ъ()V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Ljw;->癤욱븳援:Lcom/mxtech/videoplayer/ActivityScreen;

    iget-object v0, v0, Lcom/mxtech/videoplayer/ActivityScreen;->붿슧:Lnb;

    invoke-virtual {v0}, Lnb;->癤욱븳援()Lnc;

    move-result-object v0

    iget-object v1, p0, Ljw;->癤욱븳援:Lcom/mxtech/videoplayer/ActivityScreen;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Ljw;->癤욱븳援:Lcom/mxtech/videoplayer/ActivityScreen;

    iget-object v0, v0, Lcom/mxtech/videoplayer/ActivityScreen;->붿슧:Lnb;

    invoke-virtual {v0}, Lnb;->먯꽌()V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Ljw;->癤욱븳援:Lcom/mxtech/videoplayer/ActivityScreen;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mxtech/videoplayer/ActivityScreen;->먯꽌(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
