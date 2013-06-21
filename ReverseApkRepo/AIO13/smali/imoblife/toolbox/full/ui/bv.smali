.class final Limoblife/toolbox/full/ui/bv;
.super Ljava/lang/Object;


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Landroid/graphics/drawable/Drawable;

.field d:I

.field final synthetic e:Limoblife/toolbox/full/ui/AStartupAdd;

.field private f:Z


# direct methods
.method public constructor <init>(Limoblife/toolbox/full/ui/AStartupAdd;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Limoblife/toolbox/full/ui/bv;->e:Limoblife/toolbox/full/ui/AStartupAdd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Limoblife/toolbox/full/ui/bv;->d:I

    iput-object p2, p0, Limoblife/toolbox/full/ui/bv;->c:Landroid/graphics/drawable/Drawable;

    iput-object p3, p0, Limoblife/toolbox/full/ui/bv;->b:Ljava/lang/String;

    iput-object p4, p0, Limoblife/toolbox/full/ui/bv;->a:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Limoblife/toolbox/full/ui/bv;)Z
    .locals 1

    iget-boolean v0, p0, Limoblife/toolbox/full/ui/bv;->f:Z

    return v0
.end method


# virtual methods
.method public final a(Landroid/view/View;)Landroid/view/View;
    .locals 3

    if-nez p1, :cond_0

    iget-object v0, p0, Limoblife/toolbox/full/ui/bv;->e:Limoblife/toolbox/full/ui/AStartupAdd;

    invoke-static {v0}, Limoblife/toolbox/full/ui/AStartupAdd;->a(Limoblife/toolbox/full/ui/AStartupAdd;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030002

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    new-instance v1, Limoblife/toolbox/full/ui/bw;

    invoke-direct {v1}, Limoblife/toolbox/full/ui/bw;-><init>()V

    const v0, 0x7f080003

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Limoblife/toolbox/full/ui/bw;->b:Landroid/widget/ImageView;

    iget-object v0, v1, Limoblife/toolbox/full/ui/bw;->b:Landroid/widget/ImageView;

    iget-object v2, p0, Limoblife/toolbox/full/ui/bv;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const v0, 0x7f080010

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Limoblife/toolbox/full/ui/bw;->a:Landroid/widget/TextView;

    iget-object v0, v1, Limoblife/toolbox/full/ui/bw;->a:Landroid/widget/TextView;

    iget-object v2, p0, Limoblife/toolbox/full/ui/bv;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f080011

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, v1, Limoblife/toolbox/full/ui/bw;->c:Landroid/widget/CheckBox;

    iget-object v0, v1, Limoblife/toolbox/full/ui/bw;->c:Landroid/widget/CheckBox;

    iget-boolean v2, p0, Limoblife/toolbox/full/ui/bv;->f:Z

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_0
    return-object p1

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Limoblife/toolbox/full/ui/bw;

    iget-object v1, v0, Limoblife/toolbox/full/ui/bw;->b:Landroid/widget/ImageView;

    iget-object v2, p0, Limoblife/toolbox/full/ui/bv;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, v0, Limoblife/toolbox/full/ui/bw;->a:Landroid/widget/TextView;

    iget-object v2, p0, Limoblife/toolbox/full/ui/bv;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v0, Limoblife/toolbox/full/ui/bw;->c:Landroid/widget/CheckBox;

    iget-boolean v1, p0, Limoblife/toolbox/full/ui/bv;->f:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0
.end method

.method public final a(Z)V
    .locals 0

    iput-boolean p1, p0, Limoblife/toolbox/full/ui/bv;->f:Z

    return-void
.end method

.method public final a()Z
    .locals 1

    iget-boolean v0, p0, Limoblife/toolbox/full/ui/bv;->f:Z

    return v0
.end method

.method public final b()V
    .locals 1

    iget-boolean v0, p0, Limoblife/toolbox/full/ui/bv;->f:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Limoblife/toolbox/full/ui/bv;->f:Z

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
