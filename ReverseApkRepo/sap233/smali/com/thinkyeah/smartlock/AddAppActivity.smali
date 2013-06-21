.class public Lcom/thinkyeah/smartlock/AddAppActivity;
.super Landroid/support/v4/app/g;


# instance fields
.field m:Ljava/util/HashMap;

.field private n:Lcom/thinkyeah/smartlock/k;

.field private o:Lcom/thinkyeah/smartlock/h;

.field private p:Ljava/util/List;

.field private q:[Z

.field private r:Landroid/widget/TextView;

.field private s:Z

.field private t:Landroid/app/Dialog;

.field private u:Lcom/thinkyeah/smartlock/n;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/support/v4/app/g;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/thinkyeah/smartlock/AddAppActivity;->s:Z

    return-void
.end method

.method static synthetic a(Lcom/thinkyeah/smartlock/AddAppActivity;)Lcom/thinkyeah/smartlock/k;
    .locals 1

    iget-object v0, p0, Lcom/thinkyeah/smartlock/AddAppActivity;->n:Lcom/thinkyeah/smartlock/k;

    return-object v0
.end method

.method static synthetic a(Lcom/thinkyeah/smartlock/AddAppActivity;I)V
    .locals 13

    iget-object v1, p0, Lcom/thinkyeah/smartlock/AddAppActivity;->m:Ljava/util/HashMap;

    iget-object v0, p0, Lcom/thinkyeah/smartlock/AddAppActivity;->p:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/thinkyeah/smartlock/l;

    invoke-virtual {v0}, Lcom/thinkyeah/smartlock/l;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/util/List;

    if-eqz v6, :cond_0

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_2

    iget-object v0, p0, Lcom/thinkyeah/smartlock/AddAppActivity;->o:Lcom/thinkyeah/smartlock/h;

    invoke-virtual {v0}, Lcom/thinkyeah/smartlock/h;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/thinkyeah/smartlock/AddAppActivity;->q:[Z

    aget-boolean v8, v0, p1

    if-eqz v6, :cond_0

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    const-string v9, "ItemAppIcon"

    const-string v10, "ItemAppName"

    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object v9, v4, v0

    const/4 v0, 0x1

    aput-object v10, v4, v0

    const/4 v0, 0x2

    new-array v5, v0, [I

    fill-array-data v5, :array_0

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030011

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v11

    const v0, 0x7f0b002d

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/widget/ListView;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Landroid/widget/SimpleAdapter;

    const v3, 0x7f03001e

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    new-instance v1, Lcom/thinkyeah/smartlock/g;

    invoke-direct {v1, p0}, Lcom/thinkyeah/smartlock/g;-><init>(Lcom/thinkyeah/smartlock/AddAppActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/SimpleAdapter;->setViewBinder(Landroid/widget/SimpleAdapter$ViewBinder;)V

    invoke-virtual {p0}, Lcom/thinkyeah/smartlock/AddAppActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f020014

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const/4 v1, 0x0

    move v3, v1

    :goto_2
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v1

    if-lt v3, v1, :cond_4

    invoke-virtual {v7, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    const v0, 0x7f0b002c

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v8, :cond_6

    const v1, 0x7f09001b

    :goto_3
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f090019

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f09001a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, v11

    invoke-virtual/range {v0 .. v5}, Landroid/app/AlertDialog;->setView(Landroid/view/View;IIII)V

    iput-object v0, p0, Lcom/thinkyeah/smartlock/AddAppActivity;->t:Landroid/app/Dialog;

    iget-object v0, p0, Lcom/thinkyeah/smartlock/AddAppActivity;->t:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto/16 :goto_0

    :cond_2
    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, p1, :cond_3

    iget-object v2, p0, Lcom/thinkyeah/smartlock/AddAppActivity;->q:[Z

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v3, p0, Lcom/thinkyeah/smartlock/AddAppActivity;->q:[Z

    aget-boolean v3, v3, p1

    aput-boolean v3, v2, v0

    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_1

    :cond_4
    iget-object v5, p0, Lcom/thinkyeah/smartlock/AddAppActivity;->p:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/thinkyeah/smartlock/l;

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v1}, Lcom/thinkyeah/smartlock/l;->f()Z

    move-result v12

    if-nez v12, :cond_5

    invoke-virtual {v1, v4}, Lcom/thinkyeah/smartlock/l;->a(Landroid/graphics/drawable/Drawable;)V

    :cond_5
    invoke-virtual {v1}, Lcom/thinkyeah/smartlock/l;->a()Landroid/graphics/drawable/Drawable;

    move-result-object v12

    invoke-virtual {v5, v9, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/thinkyeah/smartlock/l;->b()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v5, v10, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto/16 :goto_2

    :cond_6
    const v1, 0x7f09001c

    goto/16 :goto_3

    :array_0
    .array-data 0x4
        0x4bt 0x0t 0xbt 0x7ft
        0x4ct 0x0t 0xbt 0x7ft
    .end array-data
.end method

.method static synthetic a(Lcom/thinkyeah/smartlock/AddAppActivity;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/thinkyeah/smartlock/AddAppActivity;->p:Ljava/util/List;

    return-void
.end method

.method static synthetic a(Lcom/thinkyeah/smartlock/AddAppActivity;[Z)V
    .locals 0

    iput-object p1, p0, Lcom/thinkyeah/smartlock/AddAppActivity;->q:[Z

    return-void
.end method

.method static synthetic b(Lcom/thinkyeah/smartlock/AddAppActivity;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/thinkyeah/smartlock/AddAppActivity;->p:Ljava/util/List;

    return-object v0
.end method

.method static synthetic c(Lcom/thinkyeah/smartlock/AddAppActivity;)[Z
    .locals 1

    iget-object v0, p0, Lcom/thinkyeah/smartlock/AddAppActivity;->q:[Z

    return-object v0
.end method

.method static synthetic d(Lcom/thinkyeah/smartlock/AddAppActivity;)V
    .locals 2

    const v0, 0x7f0b0005

    invoke-virtual {p0, v0}, Lcom/thinkyeah/smartlock/AddAppActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    new-instance v1, Lcom/thinkyeah/smartlock/h;

    invoke-direct {v1, p0}, Lcom/thinkyeah/smartlock/h;-><init>(Lcom/thinkyeah/smartlock/AddAppActivity;)V

    iput-object v1, p0, Lcom/thinkyeah/smartlock/AddAppActivity;->o:Lcom/thinkyeah/smartlock/h;

    iget-object v1, p0, Lcom/thinkyeah/smartlock/AddAppActivity;->o:Lcom/thinkyeah/smartlock/h;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setScrollingCacheEnabled(Z)V

    new-instance v1, Lcom/thinkyeah/smartlock/e;

    invoke-direct {v1, p0}, Lcom/thinkyeah/smartlock/e;-><init>(Lcom/thinkyeah/smartlock/AddAppActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    new-instance v1, Lcom/thinkyeah/smartlock/f;

    invoke-direct {v1, p0}, Lcom/thinkyeah/smartlock/f;-><init>(Lcom/thinkyeah/smartlock/AddAppActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    return-void
.end method

.method static synthetic e(Lcom/thinkyeah/smartlock/AddAppActivity;)Lcom/thinkyeah/smartlock/h;
    .locals 1

    iget-object v0, p0, Lcom/thinkyeah/smartlock/AddAppActivity;->o:Lcom/thinkyeah/smartlock/h;

    return-object v0
.end method

.method static synthetic f(Lcom/thinkyeah/smartlock/AddAppActivity;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/thinkyeah/smartlock/AddAppActivity;->s:Z

    return-void
.end method

.method static synthetic g(Lcom/thinkyeah/smartlock/AddAppActivity;)Lcom/thinkyeah/smartlock/n;
    .locals 1

    iget-object v0, p0, Lcom/thinkyeah/smartlock/AddAppActivity;->u:Lcom/thinkyeah/smartlock/n;

    return-object v0
.end method

.method static synthetic h(Lcom/thinkyeah/smartlock/AddAppActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/thinkyeah/smartlock/AddAppActivity;->s:Z

    return v0
.end method

.method static synthetic i(Lcom/thinkyeah/smartlock/AddAppActivity;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/thinkyeah/smartlock/AddAppActivity;->r:Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 11

    const/4 v6, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v1, -0x2

    invoke-super {p0, p1}, Landroid/support/v4/app/g;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0, v10}, Lcom/thinkyeah/smartlock/AddAppActivity;->requestWindowFeature(I)Z

    const v0, 0x7f030001

    invoke-virtual {p0, v0}, Lcom/thinkyeah/smartlock/AddAppActivity;->setContentView(I)V

    const v0, 0x7f0b005d

    invoke-virtual {p0, v0}, Lcom/thinkyeah/smartlock/AddAppActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const v2, 0x7f02005d

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    const v2, 0x7f090016

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(I)V

    new-instance v2, Lcom/thinkyeah/smartlock/c;

    invoke-direct {v2, p0}, Lcom/thinkyeah/smartlock/c;-><init>(Lcom/thinkyeah/smartlock/AddAppActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b005e

    invoke-virtual {p0, v0}, Lcom/thinkyeah/smartlock/AddAppActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const v2, 0x7f020060

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    const v2, 0x7f090017

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(I)V

    new-instance v2, Lcom/thinkyeah/smartlock/d;

    invoke-direct {v2, p0}, Lcom/thinkyeah/smartlock/d;-><init>(Lcom/thinkyeah/smartlock/AddAppActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b0022

    invoke-virtual {p0, v0}, Lcom/thinkyeah/smartlock/AddAppActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v2, 0x7f090015

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {p0}, Lcom/thinkyeah/smartlock/AddAppActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/thinkyeah/smartlock/k;->a(Landroid/content/Context;)Lcom/thinkyeah/smartlock/k;

    move-result-object v0

    iput-object v0, p0, Lcom/thinkyeah/smartlock/AddAppActivity;->n:Lcom/thinkyeah/smartlock/k;

    new-instance v0, Lcom/thinkyeah/smartlock/n;

    invoke-direct {v0, p0}, Lcom/thinkyeah/smartlock/n;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/thinkyeah/smartlock/AddAppActivity;->u:Lcom/thinkyeah/smartlock/n;

    const v0, 0x7f03001b

    invoke-static {p0, v0, v6}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/thinkyeah/smartlock/AddAppActivity;->r:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/thinkyeah/smartlock/AddAppActivity;->r:Landroid/widget/TextView;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/thinkyeah/smartlock/AddAppActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v7

    iget-object v8, p0, Lcom/thinkyeah/smartlock/AddAppActivity;->r:Landroid/widget/TextView;

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/4 v3, 0x2

    const/16 v4, 0x18

    const/4 v5, -0x3

    move v2, v1

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    invoke-interface {v7, v8, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz p1, :cond_0

    const-string v0, "appSelection"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/thinkyeah/smartlock/AddAppActivity;->u:Lcom/thinkyeah/smartlock/n;

    invoke-virtual {v1}, Lcom/thinkyeah/smartlock/n;->b()V

    new-instance v1, Lcom/thinkyeah/smartlock/j;

    invoke-direct {v1, p0, v9}, Lcom/thinkyeah/smartlock/j;-><init>(Lcom/thinkyeah/smartlock/AddAppActivity;B)V

    new-array v2, v10, [[I

    aput-object v0, v2, v9

    invoke-virtual {v1, v2}, Lcom/thinkyeah/smartlock/j;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void

    :cond_0
    move-object v0, v6

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/thinkyeah/smartlock/AddAppActivity;->u:Lcom/thinkyeah/smartlock/n;

    invoke-virtual {v0}, Lcom/thinkyeah/smartlock/n;->a()V

    invoke-virtual {p0}, Lcom/thinkyeah/smartlock/AddAppActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/thinkyeah/smartlock/AddAppActivity;->r:Landroid/widget/TextView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/thinkyeah/smartlock/AddAppActivity;->t:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/thinkyeah/smartlock/AddAppActivity;->t:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    invoke-static {}, Ljava/lang/System;->gc()V

    invoke-super {p0}, Landroid/support/v4/app/g;->onDestroy()V

    return-void
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Landroid/support/v4/app/g;->onResume()V

    iget-object v0, p0, Lcom/thinkyeah/smartlock/AddAppActivity;->u:Lcom/thinkyeah/smartlock/n;

    invoke-virtual {v0}, Lcom/thinkyeah/smartlock/n;->d()V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4

    const/4 v1, 0x0

    invoke-super {p0, p1}, Landroid/support/v4/app/g;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/thinkyeah/smartlock/AddAppActivity;->q:[Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    move v0, v1

    move v2, v1

    :goto_1
    iget-object v3, p0, Lcom/thinkyeah/smartlock/AddAppActivity;->q:[Z

    array-length v3, v3

    if-lt v0, v3, :cond_1

    new-array v3, v2, [I

    move v0, v1

    :goto_2
    iget-object v2, p0, Lcom/thinkyeah/smartlock/AddAppActivity;->q:[Z

    array-length v2, v2

    if-lt v0, v2, :cond_3

    const-string v0, "appSelection"

    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/thinkyeah/smartlock/AddAppActivity;->q:[Z

    aget-boolean v3, v3, v0

    if-eqz v3, :cond_2

    add-int/lit8 v2, v2, 0x1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/thinkyeah/smartlock/AddAppActivity;->q:[Z

    aget-boolean v2, v2, v0

    if-eqz v2, :cond_4

    add-int/lit8 v2, v1, 0x1

    aput v0, v3, v1

    move v1, v2

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public onUserLeaveHint()V
    .locals 0

    invoke-virtual {p0}, Lcom/thinkyeah/smartlock/AddAppActivity;->finish()V

    return-void
.end method
