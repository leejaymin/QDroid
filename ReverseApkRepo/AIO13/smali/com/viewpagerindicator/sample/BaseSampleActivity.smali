.class public abstract Lcom/viewpagerindicator/sample/BaseSampleActivity;
.super Landroid/support/v4/app/FragmentActivity;


# instance fields
.field private _delta:J

.field mAdapter:Lcom/viewpagerindicator/sample/c;

.field mIndicator:Lcom/viewpagerindicator/PageIndicator;

.field mPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    return-void
.end method

.method private doubleClick()V
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/viewpagerindicator/sample/BaseSampleActivity;->_delta:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/viewpagerindicator/sample/BaseSampleActivity;->_delta:J

    iget-wide v0, p0, Lcom/viewpagerindicator/sample/BaseSampleActivity;->_delta:J

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const v0, 0x7f07007a

    invoke-virtual {p0, v0}, Lcom/viewpagerindicator/sample/BaseSampleActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/viewpagerindicator/sample/BaseSampleActivity;->_delta:J

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/viewpagerindicator/sample/BaseSampleActivity;->finish()V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/viewpagerindicator/sample/BaseSampleActivity;->requestWindowFeature(I)Z

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/viewpagerindicator/sample/BaseSampleActivity;->doubleClick()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
