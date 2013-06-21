.class final Limoblife/toolbox/full/ui/cl;
.super Ljava/lang/Object;


# instance fields
.field final synthetic a:Limoblife/toolbox/full/ui/ATransfer;

.field private b:Z

.field private c:J

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Landroid/graphics/drawable/Drawable;

.field private h:Z


# direct methods
.method public constructor <init>(Limoblife/toolbox/full/ui/ATransfer;Ljava/lang/String;JLandroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Limoblife/toolbox/full/ui/cl;->a:Limoblife/toolbox/full/ui/ATransfer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Limoblife/toolbox/full/ui/cl;->f:Ljava/lang/String;

    iput-object p5, p0, Limoblife/toolbox/full/ui/cl;->g:Landroid/graphics/drawable/Drawable;

    iput-object p6, p0, Limoblife/toolbox/full/ui/cl;->e:Ljava/lang/String;

    iput-wide p3, p0, Limoblife/toolbox/full/ui/cl;->c:J

    invoke-static {}, Lutil/a/a;->a()Lutil/a/a;

    invoke-static {p3, p4}, Lutil/a/a;->a(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Limoblife/toolbox/full/ui/cl;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)Landroid/view/View;
    .locals 9

    const/4 v2, -0x1

    const v1, -0x777778

    const/high16 v7, 0x3f80

    const/4 v6, 0x0

    const v5, 0x7f070118

    if-nez p1, :cond_2

    iget-object v0, p0, Limoblife/toolbox/full/ui/cl;->a:Limoblife/toolbox/full/ui/ATransfer;

    invoke-static {v0}, Limoblife/toolbox/full/ui/ATransfer;->a(Limoblife/toolbox/full/ui/ATransfer;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v3, 0x7f030046

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    new-instance v4, Limoblife/toolbox/full/ui/co;

    iget-object v0, p0, Limoblife/toolbox/full/ui/cl;->a:Limoblife/toolbox/full/ui/ATransfer;

    invoke-direct {v4, v0}, Limoblife/toolbox/full/ui/co;-><init>(Limoblife/toolbox/full/ui/ATransfer;)V

    iget-object v0, p0, Limoblife/toolbox/full/ui/cl;->a:Limoblife/toolbox/full/ui/ATransfer;

    invoke-virtual {v0, v5}, Limoblife/toolbox/full/ui/ATransfer;->getString(I)Ljava/lang/String;

    iget-boolean v0, p0, Limoblife/toolbox/full/ui/cl;->h:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Limoblife/toolbox/full/ui/cl;->a:Limoblife/toolbox/full/ui/ATransfer;

    const v2, 0x7f070119

    invoke-virtual {v0, v2}, Limoblife/toolbox/full/ui/ATransfer;->getString(I)Ljava/lang/String;

    move-result-object v0

    move v2, v1

    move v3, v1

    move-object v1, v0

    :goto_0
    const v0, 0x7f08010e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v4, Limoblife/toolbox/full/ui/co;->e:Landroid/widget/ImageView;

    iget-object v0, v4, Limoblife/toolbox/full/ui/co;->e:Landroid/widget/ImageView;

    iget-object v5, p0, Limoblife/toolbox/full/ui/cl;->g:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-boolean v0, p0, Limoblife/toolbox/full/ui/cl;->h:Z

    if-eqz v0, :cond_1

    new-instance v0, Landroid/graphics/ColorMatrix;

    invoke-direct {v0}, Landroid/graphics/ColorMatrix;-><init>()V

    invoke-virtual {v0, v6}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    iget-object v5, v4, Limoblife/toolbox/full/ui/co;->e:Landroid/widget/ImageView;

    new-instance v6, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v6, v0}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "setColorFilter(): _appName = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Limoblife/toolbox/full/ui/cl;->e:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    const v0, 0x7f08010f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v4, Limoblife/toolbox/full/ui/co;->d:Landroid/widget/TextView;

    iget-object v0, v4, Limoblife/toolbox/full/ui/co;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, v4, Limoblife/toolbox/full/ui/co;->d:Landroid/widget/TextView;

    iget-object v3, p0, Limoblife/toolbox/full/ui/cl;->e:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f080110

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v4, Limoblife/toolbox/full/ui/co;->c:Landroid/widget/TextView;

    iget-object v0, v4, Limoblife/toolbox/full/ui/co;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, v4, Limoblife/toolbox/full/ui/co;->c:Landroid/widget/TextView;

    iget-object v2, p0, Limoblife/toolbox/full/ui/cl;->d:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f080111

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v4, Limoblife/toolbox/full/ui/co;->b:Landroid/widget/TextView;

    iget-object v0, v4, Limoblife/toolbox/full/ui/co;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f080113

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, v4, Limoblife/toolbox/full/ui/co;->a:Landroid/widget/CheckBox;

    iget-object v0, v4, Limoblife/toolbox/full/ui/co;->a:Landroid/widget/CheckBox;

    iget-boolean v1, p0, Limoblife/toolbox/full/ui/cl;->b:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    invoke-virtual {p1, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_2
    return-object p1

    :cond_0
    iget-object v0, p0, Limoblife/toolbox/full/ui/cl;->a:Limoblife/toolbox/full/ui/ATransfer;

    invoke-virtual {v0, v5}, Limoblife/toolbox/full/ui/ATransfer;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    move v3, v2

    goto/16 :goto_0

    :cond_1
    new-instance v0, Landroid/graphics/ColorMatrix;

    invoke-direct {v0}, Landroid/graphics/ColorMatrix;-><init>()V

    invoke-virtual {v0, v7}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    iget-object v5, v4, Limoblife/toolbox/full/ui/co;->e:Landroid/widget/ImageView;

    new-instance v6, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v6, v0}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "setColorFilter(): _appName = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Limoblife/toolbox/full/ui/cl;->e:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Limoblife/toolbox/full/ui/co;

    iget-object v3, p0, Limoblife/toolbox/full/ui/cl;->a:Limoblife/toolbox/full/ui/ATransfer;

    invoke-virtual {v3, v5}, Limoblife/toolbox/full/ui/ATransfer;->getString(I)Ljava/lang/String;

    iget-boolean v3, p0, Limoblife/toolbox/full/ui/cl;->h:Z

    if-eqz v3, :cond_3

    iget-object v2, p0, Limoblife/toolbox/full/ui/cl;->a:Limoblife/toolbox/full/ui/ATransfer;

    const v3, 0x7f070119

    invoke-virtual {v2, v3}, Limoblife/toolbox/full/ui/ATransfer;->getString(I)Ljava/lang/String;

    move-result-object v2

    move v3, v1

    move v8, v1

    move-object v1, v2

    move v2, v8

    :goto_3
    iget-object v4, v0, Limoblife/toolbox/full/ui/co;->e:Landroid/widget/ImageView;

    iget-object v5, p0, Limoblife/toolbox/full/ui/cl;->g:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-boolean v4, p0, Limoblife/toolbox/full/ui/cl;->h:Z

    if-eqz v4, :cond_4

    new-instance v4, Landroid/graphics/ColorMatrix;

    invoke-direct {v4}, Landroid/graphics/ColorMatrix;-><init>()V

    invoke-virtual {v4, v6}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    iget-object v5, v0, Limoblife/toolbox/full/ui/co;->e:Landroid/widget/ImageView;

    new-instance v6, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v6, v4}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "setColorFilter(): _appName = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Limoblife/toolbox/full/ui/cl;->e:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    iget-object v4, v0, Limoblife/toolbox/full/ui/co;->d:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v3, v0, Limoblife/toolbox/full/ui/co;->d:Landroid/widget/TextView;

    iget-object v4, p0, Limoblife/toolbox/full/ui/cl;->e:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, v0, Limoblife/toolbox/full/ui/co;->c:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v2, v0, Limoblife/toolbox/full/ui/co;->c:Landroid/widget/TextView;

    iget-object v3, p0, Limoblife/toolbox/full/ui/cl;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v0, Limoblife/toolbox/full/ui/co;->b:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v0, Limoblife/toolbox/full/ui/co;->a:Landroid/widget/CheckBox;

    iget-boolean v1, p0, Limoblife/toolbox/full/ui/cl;->b:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto/16 :goto_2

    :cond_3
    iget-object v1, p0, Limoblife/toolbox/full/ui/cl;->a:Limoblife/toolbox/full/ui/ATransfer;

    invoke-virtual {v1, v5}, Limoblife/toolbox/full/ui/ATransfer;->getString(I)Ljava/lang/String;

    move-result-object v1

    move v3, v2

    goto :goto_3

    :cond_4
    new-instance v4, Landroid/graphics/ColorMatrix;

    invoke-direct {v4}, Landroid/graphics/ColorMatrix;-><init>()V

    invoke-virtual {v4, v7}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    iget-object v5, v0, Limoblife/toolbox/full/ui/co;->e:Landroid/widget/ImageView;

    new-instance v6, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v6, v4}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "setColorFilter(): _appName = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Limoblife/toolbox/full/ui/cl;->e:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4
.end method

.method public final a()Z
    .locals 1

    iget-boolean v0, p0, Limoblife/toolbox/full/ui/cl;->h:Z

    return v0
.end method

.method public final b()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Limoblife/toolbox/full/ui/cl;->h:Z

    return-void
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Limoblife/toolbox/full/ui/cl;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final d()V
    .locals 1

    iget-object v0, p0, Limoblife/toolbox/full/ui/cl;->g:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Limoblife/toolbox/full/ui/cl;->g:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    :cond_0
    return-void
.end method

.method public final e()V
    .locals 1

    iget-boolean v0, p0, Limoblife/toolbox/full/ui/cl;->b:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Limoblife/toolbox/full/ui/cl;->b:Z

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
