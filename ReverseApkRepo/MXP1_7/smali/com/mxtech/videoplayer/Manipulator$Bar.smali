.class public final Lcom/mxtech/videoplayer/Manipulator$Bar;
.super Landroid/widget/RelativeLayout;


# instance fields
.field private 癤욱븳援:Lcom/mxtech/videoplayer/Manipulator;


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

.method static synthetic 癤욱븳援(Lcom/mxtech/videoplayer/Manipulator$Bar;Lcom/mxtech/videoplayer/Manipulator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mxtech/videoplayer/Manipulator$Bar;->癤욱븳援(Lcom/mxtech/videoplayer/Manipulator;)V

    return-void
.end method

.method private 癤욱븳援(Lcom/mxtech/videoplayer/Manipulator;)V
    .locals 0

    iput-object p1, p0, Lcom/mxtech/videoplayer/Manipulator$Bar;->癤욱븳援:Lcom/mxtech/videoplayer/Manipulator;

    return-void
.end method


# virtual methods
.method protected onSizeChanged(IIII)V
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;->onSizeChanged(IIII)V

    iget-object v0, p0, Lcom/mxtech/videoplayer/Manipulator$Bar;->癤욱븳援:Lcom/mxtech/videoplayer/Manipulator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mxtech/videoplayer/Manipulator$Bar;->癤욱븳援:Lcom/mxtech/videoplayer/Manipulator;

    invoke-static {v0}, Lcom/mxtech/videoplayer/Manipulator;->癤욱븳援(Lcom/mxtech/videoplayer/Manipulator;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mxtech/videoplayer/Manipulator$Bar;->癤욱븳援:Lcom/mxtech/videoplayer/Manipulator;

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
