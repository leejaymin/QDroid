.class public Ljr;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnSystemUiVisibilityChangeListener;


# instance fields
.field final synthetic 癤욱븳援:Lcom/mxtech/videoplayer/ActivityScreen;


# direct methods
.method public constructor <init>(Lcom/mxtech/videoplayer/ActivityScreen;)V
    .locals 0

    iput-object p1, p0, Ljr;->癤욱븳援:Lcom/mxtech/videoplayer/ActivityScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSystemUiVisibilityChange(I)V
    .locals 4

    const/4 v3, 0x6

    iget-object v0, p0, Ljr;->癤욱븳援:Lcom/mxtech/videoplayer/ActivityScreen;

    invoke-static {v0}, Lcom/mxtech/videoplayer/ActivityScreen;->湲고빐(Lcom/mxtech/videoplayer/ActivityScreen;)I

    move-result v0

    if-ne v0, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Ljr;->癤욱븳援:Lcom/mxtech/videoplayer/ActivityScreen;

    invoke-static {v0, p1}, Lcom/mxtech/videoplayer/ActivityScreen;->洹(Lcom/mxtech/videoplayer/ActivityScreen;I)V

    if-nez p1, :cond_2

    invoke-static {}, Lms;->ㅼ꽑嫄()Z

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Lms;->寃껋씠:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Ljr;->癤욱븳援:Lcom/mxtech/videoplayer/ActivityScreen;

    invoke-static {v0}, Lcom/mxtech/videoplayer/ActivityScreen;->弱방떙(Lcom/mxtech/videoplayer/ActivityScreen;)V

    :cond_1
    :goto_1
    iget-object v0, p0, Ljr;->癤욱븳援:Lcom/mxtech/videoplayer/ActivityScreen;

    iget-object v0, v0, Lcom/mxtech/videoplayer/ActivityScreen;->대쫫:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Ljr;->癤욱븳援:Lcom/mxtech/videoplayer/ActivityScreen;

    iget-object v0, v0, Lcom/mxtech/videoplayer/ActivityScreen;->대쫫:Landroid/os/Handler;

    sget v1, Lcom/mxtech/videoplayer/ActivityScreen;->쇰뒗:I

    int-to-long v1, v1

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Ljr;->癤욱븳援:Lcom/mxtech/videoplayer/ActivityScreen;

    invoke-static {v0}, Lcom/mxtech/videoplayer/ActivityScreen;->弱방떙(Lcom/mxtech/videoplayer/ActivityScreen;)V

    iget-object v0, p0, Ljr;->癤욱븳援:Lcom/mxtech/videoplayer/ActivityScreen;

    iget-object v0, v0, Lcom/mxtech/videoplayer/ActivityScreen;->붿슧:Lnb;

    invoke-virtual {v0}, Lnb;->꾩()V

    goto :goto_1

    :pswitch_1
    iget-object v0, p0, Ljr;->癤욱븳援:Lcom/mxtech/videoplayer/ActivityScreen;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mxtech/videoplayer/ActivityScreen;->癤욱븳援(Z)V

    goto :goto_1

    :pswitch_2
    iget-object v0, p0, Ljr;->癤욱븳援:Lcom/mxtech/videoplayer/ActivityScreen;

    invoke-static {v0}, Lcom/mxtech/videoplayer/ActivityScreen;->弱방떙(Lcom/mxtech/videoplayer/ActivityScreen;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Ljr;->癤욱븳援:Lcom/mxtech/videoplayer/ActivityScreen;

    iget-object v0, v0, Lcom/mxtech/videoplayer/ActivityScreen;->꾨뱾:Lcom/mxtech/videoplayer/VideoController;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/mxtech/videoplayer/VideoController;->궗(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
