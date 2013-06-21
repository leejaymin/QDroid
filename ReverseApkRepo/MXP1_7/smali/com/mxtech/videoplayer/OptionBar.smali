.class public Lcom/mxtech/videoplayer/OptionBar;
.super Landroid/widget/LinearLayout;


# instance fields
.field public final 癤욱븳援:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/mxtech/videoplayer/OptionBar;->癤욱븳援:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/mxtech/videoplayer/OptionBar;->癤욱븳援:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 1

    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    if-ge p2, p4, :cond_0

    if-ge p3, p5, :cond_0

    iget-object v0, p0, Lcom/mxtech/videoplayer/OptionBar;->癤욱븳援:Landroid/graphics/Rect;

    iput p2, v0, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, Lcom/mxtech/videoplayer/OptionBar;->癤욱븳援:Landroid/graphics/Rect;

    iput p3, v0, Landroid/graphics/Rect;->top:I

    iget-object v0, p0, Lcom/mxtech/videoplayer/OptionBar;->癤욱븳援:Landroid/graphics/Rect;

    iput p4, v0, Landroid/graphics/Rect;->right:I

    iget-object v0, p0, Lcom/mxtech/videoplayer/OptionBar;->癤욱븳援:Landroid/graphics/Rect;

    iput p5, v0, Landroid/graphics/Rect;->bottom:I

    :cond_0
    return-void
.end method

.method public 癤욱븳援(II)Z
    .locals 1

    iget-object v0, p0, Lcom/mxtech/videoplayer/OptionBar;->癤욱븳援:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    return v0
.end method
