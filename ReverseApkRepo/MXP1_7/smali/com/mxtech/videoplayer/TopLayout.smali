.class public Lcom/mxtech/videoplayer/TopLayout;
.super Landroid/widget/RelativeLayout;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private 癤욱븳援:Lof;


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
.method protected onSizeChanged(IIII)V
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;->onSizeChanged(IIII)V

    iget-object v0, p0, Lcom/mxtech/videoplayer/TopLayout;->癤욱븳援:Lof;

    if-eqz v0, :cond_0

    invoke-virtual {p0, p0}, Lcom/mxtech/videoplayer/TopLayout;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/mxtech/videoplayer/TopLayout;->癤욱븳援:Lof;

    invoke-interface {v0, p0}, Lof;->onTopLayoutSizeChanged(Landroid/view/View;)V

    return-void
.end method

.method public setListener(Lof;)V
    .locals 0

    iput-object p1, p0, Lcom/mxtech/videoplayer/TopLayout;->癤욱븳援:Lof;

    return-void
.end method
