.class public final Lcom/thinkyeah/common/thinklist/h;
.super Lcom/thinkyeah/common/thinklist/d;


# instance fields
.field private b:Ljava/lang/String;

.field private c:Z

.field private d:Landroid/widget/LinearLayout;

.field private e:Lcom/thinkyeah/common/thinklist/i;

.field private f:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;Z)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/thinkyeah/common/thinklist/d;-><init>(Landroid/content/Context;I)V

    iput-object p3, p0, Lcom/thinkyeah/common/thinklist/h;->b:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/thinkyeah/common/thinklist/h;->c:Z

    const v0, 0x7f0b005b

    invoke-virtual {p0, v0}, Lcom/thinkyeah/common/thinklist/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/thinkyeah/common/thinklist/h;->d:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/thinkyeah/common/thinklist/h;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b005c

    invoke-virtual {p0, v0}, Lcom/thinkyeah/common/thinklist/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/thinkyeah/common/thinklist/h;->f:Landroid/widget/TextView;

    return-void
.end method

.method private b()V
    .locals 2

    iget-boolean v0, p0, Lcom/thinkyeah/common/thinklist/h;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/thinkyeah/common/thinklist/h;->d:Landroid/widget/LinearLayout;

    const v1, 0x7f02004b

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/thinkyeah/common/thinklist/h;->f:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/thinkyeah/common/thinklist/h;->d:Landroid/widget/LinearLayout;

    const v1, 0x7f02004a

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/thinkyeah/common/thinklist/h;->f:Landroid/widget/TextView;

    const v1, -0x333334

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method


# virtual methods
.method protected final a()V
    .locals 2

    const v0, 0x7f0b0056

    invoke-virtual {p0, v0}, Lcom/thinkyeah/common/thinklist/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/thinkyeah/common/thinklist/h;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/thinkyeah/common/thinklist/h;->b()V

    return-void
.end method

.method protected final getLayout()I
    .locals 1

    const v0, 0x7f030028

    return v0
.end method

.method public final getToggleButtonEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/thinkyeah/common/thinklist/h;->c:Z

    return v0
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 5

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/thinkyeah/common/thinklist/h;->d:Landroid/widget/LinearLayout;

    if-ne p1, v2, :cond_0

    iget-object v2, p0, Lcom/thinkyeah/common/thinklist/h;->e:Lcom/thinkyeah/common/thinklist/i;

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/thinkyeah/common/thinklist/h;->c:Z

    if-eqz v2, :cond_1

    :goto_0
    iput-boolean v0, p0, Lcom/thinkyeah/common/thinklist/h;->c:Z

    invoke-direct {p0}, Lcom/thinkyeah/common/thinklist/h;->b()V

    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/thinkyeah/common/thinklist/h;->e:Lcom/thinkyeah/common/thinklist/i;

    invoke-virtual {p0}, Lcom/thinkyeah/common/thinklist/h;->getPosition()I

    invoke-virtual {p0}, Lcom/thinkyeah/common/thinklist/h;->getId()I

    move-result v3

    iget-boolean v4, p0, Lcom/thinkyeah/common/thinklist/h;->c:Z

    invoke-interface {v2, v3}, Lcom/thinkyeah/common/thinklist/i;->a(I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/thinkyeah/common/thinklist/h;->c:Z

    if-eqz v2, :cond_3

    :goto_2
    iput-boolean v0, p0, Lcom/thinkyeah/common/thinklist/h;->c:Z

    invoke-direct {p0}, Lcom/thinkyeah/common/thinklist/h;->b()V

    iget-object v0, p0, Lcom/thinkyeah/common/thinklist/h;->e:Lcom/thinkyeah/common/thinklist/i;

    invoke-virtual {p0}, Lcom/thinkyeah/common/thinklist/h;->getPosition()I

    invoke-virtual {p0}, Lcom/thinkyeah/common/thinklist/h;->getId()I

    move-result v1

    iget-boolean v2, p0, Lcom/thinkyeah/common/thinklist/h;->c:Z

    invoke-interface {v0, v1}, Lcom/thinkyeah/common/thinklist/i;->b(I)V

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2
.end method

.method public final setToggleButtonClickListener(Lcom/thinkyeah/common/thinklist/i;)V
    .locals 0

    iput-object p1, p0, Lcom/thinkyeah/common/thinklist/h;->e:Lcom/thinkyeah/common/thinklist/i;

    return-void
.end method

.method public final setToggleButtonEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/thinkyeah/common/thinklist/h;->c:Z

    invoke-direct {p0}, Lcom/thinkyeah/common/thinklist/h;->b()V

    return-void
.end method
