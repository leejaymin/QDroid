.class public Lccc71/pmw/lib/pmw_tab_activity;
.super Landroid/app/TabActivity;
.source "SourceFile"


# instance fields
.field protected a:Landroid/widget/TabHost;

.field protected b:Landroid/view/Menu;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 12
    invoke-direct {p0}, Landroid/app/TabActivity;-><init>()V

    .line 14
    iput-object v0, p0, Lccc71/pmw/lib/pmw_tab_activity;->a:Landroid/widget/TabHost;

    .line 18
    iput-object v0, p0, Lccc71/pmw/lib/pmw_tab_activity;->b:Landroid/view/Menu;

    .line 12
    return-void
.end method

.method private a(Landroid/view/Menu;Z)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 41
    iget-object v0, p0, Lccc71/pmw/lib/pmw_tab_activity;->b:Landroid/view/Menu;

    if-nez v0, :cond_1

    .line 61
    :cond_0
    :goto_0
    return-void

    .line 43
    :cond_1
    invoke-static {}, Lccc71/pmw/lib/pmw_recorder;->a()Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p2, :cond_4

    .line 45
    :cond_2
    sget v0, Lccc71/pmw/lib/d;->eF:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 46
    if-eqz v0, :cond_3

    .line 47
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 48
    :cond_3
    sget v0, Lccc71/pmw/lib/d;->fs:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 49
    if-eqz v0, :cond_0

    .line 50
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 54
    :cond_4
    sget v0, Lccc71/pmw/lib/d;->eF:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 55
    if-eqz v0, :cond_5

    .line 56
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 57
    :cond_5
    sget v0, Lccc71/pmw/lib/d;->fs:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 58
    if-eqz v0, :cond_0

    .line 59
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method


# virtual methods
.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter

    .prologue
    .line 23
    invoke-virtual {p0}, Lccc71/pmw/lib/pmw_tab_activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 24
    sget v1, Lccc71/pmw/lib/f;->b:I

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 26
    iput-object p1, p0, Lccc71/pmw/lib/pmw_tab_activity;->b:Landroid/view/Menu;

    .line 28
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lccc71/pmw/lib/pmw_tab_activity;->a(Landroid/view/Menu;Z)V

    .line 29
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 9
    .parameter

    .prologue
    const/4 v8, 0x0

    const/4 v7, -0x1

    const/4 v0, 0x1

    .line 65
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    .line 67
    const-string v2, "process_monitor_widget"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "ID="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "%x"

    new-array v5, v0, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    sget v2, Lccc71/pmw/lib/d;->eF:I

    if-ne v1, v2, :cond_1

    .line 71
    invoke-static {p0}, Lccc71/pmw/lib/pmw_recorder_service;->a(Landroid/content/Context;)V

    .line 73
    iget-object v1, p0, Lccc71/pmw/lib/pmw_tab_activity;->b:Landroid/view/Menu;

    invoke-direct {p0, v1, v0}, Lccc71/pmw/lib/pmw_tab_activity;->a(Landroid/view/Menu;Z)V

    .line 107
    :cond_0
    :goto_0
    return v0

    .line 76
    :cond_1
    sget v2, Lccc71/pmw/lib/d;->fs:I

    if-ne v1, v2, :cond_2

    .line 78
    invoke-static {}, Lccc71/pmw/lib/pmw_recorder;->d()V

    .line 79
    invoke-static {p0}, Lccc71/pmw/lib/pmw_recorder_service;->b(Landroid/content/Context;)V

    .line 81
    iget-object v1, p0, Lccc71/pmw/lib/pmw_tab_activity;->b:Landroid/view/Menu;

    invoke-direct {p0, v1, v8}, Lccc71/pmw/lib/pmw_tab_activity;->a(Landroid/view/Menu;Z)V

    goto :goto_0

    .line 84
    :cond_2
    sget v2, Lccc71/pmw/lib/d;->fd:I

    if-ne v1, v2, :cond_3

    .line 86
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lccc71/pmw/lib/pmw_settings;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 87
    const-string v2, "ccc71.pmw.current_widget_id"

    invoke-virtual {p0}, Lccc71/pmw/lib/pmw_tab_activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "ccc71.pmw.current_widget_id"

    invoke-virtual {v3, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 88
    invoke-virtual {p0, v1}, Lccc71/pmw/lib/pmw_tab_activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 91
    :cond_3
    sget v2, Lccc71/pmw/lib/d;->fx:I

    if-ne v1, v2, :cond_4

    .line 93
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lccc71/pmw/lib/pmw_main_popup;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 94
    const/high16 v2, 0x6000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 95
    const-string v2, "ccc71.pmw.current_widget_id"

    invoke-virtual {p0}, Lccc71/pmw/lib/pmw_tab_activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "ccc71.pmw.current_widget_id"

    invoke-virtual {v3, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 96
    const-string v2, "ccc71.pmw.popup"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 97
    const-string v2, "ccc71.pmw.autoclose"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 98
    invoke-virtual {p0, v1}, Lccc71/pmw/lib/pmw_tab_activity;->startActivity(Landroid/content/Intent;)V

    .line 100
    invoke-virtual {p0}, Lccc71/pmw/lib/pmw_tab_activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lccc71/pmw/lib/pmw_settings;->l(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 101
    invoke-virtual {p0}, Lccc71/pmw/lib/pmw_tab_activity;->finish()V

    goto :goto_0

    .line 107
    :cond_4
    invoke-super {p0, p1}, Landroid/app/TabActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 35
    iget-object v0, p0, Lccc71/pmw/lib/pmw_tab_activity;->b:Landroid/view/Menu;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lccc71/pmw/lib/pmw_tab_activity;->a(Landroid/view/Menu;Z)V

    .line 36
    invoke-super {p0}, Landroid/app/TabActivity;->onResume()V

    .line 37
    return-void
.end method
