.class final Lccc71/pmw/lib/kb;
.super Lccc71/utils/android/a;
.source "SourceFile"


# instance fields
.field final synthetic a:Lccc71/pmw/lib/pmw_process;

.field private final synthetic b:Ljava/lang/String;

.field private final synthetic c:Landroid/widget/Button;


# direct methods
.method constructor <init>(Lccc71/pmw/lib/pmw_process;Ljava/lang/String;Landroid/widget/Button;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/pmw/lib/kb;->a:Lccc71/pmw/lib/pmw_process;

    iput-object p2, p0, Lccc71/pmw/lib/kb;->b:Ljava/lang/String;

    iput-object p3, p0, Lccc71/pmw/lib/kb;->c:Landroid/widget/Button;

    .line 906
    invoke-direct {p0}, Lccc71/utils/android/a;-><init>()V

    return-void
.end method

.method static synthetic a(Lccc71/pmw/lib/kb;)Lccc71/pmw/lib/pmw_process;
    .locals 1
    .parameter

    .prologue
    .line 906
    iget-object v0, p0, Lccc71/pmw/lib/kb;->a:Lccc71/pmw/lib/pmw_process;

    return-object v0
.end method


# virtual methods
.method protected final varargs synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .parameter

    .prologue
    .line 1
    iget-object v0, p0, Lccc71/pmw/lib/kb;->a:Lccc71/pmw/lib/pmw_process;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_monitor;->a(Landroid/content/Context;)Lccc71/pmw/b/q;

    move-result-object v0

    iget-object v1, p0, Lccc71/pmw/lib/kb;->b:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lccc71/pmw/lib/kb;->a:Lccc71/pmw/lib/pmw_process;

    iget-object v2, p0, Lccc71/pmw/lib/kb;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lccc71/pmw/b/q;->a(Ljava/lang/String;)Lccc71/pmw/b/p;

    move-result-object v0

    invoke-static {v1, v0}, Lccc71/pmw/lib/pmw_process;->a(Lccc71/pmw/lib/pmw_process;Lccc71/pmw/b/p;)V

    if-eqz v0, :cond_0

    iget-object v1, p0, Lccc71/pmw/lib/kb;->a:Lccc71/pmw/lib/pmw_process;

    iget-object v0, v0, Lccc71/pmw/b/p;->c:Ljava/lang/String;

    invoke-static {v1, v0}, Lccc71/pmw/lib/pmw_process;->b(Lccc71/pmw/lib/pmw_process;Ljava/lang/String;)V

    :cond_0
    :goto_0
    const/4 v0, 0x0

    return-object v0

    :cond_1
    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lccc71/pmw/b/q;->a(ZZ)V

    iget-object v1, p0, Lccc71/pmw/lib/kb;->a:Lccc71/pmw/lib/pmw_process;

    invoke-static {v1}, Lccc71/pmw/lib/pmw_process;->i(Lccc71/pmw/lib/pmw_process;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lccc71/pmw/lib/kb;->a:Lccc71/pmw/lib/pmw_process;

    invoke-virtual {v0, v1}, Lccc71/pmw/b/q;->a(Ljava/lang/String;)Lccc71/pmw/b/p;

    move-result-object v3

    invoke-static {v2, v3}, Lccc71/pmw/lib/pmw_process;->a(Lccc71/pmw/lib/pmw_process;Lccc71/pmw/b/p;)V

    if-eqz v3, :cond_0

    iget-object v2, p0, Lccc71/pmw/lib/kb;->a:Lccc71/pmw/lib/pmw_process;

    invoke-virtual {v0, v3}, Lccc71/pmw/b/q;->b(Lccc71/pmw/b/p;)Lccc71/pmw/b/p;

    move-result-object v0

    invoke-static {v2, v0}, Lccc71/pmw/lib/pmw_process;->a(Lccc71/pmw/lib/pmw_process;Lccc71/pmw/b/p;)V

    iput-object v1, v0, Lccc71/pmw/b/p;->c:Ljava/lang/String;

    iget v1, v0, Lccc71/pmw/b/p;->a:I

    if-nez v1, :cond_0

    iget-object v1, v0, Lccc71/pmw/b/p;->b:Ljava/lang/String;

    if-nez v1, :cond_0

    iget-object v1, p0, Lccc71/pmw/lib/kb;->a:Lccc71/pmw/lib/pmw_process;

    invoke-static {v1, v0}, Lccc71/pmw/b/q;->a(Landroid/content/Context;Lccc71/pmw/b/p;)V

    goto :goto_0
.end method

.method protected final synthetic a(Ljava/lang/Object;)V
    .locals 7
    .parameter

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 1
    check-cast p1, Ljava/lang/Void;

    invoke-super {p0, p1}, Lccc71/utils/android/a;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lccc71/pmw/lib/kb;->a:Lccc71/pmw/lib/pmw_process;

    invoke-virtual {v0}, Lccc71/pmw/lib/pmw_process;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lccc71/pmw/lib/kb;->a:Lccc71/pmw/lib/pmw_process;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_process;->a(Lccc71/pmw/lib/pmw_process;)Lccc71/pmw/b/p;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lccc71/pmw/lib/kb;->a:Lccc71/pmw/lib/pmw_process;

    invoke-virtual {v0}, Lccc71/pmw/lib/pmw_process;->finish()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lccc71/pmw/lib/kb;->a:Lccc71/pmw/lib/pmw_process;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_process;->a(Lccc71/pmw/lib/pmw_process;)Lccc71/pmw/b/p;

    move-result-object v0

    iget v0, v0, Lccc71/pmw/b/p;->a:I

    if-nez v0, :cond_2

    iget-object v0, p0, Lccc71/pmw/lib/kb;->a:Lccc71/pmw/lib/pmw_process;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_process;->a(Lccc71/pmw/lib/pmw_process;)Lccc71/pmw/b/p;

    move-result-object v0

    iget-object v0, v0, Lccc71/pmw/b/p;->b:Ljava/lang/String;

    if-nez v0, :cond_2

    iget-object v0, p0, Lccc71/pmw/lib/kb;->a:Lccc71/pmw/lib/pmw_process;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_process;->j(Lccc71/pmw/lib/pmw_process;)V

    :cond_2
    iget-object v0, p0, Lccc71/pmw/lib/kb;->a:Lccc71/pmw/lib/pmw_process;

    invoke-virtual {v0}, Lccc71/pmw/lib/pmw_process;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lccc71/pmw/lib/kb;->a:Lccc71/pmw/lib/pmw_process;

    invoke-static {v1}, Lccc71/pmw/lib/pmw_process;->a(Lccc71/pmw/lib/pmw_process;)Lccc71/pmw/b/p;

    move-result-object v1

    iget-object v1, v1, Lccc71/pmw/b/p;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lccc71/pmw/lib/kb;->a:Lccc71/pmw/lib/pmw_process;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_process;->e(Lccc71/pmw/lib/pmw_process;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setVisibility(I)V

    :cond_3
    iget-object v0, p0, Lccc71/pmw/lib/kb;->a:Lccc71/pmw/lib/pmw_process;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_process;->a(Lccc71/pmw/lib/pmw_process;)Lccc71/pmw/b/p;

    move-result-object v0

    iget-boolean v0, v0, Lccc71/pmw/b/p;->g:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lccc71/pmw/lib/kb;->a:Lccc71/pmw/lib/pmw_process;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_process;->k(Lccc71/pmw/lib/pmw_process;)V

    :cond_4
    :goto_1
    iget-object v0, p0, Lccc71/pmw/lib/kb;->a:Lccc71/pmw/lib/pmw_process;

    sget v1, Lccc71/pmw/lib/d;->fW:I

    invoke-virtual {v0, v1}, Lccc71/pmw/lib/pmw_process;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lccc71/pmw/lib/kb;->a:Lccc71/pmw/lib/pmw_process;

    invoke-static {v1}, Lccc71/pmw/lib/pmw_process;->a(Lccc71/pmw/lib/pmw_process;)Lccc71/pmw/b/p;

    move-result-object v1

    iget-object v1, v1, Lccc71/pmw/b/p;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lccc71/pmw/lib/kb;->a:Lccc71/pmw/lib/pmw_process;

    sget v1, Lccc71/pmw/lib/d;->fZ:I

    invoke-virtual {v0, v1}, Lccc71/pmw/lib/pmw_process;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lccc71/pmw/lib/kb;->a:Lccc71/pmw/lib/pmw_process;

    invoke-static {v1}, Lccc71/pmw/lib/pmw_process;->a(Lccc71/pmw/lib/pmw_process;)Lccc71/pmw/b/p;

    move-result-object v1

    iget-object v1, v1, Lccc71/pmw/b/p;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lccc71/pmw/lib/kb;->a:Lccc71/pmw/lib/pmw_process;

    invoke-static {v1}, Lccc71/pmw/lib/pmw_process;->a(Lccc71/pmw/lib/pmw_process;)Lccc71/pmw/b/p;

    move-result-object v1

    iget-object v1, v1, Lccc71/pmw/b/p;->c:Ljava/lang/String;

    invoke-static {v1}, Lccc71/pmw/b/q;->d(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lccc71/pmw/lib/kb;->a:Lccc71/pmw/lib/pmw_process;

    invoke-static {v1}, Lccc71/pmw/lib/pmw_process;->a(Lccc71/pmw/lib/pmw_process;)Lccc71/pmw/b/p;

    move-result-object v1

    iget-boolean v1, v1, Lccc71/pmw/b/p;->g:Z

    if-eqz v1, :cond_e

    :cond_5
    sget v1, Lccc71/pmw/lib/c;->p:I

    invoke-virtual {v0, v4, v4, v1, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    :goto_2
    iget-object v0, p0, Lccc71/pmw/lib/kb;->a:Lccc71/pmw/lib/pmw_process;

    sget v1, Lccc71/pmw/lib/d;->gd:I

    invoke-virtual {v0, v1}, Lccc71/pmw/lib/pmw_process;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lccc71/pmw/lib/kb;->a:Lccc71/pmw/lib/pmw_process;

    invoke-static {v1}, Lccc71/pmw/lib/pmw_process;->a(Lccc71/pmw/lib/pmw_process;)Lccc71/pmw/b/p;

    move-result-object v1

    iget-object v1, v1, Lccc71/pmw/b/p;->c:Ljava/lang/String;

    iget-object v2, p0, Lccc71/pmw/lib/kb;->a:Lccc71/pmw/lib/pmw_process;

    invoke-static {v2}, Lccc71/pmw/lib/pmw_process;->a(Lccc71/pmw/lib/pmw_process;)Lccc71/pmw/b/p;

    move-result-object v2

    iget-object v2, v2, Lccc71/pmw/b/p;->e:Ljava/lang/String;

    if-eq v1, v2, :cond_f

    iget-object v1, p0, Lccc71/pmw/lib/kb;->a:Lccc71/pmw/lib/pmw_process;

    invoke-static {v1}, Lccc71/pmw/lib/pmw_process;->a(Lccc71/pmw/lib/pmw_process;)Lccc71/pmw/b/p;

    move-result-object v1

    iget-object v1, v1, Lccc71/pmw/b/p;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_3
    iget-object v0, p0, Lccc71/pmw/lib/kb;->a:Lccc71/pmw/lib/pmw_process;

    sget v1, Lccc71/pmw/lib/d;->iD:I

    invoke-virtual {v0, v1}, Lccc71/pmw/lib/pmw_process;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lccc71/pmw/lib/kb;->a:Lccc71/pmw/lib/pmw_process;

    invoke-static {v1}, Lccc71/pmw/lib/pmw_process;->a(Lccc71/pmw/lib/pmw_process;)Lccc71/pmw/b/p;

    move-result-object v1

    iget-object v1, v1, Lccc71/pmw/b/p;->f:Ljava/lang/String;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lccc71/pmw/lib/kb;->a:Lccc71/pmw/lib/pmw_process;

    invoke-static {v1}, Lccc71/pmw/lib/pmw_process;->a(Lccc71/pmw/lib/pmw_process;)Lccc71/pmw/b/p;

    move-result-object v1

    iget-object v1, v1, Lccc71/pmw/b/p;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_6
    iget-object v0, p0, Lccc71/pmw/lib/kb;->a:Lccc71/pmw/lib/pmw_process;

    sget v1, Lccc71/pmw/lib/d;->fY:I

    invoke-virtual {v0, v1}, Lccc71/pmw/lib/pmw_process;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lccc71/pmw/lib/kb;->a:Lccc71/pmw/lib/pmw_process;

    invoke-static {v1}, Lccc71/pmw/lib/pmw_process;->a(Lccc71/pmw/lib/pmw_process;)Lccc71/pmw/b/p;

    move-result-object v1

    iget-object v1, v1, Lccc71/pmw/b/p;->k:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_10

    iget-object v1, p0, Lccc71/pmw/lib/kb;->a:Lccc71/pmw/lib/pmw_process;

    invoke-static {v1}, Lccc71/pmw/lib/pmw_process;->a(Lccc71/pmw/lib/pmw_process;)Lccc71/pmw/b/p;

    move-result-object v1

    iget-object v1, v1, Lccc71/pmw/b/p;->k:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_4
    iget-object v0, p0, Lccc71/pmw/lib/kb;->a:Lccc71/pmw/lib/pmw_process;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_process;->a(Lccc71/pmw/lib/pmw_process;)Lccc71/pmw/b/p;

    move-result-object v0

    iget-object v0, v0, Lccc71/pmw/b/p;->k:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_11

    const/high16 v0, 0x41c8

    iget-object v1, p0, Lccc71/pmw/lib/kb;->a:Lccc71/pmw/lib/pmw_process;

    invoke-virtual {v1}, Lccc71/pmw/lib/pmw_process;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    iget-object v1, p0, Lccc71/pmw/lib/kb;->a:Lccc71/pmw/lib/pmw_process;

    invoke-virtual {v1}, Lccc71/pmw/lib/pmw_process;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iget-object v1, p0, Lccc71/pmw/lib/kb;->a:Lccc71/pmw/lib/pmw_process;

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v0, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {v1, v2}, Lccc71/pmw/lib/pmw_process;->a(Lccc71/pmw/lib/pmw_process;Landroid/graphics/Bitmap;)V

    new-instance v1, Landroid/graphics/Canvas;

    iget-object v2, p0, Lccc71/pmw/lib/kb;->a:Lccc71/pmw/lib/pmw_process;

    invoke-static {v2}, Lccc71/pmw/lib/pmw_process;->l(Lccc71/pmw/lib/pmw_process;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iget-object v2, p0, Lccc71/pmw/lib/kb;->a:Lccc71/pmw/lib/pmw_process;

    invoke-static {v2}, Lccc71/pmw/lib/pmw_process;->a(Lccc71/pmw/lib/pmw_process;)Lccc71/pmw/b/p;

    move-result-object v2

    iget-object v2, v2, Lccc71/pmw/b/p;->k:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v4, v4, v0, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lccc71/pmw/lib/kb;->a:Lccc71/pmw/lib/pmw_process;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_process;->a(Lccc71/pmw/lib/pmw_process;)Lccc71/pmw/b/p;

    move-result-object v0

    iget-object v0, v0, Lccc71/pmw/b/p;->k:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lccc71/pmw/lib/kb;->c:Landroid/widget/Button;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lccc71/pmw/lib/kb;->a:Lccc71/pmw/lib/pmw_process;

    invoke-static {v2}, Lccc71/pmw/lib/pmw_process;->l(Lccc71/pmw/lib/pmw_process;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v5, v1, v5, v5}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :goto_5
    iget-object v0, p0, Lccc71/pmw/lib/kb;->a:Lccc71/pmw/lib/pmw_process;

    sget v1, Lccc71/pmw/lib/d;->ix:I

    invoke-virtual {v0, v1}, Lccc71/pmw/lib/pmw_process;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lccc71/pmw/lib/kb;->a:Lccc71/pmw/lib/pmw_process;

    sget v1, Lccc71/pmw/lib/d;->aB:I

    invoke-virtual {v0, v1}, Lccc71/pmw/lib/pmw_process;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lccc71/pmw/lib/kb;->a:Lccc71/pmw/lib/pmw_process;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_process;->a(Lccc71/pmw/lib/pmw_process;)Lccc71/pmw/b/p;

    move-result-object v0

    iget-object v0, v0, Lccc71/pmw/b/p;->c:Ljava/lang/String;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lccc71/pmw/lib/kb;->a:Lccc71/pmw/lib/pmw_process;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_process;->a(Lccc71/pmw/lib/pmw_process;)Lccc71/pmw/b/p;

    move-result-object v0

    iget-boolean v0, v0, Lccc71/pmw/b/p;->g:Z

    if-nez v0, :cond_7

    iget-object v0, p0, Lccc71/pmw/lib/kb;->a:Lccc71/pmw/lib/pmw_process;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_process;->m(Lccc71/pmw/lib/pmw_process;)V

    :cond_7
    :goto_6
    iget-object v0, p0, Lccc71/pmw/lib/kb;->a:Lccc71/pmw/lib/pmw_process;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_process;->n(Lccc71/pmw/lib/pmw_process;)V

    invoke-static {}, Lccc71/pmw/lib/pmw_recorder;->a()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lccc71/pmw/lib/kb;->a:Lccc71/pmw/lib/pmw_process;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_settings;->af(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lccc71/pmw/lib/kb;->a:Lccc71/pmw/lib/pmw_process;

    sget v1, Lccc71/pmw/lib/d;->fM:I

    invoke-virtual {v0, v1}, Lccc71/pmw/lib/pmw_process;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lccc71/pmw/lib/kb;->a:Lccc71/pmw/lib/pmw_process;

    iget-object v0, p0, Lccc71/pmw/lib/kb;->a:Lccc71/pmw/lib/pmw_process;

    sget v2, Lccc71/pmw/lib/d;->fN:I

    invoke-virtual {v0, v2}, Lccc71/pmw/lib/pmw_process;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lccc71/utils/ccc71_multi_graph_view;

    invoke-static {v1, v0}, Lccc71/pmw/lib/pmw_process;->a(Lccc71/pmw/lib/pmw_process;Lccc71/utils/ccc71_multi_graph_view;)V

    iget-object v0, p0, Lccc71/pmw/lib/kb;->a:Lccc71/pmw/lib/pmw_process;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_process;->g(Lccc71/pmw/lib/pmw_process;)Lccc71/utils/ccc71_multi_graph_view;

    move-result-object v0

    invoke-virtual {v0, v4}, Lccc71/utils/ccc71_multi_graph_view;->setVisibility(I)V

    iget-object v0, p0, Lccc71/pmw/lib/kb;->a:Lccc71/pmw/lib/pmw_process;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_process;->g(Lccc71/pmw/lib/pmw_process;)Lccc71/utils/ccc71_multi_graph_view;

    move-result-object v0

    iget-object v1, p0, Lccc71/pmw/lib/kb;->a:Lccc71/pmw/lib/pmw_process;

    invoke-static {v1}, Lccc71/pmw/lib/pmw_process;->o(Lccc71/pmw/lib/pmw_process;)Lccc71/utils/v;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccc71/utils/ccc71_multi_graph_view;->setOnEvent(Lccc71/utils/v;)V

    iget-object v0, p0, Lccc71/pmw/lib/kb;->a:Lccc71/pmw/lib/pmw_process;

    iget-object v1, p0, Lccc71/pmw/lib/kb;->a:Lccc71/pmw/lib/pmw_process;

    invoke-static {v1}, Lccc71/pmw/lib/pmw_process;->g(Lccc71/pmw/lib/pmw_process;)Lccc71/utils/ccc71_multi_graph_view;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccc71/pmw/lib/pmw_process;->registerForContextMenu(Landroid/view/View;)V

    iget-object v0, p0, Lccc71/pmw/lib/kb;->a:Lccc71/pmw/lib/pmw_process;

    invoke-virtual {v0}, Lccc71/pmw/lib/pmw_process;->g()V

    :cond_8
    iget-object v0, p0, Lccc71/pmw/lib/kb;->a:Lccc71/pmw/lib/pmw_process;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_process;->p(Lccc71/pmw/lib/pmw_process;)Landroid/os/Handler;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lccc71/pmw/lib/kb;->a:Lccc71/pmw/lib/pmw_process;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_process;->p(Lccc71/pmw/lib/pmw_process;)Landroid/os/Handler;

    move-result-object v0

    iget-object v2, p0, Lccc71/pmw/lib/kb;->a:Lccc71/pmw/lib/pmw_process;

    new-instance v3, Lccc71/pmw/lib/kc;

    invoke-direct {v3, p0}, Lccc71/pmw/lib/kc;-><init>(Lccc71/pmw/lib/kb;)V

    invoke-static {v2, v3}, Lccc71/pmw/lib/pmw_process;->a(Lccc71/pmw/lib/pmw_process;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_9
    invoke-static {}, Lccc71/pmw/lib/pmw_process;->i()Landroid/content/pm/PackageManager;

    move-result-object v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lccc71/pmw/lib/kb;->a:Lccc71/pmw/lib/pmw_process;

    invoke-virtual {v0}, Lccc71/pmw/lib/pmw_process;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {v0}, Lccc71/pmw/lib/pmw_process;->a(Landroid/content/pm/PackageManager;)V

    :cond_a
    iget-object v0, p0, Lccc71/pmw/lib/kb;->a:Lccc71/pmw/lib/pmw_process;

    iget-object v1, p0, Lccc71/pmw/lib/kb;->a:Lccc71/pmw/lib/pmw_process;

    invoke-static {v1}, Lccc71/pmw/lib/pmw_process;->a(Lccc71/pmw/lib/pmw_process;)Lccc71/pmw/b/p;

    move-result-object v1

    iget-object v1, v1, Lccc71/pmw/b/p;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lccc71/pmw/a/d;->a(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lccc71/pmw/lib/kb;->a:Lccc71/pmw/lib/pmw_process;

    iget-object v1, p0, Lccc71/pmw/lib/kb;->a:Lccc71/pmw/lib/pmw_process;

    invoke-static {v1}, Lccc71/pmw/lib/pmw_process;->a(Lccc71/pmw/lib/pmw_process;)Lccc71/pmw/b/p;

    move-result-object v1

    iget-object v1, v1, Lccc71/pmw/b/p;->d:Ljava/lang/String;

    invoke-static {v0, v1, v5}, Lccc71/pmw/a/d;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lccc71/pmw/lib/kb;->a:Lccc71/pmw/lib/pmw_process;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_process;->e(Lccc71/pmw/lib/pmw_process;)Landroid/widget/Button;

    move-result-object v0

    sget v1, Lccc71/pmw/lib/c;->aQ:I

    invoke-virtual {v0, v4, v1, v4, v4}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    iget-object v0, p0, Lccc71/pmw/lib/kb;->a:Lccc71/pmw/lib/pmw_process;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_process;->e(Lccc71/pmw/lib/pmw_process;)Landroid/widget/Button;

    move-result-object v0

    sget v1, Lccc71/pmw/lib/g;->bZ:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    :goto_7
    :try_start_1
    invoke-static {}, Lccc71/pmw/lib/pmw_process;->i()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lccc71/pmw/lib/kb;->a:Lccc71/pmw/lib/pmw_process;

    invoke-static {v1}, Lccc71/pmw/lib/pmw_process;->a(Lccc71/pmw/lib/pmw_process;)Lccc71/pmw/b/p;

    move-result-object v1

    iget-object v1, v1, Lccc71/pmw/b/p;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lccc71/pmw/lib/kb;->c:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_b
    :goto_8
    iget-object v0, p0, Lccc71/pmw/lib/kb;->a:Lccc71/pmw/lib/pmw_process;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_process;->a(Lccc71/pmw/lib/pmw_process;)Lccc71/pmw/b/p;

    move-result-object v0

    iget-object v0, v0, Lccc71/pmw/b/p;->c:Ljava/lang/String;

    invoke-static {v0}, Lccc71/pmw/b/q;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lccc71/pmw/lib/kb;->a:Lccc71/pmw/lib/pmw_process;

    sget v1, Lccc71/pmw/lib/d;->W:I

    invoke-virtual {v0, v1}, Lccc71/pmw/lib/pmw_process;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lccc71/pmw/lib/kb;->a:Lccc71/pmw/lib/pmw_process;

    sget v1, Lccc71/pmw/lib/d;->X:I

    invoke-virtual {v0, v1}, Lccc71/pmw/lib/pmw_process;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    :cond_c
    iget-object v0, p0, Lccc71/pmw/lib/kb;->a:Lccc71/pmw/lib/pmw_process;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_process;->e(Lccc71/pmw/lib/pmw_process;)Landroid/widget/Button;

    move-result-object v0

    sget v1, Lccc71/pmw/lib/c;->s:I

    invoke-virtual {v0, v4, v1, v4, v4}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    iget-object v0, p0, Lccc71/pmw/lib/kb;->a:Lccc71/pmw/lib/pmw_process;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_process;->e(Lccc71/pmw/lib/pmw_process;)Landroid/widget/Button;

    move-result-object v0

    sget v1, Lccc71/pmw/lib/g;->bx:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_7

    :cond_d
    iget-object v0, p0, Lccc71/pmw/lib/kb;->a:Lccc71/pmw/lib/pmw_process;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_process;->e(Lccc71/pmw/lib/pmw_process;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_7

    :catch_0
    move-exception v0

    iget-object v0, p0, Lccc71/pmw/lib/kb;->c:Landroid/widget/Button;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_8

    :cond_e
    sget v1, Lccc71/pmw/lib/c;->L:I

    invoke-virtual {v0, v4, v4, v1, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto/16 :goto_2

    :cond_f
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_3

    :cond_10
    sget v1, Lccc71/pmw/lib/c;->x:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_4

    :cond_11
    iget-object v0, p0, Lccc71/pmw/lib/kb;->c:Landroid/widget/Button;

    invoke-virtual {v0, v5, v5, v5, v5}, Landroid/widget/Button;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_5

    :cond_12
    iget-object v0, p0, Lccc71/pmw/lib/kb;->a:Lccc71/pmw/lib/pmw_process;

    invoke-virtual {v0}, Lccc71/pmw/lib/pmw_process;->finish()V

    goto/16 :goto_6
.end method
