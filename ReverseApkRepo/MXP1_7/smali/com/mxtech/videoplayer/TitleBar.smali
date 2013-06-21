.class public final Lcom/mxtech/videoplayer/TitleBar;
.super Landroid/widget/LinearLayout;


# instance fields
.field private 癤욱븳援:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    if-lez p2, :cond_0

    iput p2, p0, Lcom/mxtech/videoplayer/TitleBar;->癤욱븳援:I

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->onSizeChanged(IIII)V

    return-void
.end method

.method public 癤욱븳援(II)Z
    .locals 1

    iget v0, p0, Lcom/mxtech/videoplayer/TitleBar;->癤욱븳援:I

    if-ge p2, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
