.class final Lccc71/pmw/lib/bb;
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
    iput-object p1, p0, Lccc71/pmw/lib/bb;->a:Lccc71/pmw/lib/pmw_applist;

    .line 2218
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method static synthetic a(Lccc71/pmw/lib/bb;)Lccc71/pmw/lib/pmw_applist;
    .locals 1
    .parameter

    .prologue
    .line 2218
    iget-object v0, p0, Lccc71/pmw/lib/bb;->a:Lccc71/pmw/lib/pmw_applist;

    return-object v0
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 11
    .parameter

    .prologue
    const/4 v10, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 2222
    iget-object v0, p0, Lccc71/pmw/lib/bb;->a:Lccc71/pmw/lib/pmw_applist;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_applist;->c(Lccc71/pmw/lib/pmw_applist;)Ljava/util/List;

    move-result-object v1

    .line 2224
    if-eqz v1, :cond_0

    iget-object v0, p0, Lccc71/pmw/lib/bb;->a:Lccc71/pmw/lib/pmw_applist;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_applist;->o(Lccc71/pmw/lib/pmw_applist;)Lccc71/pmw/b/m;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccc71/pmw/lib/bb;->a:Lccc71/pmw/lib/pmw_applist;

    invoke-virtual {v0}, Lccc71/pmw/lib/pmw_applist;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2497
    :cond_0
    :goto_0
    return-void

    .line 2231
    :cond_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lccc71/pmw/a/a;

    .line 2233
    iget-object v2, v0, Lccc71/pmw/a/a;->c:Lccc71/pmw/a/b;

    sget-object v3, Lccc71/pmw/a/b;->a:Lccc71/pmw/a/b;

    if-ne v2, v3, :cond_7

    .line 2235
    iget-boolean v2, v0, Lccc71/pmw/a/a;->a:Z

    if-eqz v2, :cond_5

    .line 2237
    iget-object v2, p0, Lccc71/pmw/lib/bb;->a:Lccc71/pmw/lib/pmw_applist;

    invoke-static {v2}, Lccc71/pmw/lib/pmw_settings;->i(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2239
    iget-object v2, p0, Lccc71/pmw/lib/bb;->a:Lccc71/pmw/lib/pmw_applist;

    iget-object v3, p0, Lccc71/pmw/lib/bb;->a:Lccc71/pmw/lib/pmw_applist;

    sget v4, Lccc71/pmw/lib/g;->cW:I

    invoke-virtual {v3, v4}, Lccc71/pmw/lib/pmw_applist;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 2240
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 2243
    :cond_2
    iget-object v2, p0, Lccc71/pmw/lib/bb;->a:Lccc71/pmw/lib/pmw_applist;

    invoke-static {v2}, Lccc71/pmw/lib/pmw_applist;->o(Lccc71/pmw/lib/pmw_applist;)Lccc71/pmw/b/m;

    move-result-object v2

    iget-object v3, v0, Lccc71/pmw/a/a;->d:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2, v3}, Lccc71/pmw/b/m;->a(Landroid/content/pm/ApplicationInfo;)V

    .line 2247
    iget-object v2, v0, Lccc71/pmw/a/a;->d:Landroid/content/pm/ApplicationInfo;

    invoke-interface {v1, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    .line 2249
    iget-object v1, p0, Lccc71/pmw/lib/bb;->a:Lccc71/pmw/lib/pmw_applist;

    sget v2, Lccc71/pmw/lib/d;->a:I

    invoke-virtual {v1, v2}, Lccc71/pmw/lib/pmw_applist;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TableLayout;

    .line 2250
    invoke-virtual {v1}, Landroid/widget/TableLayout;->getChildCount()I

    move-result v4

    .line 2251
    :goto_1
    if-ge v5, v4, :cond_0

    .line 2253
    invoke-virtual {v1, v5}, Landroid/widget/TableLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TableRow;

    .line 2254
    if-eqz v2, :cond_4

    .line 2256
    invoke-virtual {v2}, Landroid/widget/TableRow;->getId()I

    move-result v2

    .line 2257
    if-ne v2, v3, :cond_4

    .line 2259
    add-int/lit8 v2, v5, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/TableLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2261
    const-class v2, Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2265
    :try_start_0
    check-cast v1, Landroid/widget/TextView;

    .line 2266
    const v2, -0xff0100

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2268
    iget-object v2, p0, Lccc71/pmw/lib/bb;->a:Lccc71/pmw/lib/pmw_applist;

    invoke-static {v2}, Lccc71/pmw/lib/pmw_applist;->a(Lccc71/pmw/lib/pmw_applist;)Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v0, v0, Lccc71/pmw/a/a;->e:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 2270
    iget-object v2, p0, Lccc71/pmw/lib/bb;->a:Lccc71/pmw/lib/pmw_applist;

    sget v3, Lccc71/pmw/lib/g;->dA:I

    invoke-virtual {v2, v3}, Lccc71/pmw/lib/pmw_applist;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 2271
    iget-object v3, p0, Lccc71/pmw/lib/bb;->a:Lccc71/pmw/lib/pmw_applist;

    sget v4, Lccc71/pmw/lib/g;->cX:I

    invoke-virtual {v3, v4}, Lccc71/pmw/lib/pmw_applist;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 2273
    if-eqz v0, :cond_3

    iget-object v4, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    if-eqz v4, :cond_3

    .line 2275
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " - "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 2288
    :catch_0
    move-exception v0

    goto/16 :goto_0

    .line 2279
    :cond_3
    iget-object v0, p0, Lccc71/pmw/lib/bb;->a:Lccc71/pmw/lib/pmw_applist;

    sget v4, Lccc71/pmw/lib/g;->eo:I

    invoke-virtual {v0, v4}, Lccc71/pmw/lib/pmw_applist;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2280
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " - "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 2251
    :cond_4
    add-int/lit8 v5, v5, 0x2

    goto/16 :goto_1

    .line 2295
    :cond_5
    iget-object v1, p0, Lccc71/pmw/lib/bb;->a:Lccc71/pmw/lib/pmw_applist;

    invoke-static {v1}, Lccc71/pmw/lib/pmw_applist;->p(Lccc71/pmw/lib/pmw_applist;)Lccc71/pmw/a/b;

    move-result-object v1

    sget-object v2, Lccc71/pmw/a/b;->e:Lccc71/pmw/a/b;

    if-ne v1, v2, :cond_6

    .line 2299
    :try_start_1
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lccc71/pmw/lib/bb;->a:Lccc71/pmw/lib/pmw_applist;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2300
    sget v2, Lccc71/pmw/lib/g;->cU:I

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 2301
    const v2, 0x1040013

    new-instance v3, Lccc71/pmw/lib/bc;

    invoke-direct {v3, p0, v0}, Lccc71/pmw/lib/bc;-><init>(Lccc71/pmw/lib/bb;Lccc71/pmw/a/a;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 2310
    const v1, 0x1040009

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 2311
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 2313
    :catch_1
    move-exception v0

    .line 2317
    iget-object v0, p0, Lccc71/pmw/lib/bb;->a:Lccc71/pmw/lib/pmw_applist;

    iget-object v1, p0, Lccc71/pmw/lib/bb;->a:Lccc71/pmw/lib/pmw_applist;

    sget v2, Lccc71/pmw/lib/g;->fk:I

    invoke-virtual {v1, v2}, Lccc71/pmw/lib/pmw_applist;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 2318
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 2323
    :cond_6
    iget-object v0, p0, Lccc71/pmw/lib/bb;->a:Lccc71/pmw/lib/pmw_applist;

    iget-object v1, p0, Lccc71/pmw/lib/bb;->a:Lccc71/pmw/lib/pmw_applist;

    sget v2, Lccc71/pmw/lib/g;->fk:I

    invoke-virtual {v1, v2}, Lccc71/pmw/lib/pmw_applist;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 2324
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 2330
    :cond_7
    iget-object v2, v0, Lccc71/pmw/a/a;->c:Lccc71/pmw/a/b;

    sget-object v3, Lccc71/pmw/a/b;->c:Lccc71/pmw/a/b;

    if-eq v2, v3, :cond_8

    iget-object v2, v0, Lccc71/pmw/a/a;->c:Lccc71/pmw/a/b;

    sget-object v3, Lccc71/pmw/a/b;->i:Lccc71/pmw/a/b;

    if-eq v2, v3, :cond_8

    iget-object v2, v0, Lccc71/pmw/a/a;->c:Lccc71/pmw/a/b;

    sget-object v3, Lccc71/pmw/a/b;->k:Lccc71/pmw/a/b;

    if-eq v2, v3, :cond_8

    iget-object v2, v0, Lccc71/pmw/a/a;->c:Lccc71/pmw/a/b;

    sget-object v3, Lccc71/pmw/a/b;->h:Lccc71/pmw/a/b;

    if-ne v2, v3, :cond_18

    .line 2332
    :cond_8
    iget-boolean v2, v0, Lccc71/pmw/a/a;->a:Z

    if-eqz v2, :cond_17

    .line 2334
    iget-object v2, p0, Lccc71/pmw/lib/bb;->a:Lccc71/pmw/lib/pmw_applist;

    iget-object v3, p0, Lccc71/pmw/lib/bb;->a:Lccc71/pmw/lib/pmw_applist;

    sget v6, Lccc71/pmw/lib/g;->ej:I

    invoke-virtual {v3, v6}, Lccc71/pmw/lib/pmw_applist;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 2335
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 2337
    iget-object v2, v0, Lccc71/pmw/a/a;->d:Landroid/content/pm/ApplicationInfo;

    invoke-interface {v1, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v6

    .line 2339
    iget-object v1, p0, Lccc71/pmw/lib/bb;->a:Lccc71/pmw/lib/pmw_applist;

    invoke-static {v1}, Lccc71/pmw/lib/pmw_applist;->f(Lccc71/pmw/lib/pmw_applist;)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lccc71/pmw/lib/bb;->a:Lccc71/pmw/lib/pmw_applist;

    invoke-static {v1}, Lccc71/pmw/lib/pmw_applist;->f(Lccc71/pmw/lib/pmw_applist;)Z

    move-result v1

    if-eqz v1, :cond_13

    iget-object v1, v0, Lccc71/pmw/a/a;->c:Lccc71/pmw/a/b;

    sget-object v2, Lccc71/pmw/a/b;->i:Lccc71/pmw/a/b;

    if-ne v1, v2, :cond_13

    .line 2341
    :cond_9
    iget-object v1, p0, Lccc71/pmw/lib/bb;->a:Lccc71/pmw/lib/pmw_applist;

    sget v2, Lccc71/pmw/lib/d;->a:I

    invoke-virtual {v1, v2}, Lccc71/pmw/lib/pmw_applist;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TableLayout;

    .line 2342
    invoke-virtual {v1}, Landroid/widget/TableLayout;->getChildCount()I

    move-result v7

    move v3, v5

    .line 2343
    :goto_2
    if-lt v3, v7, :cond_b

    .line 2362
    iget-object v1, p0, Lccc71/pmw/lib/bb;->a:Lccc71/pmw/lib/pmw_applist;

    invoke-static {v1}, Lccc71/pmw/lib/pmw_applist;->c(Lccc71/pmw/lib/pmw_applist;)Ljava/util/List;

    move-result-object v1

    iget-object v2, v0, Lccc71/pmw/a/a;->d:Landroid/content/pm/ApplicationInfo;

    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 2363
    iget-object v1, p0, Lccc71/pmw/lib/bb;->a:Lccc71/pmw/lib/pmw_applist;

    iget-object v1, v1, Lccc71/pmw/lib/pmw_applist;->d:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Lccc71/pmw/a/a;->d:Landroid/content/pm/ApplicationInfo;

    if-ne v1, v0, :cond_a

    .line 2365
    iget-object v0, p0, Lccc71/pmw/lib/bb;->a:Lccc71/pmw/lib/pmw_applist;

    iput-object v10, v0, Lccc71/pmw/lib/pmw_applist;->d:Landroid/content/pm/ApplicationInfo;

    .line 2366
    iget-object v0, p0, Lccc71/pmw/lib/bb;->a:Lccc71/pmw/lib/pmw_applist;

    invoke-static {v0, v10}, Lccc71/pmw/lib/pmw_applist;->a(Lccc71/pmw/lib/pmw_applist;Landroid/view/View;)V

    .line 2369
    :cond_a
    iget-object v0, p0, Lccc71/pmw/lib/bb;->a:Lccc71/pmw/lib/pmw_applist;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_applist;->g(Lccc71/pmw/lib/pmw_applist;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 2370
    iget-object v1, p0, Lccc71/pmw/lib/bb;->a:Lccc71/pmw/lib/pmw_applist;

    iget-object v0, p0, Lccc71/pmw/lib/bb;->a:Lccc71/pmw/lib/pmw_applist;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_applist;->b(Lccc71/pmw/lib/pmw_applist;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v4, :cond_e

    move v0, v4

    :goto_3
    iget-object v2, p0, Lccc71/pmw/lib/bb;->a:Lccc71/pmw/lib/pmw_applist;

    invoke-static {v2}, Lccc71/pmw/lib/pmw_applist;->b(Lccc71/pmw/lib/pmw_applist;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, v4, :cond_f

    :goto_4
    invoke-static {v1, v0, v4}, Lccc71/pmw/lib/pmw_applist;->a(Lccc71/pmw/lib/pmw_applist;ZZ)V

    goto/16 :goto_0

    .line 2345
    :cond_b
    invoke-virtual {v1, v3}, Landroid/widget/TableLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TableRow;

    .line 2346
    if-eqz v2, :cond_d

    .line 2348
    invoke-virtual {v2}, Landroid/widget/TableRow;->getId()I

    move-result v8

    .line 2349
    if-ne v8, v6, :cond_c

    .line 2351
    iget-object v9, p0, Lccc71/pmw/lib/bb;->a:Lccc71/pmw/lib/pmw_applist;

    invoke-static {v9}, Lccc71/pmw/lib/pmw_applist;->b(Lccc71/pmw/lib/pmw_applist;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2352
    invoke-virtual {v1, v3}, Landroid/widget/TableLayout;->removeViewAt(I)V

    .line 2353
    invoke-virtual {v1, v3}, Landroid/widget/TableLayout;->removeViewAt(I)V

    .line 2355
    add-int/lit8 v3, v3, -0x2

    .line 2358
    :cond_c
    if-lt v8, v6, :cond_d

    .line 2359
    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v2, v8}, Landroid/widget/TableRow;->setId(I)V

    :cond_d
    move v2, v3

    .line 2343
    add-int/lit8 v3, v2, 0x2

    goto :goto_2

    :cond_e
    move v0, v5

    .line 2370
    goto :goto_3

    :cond_f
    move v4, v5

    goto :goto_4

    .line 2372
    :cond_10
    iget-object v1, p0, Lccc71/pmw/lib/bb;->a:Lccc71/pmw/lib/pmw_applist;

    iget-object v0, p0, Lccc71/pmw/lib/bb;->a:Lccc71/pmw/lib/pmw_applist;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_applist;->q(Lccc71/pmw/lib/pmw_applist;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_11

    move v0, v4

    :goto_5
    iget-object v2, p0, Lccc71/pmw/lib/bb;->a:Lccc71/pmw/lib/pmw_applist;

    invoke-static {v2}, Lccc71/pmw/lib/pmw_applist;->q(Lccc71/pmw/lib/pmw_applist;)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_12

    :goto_6
    invoke-static {v1, v0, v4}, Lccc71/pmw/lib/pmw_applist;->a(Lccc71/pmw/lib/pmw_applist;ZZ)V

    goto/16 :goto_0

    :cond_11
    move v0, v5

    goto :goto_5

    :cond_12
    move v4, v5

    goto :goto_6

    .line 2378
    :cond_13
    :try_start_2
    iget-object v1, v0, Lccc71/pmw/a/a;->d:Landroid/content/pm/ApplicationInfo;

    iget-object v2, p0, Lccc71/pmw/lib/bb;->a:Lccc71/pmw/lib/pmw_applist;

    iget-object v2, v2, Lccc71/pmw/lib/pmw_applist;->d:Landroid/content/pm/ApplicationInfo;

    if-ne v1, v2, :cond_14

    .line 2380
    iget-object v1, p0, Lccc71/pmw/lib/bb;->a:Lccc71/pmw/lib/pmw_applist;

    iget-object v2, p0, Lccc71/pmw/lib/bb;->a:Lccc71/pmw/lib/pmw_applist;

    invoke-static {v2}, Lccc71/pmw/lib/pmw_applist;->a(Lccc71/pmw/lib/pmw_applist;)Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, v0, Lccc71/pmw/a/a;->d:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual {v2, v3, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iput-object v2, v1, Lccc71/pmw/lib/pmw_applist;->d:Landroid/content/pm/ApplicationInfo;

    .line 2381
    iget-object v1, p0, Lccc71/pmw/lib/bb;->a:Lccc71/pmw/lib/pmw_applist;

    invoke-static {v1}, Lccc71/pmw/lib/pmw_applist;->c(Lccc71/pmw/lib/pmw_applist;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lccc71/pmw/lib/bb;->a:Lccc71/pmw/lib/pmw_applist;

    iget-object v2, v2, Lccc71/pmw/lib/pmw_applist;->d:Landroid/content/pm/ApplicationInfo;

    invoke-interface {v1, v6, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 2392
    :goto_7
    iget-object v1, p0, Lccc71/pmw/lib/bb;->a:Lccc71/pmw/lib/pmw_applist;

    sget v2, Lccc71/pmw/lib/d;->a:I

    invoke-virtual {v1, v2}, Lccc71/pmw/lib/pmw_applist;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TableLayout;

    .line 2393
    invoke-virtual {v1}, Landroid/widget/TableLayout;->getChildCount()I

    move-result v7

    move v3, v5

    .line 2394
    :goto_8
    if-ge v3, v7, :cond_0

    .line 2396
    invoke-virtual {v1, v3}, Landroid/widget/TableLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TableRow;

    .line 2397
    if-eqz v2, :cond_16

    .line 2399
    invoke-virtual {v2}, Landroid/widget/TableRow;->getId()I

    move-result v2

    .line 2400
    if-ne v2, v6, :cond_16

    .line 2402
    invoke-virtual {v1, v3}, Landroid/widget/TableLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TableRow;

    .line 2403
    invoke-virtual {v1, v4}, Landroid/widget/TableRow;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 2405
    iget-object v0, v0, Lccc71/pmw/a/a;->c:Lccc71/pmw/a/b;

    sget-object v2, Lccc71/pmw/a/b;->h:Lccc71/pmw/a/b;

    if-ne v0, v2, :cond_15

    .line 2407
    invoke-virtual {v1, v5, v5, v5, v5}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto/16 :goto_0

    .line 2385
    :cond_14
    :try_start_3
    iget-object v1, p0, Lccc71/pmw/lib/bb;->a:Lccc71/pmw/lib/pmw_applist;

    invoke-static {v1}, Lccc71/pmw/lib/pmw_applist;->c(Lccc71/pmw/lib/pmw_applist;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lccc71/pmw/lib/bb;->a:Lccc71/pmw/lib/pmw_applist;

    invoke-static {v2}, Lccc71/pmw/lib/pmw_applist;->a(Lccc71/pmw/lib/pmw_applist;)Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, v0, Lccc71/pmw/a/a;->d:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual {v2, v3, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    invoke-interface {v1, v6, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_7

    :catch_2
    move-exception v1

    goto :goto_7

    .line 2411
    :cond_15
    sget v0, Lccc71/pmw/lib/c;->av:I

    invoke-virtual {v1, v5, v5, v0, v5}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto/16 :goto_0

    .line 2394
    :cond_16
    add-int/lit8 v2, v3, 0x2

    move v3, v2

    goto :goto_8

    .line 2422
    :cond_17
    iget-object v0, p0, Lccc71/pmw/lib/bb;->a:Lccc71/pmw/lib/pmw_applist;

    iget-object v1, p0, Lccc71/pmw/lib/bb;->a:Lccc71/pmw/lib/pmw_applist;

    sget v2, Lccc71/pmw/lib/g;->ei:I

    invoke-virtual {v1, v2}, Lccc71/pmw/lib/pmw_applist;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 2423
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 2426
    :cond_18
    iget-object v1, v0, Lccc71/pmw/a/a;->c:Lccc71/pmw/a/b;

    sget-object v2, Lccc71/pmw/a/b;->e:Lccc71/pmw/a/b;

    if-ne v1, v2, :cond_0

    .line 2428
    iget-boolean v1, v0, Lccc71/pmw/a/a;->a:Z

    if-eqz v1, :cond_23

    .line 2432
    :try_start_4
    iget-object v1, p0, Lccc71/pmw/lib/bb;->a:Lccc71/pmw/lib/pmw_applist;

    invoke-static {v1}, Lccc71/pmw/lib/pmw_applist;->a(Lccc71/pmw/lib/pmw_applist;)Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, v0, Lccc71/pmw/a/a;->d:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 2434
    iget-object v2, p0, Lccc71/pmw/lib/bb;->a:Lccc71/pmw/lib/pmw_applist;

    invoke-static {v2}, Lccc71/pmw/lib/pmw_applist;->f(Lccc71/pmw/lib/pmw_applist;)Z

    move-result v2

    if-eqz v2, :cond_1a

    if-eqz v1, :cond_1a

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v4, :cond_1a

    .line 2436
    iget-object v1, p0, Lccc71/pmw/lib/bb;->a:Lccc71/pmw/lib/pmw_applist;

    iget-object v2, p0, Lccc71/pmw/lib/bb;->a:Lccc71/pmw/lib/pmw_applist;

    sget v3, Lccc71/pmw/lib/g;->fo:I

    invoke-virtual {v2, v3}, Lccc71/pmw/lib/pmw_applist;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 2437
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 2453
    :goto_9
    iget-object v1, p0, Lccc71/pmw/lib/bb;->a:Lccc71/pmw/lib/pmw_applist;

    invoke-static {v1}, Lccc71/pmw/lib/pmw_applist;->c(Lccc71/pmw/lib/pmw_applist;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2455
    iget-object v1, p0, Lccc71/pmw/lib/bb;->a:Lccc71/pmw/lib/pmw_applist;

    invoke-static {v1}, Lccc71/pmw/lib/pmw_applist;->c(Lccc71/pmw/lib/pmw_applist;)Ljava/util/List;

    move-result-object v1

    iget-object v2, v0, Lccc71/pmw/a/a;->d:Landroid/content/pm/ApplicationInfo;

    invoke-interface {v1, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v6

    .line 2457
    iget-object v1, p0, Lccc71/pmw/lib/bb;->a:Lccc71/pmw/lib/pmw_applist;

    sget v2, Lccc71/pmw/lib/d;->a:I

    invoke-virtual {v1, v2}, Lccc71/pmw/lib/pmw_applist;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TableLayout;

    .line 2458
    invoke-virtual {v1}, Landroid/widget/TableLayout;->getChildCount()I

    move-result v7

    move v3, v5

    .line 2459
    :goto_a
    if-lt v3, v7, :cond_1b

    .line 2478
    iget-object v1, p0, Lccc71/pmw/lib/bb;->a:Lccc71/pmw/lib/pmw_applist;

    invoke-static {v1}, Lccc71/pmw/lib/pmw_applist;->c(Lccc71/pmw/lib/pmw_applist;)Ljava/util/List;

    move-result-object v1

    iget-object v2, v0, Lccc71/pmw/a/a;->d:Landroid/content/pm/ApplicationInfo;

    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 2479
    iget-object v1, p0, Lccc71/pmw/lib/bb;->a:Lccc71/pmw/lib/pmw_applist;

    iget-object v1, v1, Lccc71/pmw/lib/pmw_applist;->d:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Lccc71/pmw/a/a;->d:Landroid/content/pm/ApplicationInfo;

    if-ne v1, v0, :cond_19

    .line 2481
    iget-object v0, p0, Lccc71/pmw/lib/bb;->a:Lccc71/pmw/lib/pmw_applist;

    iput-object v10, v0, Lccc71/pmw/lib/pmw_applist;->d:Landroid/content/pm/ApplicationInfo;

    .line 2482
    iget-object v0, p0, Lccc71/pmw/lib/bb;->a:Lccc71/pmw/lib/pmw_applist;

    invoke-static {v0, v10}, Lccc71/pmw/lib/pmw_applist;->a(Lccc71/pmw/lib/pmw_applist;Landroid/view/View;)V

    .line 2485
    :cond_19
    iget-object v0, p0, Lccc71/pmw/lib/bb;->a:Lccc71/pmw/lib/pmw_applist;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_applist;->g(Lccc71/pmw/lib/pmw_applist;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 2486
    iget-object v1, p0, Lccc71/pmw/lib/bb;->a:Lccc71/pmw/lib/pmw_applist;

    iget-object v0, p0, Lccc71/pmw/lib/bb;->a:Lccc71/pmw/lib/pmw_applist;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_applist;->b(Lccc71/pmw/lib/pmw_applist;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v4, :cond_1e

    move v0, v4

    :goto_b
    iget-object v2, p0, Lccc71/pmw/lib/bb;->a:Lccc71/pmw/lib/pmw_applist;

    invoke-static {v2}, Lccc71/pmw/lib/pmw_applist;->b(Lccc71/pmw/lib/pmw_applist;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, v4, :cond_1f

    :goto_c
    invoke-static {v1, v0, v4}, Lccc71/pmw/lib/pmw_applist;->a(Lccc71/pmw/lib/pmw_applist;ZZ)V

    goto/16 :goto_0

    .line 2441
    :cond_1a
    :try_start_5
    iget-object v1, p0, Lccc71/pmw/lib/bb;->a:Lccc71/pmw/lib/pmw_applist;

    iget-object v2, p0, Lccc71/pmw/lib/bb;->a:Lccc71/pmw/lib/pmw_applist;

    sget v3, Lccc71/pmw/lib/g;->fn:I

    invoke-virtual {v2, v3}, Lccc71/pmw/lib/pmw_applist;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 2442
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_9

    .line 2445
    :catch_3
    move-exception v1

    .line 2447
    iget-object v1, p0, Lccc71/pmw/lib/bb;->a:Lccc71/pmw/lib/pmw_applist;

    iget-object v2, p0, Lccc71/pmw/lib/bb;->a:Lccc71/pmw/lib/pmw_applist;

    sget v3, Lccc71/pmw/lib/g;->fm:I

    invoke-virtual {v2, v3}, Lccc71/pmw/lib/pmw_applist;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 2448
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_9

    .line 2461
    :cond_1b
    invoke-virtual {v1, v3}, Landroid/widget/TableLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TableRow;

    .line 2462
    if-eqz v2, :cond_1d

    .line 2464
    invoke-virtual {v2}, Landroid/widget/TableRow;->getId()I

    move-result v8

    .line 2465
    if-ne v8, v6, :cond_1c

    .line 2467
    iget-object v9, p0, Lccc71/pmw/lib/bb;->a:Lccc71/pmw/lib/pmw_applist;

    invoke-static {v9}, Lccc71/pmw/lib/pmw_applist;->b(Lccc71/pmw/lib/pmw_applist;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2468
    invoke-virtual {v1, v3}, Landroid/widget/TableLayout;->removeViewAt(I)V

    .line 2469
    invoke-virtual {v1, v3}, Landroid/widget/TableLayout;->removeViewAt(I)V

    .line 2471
    add-int/lit8 v3, v3, -0x2

    .line 2474
    :cond_1c
    if-lt v8, v6, :cond_1d

    .line 2475
    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v2, v8}, Landroid/widget/TableRow;->setId(I)V

    :cond_1d
    move v2, v3

    .line 2459
    add-int/lit8 v3, v2, 0x2

    goto/16 :goto_a

    :cond_1e
    move v0, v5

    .line 2486
    goto :goto_b

    :cond_1f
    move v4, v5

    goto :goto_c

    .line 2488
    :cond_20
    iget-object v1, p0, Lccc71/pmw/lib/bb;->a:Lccc71/pmw/lib/pmw_applist;

    iget-object v0, p0, Lccc71/pmw/lib/bb;->a:Lccc71/pmw/lib/pmw_applist;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_applist;->q(Lccc71/pmw/lib/pmw_applist;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_21

    move v0, v4

    :goto_d
    iget-object v2, p0, Lccc71/pmw/lib/bb;->a:Lccc71/pmw/lib/pmw_applist;

    invoke-static {v2}, Lccc71/pmw/lib/pmw_applist;->q(Lccc71/pmw/lib/pmw_applist;)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_22

    :goto_e
    invoke-static {v1, v0, v4}, Lccc71/pmw/lib/pmw_applist;->a(Lccc71/pmw/lib/pmw_applist;ZZ)V

    goto/16 :goto_0

    :cond_21
    move v0, v5

    goto :goto_d

    :cond_22
    move v4, v5

    goto :goto_e

    .line 2493
    :cond_23
    iget-object v0, p0, Lccc71/pmw/lib/bb;->a:Lccc71/pmw/lib/pmw_applist;

    iget-object v1, p0, Lccc71/pmw/lib/bb;->a:Lccc71/pmw/lib/pmw_applist;

    sget v2, Lccc71/pmw/lib/g;->fk:I

    invoke-virtual {v1, v2}, Lccc71/pmw/lib/pmw_applist;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 2494
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0
.end method
