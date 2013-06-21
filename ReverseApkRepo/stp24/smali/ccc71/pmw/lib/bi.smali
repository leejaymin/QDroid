.class final Lccc71/pmw/lib/bi;
.super Lccc71/utils/android/a;
.source "SourceFile"


# instance fields
.field a:Landroid/graphics/Bitmap;

.field b:Landroid/content/Intent;

.field c:Z

.field final synthetic d:Lccc71/pmw/lib/bh;

.field private final synthetic g:Landroid/content/pm/ApplicationInfo;


# direct methods
.method constructor <init>(Lccc71/pmw/lib/bh;Landroid/content/pm/ApplicationInfo;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/pmw/lib/bi;->d:Lccc71/pmw/lib/bh;

    iput-object p2, p0, Lccc71/pmw/lib/bi;->g:Landroid/content/pm/ApplicationInfo;

    .line 2795
    invoke-direct {p0}, Lccc71/utils/android/a;-><init>()V

    return-void
.end method


# virtual methods
.method protected final varargs synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 1
    iget-object v0, p0, Lccc71/pmw/lib/bi;->d:Lccc71/pmw/lib/bh;

    invoke-static {v0}, Lccc71/pmw/lib/bh;->a(Lccc71/pmw/lib/bh;)Lccc71/pmw/lib/pmw_applist;

    move-result-object v0

    invoke-static {v0}, Lccc71/pmw/lib/pmw_applist;->a(Lccc71/pmw/lib/pmw_applist;)Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lccc71/pmw/lib/bi;->g:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->copyBounds()Landroid/graphics/Rect;

    move-result-object v1

    const/high16 v2, 0x41c8

    iget-object v3, p0, Lccc71/pmw/lib/bi;->d:Lccc71/pmw/lib/bh;

    invoke-static {v3}, Lccc71/pmw/lib/bh;->a(Lccc71/pmw/lib/bh;)Lccc71/pmw/lib/pmw_applist;

    move-result-object v3

    invoke-virtual {v3}, Lccc71/pmw/lib/pmw_applist;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v2, v3

    iget-object v3, p0, Lccc71/pmw/lib/bi;->d:Lccc71/pmw/lib/bh;

    invoke-static {v3}, Lccc71/pmw/lib/bh;->a(Lccc71/pmw/lib/bh;)Lccc71/pmw/lib/pmw_applist;

    move-result-object v3

    invoke-virtual {v3}, Lccc71/pmw/lib/pmw_applist;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lccc71/pmw/lib/bi;->a:Landroid/graphics/Bitmap;

    new-instance v3, Landroid/graphics/Canvas;

    iget-object v4, p0, Lccc71/pmw/lib/bi;->a:Landroid/graphics/Bitmap;

    invoke-direct {v3, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v5, v5, v2, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lccc71/pmw/lib/bi;->d:Lccc71/pmw/lib/bh;

    invoke-static {v0}, Lccc71/pmw/lib/bh;->a(Lccc71/pmw/lib/bh;)Lccc71/pmw/lib/pmw_applist;

    move-result-object v0

    invoke-static {v0}, Lccc71/pmw/lib/pmw_applist;->a(Lccc71/pmw/lib/pmw_applist;)Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lccc71/pmw/lib/bi;->g:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lccc71/pmw/lib/bi;->b:Landroid/content/Intent;

    iget-object v0, p0, Lccc71/pmw/lib/bi;->d:Lccc71/pmw/lib/bh;

    invoke-static {v0}, Lccc71/pmw/lib/bh;->a(Lccc71/pmw/lib/bh;)Lccc71/pmw/lib/pmw_applist;

    move-result-object v0

    iget-object v1, p0, Lccc71/pmw/lib/bi;->g:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v0, v1, v6}, Lccc71/pmw/a/d;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lccc71/pmw/lib/bi;->c:Z

    return-object v6
.end method

.method protected final synthetic a(Ljava/lang/Object;)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1
    check-cast p1, Ljava/lang/Void;

    invoke-super {p0, p1}, Lccc71/utils/android/a;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lccc71/pmw/lib/bi;->d:Lccc71/pmw/lib/bh;

    invoke-static {v0}, Lccc71/pmw/lib/bh;->a(Lccc71/pmw/lib/bh;)Lccc71/pmw/lib/pmw_applist;

    move-result-object v0

    invoke-static {v0, v4, v4}, Lccc71/pmw/lib/pmw_applist;->a(Lccc71/pmw/lib/pmw_applist;ZZ)V

    iget-object v0, p0, Lccc71/pmw/lib/bi;->d:Lccc71/pmw/lib/bh;

    invoke-static {v0}, Lccc71/pmw/lib/bh;->a(Lccc71/pmw/lib/bh;)Lccc71/pmw/lib/pmw_applist;

    move-result-object v0

    invoke-static {v0}, Lccc71/pmw/lib/pmw_applist;->k(Lccc71/pmw/lib/pmw_applist;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lccc71/pmw/lib/bi;->a:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v5, v1, v5, v5}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lccc71/pmw/lib/bi;->d:Lccc71/pmw/lib/bh;

    invoke-static {v0}, Lccc71/pmw/lib/bh;->a(Lccc71/pmw/lib/bh;)Lccc71/pmw/lib/pmw_applist;

    move-result-object v0

    invoke-static {v0}, Lccc71/pmw/lib/pmw_applist;->t(Lccc71/pmw/lib/pmw_applist;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccc71/pmw/lib/bi;->d:Lccc71/pmw/lib/bh;

    invoke-static {v0}, Lccc71/pmw/lib/bh;->a(Lccc71/pmw/lib/bh;)Lccc71/pmw/lib/pmw_applist;

    move-result-object v0

    invoke-static {v0}, Lccc71/pmw/lib/pmw_applist;->t(Lccc71/pmw/lib/pmw_applist;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    iget-object v0, p0, Lccc71/pmw/lib/bi;->d:Lccc71/pmw/lib/bh;

    invoke-static {v0}, Lccc71/pmw/lib/bh;->a(Lccc71/pmw/lib/bh;)Lccc71/pmw/lib/pmw_applist;

    move-result-object v0

    iget-object v1, p0, Lccc71/pmw/lib/bi;->a:Landroid/graphics/Bitmap;

    invoke-static {v0, v1}, Lccc71/pmw/lib/pmw_applist;->a(Lccc71/pmw/lib/pmw_applist;Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lccc71/pmw/lib/bi;->b:Landroid/content/Intent;

    if-nez v0, :cond_1

    iget-object v0, p0, Lccc71/pmw/lib/bi;->d:Lccc71/pmw/lib/bh;

    invoke-static {v0}, Lccc71/pmw/lib/bh;->a(Lccc71/pmw/lib/bh;)Lccc71/pmw/lib/pmw_applist;

    move-result-object v0

    invoke-static {v0}, Lccc71/pmw/lib/pmw_applist;->k(Lccc71/pmw/lib/pmw_applist;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lccc71/pmw/lib/bi;->d:Lccc71/pmw/lib/bh;

    invoke-static {v0}, Lccc71/pmw/lib/bh;->a(Lccc71/pmw/lib/bh;)Lccc71/pmw/lib/pmw_applist;

    move-result-object v0

    invoke-static {v0}, Lccc71/pmw/lib/pmw_applist;->l(Lccc71/pmw/lib/pmw_applist;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setEnabled(Z)V

    :goto_0
    iget-boolean v0, p0, Lccc71/pmw/lib/bi;->c:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lccc71/pmw/lib/bi;->d:Lccc71/pmw/lib/bh;

    invoke-static {v0}, Lccc71/pmw/lib/bh;->a(Lccc71/pmw/lib/bh;)Lccc71/pmw/lib/pmw_applist;

    move-result-object v0

    invoke-static {v0}, Lccc71/pmw/lib/pmw_applist;->j(Lccc71/pmw/lib/pmw_applist;)Landroid/widget/Button;

    move-result-object v0

    sget v1, Lccc71/pmw/lib/c;->aQ:I

    invoke-virtual {v0, v3, v1, v3, v3}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    iget-object v0, p0, Lccc71/pmw/lib/bi;->d:Lccc71/pmw/lib/bh;

    invoke-static {v0}, Lccc71/pmw/lib/bh;->a(Lccc71/pmw/lib/bh;)Lccc71/pmw/lib/pmw_applist;

    move-result-object v0

    invoke-static {v0}, Lccc71/pmw/lib/pmw_applist;->j(Lccc71/pmw/lib/pmw_applist;)Landroid/widget/Button;

    move-result-object v0

    sget v1, Lccc71/pmw/lib/g;->bZ:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    :goto_1
    return-void

    :cond_1
    iget-object v0, p0, Lccc71/pmw/lib/bi;->d:Lccc71/pmw/lib/bh;

    invoke-static {v0}, Lccc71/pmw/lib/bh;->a(Lccc71/pmw/lib/bh;)Lccc71/pmw/lib/pmw_applist;

    move-result-object v0

    invoke-static {v0}, Lccc71/pmw/lib/pmw_applist;->k(Lccc71/pmw/lib/pmw_applist;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lccc71/pmw/lib/bi;->d:Lccc71/pmw/lib/bh;

    invoke-static {v0}, Lccc71/pmw/lib/bh;->a(Lccc71/pmw/lib/bh;)Lccc71/pmw/lib/pmw_applist;

    move-result-object v0

    invoke-static {v0}, Lccc71/pmw/lib/pmw_applist;->l(Lccc71/pmw/lib/pmw_applist;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lccc71/pmw/lib/bi;->d:Lccc71/pmw/lib/bh;

    invoke-static {v0}, Lccc71/pmw/lib/bh;->a(Lccc71/pmw/lib/bh;)Lccc71/pmw/lib/pmw_applist;

    move-result-object v0

    invoke-static {v0}, Lccc71/pmw/lib/pmw_applist;->j(Lccc71/pmw/lib/pmw_applist;)Landroid/widget/Button;

    move-result-object v0

    sget v1, Lccc71/pmw/lib/c;->s:I

    invoke-virtual {v0, v3, v1, v3, v3}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    iget-object v0, p0, Lccc71/pmw/lib/bi;->d:Lccc71/pmw/lib/bh;

    invoke-static {v0}, Lccc71/pmw/lib/bh;->a(Lccc71/pmw/lib/bh;)Lccc71/pmw/lib/pmw_applist;

    move-result-object v0

    invoke-static {v0}, Lccc71/pmw/lib/pmw_applist;->j(Lccc71/pmw/lib/pmw_applist;)Landroid/widget/Button;

    move-result-object v0

    sget v1, Lccc71/pmw/lib/g;->bx:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_1
.end method
