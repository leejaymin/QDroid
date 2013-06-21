.class public Lcom/mxtech/videoplayer/UILayout;
.super Landroid/widget/RelativeLayout;


# instance fields
.field private 癤욱븳援:Lcom/mxtech/videoplayer/VideoController;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    :pswitch_1
    iget-object v0, p0, Lcom/mxtech/videoplayer/UILayout;->癤욱븳援:Lcom/mxtech/videoplayer/VideoController;

    invoke-virtual {v0}, Lcom/mxtech/videoplayer/VideoController;->궗()V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/mxtech/videoplayer/UILayout;->癤욱븳援:Lcom/mxtech/videoplayer/VideoController;

    invoke-virtual {v0}, Lcom/mxtech/videoplayer/VideoController;->먯꽌()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method setController(Lcom/mxtech/videoplayer/VideoController;)V
    .locals 0

    iput-object p1, p0, Lcom/mxtech/videoplayer/UILayout;->癤욱븳援:Lcom/mxtech/videoplayer/VideoController;

    return-void
.end method
