.class public final Lcom/thinkyeah/smartlock/ej;
.super Landroid/support/v4/app/d;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v4/app/d;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/thinkyeah/smartlock/ej;
    .locals 3

    new-instance v0, Lcom/thinkyeah/smartlock/ej;

    invoke-direct {v0}, Lcom/thinkyeah/smartlock/ej;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "version"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/thinkyeah/smartlock/ej;->e(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public final d()Landroid/app/Dialog;
    .locals 15

    const/4 v14, 0x0

    const/4 v13, 0x1

    const/4 v7, 0x0

    iget-object v1, p0, Landroid/support/v4/app/Fragment;->C:Landroid/support/v4/app/g;

    invoke-virtual {p0}, Lcom/thinkyeah/smartlock/ej;->k()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f070001

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->q:Landroid/os/Bundle;

    const-string v2, "version"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f030012

    invoke-virtual {v0, v2, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    const v0, 0x7f0b002e

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/widget/ListView;

    const-string v10, "ItemMessage"

    new-array v4, v13, [Ljava/lang/String;

    aput-object v10, v4, v7

    new-array v5, v13, [I

    const v0, 0x7f0b003a

    aput v0, v5, v7

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move v0, v7

    :goto_0
    array-length v11, v3

    if-lt v0, v11, :cond_0

    new-instance v0, Landroid/widget/SimpleAdapter;

    const v3, 0x7f030015

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    new-instance v2, Lcom/thinkyeah/common/l;

    invoke-direct {v2}, Lcom/thinkyeah/common/l;-><init>()V

    invoke-virtual {v0, v2}, Landroid/widget/SimpleAdapter;->setViewBinder(Landroid/widget/SimpleAdapter$ViewBinder;)V

    invoke-virtual {v6, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0900d0

    new-array v3, v13, [Ljava/lang/Object;

    aput-object v8, v3, v7

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0900cf

    invoke-virtual {v0, v1, v14}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    move-object v1, v9

    move v2, v7

    move v3, v7

    move v4, v7

    move v5, v7

    invoke-virtual/range {v0 .. v5}, Landroid/app/AlertDialog;->setView(Landroid/view/View;IIII)V

    return-object v0

    :cond_0
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    aget-object v12, v3, v0

    invoke-virtual {v11, v10, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public final t()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->C:Landroid/support/v4/app/g;

    check-cast v0, Lcom/thinkyeah/smartlock/SmartLockActivity;

    invoke-static {v0}, Lcom/thinkyeah/smartlock/SmartLockActivity;->a(Lcom/thinkyeah/smartlock/SmartLockActivity;)V

    invoke-super {p0}, Landroid/support/v4/app/d;->t()V

    return-void
.end method
