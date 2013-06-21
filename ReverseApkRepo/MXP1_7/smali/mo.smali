.class public Lmo;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic 癤욱븳援:Lcom/mxtech/videoplayer/Manipulator;


# direct methods
.method public constructor <init>(Lcom/mxtech/videoplayer/Manipulator;)V
    .locals 0

    iput-object p1, p0, Lmo;->癤욱븳援:Lcom/mxtech/videoplayer/Manipulator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    new-instance v0, Lob;

    iget-object v1, p0, Lmo;->癤욱븳援:Lcom/mxtech/videoplayer/Manipulator;

    invoke-static {v1}, Lcom/mxtech/videoplayer/Manipulator;->궗(Lcom/mxtech/videoplayer/Manipulator;)Lcom/mxtech/videoplayer/SubView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mxtech/videoplayer/SubView;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    iget-object v2, p0, Lmo;->癤욱븳援:Lcom/mxtech/videoplayer/Manipulator;

    invoke-static {v2}, Lcom/mxtech/videoplayer/Manipulator;->먯꽌(Lcom/mxtech/videoplayer/Manipulator;)Lfm;

    move-result-object v2

    iget-object v3, p0, Lmo;->癤욱븳援:Lcom/mxtech/videoplayer/Manipulator;

    invoke-static {v3}, Lcom/mxtech/videoplayer/Manipulator;->ㅼ꽑嫄(Lcom/mxtech/videoplayer/Manipulator;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lmo;->癤욱븳援:Lcom/mxtech/videoplayer/Manipulator;

    invoke-static {v4}, Lcom/mxtech/videoplayer/Manipulator;->궗(Lcom/mxtech/videoplayer/Manipulator;)Lcom/mxtech/videoplayer/SubView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mxtech/videoplayer/SubView;->getSubtitleCount()I

    move-result v4

    if-lez v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    iget-object v5, p0, Lmo;->癤욱븳援:Lcom/mxtech/videoplayer/Manipulator;

    invoke-static {v5}, Lcom/mxtech/videoplayer/Manipulator;->弱밧(Lcom/mxtech/videoplayer/Manipulator;)Lmr;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lob;-><init>(Landroid/app/Activity;Lfm;Landroid/net/Uri;ZLmr;)V

    return-void

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method
