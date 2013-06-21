.class final Limoblife/toolbox/full/ui/ct;
.super Ljava/lang/Object;


# instance fields
.field final synthetic a:Limoblife/toolbox/full/ui/ATrash;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Landroid/graphics/drawable/Drawable;

.field private e:Ljava/lang/String;

.field private f:J

.field private g:Z


# direct methods
.method public constructor <init>(Limoblife/toolbox/full/ui/ATrash;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 1

    iput-object p1, p0, Limoblife/toolbox/full/ui/ct;->a:Limoblife/toolbox/full/ui/ATrash;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Limoblife/toolbox/full/ui/ct;->b:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Limoblife/toolbox/full/ui/ct;->d:Landroid/graphics/drawable/Drawable;

    iput-object p3, p0, Limoblife/toolbox/full/ui/ct;->c:Ljava/lang/String;

    iput-wide p5, p0, Limoblife/toolbox/full/ui/ct;->f:J

    iput-object p4, p0, Limoblife/toolbox/full/ui/ct;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)Landroid/view/View;
    .locals 4

    if-nez p1, :cond_1

    iget-object v0, p0, Limoblife/toolbox/full/ui/ct;->a:Limoblife/toolbox/full/ui/ATrash;

    invoke-static {v0}, Limoblife/toolbox/full/ui/ATrash;->a(Limoblife/toolbox/full/ui/ATrash;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030049

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    new-instance v1, Limoblife/toolbox/full/ui/cu;

    iget-object v0, p0, Limoblife/toolbox/full/ui/ct;->a:Limoblife/toolbox/full/ui/ATrash;

    invoke-direct {v1, v0}, Limoblife/toolbox/full/ui/cu;-><init>(Limoblife/toolbox/full/ui/ATrash;)V

    iget-object v0, p0, Limoblife/toolbox/full/ui/ct;->d:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    const v0, 0x7f080003

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Limoblife/toolbox/full/ui/cu;->f:Landroid/widget/ImageView;

    iget-object v0, v1, Limoblife/toolbox/full/ui/cu;->f:Landroid/widget/ImageView;

    iget-object v2, p0, Limoblife/toolbox/full/ui/ct;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    const v0, 0x7f080010

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Limoblife/toolbox/full/ui/cu;->a:Landroid/widget/TextView;

    iget-object v0, v1, Limoblife/toolbox/full/ui/cu;->a:Landroid/widget/TextView;

    iget-object v2, p0, Limoblife/toolbox/full/ui/ct;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0800b8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Limoblife/toolbox/full/ui/cu;->b:Landroid/widget/TextView;

    iget-object v0, v1, Limoblife/toolbox/full/ui/cu;->b:Landroid/widget/TextView;

    iget-object v2, p0, Limoblife/toolbox/full/ui/ct;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f080119

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Limoblife/toolbox/full/ui/cu;->c:Landroid/widget/TextView;

    iget-object v0, v1, Limoblife/toolbox/full/ui/cu;->c:Landroid/widget/TextView;

    invoke-static {}, Lutil/a/a;->a()Lutil/a/a;

    iget-wide v2, p0, Limoblife/toolbox/full/ui/ct;->f:J

    invoke-static {v2, v3}, Lutil/a/a;->a(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0800b9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Limoblife/toolbox/full/ui/cu;->d:Landroid/widget/TextView;

    iget-object v0, v1, Limoblife/toolbox/full/ui/cu;->d:Landroid/widget/TextView;

    iget-object v2, p0, Limoblife/toolbox/full/ui/ct;->e:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0800ba

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, v1, Limoblife/toolbox/full/ui/cu;->e:Landroid/widget/CheckBox;

    iget-object v0, v1, Limoblife/toolbox/full/ui/cu;->e:Landroid/widget/CheckBox;

    iget-boolean v2, p0, Limoblife/toolbox/full/ui/ct;->g:Z

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_0
    return-object p1

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Limoblife/toolbox/full/ui/cu;

    iget-object v1, p0, Limoblife/toolbox/full/ui/ct;->d:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    iget-object v1, v0, Limoblife/toolbox/full/ui/cu;->f:Landroid/widget/ImageView;

    iget-object v2, p0, Limoblife/toolbox/full/ui/ct;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    iget-object v1, v0, Limoblife/toolbox/full/ui/cu;->a:Landroid/widget/TextView;

    iget-object v2, p0, Limoblife/toolbox/full/ui/ct;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Limoblife/toolbox/full/ui/cu;->b:Landroid/widget/TextView;

    iget-object v2, p0, Limoblife/toolbox/full/ui/ct;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Limoblife/toolbox/full/ui/cu;->c:Landroid/widget/TextView;

    invoke-static {}, Lutil/a/a;->a()Lutil/a/a;

    iget-wide v2, p0, Limoblife/toolbox/full/ui/ct;->f:J

    invoke-static {v2, v3}, Lutil/a/a;->a(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Limoblife/toolbox/full/ui/cu;->d:Landroid/widget/TextView;

    iget-object v2, p0, Limoblife/toolbox/full/ui/ct;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v0, Limoblife/toolbox/full/ui/cu;->e:Landroid/widget/CheckBox;

    iget-boolean v1, p0, Limoblife/toolbox/full/ui/ct;->g:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0
.end method

.method public final a(Z)V
    .locals 0

    iput-boolean p1, p0, Limoblife/toolbox/full/ui/ct;->g:Z

    return-void
.end method

.method public final a()Z
    .locals 1

    iget-boolean v0, p0, Limoblife/toolbox/full/ui/ct;->g:Z

    return v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Limoblife/toolbox/full/ui/ct;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final c()V
    .locals 1

    iget-boolean v0, p0, Limoblife/toolbox/full/ui/ct;->g:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Limoblife/toolbox/full/ui/ct;->g:Z

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
