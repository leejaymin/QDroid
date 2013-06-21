.class public Lcom/thinkyeah/smartlock/cj;
.super Lcom/thinkyeah/common/b/a;


# instance fields
.field private d:Lcom/thinkyeah/common/thinklist/e;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/thinkyeah/common/b/a;-><init>()V

    new-instance v0, Lcom/thinkyeah/smartlock/ck;

    invoke-direct {v0, p0}, Lcom/thinkyeah/smartlock/ck;-><init>(Lcom/thinkyeah/smartlock/cj;)V

    iput-object v0, p0, Lcom/thinkyeah/smartlock/cj;->d:Lcom/thinkyeah/common/thinklist/e;

    return-void
.end method

.method public static F()Lcom/thinkyeah/common/b/f;
    .locals 1

    new-instance v0, Lcom/thinkyeah/smartlock/cl;

    invoke-direct {v0}, Lcom/thinkyeah/smartlock/cl;-><init>()V

    return-object v0
.end method


# virtual methods
.method protected final a()I
    .locals 1

    const v0, 0x7f030019

    return v0
.end method

.method protected final a(Landroid/widget/Button;Landroid/widget/TextView;Landroid/widget/Button;)V
    .locals 2

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setVisibility(I)V

    const v0, 0x7f09000d

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {p3, v1}, Landroid/widget/Button;->setVisibility(I)V

    return-void
.end method

.method public final c(Landroid/os/Bundle;)V
    .locals 5

    invoke-super {p0, p1}, Lcom/thinkyeah/common/b/a;->c(Landroid/os/Bundle;)V

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->C:Landroid/support/v4/app/g;

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    new-instance v2, Lcom/thinkyeah/common/thinklist/f;

    const/4 v3, 0x0

    const v4, 0x7f090040

    invoke-virtual {p0, v4}, Lcom/thinkyeah/smartlock/cj;->c(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v0, v3, v4}, Lcom/thinkyeah/common/thinklist/f;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    iget-object v3, p0, Lcom/thinkyeah/smartlock/cj;->d:Lcom/thinkyeah/common/thinklist/e;

    invoke-virtual {v2, v3}, Lcom/thinkyeah/common/thinklist/f;->setThinkItemClickListener(Lcom/thinkyeah/common/thinklist/e;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/thinkyeah/common/thinklist/f;

    const/4 v3, 0x1

    const v4, 0x7f090041

    invoke-virtual {p0, v4}, Lcom/thinkyeah/smartlock/cj;->c(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v0, v3, v4}, Lcom/thinkyeah/common/thinklist/f;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    iget-object v3, p0, Lcom/thinkyeah/smartlock/cj;->d:Lcom/thinkyeah/common/thinklist/e;

    invoke-virtual {v2, v3}, Lcom/thinkyeah/common/thinklist/f;->setThinkItemClickListener(Lcom/thinkyeah/common/thinklist/e;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/thinkyeah/common/thinklist/f;

    const/4 v3, 0x2

    const v4, 0x7f090042

    invoke-virtual {p0, v4}, Lcom/thinkyeah/smartlock/cj;->c(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v0, v3, v4}, Lcom/thinkyeah/common/thinklist/f;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    iget-object v3, p0, Lcom/thinkyeah/smartlock/cj;->d:Lcom/thinkyeah/common/thinklist/e;

    invoke-virtual {v2, v3}, Lcom/thinkyeah/common/thinklist/f;->setThinkItemClickListener(Lcom/thinkyeah/common/thinklist/e;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/thinkyeah/common/thinklist/f;

    const/4 v3, 0x3

    const v4, 0x7f090043

    invoke-virtual {p0, v4}, Lcom/thinkyeah/smartlock/cj;->c(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v0, v3, v4}, Lcom/thinkyeah/common/thinklist/f;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    iget-object v0, p0, Lcom/thinkyeah/smartlock/cj;->d:Lcom/thinkyeah/common/thinklist/e;

    invoke-virtual {v2, v0}, Lcom/thinkyeah/common/thinklist/f;->setThinkItemClickListener(Lcom/thinkyeah/common/thinklist/e;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->C:Landroid/support/v4/app/g;

    const v2, 0x7f0b0044

    invoke-virtual {v0, v2}, Landroid/support/v4/app/g;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/thinkyeah/common/thinklist/ThinkList;

    new-instance v2, Lcom/thinkyeah/common/thinklist/b;

    invoke-direct {v2, v1}, Lcom/thinkyeah/common/thinklist/b;-><init>(Ljava/util/List;)V

    invoke-virtual {v0, v2}, Lcom/thinkyeah/common/thinklist/ThinkList;->setAdapter(Lcom/thinkyeah/common/thinklist/b;)V

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->C:Landroid/support/v4/app/g;

    const v1, 0x7f0b0045

    invoke-virtual {v0, v1}, Landroid/support/v4/app/g;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lcom/thinkyeah/smartlock/cm;

    invoke-direct {v1, p0}, Lcom/thinkyeah/smartlock/cm;-><init>(Lcom/thinkyeah/smartlock/cj;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
