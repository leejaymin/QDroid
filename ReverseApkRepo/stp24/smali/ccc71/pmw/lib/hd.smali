.class final Lccc71/pmw/lib/hd;
.super Lccc71/utils/android/a;
.source "SourceFile"


# instance fields
.field final synthetic a:Lccc71/pmw/lib/pmw_logcat;

.field private final synthetic b:Landroid/widget/Button;


# direct methods
.method constructor <init>(Lccc71/pmw/lib/pmw_logcat;Landroid/widget/Button;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/pmw/lib/hd;->a:Lccc71/pmw/lib/pmw_logcat;

    iput-object p2, p0, Lccc71/pmw/lib/hd;->b:Landroid/widget/Button;

    .line 303
    invoke-direct {p0}, Lccc71/utils/android/a;-><init>()V

    return-void
.end method

.method private varargs d()Ljava/lang/Void;
    .locals 3

    .prologue
    .line 308
    new-instance v0, Lccc71/pmw/b/q;

    iget-object v1, p0, Lccc71/pmw/lib/hd;->a:Lccc71/pmw/lib/pmw_logcat;

    invoke-direct {v0, v1}, Lccc71/pmw/b/q;-><init>(Landroid/content/Context;)V

    .line 309
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lccc71/pmw/b/q;->a(ZZ)V

    .line 313
    :try_start_0
    iget-object v1, p0, Lccc71/pmw/lib/hd;->a:Lccc71/pmw/lib/pmw_logcat;

    iget-object v2, p0, Lccc71/pmw/lib/hd;->a:Lccc71/pmw/lib/pmw_logcat;

    invoke-static {v2}, Lccc71/pmw/lib/pmw_logcat;->f(Lccc71/pmw/lib/pmw_logcat;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lccc71/pmw/b/q;->b(I)Lccc71/pmw/b/p;

    move-result-object v2

    invoke-static {v1, v2}, Lccc71/pmw/lib/pmw_logcat;->a(Lccc71/pmw/lib/pmw_logcat;Lccc71/pmw/b/p;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 320
    :goto_0
    iget-object v1, p0, Lccc71/pmw/lib/hd;->a:Lccc71/pmw/lib/pmw_logcat;

    invoke-static {v1}, Lccc71/pmw/lib/pmw_logcat;->e(Lccc71/pmw/lib/pmw_logcat;)Lccc71/pmw/b/p;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccc71/pmw/b/q;->b(Lccc71/pmw/b/p;)Lccc71/pmw/b/p;

    .line 322
    const-string v0, "process_monitor_widget"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Got a process ID: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lccc71/pmw/lib/hd;->a:Lccc71/pmw/lib/pmw_logcat;

    invoke-static {v2}, Lccc71/pmw/lib/pmw_logcat;->f(Lccc71/pmw/lib/pmw_logcat;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " process @ "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lccc71/pmw/lib/hd;->a:Lccc71/pmw/lib/pmw_logcat;

    invoke-static {v2}, Lccc71/pmw/lib/pmw_logcat;->e(Lccc71/pmw/lib/pmw_logcat;)Lccc71/pmw/b/p;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    const/4 v0, 0x0

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method protected final varargs synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-direct {p0}, Lccc71/pmw/lib/hd;->d()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic a(Ljava/lang/Object;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 1
    check-cast p1, Ljava/lang/Void;

    invoke-super {p0, p1}, Lccc71/utils/android/a;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lccc71/pmw/lib/hd;->a:Lccc71/pmw/lib/pmw_logcat;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_logcat;->e(Lccc71/pmw/lib/pmw_logcat;)Lccc71/pmw/b/p;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lccc71/pmw/lib/hd;->a:Lccc71/pmw/lib/pmw_logcat;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_logcat;->e(Lccc71/pmw/lib/pmw_logcat;)Lccc71/pmw/b/p;

    move-result-object v0

    iget-object v0, v0, Lccc71/pmw/b/p;->k:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    const/high16 v0, 0x41c8

    iget-object v1, p0, Lccc71/pmw/lib/hd;->a:Lccc71/pmw/lib/pmw_logcat;

    invoke-virtual {v1}, Lccc71/pmw/lib/pmw_logcat;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    iget-object v1, p0, Lccc71/pmw/lib/hd;->a:Lccc71/pmw/lib/pmw_logcat;

    invoke-virtual {v1}, Lccc71/pmw/lib/pmw_logcat;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iget-object v1, p0, Lccc71/pmw/lib/hd;->a:Lccc71/pmw/lib/pmw_logcat;

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v0, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {v1, v2}, Lccc71/pmw/lib/pmw_logcat;->a(Lccc71/pmw/lib/pmw_logcat;Landroid/graphics/Bitmap;)V

    new-instance v1, Landroid/graphics/Canvas;

    iget-object v2, p0, Lccc71/pmw/lib/hd;->a:Lccc71/pmw/lib/pmw_logcat;

    invoke-static {v2}, Lccc71/pmw/lib/pmw_logcat;->l(Lccc71/pmw/lib/pmw_logcat;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iget-object v2, p0, Lccc71/pmw/lib/hd;->a:Lccc71/pmw/lib/pmw_logcat;

    invoke-static {v2}, Lccc71/pmw/lib/pmw_logcat;->e(Lccc71/pmw/lib/pmw_logcat;)Lccc71/pmw/b/p;

    move-result-object v2

    iget-object v2, v2, Lccc71/pmw/b/p;->k:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v4, v4, v0, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lccc71/pmw/lib/hd;->a:Lccc71/pmw/lib/pmw_logcat;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_logcat;->e(Lccc71/pmw/lib/pmw_logcat;)Lccc71/pmw/b/p;

    move-result-object v0

    iget-object v0, v0, Lccc71/pmw/b/p;->k:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lccc71/pmw/lib/hd;->a:Lccc71/pmw/lib/pmw_logcat;

    invoke-virtual {v0}, Lccc71/pmw/lib/pmw_logcat;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lccc71/pmw/lib/hd;->b:Landroid/widget/Button;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lccc71/pmw/lib/hd;->a:Lccc71/pmw/lib/pmw_logcat;

    invoke-static {v2}, Lccc71/pmw/lib/pmw_logcat;->l(Lccc71/pmw/lib/pmw_logcat;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1, v3, v3, v3}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :goto_0
    iget-object v0, p0, Lccc71/pmw/lib/hd;->b:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    return-void

    :cond_0
    iget-object v0, p0, Lccc71/pmw/lib/hd;->b:Landroid/widget/Button;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lccc71/pmw/lib/hd;->a:Lccc71/pmw/lib/pmw_logcat;

    invoke-static {v2}, Lccc71/pmw/lib/pmw_logcat;->l(Lccc71/pmw/lib/pmw_logcat;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v3, v1, v3, v3}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lccc71/pmw/lib/hd;->b:Landroid/widget/Button;

    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/widget/Button;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method
