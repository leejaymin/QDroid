.class public final Limoblife/toolbox/full/ui/ap;
.super Ljava/lang/Object;


# instance fields
.field final synthetic a:Limoblife/toolbox/full/ui/AHistory;

.field private b:I

.field private c:Ljava/lang/String;

.field private d:Landroid/graphics/drawable/Drawable;

.field private e:Z


# direct methods
.method public constructor <init>(Limoblife/toolbox/full/ui/AHistory;ILandroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Limoblife/toolbox/full/ui/ap;->a:Limoblife/toolbox/full/ui/AHistory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Limoblife/toolbox/full/ui/ap;->b:I

    iput-object p3, p0, Limoblife/toolbox/full/ui/ap;->d:Landroid/graphics/drawable/Drawable;

    iput-object p4, p0, Limoblife/toolbox/full/ui/ap;->c:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Limoblife/toolbox/full/ui/ap;)V
    .locals 1

    iget-boolean v0, p0, Limoblife/toolbox/full/ui/ap;->e:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Limoblife/toolbox/full/ui/ap;->e:Z

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic b(Limoblife/toolbox/full/ui/ap;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Limoblife/toolbox/full/ui/ap;->e:Z

    return-void
.end method

.method static synthetic c(Limoblife/toolbox/full/ui/ap;)Z
    .locals 1

    iget-boolean v0, p0, Limoblife/toolbox/full/ui/ap;->e:Z

    return v0
.end method


# virtual methods
.method public final a(Landroid/view/View;)Landroid/view/View;
    .locals 3

    if-nez p1, :cond_0

    iget-object v0, p0, Limoblife/toolbox/full/ui/ap;->a:Limoblife/toolbox/full/ui/AHistory;

    invoke-static {v0}, Limoblife/toolbox/full/ui/AHistory;->b(Limoblife/toolbox/full/ui/AHistory;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030022

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    new-instance v1, Limoblife/toolbox/full/ui/aq;

    iget-object v0, p0, Limoblife/toolbox/full/ui/ap;->a:Limoblife/toolbox/full/ui/AHistory;

    invoke-direct {v1, v0}, Limoblife/toolbox/full/ui/aq;-><init>(Limoblife/toolbox/full/ui/AHistory;)V

    const v0, 0x7f080055

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Limoblife/toolbox/full/ui/aq;->c:Landroid/widget/ImageView;

    iget-object v0, v1, Limoblife/toolbox/full/ui/aq;->c:Landroid/widget/ImageView;

    iget-object v2, p0, Limoblife/toolbox/full/ui/ap;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const v0, 0x7f080056

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Limoblife/toolbox/full/ui/aq;->b:Landroid/widget/TextView;

    iget-object v0, v1, Limoblife/toolbox/full/ui/aq;->b:Landroid/widget/TextView;

    iget-object v2, p0, Limoblife/toolbox/full/ui/ap;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0800b6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, v1, Limoblife/toolbox/full/ui/aq;->a:Landroid/widget/CheckBox;

    iget-object v0, v1, Limoblife/toolbox/full/ui/aq;->a:Landroid/widget/CheckBox;

    iget-boolean v2, p0, Limoblife/toolbox/full/ui/ap;->e:Z

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_0
    return-object p1

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Limoblife/toolbox/full/ui/aq;

    iget-object v1, v0, Limoblife/toolbox/full/ui/aq;->c:Landroid/widget/ImageView;

    iget-object v2, p0, Limoblife/toolbox/full/ui/ap;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, v0, Limoblife/toolbox/full/ui/aq;->b:Landroid/widget/TextView;

    iget-object v2, p0, Limoblife/toolbox/full/ui/ap;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v0, Limoblife/toolbox/full/ui/aq;->a:Landroid/widget/CheckBox;

    iget-boolean v1, p0, Limoblife/toolbox/full/ui/ap;->e:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0
.end method
