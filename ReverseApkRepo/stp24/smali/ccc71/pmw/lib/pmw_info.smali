.class public Lccc71/pmw/lib/pmw_info;
.super Lccc71/pmw/lib/pmw_activity;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lccc71/pmw/lib/pmw_activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a()I
    .locals 1

    .prologue
    .line 18
    sget v0, Lccc71/pmw/lib/c;->ax:I

    return v0
.end method

.method protected final b()I
    .locals 1

    .prologue
    .line 12
    sget v0, Lccc71/pmw/lib/g;->bl:I

    return v0
.end method

.method protected final b_()Landroid/content/Intent;
    .locals 4

    .prologue
    .line 24
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 25
    invoke-virtual {p0}, Lccc71/pmw/lib/pmw_info;->getPackageName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lccc71/pmw/lib/pmw_info;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ".pmw_tweaks"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 26
    const-string v1, "ccc71.pmw.tweak_id"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 28
    return-object v0
.end method

.method protected onResume()V
    .locals 9

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/high16 v8, 0x4000

    .line 34
    invoke-super {p0}, Lccc71/pmw/lib/pmw_activity;->onResume()V

    .line 36
    invoke-virtual {p0}, Lccc71/pmw/lib/pmw_info;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    :goto_0
    return-void

    .line 39
    :cond_0
    new-instance v5, Lccc71/pmw/a/ah;

    invoke-direct {v5, p0, v3}, Lccc71/pmw/a/ah;-><init>(Landroid/content/Context;Z)V

    .line 40
    invoke-virtual {v5}, Lccc71/pmw/a/ah;->c()V

    .line 42
    invoke-static {p0}, Lccc71/pmw/lib/pmw_settings;->f(Landroid/content/Context;)F

    move-result v6

    .line 44
    sget v0, Lccc71/pmw/lib/e;->bk:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_info;->setContentView(I)V

    .line 46
    sget v0, Lccc71/pmw/lib/d;->aU:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_info;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 47
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setTextSize(F)V

    .line 48
    iget-object v1, v5, Lccc71/pmw/a/ah;->f:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 49
    const-string v4, "Processor\t: "

    const-string v7, ""

    invoke-virtual {v1, v4, v7}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 50
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    sget v0, Lccc71/pmw/lib/d;->aI:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_info;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 53
    sub-float v1, v6, v8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 54
    const-string v1, ""

    .line 55
    iget-object v4, v5, Lccc71/pmw/a/ah;->f:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 56
    :goto_1
    if-lt v3, v7, :cond_1

    .line 60
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    sget v0, Lccc71/pmw/lib/d;->iI:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_info;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 63
    sub-float v1, v6, v8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 64
    const-string v1, ""

    .line 65
    iget-object v3, v5, Lccc71/pmw/a/ah;->g:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 66
    :goto_2
    if-lt v2, v3, :cond_2

    .line 70
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 58
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v5, Lccc71/pmw/a/ah;->f:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "\r\n"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 56
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move-object v1, v4

    goto :goto_1

    .line 68
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v5, Lccc71/pmw/a/ah;->g:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "\r\n"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 66
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method
