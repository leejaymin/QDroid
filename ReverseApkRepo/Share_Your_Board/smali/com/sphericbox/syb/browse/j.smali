.class public Lcom/sphericbox/syb/browse/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/ViewSwitcher$ViewFactory;


# instance fields
.field final synthetic ak:Lcom/sphericbox/syb/browse/BrowseActivity;

.field final aw:Landroid/widget/FrameLayout$LayoutParams;


# direct methods
.method public constructor <init>(Lcom/sphericbox/syb/browse/BrowseActivity;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, -0x1

    .line 303
    iput-object p1, p0, Lcom/sphericbox/syb/browse/j;->ak:Lcom/sphericbox/syb/browse/BrowseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 304
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/sphericbox/syb/browse/j;->aw:Landroid/widget/FrameLayout$LayoutParams;

    return-void
.end method


# virtual methods
.method public makeView()Landroid/view/View;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 308
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sphericbox/syb/browse/j;->ak:Lcom/sphericbox/syb/browse/BrowseActivity;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 311
    :try_start_0
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 312
    iget-object v1, p0, Lcom/sphericbox/syb/browse/j;->aw:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 313
    iget-object v1, p0, Lcom/sphericbox/syb/browse/j;->ak:Lcom/sphericbox/syb/browse/BrowseActivity;

    invoke-virtual {v1}, Lcom/sphericbox/syb/browse/BrowseActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v1

    .line 314
    iget-object v2, p0, Lcom/sphericbox/syb/browse/j;->ak:Lcom/sphericbox/syb/browse/BrowseActivity;

    invoke-virtual {v2}, Lcom/sphericbox/syb/browse/BrowseActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getHeight()I

    move-result v2

    .line 315
    if-le v1, v2, :cond_0

    .line 316
    const/4 v1, 0x5

    const/4 v2, 0x0

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 325
    :goto_0
    return-object v0

    .line 318
    :cond_0
    const/4 v1, 0x5

    const/4 v2, 0x0

    const/4 v3, 0x5

    const/16 v4, 0x4b

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/ImageView;->setPadding(IIII)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 320
    :catch_0
    move-exception v1

    .line 321
    iget-object v2, p0, Lcom/sphericbox/syb/browse/j;->ak:Lcom/sphericbox/syb/browse/BrowseActivity;

    invoke-static {v2, v1}, Lcom/sphericbox/syb/j;->a(Landroid/content/Context;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    .line 322
    new-instance v2, Lcom/sphericbox/syb/e;

    iget-object v3, p0, Lcom/sphericbox/syb/browse/j;->ak:Lcom/sphericbox/syb/browse/BrowseActivity;

    invoke-direct {v2, v3, v5, v1}, Lcom/sphericbox/syb/e;-><init>(Lcom/sphericbox/syb/ui/ActionActivity;ILjava/lang/String;)V

    .line 323
    iget-object v1, p0, Lcom/sphericbox/syb/browse/j;->ak:Lcom/sphericbox/syb/browse/BrowseActivity;

    invoke-virtual {v1, v2}, Lcom/sphericbox/syb/browse/BrowseActivity;->showDialog(Landroid/app/Dialog;)V

    goto :goto_0
.end method
