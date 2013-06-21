.class final Lccc71/pmw/lib/an;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic a:Lccc71/pmw/lib/pmw_applist;


# direct methods
.method constructor <init>(Lccc71/pmw/lib/pmw_applist;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/pmw/lib/an;->a:Lccc71/pmw/lib/pmw_applist;

    .line 1772
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 14
    .parameter

    .prologue
    const/4 v13, 0x1

    const/high16 v12, -0x1

    const/4 v4, 0x0

    .line 1776
    iget-object v0, p0, Lccc71/pmw/lib/an;->a:Lccc71/pmw/lib/pmw_applist;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_applist;->c(Lccc71/pmw/lib/pmw_applist;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1857
    :cond_0
    :goto_0
    return-void

    .line 1779
    :cond_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lccc71/pmw/a/a;

    .line 1780
    iget-object v1, p0, Lccc71/pmw/lib/an;->a:Lccc71/pmw/lib/pmw_applist;

    invoke-static {v1}, Lccc71/pmw/lib/pmw_applist;->a(Lccc71/pmw/lib/pmw_applist;)Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, v0, Lccc71/pmw/a/a;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    .line 1782
    iget-boolean v1, v0, Lccc71/pmw/a/a;->a:Z

    if-eqz v1, :cond_0

    .line 1784
    iget-object v1, p0, Lccc71/pmw/lib/an;->a:Lccc71/pmw/lib/pmw_applist;

    iget-object v2, v0, Lccc71/pmw/a/a;->e:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lccc71/pmw/a/d;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    .line 1788
    iget-object v1, p0, Lccc71/pmw/lib/an;->a:Lccc71/pmw/lib/pmw_applist;

    invoke-static {v1}, Lccc71/pmw/lib/pmw_applist;->c(Lccc71/pmw/lib/pmw_applist;)Ljava/util/List;

    move-result-object v1

    iget-object v2, v0, Lccc71/pmw/a/a;->d:Landroid/content/pm/ApplicationInfo;

    invoke-interface {v1, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v7

    .line 1790
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lccc71/pmw/lib/an;->a:Lccc71/pmw/lib/pmw_applist;

    sget v3, Lccc71/pmw/lib/g;->dN:I

    invoke-virtual {v2, v3}, Lccc71/pmw/lib/pmw_applist;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1791
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lccc71/pmw/lib/an;->a:Lccc71/pmw/lib/pmw_applist;

    sget v3, Lccc71/pmw/lib/g;->ez:I

    invoke-virtual {v2, v3}, Lccc71/pmw/lib/pmw_applist;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1793
    iget-object v1, p0, Lccc71/pmw/lib/an;->a:Lccc71/pmw/lib/pmw_applist;

    sget v2, Lccc71/pmw/lib/d;->a:I

    invoke-virtual {v1, v2}, Lccc71/pmw/lib/pmw_applist;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TableLayout;

    .line 1794
    invoke-virtual {v1}, Landroid/widget/TableLayout;->getChildCount()I

    move-result v10

    move v3, v4

    .line 1795
    :goto_1
    if-lt v3, v10, :cond_2

    .line 1836
    :goto_2
    iget-object v1, p0, Lccc71/pmw/lib/an;->a:Lccc71/pmw/lib/pmw_applist;

    iget-object v1, v1, Lccc71/pmw/lib/pmw_applist;->d:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Lccc71/pmw/a/a;->d:Landroid/content/pm/ApplicationInfo;

    if-ne v1, v0, :cond_0

    .line 1838
    if-eqz v6, :cond_8

    .line 1840
    iget-object v0, p0, Lccc71/pmw/lib/an;->a:Lccc71/pmw/lib/pmw_applist;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_applist;->j(Lccc71/pmw/lib/pmw_applist;)Landroid/widget/Button;

    move-result-object v0

    sget v1, Lccc71/pmw/lib/c;->aQ:I

    invoke-virtual {v0, v4, v1, v4, v4}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 1841
    iget-object v0, p0, Lccc71/pmw/lib/an;->a:Lccc71/pmw/lib/pmw_applist;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_applist;->j(Lccc71/pmw/lib/pmw_applist;)Landroid/widget/Button;

    move-result-object v0

    sget v1, Lccc71/pmw/lib/g;->bZ:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 1842
    iget-object v0, p0, Lccc71/pmw/lib/an;->a:Lccc71/pmw/lib/pmw_applist;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_applist;->k(Lccc71/pmw/lib/pmw_applist;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 1843
    iget-object v0, p0, Lccc71/pmw/lib/an;->a:Lccc71/pmw/lib/pmw_applist;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_applist;->l(Lccc71/pmw/lib/pmw_applist;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setEnabled(Z)V

    goto/16 :goto_0

    .line 1797
    :cond_2
    invoke-virtual {v1, v3}, Landroid/widget/TableLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TableRow;

    .line 1798
    if-eqz v2, :cond_7

    .line 1800
    invoke-virtual {v2}, Landroid/widget/TableRow;->getId()I

    move-result v11

    .line 1801
    if-ne v11, v7, :cond_7

    .line 1803
    invoke-static {}, Lccc71/pmw/lib/pmw_applist;->h()I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/TableRow;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1804
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1806
    if-eqz v6, :cond_5

    .line 1808
    invoke-virtual {v2, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 1810
    invoke-virtual {v2, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1812
    invoke-virtual {v1, v12}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1813
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v7, ""

    invoke-virtual {v2, v8, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1830
    :cond_3
    :goto_3
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 1817
    :cond_4
    invoke-virtual {v1, v12}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1818
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    .line 1824
    :cond_5
    iget-object v3, p0, Lccc71/pmw/lib/an;->a:Lccc71/pmw/lib/pmw_applist;

    invoke-static {v3}, Lccc71/pmw/lib/pmw_applist;->f(Lccc71/pmw/lib/pmw_applist;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1825
    iget-object v3, p0, Lccc71/pmw/lib/an;->a:Lccc71/pmw/lib/pmw_applist;

    invoke-static {v3}, Lccc71/pmw/lib/pmw_settings;->az(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1828
    :goto_4
    const-string v3, ""

    invoke-virtual {v2, v8, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    .line 1827
    :cond_6
    iget-object v3, p0, Lccc71/pmw/lib/an;->a:Lccc71/pmw/lib/pmw_applist;

    invoke-static {v3}, Lccc71/pmw/lib/pmw_settings;->aA(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_4

    .line 1795
    :cond_7
    add-int/lit8 v2, v3, 0x2

    move v3, v2

    goto/16 :goto_1

    .line 1847
    :cond_8
    iget-object v0, p0, Lccc71/pmw/lib/an;->a:Lccc71/pmw/lib/pmw_applist;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_applist;->j(Lccc71/pmw/lib/pmw_applist;)Landroid/widget/Button;

    move-result-object v0

    sget v1, Lccc71/pmw/lib/c;->s:I

    invoke-virtual {v0, v4, v1, v4, v4}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 1848
    iget-object v0, p0, Lccc71/pmw/lib/an;->a:Lccc71/pmw/lib/pmw_applist;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_applist;->j(Lccc71/pmw/lib/pmw_applist;)Landroid/widget/Button;

    move-result-object v0

    sget v1, Lccc71/pmw/lib/g;->bx:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 1849
    if-eqz v5, :cond_0

    .line 1851
    iget-object v0, p0, Lccc71/pmw/lib/an;->a:Lccc71/pmw/lib/pmw_applist;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_applist;->k(Lccc71/pmw/lib/pmw_applist;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v13}, Landroid/view/View;->setEnabled(Z)V

    .line 1852
    iget-object v0, p0, Lccc71/pmw/lib/an;->a:Lccc71/pmw/lib/pmw_applist;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_applist;->l(Lccc71/pmw/lib/pmw_applist;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v13}, Landroid/view/View;->setEnabled(Z)V

    goto/16 :goto_0
.end method
