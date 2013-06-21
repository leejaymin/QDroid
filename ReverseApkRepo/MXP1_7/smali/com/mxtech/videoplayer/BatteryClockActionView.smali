.class public Lcom/mxtech/videoplayer/BatteryClockActionView;
.super Landroid/widget/FrameLayout;


# instance fields
.field private 癤욱븳援:Landroid/widget/TextView;

.field private 궗:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/mxtech/videoplayer/BatteryClockActionView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lnp;->status_action_view:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    sget v0, Lno;->statusText:I

    invoke-virtual {p0, v0}, Lcom/mxtech/videoplayer/BatteryClockActionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mxtech/videoplayer/BatteryClockActionView;->癤욱븳援:Landroid/widget/TextView;

    sget v0, Lno;->batteryCharging:I

    invoke-virtual {p0, v0}, Lcom/mxtech/videoplayer/BatteryClockActionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/mxtech/videoplayer/BatteryClockActionView;->궗:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/mxtech/videoplayer/BatteryClockActionView;->궗:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/mxtech/videoplayer/BatteryClockActionView;->癤욱븳援:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    return-void
.end method


# virtual methods
.method public setContent(Ljava/lang/CharSequence;Z)V
    .locals 2

    iget-object v0, p0, Lcom/mxtech/videoplayer/BatteryClockActionView;->癤욱븳援:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/mxtech/videoplayer/BatteryClockActionView;->궗:Landroid/widget/ImageView;

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void

    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method
