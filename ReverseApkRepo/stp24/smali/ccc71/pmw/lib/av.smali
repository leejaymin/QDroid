.class final Lccc71/pmw/lib/av;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lccc71/pmw/lib/pmw_applist;


# direct methods
.method constructor <init>(Lccc71/pmw/lib/pmw_applist;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/pmw/lib/av;->a:Lccc71/pmw/lib/pmw_applist;

    .line 2044
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lccc71/pmw/lib/av;)Lccc71/pmw/lib/pmw_applist;
    .locals 1
    .parameter

    .prologue
    .line 2044
    iget-object v0, p0, Lccc71/pmw/lib/av;->a:Lccc71/pmw/lib/pmw_applist;

    return-object v0
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 12
    .parameter

    .prologue
    const/4 v11, 0x0

    const v10, 0x1040013

    const v9, 0x1040009

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2049
    iget-object v0, p0, Lccc71/pmw/lib/av;->a:Lccc71/pmw/lib/pmw_applist;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_applist;->b(Lccc71/pmw/lib/pmw_applist;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2051
    sget-boolean v0, Lccc71/pmw/b/h;->c:Z

    if-eqz v0, :cond_5

    .line 2053
    iget-object v0, p0, Lccc71/pmw/lib/av;->a:Lccc71/pmw/lib/pmw_applist;

    sget v1, Lccc71/pmw/lib/d;->a:I

    invoke-virtual {v0, v1}, Lccc71/pmw/lib/pmw_applist;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TableLayout;

    .line 2055
    iget-object v5, p0, Lccc71/pmw/lib/av;->a:Lccc71/pmw/lib/pmw_applist;

    iget-object v1, p0, Lccc71/pmw/lib/av;->a:Lccc71/pmw/lib/pmw_applist;

    invoke-static {v1}, Lccc71/pmw/lib/pmw_applist;->f(Lccc71/pmw/lib/pmw_applist;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget v1, Lccc71/pmw/lib/g;->fl:I

    :goto_0
    invoke-virtual {v5, v1}, Lccc71/pmw/lib/pmw_applist;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 2057
    if-ne v2, v4, :cond_1

    .line 2059
    iget-object v1, p0, Lccc71/pmw/lib/av;->a:Lccc71/pmw/lib/pmw_applist;

    invoke-static {v1}, Lccc71/pmw/lib/pmw_applist;->b(Lccc71/pmw/lib/pmw_applist;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TableRow;

    .line 2063
    invoke-virtual {v0, v1}, Landroid/widget/TableLayout;->indexOfChild(Landroid/view/View;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/TableLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2064
    const-class v2, Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 2065
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    .line 2066
    :goto_1
    iget-object v2, p0, Lccc71/pmw/lib/av;->a:Lccc71/pmw/lib/pmw_applist;

    invoke-static {v2}, Lccc71/pmw/lib/pmw_settings;->i(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_6

    move v2, v4

    .line 2070
    :goto_2
    invoke-virtual {v1}, Landroid/widget/TableRow;->getId()I

    move-result v0

    .line 2071
    iget-object v1, p0, Lccc71/pmw/lib/av;->a:Lccc71/pmw/lib/pmw_applist;

    iget-object v3, p0, Lccc71/pmw/lib/av;->a:Lccc71/pmw/lib/pmw_applist;

    invoke-static {v3}, Lccc71/pmw/lib/pmw_applist;->c(Lccc71/pmw/lib/pmw_applist;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    iput-object v0, v1, Lccc71/pmw/lib/pmw_applist;->d:Landroid/content/pm/ApplicationInfo;

    .line 2072
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "\n    "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lccc71/pmw/lib/av;->a:Lccc71/pmw/lib/pmw_applist;

    iget-object v1, v1, Lccc71/pmw/lib/pmw_applist;->d:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2074
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lccc71/pmw/lib/av;->a:Lccc71/pmw/lib/pmw_applist;

    invoke-direct {v1, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2075
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 2076
    new-instance v1, Lccc71/pmw/lib/aw;

    invoke-direct {v1, p0, v2}, Lccc71/pmw/lib/aw;-><init>(Lccc71/pmw/lib/av;I)V

    invoke-virtual {v0, v10, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 2100
    invoke-virtual {v0, v9, v11}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 2101
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 2214
    :goto_3
    return-void

    .line 2055
    :cond_0
    sget v1, Lccc71/pmw/lib/g;->fh:I

    goto :goto_0

    .line 2105
    :cond_1
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 2106
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move v7, v3

    .line 2107
    :goto_4
    if-lt v7, v2, :cond_2

    .line 2125
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 2127
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lccc71/pmw/lib/av;->a:Lccc71/pmw/lib/pmw_applist;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2128
    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    .line 2129
    new-instance v0, Lccc71/pmw/lib/ay;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lccc71/pmw/lib/ay;-><init>(Lccc71/pmw/lib/av;IILjava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-virtual {v6, v10, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 2204
    invoke-virtual {v0, v9, v11}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 2205
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_3

    .line 2109
    :cond_2
    iget-object v1, p0, Lccc71/pmw/lib/av;->a:Lccc71/pmw/lib/pmw_applist;

    invoke-static {v1}, Lccc71/pmw/lib/pmw_applist;->b(Lccc71/pmw/lib/pmw_applist;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    .line 2110
    if-ltz v1, :cond_4

    iget-object v8, p0, Lccc71/pmw/lib/av;->a:Lccc71/pmw/lib/pmw_applist;

    invoke-static {v8}, Lccc71/pmw/lib/pmw_applist;->c(Lccc71/pmw/lib/pmw_applist;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v1, v8, :cond_4

    .line 2112
    iget-object v8, p0, Lccc71/pmw/lib/av;->a:Lccc71/pmw/lib/pmw_applist;

    invoke-static {v8}, Lccc71/pmw/lib/pmw_applist;->c(Lccc71/pmw/lib/pmw_applist;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ApplicationInfo;

    .line 2113
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2114
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v8, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "\n    "

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2116
    iget-object v1, p0, Lccc71/pmw/lib/av;->a:Lccc71/pmw/lib/pmw_applist;

    invoke-static {v1}, Lccc71/pmw/lib/pmw_applist;->b(Lccc71/pmw/lib/pmw_applist;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TableRow;

    .line 2118
    invoke-virtual {v0, v1}, Landroid/widget/TableLayout;->indexOfChild(Landroid/view/View;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TableLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2119
    const-class v8, Landroid/widget/TextView;

    invoke-virtual {v8, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 2120
    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v1, v6

    .line 2107
    :goto_5
    add-int/lit8 v6, v7, 0x1

    move v7, v6

    move-object v6, v1

    goto/16 :goto_4

    .line 2122
    :cond_3
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    move-object v1, v6

    goto :goto_5

    .line 2210
    :cond_5
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DELETE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2211
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "package:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lccc71/pmw/lib/av;->a:Lccc71/pmw/lib/pmw_applist;

    iget-object v2, v2, Lccc71/pmw/lib/pmw_applist;->d:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 2212
    iget-object v1, p0, Lccc71/pmw/lib/av;->a:Lccc71/pmw/lib/pmw_applist;

    invoke-virtual {v1, v0}, Lccc71/pmw/lib/pmw_applist;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_3

    :cond_6
    move v2, v0

    goto/16 :goto_2

    :cond_7
    move v0, v3

    goto/16 :goto_1
.end method
