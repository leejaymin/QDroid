.class public Lcom/sphericbox/syb/browse/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field final synthetic ak:Lcom/sphericbox/syb/browse/BrowseActivity;


# direct methods
.method public constructor <init>(Lcom/sphericbox/syb/browse/BrowseActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 280
    iput-object p1, p0, Lcom/sphericbox/syb/browse/f;->ak:Lcom/sphericbox/syb/browse/BrowseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 287
    :try_start_0
    iget-object v0, p0, Lcom/sphericbox/syb/browse/f;->ak:Lcom/sphericbox/syb/browse/BrowseActivity;

    invoke-static {v0}, Lcom/sphericbox/syb/browse/BrowseActivity;->a(Lcom/sphericbox/syb/browse/BrowseActivity;)Lcom/sphericbox/syb/browse/p;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/sphericbox/syb/browse/p;->b(I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 288
    iget-object v1, p0, Lcom/sphericbox/syb/browse/f;->ak:Lcom/sphericbox/syb/browse/BrowseActivity;

    invoke-static {v1}, Lcom/sphericbox/syb/browse/BrowseActivity;->b(Lcom/sphericbox/syb/browse/BrowseActivity;)Landroid/widget/ImageSwitcher;

    move-result-object v1

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageSwitcher;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 289
    iget-object v0, p0, Lcom/sphericbox/syb/browse/f;->ak:Lcom/sphericbox/syb/browse/BrowseActivity;

    invoke-static {v0}, Lcom/sphericbox/syb/browse/BrowseActivity;->c(Lcom/sphericbox/syb/browse/BrowseActivity;)V

    .line 290
    iget-object v0, p0, Lcom/sphericbox/syb/browse/f;->ak:Lcom/sphericbox/syb/browse/BrowseActivity;

    invoke-static {v0}, Lcom/sphericbox/syb/browse/BrowseActivity;->d(Lcom/sphericbox/syb/browse/BrowseActivity;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/sphericbox/syb/browse/f;->ak:Lcom/sphericbox/syb/browse/BrowseActivity;

    const v2, 0x7f040001

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 296
    :goto_0
    return-void

    .line 291
    :catch_0
    move-exception v0

    .line 292
    iget-object v1, p0, Lcom/sphericbox/syb/browse/f;->ak:Lcom/sphericbox/syb/browse/BrowseActivity;

    invoke-static {v1, v0}, Lcom/sphericbox/syb/j;->a(Landroid/content/Context;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    .line 293
    new-instance v1, Lcom/sphericbox/syb/e;

    iget-object v2, p0, Lcom/sphericbox/syb/browse/f;->ak:Lcom/sphericbox/syb/browse/BrowseActivity;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v0}, Lcom/sphericbox/syb/e;-><init>(Lcom/sphericbox/syb/ui/ActionActivity;ILjava/lang/String;)V

    .line 294
    iget-object v0, p0, Lcom/sphericbox/syb/browse/f;->ak:Lcom/sphericbox/syb/browse/BrowseActivity;

    invoke-virtual {v0, v1}, Lcom/sphericbox/syb/browse/BrowseActivity;->showDialog(Landroid/app/Dialog;)V

    goto :goto_0
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .parameter

    .prologue
    .line 300
    return-void
.end method
