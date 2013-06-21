.class public final Limoblife/toolbox/full/ui/di;
.super Ljava/lang/Object;


# instance fields
.field final synthetic a:Limoblife/toolbox/full/ui/AWhitelist;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Landroid/graphics/drawable/Drawable;

.field private e:I

.field private f:Z


# direct methods
.method private constructor <init>(Limoblife/toolbox/full/ui/AWhitelist;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Limoblife/toolbox/full/ui/di;->a:Limoblife/toolbox/full/ui/AWhitelist;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Limoblife/toolbox/full/ui/di;->d:Landroid/graphics/drawable/Drawable;

    iput-object p3, p0, Limoblife/toolbox/full/ui/di;->c:Ljava/lang/String;

    iput-object p4, p0, Limoblife/toolbox/full/ui/di;->b:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Limoblife/toolbox/full/ui/AWhitelist;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Limoblife/toolbox/full/ui/di;-><init>(Limoblife/toolbox/full/ui/AWhitelist;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean p5, p0, Limoblife/toolbox/full/ui/di;->f:Z

    return-void
.end method

.method public constructor <init>(Limoblife/toolbox/full/ui/AWhitelist;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;ZI)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Limoblife/toolbox/full/ui/di;-><init>(Limoblife/toolbox/full/ui/AWhitelist;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;Z)V

    iput p6, p0, Limoblife/toolbox/full/ui/di;->e:I

    return-void
.end method

.method static synthetic a(Limoblife/toolbox/full/ui/di;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Limoblife/toolbox/full/ui/di;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Limoblife/toolbox/full/ui/di;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Limoblife/toolbox/full/ui/di;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Limoblife/toolbox/full/ui/di;)I
    .locals 1

    iget v0, p0, Limoblife/toolbox/full/ui/di;->e:I

    return v0
.end method


# virtual methods
.method public final a(Landroid/view/View;)Landroid/view/View;
    .locals 8

    const v7, 0x7f02017b

    const/high16 v6, 0x3f80

    const/4 v5, 0x0

    const/4 v4, -0x1

    const v3, -0x777778

    if-nez p1, :cond_4

    iget-object v0, p0, Limoblife/toolbox/full/ui/di;->a:Limoblife/toolbox/full/ui/AWhitelist;

    invoke-static {v0}, Limoblife/toolbox/full/ui/AWhitelist;->a(Limoblife/toolbox/full/ui/AWhitelist;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03004f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    new-instance v1, Limoblife/toolbox/full/ui/df;

    iget-object v0, p0, Limoblife/toolbox/full/ui/di;->a:Limoblife/toolbox/full/ui/AWhitelist;

    invoke-direct {v1, v0}, Limoblife/toolbox/full/ui/df;-><init>(Limoblife/toolbox/full/ui/AWhitelist;)V

    const v0, 0x7f080003

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Limoblife/toolbox/full/ui/df;->a:Landroid/widget/ImageView;

    iget-object v0, p0, Limoblife/toolbox/full/ui/di;->d:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, v1, Limoblife/toolbox/full/ui/df;->a:Landroid/widget/ImageView;

    iget-object v2, p0, Limoblife/toolbox/full/ui/di;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    const v0, 0x7f080010

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Limoblife/toolbox/full/ui/df;->b:Landroid/widget/TextView;

    iget-object v0, p0, Limoblife/toolbox/full/ui/di;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, v1, Limoblife/toolbox/full/ui/df;->b:Landroid/widget/TextView;

    iget-object v2, p0, Limoblife/toolbox/full/ui/di;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    const v0, 0x7f080134

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Limoblife/toolbox/full/ui/df;->c:Landroid/widget/TextView;

    iget-object v0, p0, Limoblife/toolbox/full/ui/di;->c:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, v1, Limoblife/toolbox/full/ui/df;->c:Landroid/widget/TextView;

    iget-object v2, p0, Limoblife/toolbox/full/ui/di;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    const v0, 0x7f080135

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Limoblife/toolbox/full/ui/df;->d:Landroid/widget/ImageView;

    iget-boolean v0, p0, Limoblife/toolbox/full/ui/di;->f:Z

    if-eqz v0, :cond_3

    iget-object v0, v1, Limoblife/toolbox/full/ui/df;->d:Landroid/widget/ImageView;

    const v2, 0x7f02017c

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, v1, Limoblife/toolbox/full/ui/df;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, v1, Limoblife/toolbox/full/ui/df;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    new-instance v0, Landroid/graphics/ColorMatrix;

    invoke-direct {v0}, Landroid/graphics/ColorMatrix;-><init>()V

    invoke-virtual {v0, v6}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    iget-object v2, v1, Limoblife/toolbox/full/ui/df;->a:Landroid/widget/ImageView;

    new-instance v3, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v3, v0}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    iget-object v2, v1, Limoblife/toolbox/full/ui/df;->d:Landroid/widget/ImageView;

    new-instance v3, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v3, v0}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :goto_0
    invoke-virtual {p1, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_1
    return-object p1

    :cond_3
    iget-object v0, v1, Limoblife/toolbox/full/ui/df;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, v1, Limoblife/toolbox/full/ui/df;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, v1, Limoblife/toolbox/full/ui/df;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    new-instance v0, Landroid/graphics/ColorMatrix;

    invoke-direct {v0}, Landroid/graphics/ColorMatrix;-><init>()V

    invoke-virtual {v0, v5}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    iget-object v2, v1, Limoblife/toolbox/full/ui/df;->a:Landroid/widget/ImageView;

    new-instance v3, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v3, v0}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    iget-object v2, v1, Limoblife/toolbox/full/ui/df;->d:Landroid/widget/ImageView;

    new-instance v3, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v3, v0}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Limoblife/toolbox/full/ui/df;

    iget-object v1, p0, Limoblife/toolbox/full/ui/di;->d:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_5

    iget-object v1, v0, Limoblife/toolbox/full/ui/df;->a:Landroid/widget/ImageView;

    iget-object v2, p0, Limoblife/toolbox/full/ui/di;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_5
    iget-object v1, p0, Limoblife/toolbox/full/ui/di;->b:Ljava/lang/String;

    if-eqz v1, :cond_6

    iget-object v1, v0, Limoblife/toolbox/full/ui/df;->b:Landroid/widget/TextView;

    iget-object v2, p0, Limoblife/toolbox/full/ui/di;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_6
    iget-object v1, p0, Limoblife/toolbox/full/ui/di;->c:Ljava/lang/String;

    if-eqz v1, :cond_7

    iget-object v1, v0, Limoblife/toolbox/full/ui/df;->c:Landroid/widget/TextView;

    iget-object v2, p0, Limoblife/toolbox/full/ui/di;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_7
    iget-boolean v1, p0, Limoblife/toolbox/full/ui/di;->f:Z

    if-eqz v1, :cond_8

    iget-object v1, v0, Limoblife/toolbox/full/ui/df;->d:Landroid/widget/ImageView;

    const v2, 0x7f02017c

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, v0, Limoblife/toolbox/full/ui/df;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, v0, Limoblife/toolbox/full/ui/df;->c:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    new-instance v1, Landroid/graphics/ColorMatrix;

    invoke-direct {v1}, Landroid/graphics/ColorMatrix;-><init>()V

    invoke-virtual {v1, v6}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    iget-object v2, v0, Limoblife/toolbox/full/ui/df;->a:Landroid/widget/ImageView;

    new-instance v3, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v3, v1}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    iget-object v0, v0, Limoblife/toolbox/full/ui/df;->d:Landroid/widget/ImageView;

    new-instance v2, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v2, v1}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto/16 :goto_1

    :cond_8
    iget-object v1, v0, Limoblife/toolbox/full/ui/df;->d:Landroid/widget/ImageView;

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, v0, Limoblife/toolbox/full/ui/df;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, v0, Limoblife/toolbox/full/ui/df;->c:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    new-instance v1, Landroid/graphics/ColorMatrix;

    invoke-direct {v1}, Landroid/graphics/ColorMatrix;-><init>()V

    invoke-virtual {v1, v5}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    iget-object v2, v0, Limoblife/toolbox/full/ui/df;->a:Landroid/widget/ImageView;

    new-instance v3, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v3, v1}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    iget-object v0, v0, Limoblife/toolbox/full/ui/df;->d:Landroid/widget/ImageView;

    new-instance v2, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v2, v1}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto/16 :goto_1
.end method

.method public final a()V
    .locals 1

    iget-object v0, p0, Limoblife/toolbox/full/ui/di;->d:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Limoblife/toolbox/full/ui/di;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    :cond_0
    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Limoblife/toolbox/full/ui/di;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Limoblife/toolbox/full/ui/di;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Z
    .locals 1

    iget-boolean v0, p0, Limoblife/toolbox/full/ui/di;->f:Z

    return v0
.end method

.method public final e()V
    .locals 1

    iget-boolean v0, p0, Limoblife/toolbox/full/ui/di;->f:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Limoblife/toolbox/full/ui/di;->f:Z

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
