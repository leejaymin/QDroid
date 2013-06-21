.class final Lcom/mosaicture/view/q;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/TabHost$OnTabChangeListener;


# instance fields
.field final synthetic a:Lcom/mosaicture/view/MosaictureActivity;


# direct methods
.method constructor <init>(Lcom/mosaicture/view/MosaictureActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/mosaicture/view/q;->a:Lcom/mosaicture/view/MosaictureActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTabChanged(Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x2

    iget-object v0, p0, Lcom/mosaicture/view/q;->a:Lcom/mosaicture/view/MosaictureActivity;

    invoke-virtual {v0}, Lcom/mosaicture/view/MosaictureActivity;->a()V

    iget-object v0, p0, Lcom/mosaicture/view/q;->a:Lcom/mosaicture/view/MosaictureActivity;

    iget-object v1, p0, Lcom/mosaicture/view/q;->a:Lcom/mosaicture/view/MosaictureActivity;

    invoke-static {v1}, Lcom/mosaicture/view/MosaictureActivity;->b(Lcom/mosaicture/view/MosaictureActivity;)Landroid/widget/TabHost;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TabHost;->getCurrentTab()I

    move-result v1

    iput v1, v0, Lcom/mosaicture/view/MosaictureActivity;->d:I

    iget-object v0, p0, Lcom/mosaicture/view/q;->a:Lcom/mosaicture/view/MosaictureActivity;

    invoke-static {v0}, Lcom/mosaicture/view/MosaictureActivity;->c(Lcom/mosaicture/view/MosaictureActivity;)Landroid/widget/ViewFlipper;

    move-result-object v0

    iget-object v1, p0, Lcom/mosaicture/view/q;->a:Lcom/mosaicture/view/MosaictureActivity;

    iget v1, v1, Lcom/mosaicture/view/MosaictureActivity;->d:I

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->setDisplayedChild(I)V

    iget-object v0, p0, Lcom/mosaicture/view/q;->a:Lcom/mosaicture/view/MosaictureActivity;

    iget v0, v0, Lcom/mosaicture/view/MosaictureActivity;->d:I

    iget-object v1, p0, Lcom/mosaicture/view/q;->a:Lcom/mosaicture/view/MosaictureActivity;

    iget v1, v1, Lcom/mosaicture/view/MosaictureActivity;->e:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/mosaicture/view/q;->a:Lcom/mosaicture/view/MosaictureActivity;

    iget v1, v1, Lcom/mosaicture/view/MosaictureActivity;->d:I

    iget-object v2, p0, Lcom/mosaicture/view/q;->a:Lcom/mosaicture/view/MosaictureActivity;

    iget v2, v2, Lcom/mosaicture/view/MosaictureActivity;->e:I

    if-eq v1, v2, :cond_3

    if-lez v0, :cond_4

    iget-object v0, p0, Lcom/mosaicture/view/q;->a:Lcom/mosaicture/view/MosaictureActivity;

    invoke-static {v0}, Lcom/mosaicture/view/MosaictureActivity;->c(Lcom/mosaicture/view/MosaictureActivity;)Landroid/widget/ViewFlipper;

    move-result-object v0

    iget-object v1, p0, Lcom/mosaicture/view/q;->a:Lcom/mosaicture/view/MosaictureActivity;

    invoke-static {v1}, Lcom/mosaicture/view/MosaictureActivity;->d(Lcom/mosaicture/view/MosaictureActivity;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->setInAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/mosaicture/view/q;->a:Lcom/mosaicture/view/MosaictureActivity;

    invoke-static {v0}, Lcom/mosaicture/view/MosaictureActivity;->c(Lcom/mosaicture/view/MosaictureActivity;)Landroid/widget/ViewFlipper;

    move-result-object v0

    iget-object v1, p0, Lcom/mosaicture/view/q;->a:Lcom/mosaicture/view/MosaictureActivity;

    invoke-static {v1}, Lcom/mosaicture/view/MosaictureActivity;->e(Lcom/mosaicture/view/MosaictureActivity;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->setOutAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/mosaicture/view/q;->a:Lcom/mosaicture/view/MosaictureActivity;

    invoke-static {v0}, Lcom/mosaicture/view/MosaictureActivity;->c(Lcom/mosaicture/view/MosaictureActivity;)Landroid/widget/ViewFlipper;

    move-result-object v0

    iget-object v1, p0, Lcom/mosaicture/view/q;->a:Lcom/mosaicture/view/MosaictureActivity;

    iget v1, v1, Lcom/mosaicture/view/MosaictureActivity;->d:I

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->setDisplayedChild(I)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/mosaicture/view/q;->a:Lcom/mosaicture/view/MosaictureActivity;

    iget v0, v0, Lcom/mosaicture/view/MosaictureActivity;->e:I

    if-ne v0, v3, :cond_1

    sget-boolean v0, Lcom/mosaicture/view/TabSettingsActivity;->d:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/mosaicture/a/a;->b()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/mosaicture/view/q;->a:Lcom/mosaicture/view/MosaictureActivity;

    invoke-virtual {v1}, Lcom/mosaicture/view/MosaictureActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070033

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/mosaicture/view/b;->a:Lcom/mosaicture/view/b;

    invoke-static {v0, v1, v2}, Lcom/mosaicture/view/a;->a(Landroid/content/Context;Ljava/lang/String;Lcom/mosaicture/view/b;)V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/mosaicture/view/TabSettingsActivity;->d:Z

    :cond_1
    iget-object v0, p0, Lcom/mosaicture/view/q;->a:Lcom/mosaicture/view/MosaictureActivity;

    iget v0, v0, Lcom/mosaicture/view/MosaictureActivity;->d:I

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Lcom/mosaicture/view/q;->a:Lcom/mosaicture/view/MosaictureActivity;

    iget v0, v0, Lcom/mosaicture/view/MosaictureActivity;->f:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    invoke-static {}, Lcom/mosaicture/view/TabSettingsActivity;->a()V

    :cond_2
    iget-object v0, p0, Lcom/mosaicture/view/q;->a:Lcom/mosaicture/view/MosaictureActivity;

    iget-object v1, p0, Lcom/mosaicture/view/q;->a:Lcom/mosaicture/view/MosaictureActivity;

    iget v1, v1, Lcom/mosaicture/view/MosaictureActivity;->d:I

    iput v1, v0, Lcom/mosaicture/view/MosaictureActivity;->e:I

    :cond_3
    return-void

    :cond_4
    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/mosaicture/view/q;->a:Lcom/mosaicture/view/MosaictureActivity;

    invoke-static {v0}, Lcom/mosaicture/view/MosaictureActivity;->c(Lcom/mosaicture/view/MosaictureActivity;)Landroid/widget/ViewFlipper;

    move-result-object v0

    iget-object v1, p0, Lcom/mosaicture/view/q;->a:Lcom/mosaicture/view/MosaictureActivity;

    invoke-static {v1}, Lcom/mosaicture/view/MosaictureActivity;->f(Lcom/mosaicture/view/MosaictureActivity;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->setInAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/mosaicture/view/q;->a:Lcom/mosaicture/view/MosaictureActivity;

    invoke-static {v0}, Lcom/mosaicture/view/MosaictureActivity;->c(Lcom/mosaicture/view/MosaictureActivity;)Landroid/widget/ViewFlipper;

    move-result-object v0

    iget-object v1, p0, Lcom/mosaicture/view/q;->a:Lcom/mosaicture/view/MosaictureActivity;

    invoke-static {v1}, Lcom/mosaicture/view/MosaictureActivity;->g(Lcom/mosaicture/view/MosaictureActivity;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->setOutAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/mosaicture/view/q;->a:Lcom/mosaicture/view/MosaictureActivity;

    invoke-static {v0}, Lcom/mosaicture/view/MosaictureActivity;->c(Lcom/mosaicture/view/MosaictureActivity;)Landroid/widget/ViewFlipper;

    move-result-object v0

    iget-object v1, p0, Lcom/mosaicture/view/q;->a:Lcom/mosaicture/view/MosaictureActivity;

    iget v1, v1, Lcom/mosaicture/view/MosaictureActivity;->d:I

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->setDisplayedChild(I)V

    goto :goto_0
.end method
