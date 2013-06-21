.class public Lccc71/bmw/lib/bmw_stats;
.super Lccc71/utils/ccc71_license_tabactivity;
.source "SourceFile"


# instance fields
.field private a:Landroid/widget/TabHost;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Lccc71/utils/ccc71_license_tabactivity;-><init>()V

    .line 11
    const/4 v0, 0x0

    iput-object v0, p0, Lccc71/bmw/lib/bmw_stats;->a:Landroid/widget/TabHost;

    .line 9
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .parameter

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 17
    invoke-super {p0, p1}, Lccc71/utils/ccc71_license_tabactivity;->onCreate(Landroid/os/Bundle;)V

    .line 19
    sget v0, Lccc71/bmw/lib/e;->bh:I

    invoke-virtual {p0, v0}, Lccc71/bmw/lib/bmw_stats;->setContentView(I)V

    .line 21
    invoke-virtual {p0}, Lccc71/bmw/lib/bmw_stats;->getTabHost()Landroid/widget/TabHost;

    move-result-object v0

    iput-object v0, p0, Lccc71/bmw/lib/bmw_stats;->a:Landroid/widget/TabHost;

    .line 26
    invoke-static {p0}, Lccc71/bmw/lib/bmw_settings;->b(Landroid/content/Context;)I

    move-result v8

    .line 28
    invoke-static {}, Lccc71/utils/a/l;->a()Lccc71/utils/a/l;

    move-result-object v0

    .line 30
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-class v2, Lccc71/bmw/lib/bmw_past_stats;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v9

    .line 31
    iget-object v1, p0, Lccc71/bmw/lib/bmw_stats;->a:Landroid/widget/TabHost;

    const-string v2, "past_times"

    invoke-virtual {v1, v2}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    .line 32
    sget v3, Lccc71/bmw/lib/c;->p:I

    sget v4, Lccc71/bmw/lib/g;->bu:I

    if-nez v8, :cond_0

    move v1, v6

    :goto_0
    invoke-virtual {v0, p0, v3, v4, v1}, Lccc71/utils/a/l;->a(Landroid/content/Context;IIZ)Landroid/view/View;

    move-result-object v3

    sget v4, Lccc71/bmw/lib/g;->bu:I

    sget v5, Lccc71/bmw/lib/c;->p:I

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lccc71/utils/a/l;->a(Landroid/content/Context;Landroid/widget/TabHost$TabSpec;Landroid/view/View;II)Landroid/widget/TabHost$TabSpec;

    .line 33
    invoke-virtual {v2, v9}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    .line 34
    iget-object v1, p0, Lccc71/bmw/lib/bmw_stats;->a:Landroid/widget/TabHost;

    invoke-virtual {v1, v2}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 36
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-class v2, Lccc71/bmw/lib/bmw_estimates;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v9

    .line 37
    iget-object v1, p0, Lccc71/bmw/lib/bmw_stats;->a:Landroid/widget/TabHost;

    const-string v2, "estimates"

    invoke-virtual {v1, v2}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    .line 38
    sget v3, Lccc71/bmw/lib/c;->E:I

    sget v4, Lccc71/bmw/lib/g;->bt:I

    if-ne v8, v6, :cond_1

    move v1, v6

    :goto_1
    invoke-virtual {v0, p0, v3, v4, v1}, Lccc71/utils/a/l;->a(Landroid/content/Context;IIZ)Landroid/view/View;

    move-result-object v3

    sget v4, Lccc71/bmw/lib/g;->bt:I

    sget v5, Lccc71/bmw/lib/c;->t:I

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lccc71/utils/a/l;->a(Landroid/content/Context;Landroid/widget/TabHost$TabSpec;Landroid/view/View;II)Landroid/widget/TabHost$TabSpec;

    .line 39
    invoke-virtual {v2, v9}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    .line 40
    iget-object v1, p0, Lccc71/bmw/lib/bmw_stats;->a:Landroid/widget/TabHost;

    invoke-virtual {v1, v2}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 42
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-class v2, Lccc71/bmw/lib/bmw_use_times;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v9

    .line 43
    iget-object v1, p0, Lccc71/bmw/lib/bmw_stats;->a:Landroid/widget/TabHost;

    const-string v2, "use_times"

    invoke-virtual {v1, v2}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    .line 44
    sget v1, Lccc71/bmw/lib/c;->o:I

    sget v3, Lccc71/bmw/lib/g;->bv:I

    const/4 v4, 0x2

    if-ne v8, v4, :cond_2

    :goto_2
    invoke-virtual {v0, p0, v1, v3, v6}, Lccc71/utils/a/l;->a(Landroid/content/Context;IIZ)Landroid/view/View;

    move-result-object v3

    sget v4, Lccc71/bmw/lib/g;->bv:I

    sget v5, Lccc71/bmw/lib/c;->u:I

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lccc71/utils/a/l;->a(Landroid/content/Context;Landroid/widget/TabHost$TabSpec;Landroid/view/View;II)Landroid/widget/TabHost$TabSpec;

    .line 45
    invoke-virtual {v2, v9}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    .line 46
    iget-object v1, p0, Lccc71/bmw/lib/bmw_stats;->a:Landroid/widget/TabHost;

    invoke-virtual {v1, v2}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 48
    iget-object v1, p0, Lccc71/bmw/lib/bmw_stats;->a:Landroid/widget/TabHost;

    invoke-virtual {v1, v8}, Landroid/widget/TabHost;->setCurrentTab(I)V

    .line 49
    iget-object v1, p0, Lccc71/bmw/lib/bmw_stats;->a:Landroid/widget/TabHost;

    invoke-virtual {v0, v1}, Lccc71/utils/a/l;->a(Landroid/widget/TabHost;)V

    .line 50
    return-void

    :cond_0
    move v1, v7

    .line 32
    goto :goto_0

    :cond_1
    move v1, v7

    .line 38
    goto :goto_1

    :cond_2
    move v6, v7

    .line 44
    goto :goto_2
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 55
    invoke-super {p0}, Lccc71/utils/ccc71_license_tabactivity;->onDestroy()V

    .line 57
    iget-object v0, p0, Lccc71/bmw/lib/bmw_stats;->a:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->getCurrentTab()I

    move-result v0

    invoke-static {p0, v0}, Lccc71/bmw/lib/bmw_settings;->b(Landroid/content/Context;I)V

    .line 58
    return-void
.end method
