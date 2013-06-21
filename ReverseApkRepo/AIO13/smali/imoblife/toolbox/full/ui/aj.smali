.class final Limoblife/toolbox/full/ui/aj;
.super Ljava/lang/Object;


# instance fields
.field final synthetic a:Limoblife/toolbox/full/ui/ab;

.field private b:I

.field private c:I

.field private d:Z

.field private e:Ljava/lang/String;

.field private f:I


# direct methods
.method public constructor <init>(Limoblife/toolbox/full/ui/ab;ILjava/lang/String;)V
    .locals 1

    iput-object p1, p0, Limoblife/toolbox/full/ui/aj;->a:Limoblife/toolbox/full/ui/ab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Limoblife/toolbox/full/ui/aj;->f:I

    iput p2, p0, Limoblife/toolbox/full/ui/aj;->c:I

    iput-object p3, p0, Limoblife/toolbox/full/ui/aj;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Limoblife/toolbox/full/ui/aj;->c:I

    return v0
.end method

.method public final a(Z)V
    .locals 0

    iput-boolean p1, p0, Limoblife/toolbox/full/ui/aj;->d:Z

    return-void
.end method

.method public final b()Landroid/view/View;
    .locals 7

    const/4 v6, 0x0

    const/16 v5, 0x8

    iget-object v0, p0, Limoblife/toolbox/full/ui/aj;->a:Limoblife/toolbox/full/ui/ab;

    invoke-static {v0}, Limoblife/toolbox/full/ui/ab;->a(Limoblife/toolbox/full/ui/ab;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030018

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v0, 0x7f080081

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const v1, 0x7f080089

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iget v3, p0, Limoblife/toolbox/full/ui/aj;->c:I

    const/4 v4, 0x7

    if-ne v3, v4, :cond_2

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_0
    const v0, 0x7f080082

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iget-boolean v1, p0, Limoblife/toolbox/full/ui/aj;->d:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget v0, p0, Limoblife/toolbox/full/ui/aj;->b:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const v0, 0x7f080088

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    const v0, 0x7f080083

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Limoblife/toolbox/full/ui/aj;->e:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v1, p0, Limoblife/toolbox/full/ui/aj;->f:I

    const/4 v3, -0x1

    if-eq v1, v3, :cond_1

    iget v1, p0, Limoblife/toolbox/full/ui/aj;->f:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    const v0, 0x7f08008a

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Limoblife/toolbox/full/ui/aj;->e:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object v2

    :cond_2
    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method
