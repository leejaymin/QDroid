.class public Lny;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic 癤욱븳援:Lcom/mxtech/videoplayer/ScreenVerticalBar;


# direct methods
.method public constructor <init>(Lcom/mxtech/videoplayer/ScreenVerticalBar;)V
    .locals 0

    iput-object p1, p0, Lny;->癤욱븳援:Lcom/mxtech/videoplayer/ScreenVerticalBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lny;->癤욱븳援:Lcom/mxtech/videoplayer/ScreenVerticalBar;

    invoke-static {v0}, Lcom/mxtech/videoplayer/ScreenVerticalBar;->癤욱븳援(Lcom/mxtech/videoplayer/ScreenVerticalBar;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lny;->癤욱븳援:Lcom/mxtech/videoplayer/ScreenVerticalBar;

    invoke-static {v1}, Lcom/mxtech/videoplayer/ScreenVerticalBar;->癤욱븳援(Lcom/mxtech/videoplayer/ScreenVerticalBar;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method
