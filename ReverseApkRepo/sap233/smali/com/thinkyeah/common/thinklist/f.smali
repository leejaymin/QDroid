.class public final Lcom/thinkyeah/common/thinklist/f;
.super Lcom/thinkyeah/common/thinklist/d;


# instance fields
.field private b:Landroid/widget/TextView;

.field private c:Ljava/lang/String;

.field private d:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/thinkyeah/common/thinklist/f;-><init>(Landroid/content/Context;ILjava/lang/String;B)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;ILjava/lang/String;B)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/thinkyeah/common/thinklist/d;-><init>(Landroid/content/Context;I)V

    iput-object p3, p0, Lcom/thinkyeah/common/thinklist/f;->c:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/thinkyeah/common/thinklist/f;->d:Z

    const v0, 0x7f0b0056

    invoke-virtual {p0, v0}, Lcom/thinkyeah/common/thinklist/f;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/thinkyeah/common/thinklist/f;->b:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 2

    invoke-super {p0}, Lcom/thinkyeah/common/thinklist/d;->a()V

    iget-object v0, p0, Lcom/thinkyeah/common/thinklist/f;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/thinkyeah/common/thinklist/f;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f020050

    invoke-virtual {p0, v0}, Lcom/thinkyeah/common/thinklist/f;->setBackgroundResource(I)V

    iget-boolean v0, p0, Lcom/thinkyeah/common/thinklist/f;->d:Z

    if-nez v0, :cond_0

    const v0, 0x7f0b0059

    invoke-virtual {p0, v0}, Lcom/thinkyeah/common/thinklist/f;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method protected final getLayout()I
    .locals 1

    const v0, 0x7f030026

    return v0
.end method

.method public final setTitleText(Ljava/lang/String;)V
    .locals 2

    iput-object p1, p0, Lcom/thinkyeah/common/thinklist/f;->c:Ljava/lang/String;

    iget-object v0, p0, Lcom/thinkyeah/common/thinklist/f;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/thinkyeah/common/thinklist/f;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
