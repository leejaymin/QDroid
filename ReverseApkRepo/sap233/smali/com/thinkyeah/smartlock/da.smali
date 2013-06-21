.class public final Lcom/thinkyeah/smartlock/da;
.super Landroid/support/v4/app/d;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v4/app/d;-><init>()V

    return-void
.end method

.method public static a(Ljava/util/ArrayList;)Lcom/thinkyeah/smartlock/da;
    .locals 3

    new-instance v0, Lcom/thinkyeah/smartlock/da;

    invoke-direct {v0}, Lcom/thinkyeah/smartlock/da;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "apps"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Lcom/thinkyeah/smartlock/da;->e(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private a(Landroid/widget/ListView;Ljava/util/ArrayList;)V
    .locals 9

    const/4 v1, 0x2

    const-string v6, "ItemAppIcon"

    const-string v7, "ItemAppName"

    new-array v4, v1, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object v6, v4, v0

    const/4 v0, 0x1

    aput-object v7, v4, v0

    new-array v5, v1, [I

    fill-array-data v5, :array_0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Landroid/widget/SimpleAdapter;

    iget-object v1, p0, Landroid/support/v4/app/Fragment;->C:Landroid/support/v4/app/g;

    const v3, 0x7f03001e

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    new-instance v1, Lcom/thinkyeah/smartlock/dc;

    invoke-direct {v1, p0}, Lcom/thinkyeah/smartlock/dc;-><init>(Lcom/thinkyeah/smartlock/da;)V

    invoke-virtual {v0, v1}, Landroid/widget/SimpleAdapter;->setViewBinder(Landroid/widget/SimpleAdapter$ViewBinder;)V

    iget-object v1, p0, Landroid/support/v4/app/Fragment;->C:Landroid/support/v4/app/g;

    invoke-virtual {v1}, Landroid/support/v4/app/g;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/thinkyeah/smartlock/k;->a(Landroid/content/Context;)Lcom/thinkyeah/smartlock/k;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/thinkyeah/smartlock/k;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/thinkyeah/smartlock/da;->k()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020014

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void

    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/thinkyeah/smartlock/l;

    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v3}, Lcom/thinkyeah/smartlock/l;->f()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v3, v4}, Lcom/thinkyeah/smartlock/l;->a(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    invoke-virtual {v3}, Lcom/thinkyeah/smartlock/l;->a()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v8, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v3}, Lcom/thinkyeah/smartlock/l;->b()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v8, v7, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    nop

    :array_0
    .array-data 0x4
        0x4bt 0x0t 0xbt 0x7ft
        0x4ct 0x0t 0xbt 0x7ft
    .end array-data
.end method


# virtual methods
.method public final d()Landroid/app/Dialog;
    .locals 7

    const/4 v6, 0x0

    const/4 v2, 0x0

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Landroid/support/v4/app/Fragment;->C:Landroid/support/v4/app/g;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f09001d

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->C:Landroid/support/v4/app/g;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030011

    invoke-virtual {v0, v1, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f0b002c

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v4, 0x7f09001f

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    const v0, 0x7f0b002d

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iget-object v4, p0, Landroid/support/v4/app/Fragment;->q:Landroid/os/Bundle;

    const-string v5, "apps"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-direct {p0, v0, v4}, Lcom/thinkyeah/smartlock/da;->a(Landroid/widget/ListView;Ljava/util/ArrayList;)V

    const v0, 0x7f090020

    new-instance v4, Lcom/thinkyeah/smartlock/db;

    invoke-direct {v4, p0}, Lcom/thinkyeah/smartlock/db;-><init>(Lcom/thinkyeah/smartlock/da;)V

    invoke-virtual {v3, v0, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v3, 0x7f090021

    invoke-virtual {v0, v3, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/app/AlertDialog;->setView(Landroid/view/View;IIII)V

    return-object v0
.end method
