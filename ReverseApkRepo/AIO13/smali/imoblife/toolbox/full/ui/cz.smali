.class final Limoblife/toolbox/full/ui/cz;
.super Ljava/lang/Object;


# instance fields
.field final synthetic a:Limoblife/toolbox/full/ui/AUninstaller;

.field private b:I

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Landroid/graphics/drawable/Drawable;

.field private g:J

.field private h:Z


# direct methods
.method public constructor <init>(Limoblife/toolbox/full/ui/AUninstaller;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJ)V
    .locals 0

    iput-object p1, p0, Limoblife/toolbox/full/ui/cz;->a:Limoblife/toolbox/full/ui/AUninstaller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Limoblife/toolbox/full/ui/cz;->f:Landroid/graphics/drawable/Drawable;

    iput-object p3, p0, Limoblife/toolbox/full/ui/cz;->e:Ljava/lang/String;

    iput-object p4, p0, Limoblife/toolbox/full/ui/cz;->d:Ljava/lang/String;

    iput-wide p7, p0, Limoblife/toolbox/full/ui/cz;->g:J

    iput-object p5, p0, Limoblife/toolbox/full/ui/cz;->c:Ljava/lang/String;

    iput p6, p0, Limoblife/toolbox/full/ui/cz;->b:I

    return-void
.end method

.method static synthetic a(Limoblife/toolbox/full/ui/cz;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Limoblife/toolbox/full/ui/cz;->e:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/view/View;)Landroid/view/View;
    .locals 4

    if-nez p1, :cond_0

    iget-object v0, p0, Limoblife/toolbox/full/ui/cz;->a:Limoblife/toolbox/full/ui/AUninstaller;

    invoke-static {v0}, Limoblife/toolbox/full/ui/AUninstaller;->a(Limoblife/toolbox/full/ui/AUninstaller;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03004d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    new-instance v1, Limoblife/toolbox/full/ui/da;

    iget-object v0, p0, Limoblife/toolbox/full/ui/cz;->a:Limoblife/toolbox/full/ui/AUninstaller;

    invoke-direct {v1, v0}, Limoblife/toolbox/full/ui/da;-><init>(Limoblife/toolbox/full/ui/AUninstaller;)V

    const v0, 0x7f080003

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Limoblife/toolbox/full/ui/da;->e:Landroid/widget/ImageView;

    iget-object v0, v1, Limoblife/toolbox/full/ui/da;->e:Landroid/widget/ImageView;

    iget-object v2, p0, Limoblife/toolbox/full/ui/cz;->f:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const v0, 0x7f080010

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Limoblife/toolbox/full/ui/da;->d:Landroid/widget/TextView;

    iget-object v0, v1, Limoblife/toolbox/full/ui/da;->d:Landroid/widget/TextView;

    iget-object v2, p0, Limoblife/toolbox/full/ui/cz;->d:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f08012c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Limoblife/toolbox/full/ui/da;->c:Landroid/widget/TextView;

    iget-object v0, v1, Limoblife/toolbox/full/ui/da;->c:Landroid/widget/TextView;

    invoke-static {}, Lutil/a/a;->a()Lutil/a/a;

    iget-wide v2, p0, Limoblife/toolbox/full/ui/cz;->g:J

    invoke-static {v2, v3}, Lutil/a/a;->a(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f08012d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Limoblife/toolbox/full/ui/da;->b:Landroid/widget/TextView;

    iget-object v0, v1, Limoblife/toolbox/full/ui/da;->b:Landroid/widget/TextView;

    iget-object v2, p0, Limoblife/toolbox/full/ui/cz;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f08012e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, v1, Limoblife/toolbox/full/ui/da;->a:Landroid/widget/CheckBox;

    iget-object v0, v1, Limoblife/toolbox/full/ui/da;->a:Landroid/widget/CheckBox;

    iget-boolean v2, p0, Limoblife/toolbox/full/ui/cz;->h:Z

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_0
    return-object p1

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Limoblife/toolbox/full/ui/da;

    iget-object v1, v0, Limoblife/toolbox/full/ui/da;->e:Landroid/widget/ImageView;

    iget-object v2, p0, Limoblife/toolbox/full/ui/cz;->f:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, v0, Limoblife/toolbox/full/ui/da;->d:Landroid/widget/TextView;

    iget-object v2, p0, Limoblife/toolbox/full/ui/cz;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Limoblife/toolbox/full/ui/da;->c:Landroid/widget/TextView;

    invoke-static {}, Lutil/a/a;->a()Lutil/a/a;

    iget-wide v2, p0, Limoblife/toolbox/full/ui/cz;->g:J

    invoke-static {v2, v3}, Lutil/a/a;->a(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Limoblife/toolbox/full/ui/da;->b:Landroid/widget/TextView;

    iget-object v2, p0, Limoblife/toolbox/full/ui/cz;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v0, Limoblife/toolbox/full/ui/da;->a:Landroid/widget/CheckBox;

    iget-boolean v1, p0, Limoblife/toolbox/full/ui/cz;->h:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0
.end method

.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Limoblife/toolbox/full/ui/cz;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final a(Z)V
    .locals 0

    iput-boolean p1, p0, Limoblife/toolbox/full/ui/cz;->h:Z

    return-void
.end method

.method public final b()Z
    .locals 1

    iget-boolean v0, p0, Limoblife/toolbox/full/ui/cz;->h:Z

    return v0
.end method

.method public final c()V
    .locals 1

    iget-boolean v0, p0, Limoblife/toolbox/full/ui/cz;->h:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Limoblife/toolbox/full/ui/cz;->h:Z

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
