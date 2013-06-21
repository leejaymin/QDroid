.class public Lccc71/bmw/lib/bmw_history;
.super Lccc71/utils/ccc71_license_activity;
.source "SourceFile"


# static fields
.field public static a:Lccc71/bmw/lib/bg;


# instance fields
.field private b:Z

.field private c:J

.field private d:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 34
    invoke-direct {p0}, Lccc71/utils/ccc71_license_activity;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lccc71/bmw/lib/bmw_history;->b:Z

    .line 38
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lccc71/bmw/lib/bmw_history;->c:J

    .line 39
    const/4 v0, -0x1

    iput v0, p0, Lccc71/bmw/lib/bmw_history;->d:I

    .line 34
    return-void
.end method

.method static synthetic a(Lccc71/bmw/lib/bmw_history;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 39
    iput p1, p0, Lccc71/bmw/lib/bmw_history;->d:I

    return-void
.end method

.method static synthetic a(Lccc71/bmw/lib/bmw_history;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 38
    iput-wide p1, p0, Lccc71/bmw/lib/bmw_history;->c:J

    return-void
.end method

.method static synthetic a(Lccc71/bmw/lib/bmw_history;)Z
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-boolean v0, p0, Lccc71/bmw/lib/bmw_history;->b:Z

    return v0
.end method

.method static synthetic b(Lccc71/bmw/lib/bmw_history;)J
    .locals 2
    .parameter

    .prologue
    .line 38
    iget-wide v0, p0, Lccc71/bmw/lib/bmw_history;->c:J

    return-wide v0
.end method

.method static synthetic c(Lccc71/bmw/lib/bmw_history;)I
    .locals 1
    .parameter

    .prologue
    .line 39
    iget v0, p0, Lccc71/bmw/lib/bmw_history;->d:I

    return v0
.end method


# virtual methods
.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v5, 0x0

    .line 251
    iget-wide v1, p0, Lccc71/bmw/lib/bmw_history;->c:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 253
    new-instance v1, Lccc71/bmw/lib/az;

    invoke-direct {v1, p0}, Lccc71/bmw/lib/az;-><init>(Lccc71/bmw/lib/bmw_history;)V

    new-array v2, v5, [Ljava/lang/Void;

    .line 277
    invoke-virtual {v1, v2}, Lccc71/bmw/lib/az;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 309
    :goto_0
    return v0

    .line 281
    :cond_0
    iget v1, p0, Lccc71/bmw/lib/bmw_history;->d:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 283
    new-instance v1, Lccc71/bmw/lib/ba;

    invoke-direct {v1, p0}, Lccc71/bmw/lib/ba;-><init>(Lccc71/bmw/lib/bmw_history;)V

    new-array v2, v5, [Ljava/lang/Void;

    .line 305
    invoke-virtual {v1, v2}, Lccc71/bmw/lib/ba;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 309
    :cond_1
    invoke-super {p0, p1}, Lccc71/utils/ccc71_license_activity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 95
    invoke-super {p0, p1}, Lccc71/utils/ccc71_license_activity;->onCreate(Landroid/os/Bundle;)V

    .line 97
    invoke-virtual {p0}, Lccc71/bmw/lib/bmw_history;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 114
    :cond_0
    :goto_0
    return-void

    .line 100
    :cond_1
    new-instance v0, Lccc71/bmw/lib/bg;

    invoke-direct {v0, p0}, Lccc71/bmw/lib/bg;-><init>(Lccc71/bmw/lib/bmw_history;)V

    sput-object v0, Lccc71/bmw/lib/bmw_history;->a:Lccc71/bmw/lib/bg;

    .line 102
    const-string v0, "battery_widget_monitor"

    const-string v1, "bmw_status_history - onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    invoke-virtual {p0}, Lccc71/bmw/lib/bmw_history;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "ccc71.bmw.lib.EDIT_MARKS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lccc71/bmw/lib/bmw_history;->b:Z

    .line 106
    sget v0, Lccc71/bmw/lib/e;->be:I

    invoke-virtual {p0, v0}, Lccc71/bmw/lib/bmw_history;->setContentView(I)V

    .line 108
    sget v0, Lccc71/bmw/lib/d;->bQ:I

    invoke-virtual {p0, v0}, Lccc71/bmw/lib/bmw_history;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lccc71/utils/ccc71_list_view;

    .line 109
    invoke-static {}, Lccc71/bmw/lib/bi;->e()Z

    move-result v1

    if-nez v1, :cond_0

    .line 111
    sget v1, Lccc71/bmw/lib/g;->cd:I

    invoke-virtual {p0, v1}, Lccc71/bmw/lib/bmw_history;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccc71/utils/ccc71_list_view;->setText(Ljava/lang/String;)V

    .line 112
    sget-object v0, Lccc71/bmw/lib/bmw_history;->a:Lccc71/bmw/lib/bg;

    invoke-static {p0, v0}, Lccc71/bmw/lib/bi;->c(Landroid/app/Activity;Landroid/os/Handler;)V

    goto :goto_0
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 315
    invoke-super {p0, p1, p2, p3}, Lccc71/utils/ccc71_license_activity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 317
    invoke-virtual {p0}, Lccc71/bmw/lib/bmw_history;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    sget v1, Lccc71/bmw/lib/f;->c:I

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 318
    iget-wide v0, p0, Lccc71/bmw/lib/bmw_history;->c:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 320
    sget v0, Lccc71/bmw/lib/d;->cU:I

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->removeItem(I)V

    .line 326
    :goto_0
    return-void

    .line 324
    :cond_0
    sget v0, Lccc71/bmw/lib/d;->cS:I

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->removeItem(I)V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter

    .prologue
    .line 330
    invoke-virtual {p0}, Lccc71/bmw/lib/bmw_history;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 331
    sget v1, Lccc71/bmw/lib/f;->a:I

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 333
    invoke-static {p0}, Lccc71/bmw/lib/bmw_settings;->K(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 335
    sget v0, Lccc71/bmw/lib/d;->cS:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->removeItem(I)V

    .line 336
    sget v0, Lccc71/bmw/lib/d;->cT:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->removeItem(I)V

    .line 339
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 119
    const-string v0, "battery_widget_monitor"

    const-string v1, "bmw_status_history - onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    sput-object v2, Lccc71/bmw/lib/bmw_history;->a:Lccc71/bmw/lib/bg;

    .line 123
    invoke-super {p0}, Lccc71/utils/ccc71_license_activity;->onDestroy()V

    .line 125
    sget v0, Lccc71/bmw/lib/d;->bQ:I

    invoke-virtual {p0, v0}, Lccc71/bmw/lib/bmw_history;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lccc71/utils/ccc71_list_view;

    .line 126
    invoke-virtual {v0, v2}, Lccc71/utils/ccc71_list_view;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 127
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2
    .parameter

    .prologue
    .line 466
    invoke-super {p0, p1}, Lccc71/utils/ccc71_license_activity;->onNewIntent(Landroid/content/Intent;)V

    .line 468
    const-string v0, "ccc71.bmw.lib.EDIT_MARKS"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lccc71/bmw/lib/bmw_history;->b:Z

    .line 470
    sget-object v0, Lccc71/bmw/lib/bmw_history;->a:Lccc71/bmw/lib/bg;

    if-eqz v0, :cond_0

    .line 471
    sget-object v0, Lccc71/bmw/lib/bmw_history;->a:Lccc71/bmw/lib/bg;

    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    invoke-virtual {v0, v1}, Lccc71/bmw/lib/bg;->handleMessage(Landroid/os/Message;)V

    .line 472
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6
    .parameter

    .prologue
    const v5, 0x1040013

    const v4, 0x1040009

    const/4 v3, 0x0

    const/4 v1, 0x1

    .line 346
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 348
    sget v2, Lccc71/bmw/lib/d;->cz:I

    if-ne v0, v2, :cond_0

    .line 350
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 351
    sget v2, Lccc71/bmw/lib/g;->bM:I

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 352
    new-instance v2, Lccc71/bmw/lib/bb;

    invoke-direct {v2, p0}, Lccc71/bmw/lib/bb;-><init>(Lccc71/bmw/lib/bmw_history;)V

    invoke-virtual {v0, v5, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 366
    invoke-virtual {v0, v4, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 367
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 460
    :goto_0
    return v1

    .line 370
    :cond_0
    sget v2, Lccc71/bmw/lib/d;->cX:I

    if-ne v0, v2, :cond_1

    .line 372
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 373
    sget v2, Lccc71/bmw/lib/g;->bN:I

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 374
    new-instance v2, Lccc71/bmw/lib/bc;

    invoke-direct {v2, p0}, Lccc71/bmw/lib/bc;-><init>(Lccc71/bmw/lib/bmw_history;)V

    invoke-virtual {v0, v5, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 399
    invoke-virtual {v0, v4, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 400
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 403
    :cond_1
    sget v2, Lccc71/bmw/lib/d;->cV:I

    if-ne v0, v2, :cond_2

    .line 405
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 406
    sget v2, Lccc71/bmw/lib/g;->bL:I

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 407
    new-instance v2, Lccc71/bmw/lib/be;

    invoke-direct {v2, p0}, Lccc71/bmw/lib/be;-><init>(Lccc71/bmw/lib/bmw_history;)V

    invoke-virtual {v0, v5, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 432
    invoke-virtual {v0, v4, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 433
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 436
    :cond_2
    sget v2, Lccc71/bmw/lib/d;->cW:I

    if-ne v0, v2, :cond_3

    .line 438
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 439
    invoke-virtual {p0}, Lccc71/bmw/lib/bmw_history;->getPackageName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lccc71/bmw/lib/bmw_history;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ".bmw_settings"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 440
    const-string v2, "clear"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 441
    invoke-virtual {p0, v0}, Lccc71/bmw/lib/bmw_history;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 444
    :cond_3
    sget v2, Lccc71/bmw/lib/d;->cS:I

    if-ne v0, v2, :cond_4

    .line 446
    const v0, -0x55000001

    invoke-static {p0, v3, v0, v1}, Lccc71/bmw/data/a/e;->a(Landroid/content/Context;Ljava/lang/String;IZ)V

    goto :goto_0

    .line 450
    :cond_4
    sget v2, Lccc71/bmw/lib/d;->cT:I

    if-ne v0, v2, :cond_6

    .line 452
    new-instance v2, Landroid/content/Intent;

    const-class v0, Lccc71/bmw/lib/bmw_history;

    invoke-direct {v2, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 453
    const-string v3, "ccc71.bmw.lib.EDIT_MARKS"

    iget-boolean v0, p0, Lccc71/bmw/lib/bmw_history;->b:Z

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 454
    const/high16 v0, 0x2000

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 455
    invoke-virtual {p0, v2}, Lccc71/bmw/lib/bmw_history;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_5
    move v0, v1

    .line 453
    goto :goto_1

    .line 460
    :cond_6
    invoke-super {p0, p1}, Lccc71/utils/ccc71_license_activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto/16 :goto_0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 132
    sget-object v0, Lccc71/bmw/lib/bmw_history;->a:Lccc71/bmw/lib/bg;

    invoke-static {v0}, Lccc71/bmw/lib/bi;->a(Landroid/os/Handler;)V

    .line 134
    invoke-super {p0}, Lccc71/utils/ccc71_license_activity;->onPause()V

    .line 135
    return-void
.end method

.method protected onResume()V
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x1

    .line 140
    invoke-super {p0}, Lccc71/utils/ccc71_license_activity;->onResume()V

    .line 142
    invoke-static {p0}, Lccc71/bmw/lib/bmw_settings;->B(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lccc71/utils/al;->a(Landroid/app/Activity;Ljava/lang/String;)V

    .line 144
    const-string v0, "battery_widget_monitor"

    const-string v1, "bmw_status_history - onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    invoke-static {}, Lccc71/utils/a/k;->a()Lccc71/utils/a/k;

    move-result-object v0

    invoke-virtual {v0, p0}, Lccc71/utils/a/k;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/high16 v0, 0x3fc0

    :goto_0
    invoke-static {p0, v0}, Lccc71/utils/ccc71_scale_view;->setFontSize(Landroid/content/Context;F)V

    .line 148
    sget v0, Lccc71/bmw/lib/d;->bQ:I

    invoke-virtual {p0, v0}, Lccc71/bmw/lib/bmw_history;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lccc71/utils/ccc71_list_view;

    .line 149
    sget v1, Lccc71/bmw/lib/d;->bP:I

    invoke-virtual {p0, v1}, Lccc71/bmw/lib/bmw_history;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lccc71/utils/ccc71_grid_view;

    .line 150
    new-instance v2, Lccc71/bmw/lib/ax;

    invoke-direct {v2, p0, v0, v1}, Lccc71/bmw/lib/ax;-><init>(Lccc71/bmw/lib/bmw_history;Lccc71/utils/ccc71_list_view;Lccc71/utils/ccc71_grid_view;)V

    invoke-virtual {v1, v2}, Lccc71/utils/ccc71_grid_view;->setOnViewSwitch(Lccc71/utils/ak;)V

    .line 179
    new-instance v2, Lccc71/bmw/lib/ay;

    invoke-direct {v2, p0, v1}, Lccc71/bmw/lib/ay;-><init>(Lccc71/bmw/lib/bmw_history;Lccc71/utils/ccc71_grid_view;)V

    invoke-virtual {v0, v2}, Lccc71/utils/ccc71_list_view;->setOnViewSwitch(Lccc71/utils/ak;)V

    .line 218
    invoke-static {p0}, Lccc71/bmw/lib/bmw_settings;->h(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 220
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "2012/02/02|21:19:20|mA|%|mV|"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lccc71/bmw/lib/bmw_settings;->aj(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "|0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Lccc71/utils/ccc71_grid_view;->setText(ZLjava/lang/String;)V

    .line 221
    const/4 v2, 0x0

    iput-boolean v2, v0, Lccc71/utils/ccc71_list_view;->a:Z

    .line 228
    :goto_1
    iget-boolean v2, p0, Lccc71/bmw/lib/bmw_history;->b:Z

    if-eqz v2, :cond_0

    .line 229
    invoke-virtual {v1, v5}, Lccc71/utils/ccc71_grid_view;->setVisibility(I)V

    .line 231
    :cond_0
    invoke-static {}, Lccc71/bmw/lib/bi;->d()Ljava/util/ArrayList;

    move-result-object v1

    .line 232
    if-eqz v1, :cond_1

    invoke-static {}, Lccc71/bmw/lib/bi;->e()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 234
    const-string v2, "battery_widget_monitor"

    const-string v3, "bmw_status_history - history loaded"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_4

    .line 237
    sget v1, Lccc71/bmw/lib/g;->cu:I

    invoke-virtual {p0, v1}, Lccc71/bmw/lib/bmw_history;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccc71/utils/ccc71_list_view;->setText(Ljava/lang/String;)V

    .line 244
    :goto_2
    sget v0, Lccc71/bmw/lib/d;->ct:I

    invoke-virtual {p0, v0}, Lccc71/bmw/lib/bmw_history;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 246
    :cond_1
    return-void

    .line 146
    :cond_2
    const/high16 v0, 0x3f80

    goto :goto_0

    .line 225
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "2012/02/02|21:19:20|%/h|%|mV|"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lccc71/bmw/lib/bmw_settings;->aj(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "|0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Lccc71/utils/ccc71_grid_view;->setText(ZLjava/lang/String;)V

    .line 226
    iput-boolean v4, v0, Lccc71/utils/ccc71_list_view;->a:Z

    goto :goto_1

    .line 241
    :cond_4
    iget-boolean v2, p0, Lccc71/bmw/lib/bmw_history;->b:Z

    invoke-virtual {v0, v1, v2}, Lccc71/utils/ccc71_list_view;->setHistoryData(Ljava/util/ArrayList;Z)V

    goto :goto_2
.end method
