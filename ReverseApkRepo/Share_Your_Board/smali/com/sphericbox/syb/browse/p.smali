.class final Lcom/sphericbox/syb/browse/p;
.super Lcom/sphericbox/syb/browse/d;
.source "SourceFile"


# instance fields
.field final synthetic ak:Lcom/sphericbox/syb/browse/BrowseActivity;


# direct methods
.method public constructor <init>(Lcom/sphericbox/syb/browse/BrowseActivity;)V
    .locals 2
    .parameter

    .prologue
    .line 330
    iput-object p1, p0, Lcom/sphericbox/syb/browse/p;->ak:Lcom/sphericbox/syb/browse/BrowseActivity;

    .line 331
    invoke-static {p1}, Lcom/sphericbox/syb/browse/BrowseActivity;->e(Lcom/sphericbox/syb/browse/BrowseActivity;)[Lcom/sphericbox/syb/b;

    move-result-object v0

    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/sphericbox/syb/browse/d;-><init>([Lcom/sphericbox/syb/b;Landroid/graphics/BitmapFactory$Options;)V

    .line 332
    invoke-virtual {p0}, Lcom/sphericbox/syb/browse/p;->p()Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

    .line 333
    const/4 v1, 0x3

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 334
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 339
    if-nez p2, :cond_0

    .line 340
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sphericbox/syb/browse/p;->ak:Lcom/sphericbox/syb/browse/BrowseActivity;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 341
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    .line 342
    const v1, 0x7f020015

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 348
    :goto_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/sphericbox/syb/browse/p;->b(I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 349
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 356
    :goto_1
    return-object v0

    .line 344
    :cond_0
    check-cast p2, Landroid/widget/ImageView;

    move-object v0, p2

    goto :goto_0

    .line 350
    :catch_0
    move-exception v1

    .line 351
    iget-object v2, p0, Lcom/sphericbox/syb/browse/p;->ak:Lcom/sphericbox/syb/browse/BrowseActivity;

    invoke-static {v2, v1}, Lcom/sphericbox/syb/j;->a(Landroid/content/Context;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    .line 352
    new-instance v2, Lcom/sphericbox/syb/e;

    iget-object v3, p0, Lcom/sphericbox/syb/browse/p;->ak:Lcom/sphericbox/syb/browse/BrowseActivity;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4, v1}, Lcom/sphericbox/syb/e;-><init>(Lcom/sphericbox/syb/ui/ActionActivity;ILjava/lang/String;)V

    .line 353
    iget-object v1, p0, Lcom/sphericbox/syb/browse/p;->ak:Lcom/sphericbox/syb/browse/BrowseActivity;

    invoke-virtual {v1, v2}, Lcom/sphericbox/syb/browse/BrowseActivity;->showDialog(Landroid/app/Dialog;)V

    goto :goto_1
.end method
