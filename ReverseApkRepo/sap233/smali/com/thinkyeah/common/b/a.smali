.class public abstract Lcom/thinkyeah/common/b/a;
.super Landroid/support/v4/app/Fragment;


# instance fields
.field protected a:Landroid/widget/Button;

.field protected b:Landroid/widget/Button;

.field protected c:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method protected static b()V
    .locals 0

    return-void
.end method


# virtual methods
.method protected abstract a()I
.end method

.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    invoke-virtual {p0}, Lcom/thinkyeah/common/b/a;->a()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f0b005d

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/thinkyeah/common/b/a;->a:Landroid/widget/Button;

    iget-object v0, p0, Lcom/thinkyeah/common/b/a;->a:Landroid/widget/Button;

    new-instance v2, Lcom/thinkyeah/common/b/b;

    invoke-direct {v2, p0}, Lcom/thinkyeah/common/b/b;-><init>(Lcom/thinkyeah/common/b/a;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b0022

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/thinkyeah/common/b/a;->c:Landroid/widget/TextView;

    const v0, 0x7f0b005e

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/thinkyeah/common/b/a;->b:Landroid/widget/Button;

    iget-object v0, p0, Lcom/thinkyeah/common/b/a;->b:Landroid/widget/Button;

    new-instance v2, Lcom/thinkyeah/common/b/c;

    invoke-direct {v2, p0}, Lcom/thinkyeah/common/b/c;-><init>(Lcom/thinkyeah/common/b/a;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/thinkyeah/common/b/a;->a:Landroid/widget/Button;

    iget-object v2, p0, Lcom/thinkyeah/common/b/a;->c:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/thinkyeah/common/b/a;->b:Landroid/widget/Button;

    invoke-virtual {p0, v0, v2, v3}, Lcom/thinkyeah/common/b/a;->a(Landroid/widget/Button;Landroid/widget/TextView;Landroid/widget/Button;)V

    return-object v1
.end method

.method protected abstract a(Landroid/widget/Button;Landroid/widget/TextView;Landroid/widget/Button;)V
.end method

.method protected d()V
    .locals 0

    return-void
.end method
