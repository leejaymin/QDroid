.class public Lccc71/pmw/lib/pmw_tweaks;
.super Lccc71/pmw/lib/pmw_tab_activity;
.source "SourceFile"


# instance fields
.field private c:Landroid/widget/TabHost;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Lccc71/pmw/lib/pmw_tab_activity;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lccc71/pmw/lib/pmw_tweaks;->c:Landroid/widget/TabHost;

    .line 18
    return-void
.end method

.method static synthetic a(Lccc71/pmw/lib/pmw_tweaks;)Landroid/widget/TabHost;
    .locals 1
    .parameter

    .prologue
    .line 20
    iget-object v0, p0, Lccc71/pmw/lib/pmw_tweaks;->c:Landroid/widget/TabHost;

    return-object v0
.end method

.method private a(I)V
    .locals 6
    .parameter

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x5

    const/4 v3, 0x4

    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 58
    invoke-static {}, Lccc71/pmw/a/ar;->f()Z

    move-result v1

    if-nez v1, :cond_0

    .line 60
    if-le p1, v5, :cond_5

    .line 61
    add-int/lit8 p1, p1, -0x1

    .line 66
    :cond_0
    :goto_0
    invoke-static {}, Lccc71/pmw/a/ah;->o()Z

    move-result v1

    if-nez v1, :cond_1

    .line 68
    if-le p1, v4, :cond_6

    .line 69
    add-int/lit8 p1, p1, -0x1

    .line 73
    :cond_1
    :goto_1
    invoke-static {}, Lccc71/pmw/a/ah;->w()Z

    move-result v1

    if-nez v1, :cond_2

    .line 75
    if-le p1, v3, :cond_7

    .line 76
    add-int/lit8 p1, p1, -0x1

    .line 80
    :cond_2
    :goto_2
    sget-boolean v1, Lccc71/pmw/b/h;->c:Z

    if-nez v1, :cond_3

    .line 82
    if-le p1, v2, :cond_8

    .line 83
    add-int/lit8 p1, p1, -0x1

    .line 88
    :cond_3
    :goto_3
    iget-object v0, p0, Lccc71/pmw/lib/pmw_tweaks;->c:Landroid/widget/TabHost;

    if-eqz v0, :cond_4

    .line 89
    iget-object v0, p0, Lccc71/pmw/lib/pmw_tweaks;->c:Landroid/widget/TabHost;

    invoke-virtual {v0, p1}, Landroid/widget/TabHost;->setCurrentTab(I)V

    .line 90
    :cond_4
    return-void

    .line 62
    :cond_5
    if-ne p1, v5, :cond_0

    move p1, v0

    .line 63
    goto :goto_0

    .line 70
    :cond_6
    if-ne p1, v4, :cond_1

    move p1, v0

    .line 71
    goto :goto_1

    .line 77
    :cond_7
    if-ne p1, v3, :cond_2

    move p1, v0

    .line 78
    goto :goto_2

    .line 84
    :cond_8
    if-ne p1, v2, :cond_3

    move p1, v0

    .line 85
    goto :goto_3
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .parameter

    .prologue
    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 25
    invoke-super {p0, p1}, Lccc71/pmw/lib/pmw_tab_activity;->onCreate(Landroid/os/Bundle;)V

    .line 27
    invoke-virtual {p0}, Lccc71/pmw/lib/pmw_tweaks;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 28
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 30
    const-string v1, "android.intent.action.CREATE_SHORTCUT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 33
    invoke-virtual {p0}, Lccc71/pmw/lib/pmw_tweaks;->getPackageName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lccc71/pmw/lib/pmw_tweaks;->getPackageName()Ljava/lang/String;

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

    .line 35
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 36
    const-string v2, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 37
    const-string v0, "android.intent.extra.shortcut.NAME"

    sget v2, Lccc71/pmw/lib/g;->bt:I

    invoke-virtual {p0, v2}, Lccc71/pmw/lib/pmw_tweaks;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 38
    sget v0, Lccc71/pmw/lib/c;->ax:I

    invoke-static {p0, v0}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v0

    .line 39
    const-string v2, "android.intent.extra.shortcut.ICON_RESOURCE"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 41
    const/4 v0, -0x1

    invoke-virtual {p0, v0, v1}, Lccc71/pmw/lib/pmw_tweaks;->setResult(ILandroid/content/Intent;)V

    .line 43
    invoke-virtual {p0}, Lccc71/pmw/lib/pmw_tweaks;->finish()V

    .line 54
    :goto_0
    return-void

    .line 47
    :cond_0
    invoke-virtual {p0}, Lccc71/pmw/lib/pmw_tweaks;->getIntent()Landroid/content/Intent;

    move-result-object v1

    sget v0, Lccc71/pmw/lib/e;->bd:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_tweaks;->setContentView(I)V

    invoke-virtual {p0}, Lccc71/pmw/lib/pmw_tweaks;->getTabHost()Landroid/widget/TabHost;

    move-result-object v0

    iput-object v0, p0, Lccc71/pmw/lib/pmw_tweaks;->c:Landroid/widget/TabHost;

    invoke-static {p0}, Lccc71/pmw/lib/pmw_settings;->f(Landroid/content/Context;)F

    move-result v0

    invoke-static {v0}, Lccc71/utils/android/z;->a(F)Lccc71/utils/android/z;

    move-result-object v0

    if-eqz v1, :cond_5

    const-string v2, "ccc71.pmw.tweak_id"

    invoke-virtual {v1, v2, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    move v6, v1

    :goto_1
    new-instance v9, Landroid/content/Intent;

    const-class v1, Lccc71/pmw/lib/pmw_info;

    invoke-direct {v9, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "ccc71.pmw.contained"

    invoke-virtual {v9, v1, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lccc71/pmw/lib/pmw_tweaks;->c:Landroid/widget/TabHost;

    const-string v2, "info"

    invoke-virtual {v1, v2}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    sget v3, Lccc71/pmw/lib/c;->aO:I

    sget v4, Lccc71/pmw/lib/g;->bl:I

    if-nez v6, :cond_6

    move v1, v8

    :goto_2
    invoke-virtual {v0, p0, v3, v4, v1}, Lccc71/utils/android/z;->a(Landroid/content/Context;IIZ)Landroid/view/View;

    move-result-object v3

    sget v4, Lccc71/pmw/lib/g;->bl:I

    sget v5, Lccc71/pmw/lib/c;->C:I

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lccc71/utils/android/z;->a(Landroid/content/Context;Landroid/widget/TabHost$TabSpec;Landroid/view/View;II)Landroid/widget/TabHost$TabSpec;

    invoke-virtual {v2, v9}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    iget-object v1, p0, Lccc71/pmw/lib/pmw_tweaks;->c:Landroid/widget/TabHost;

    invoke-virtual {v1, v2}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    sget-boolean v1, Lccc71/pmw/b/h;->c:Z

    if-eqz v1, :cond_1

    new-instance v9, Landroid/content/Intent;

    invoke-virtual {p0}, Lccc71/pmw/lib/pmw_tweaks;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lccc71/pmw/lib/at_build;

    invoke-direct {v9, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lccc71/pmw/lib/pmw_tweaks;->c:Landroid/widget/TabHost;

    const-string v2, "build"

    invoke-virtual {v1, v2}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    sget v3, Lccc71/pmw/lib/c;->i:I

    sget v4, Lccc71/pmw/lib/g;->dd:I

    if-ne v6, v8, :cond_7

    move v1, v8

    :goto_3
    invoke-virtual {v0, p0, v3, v4, v1}, Lccc71/utils/android/z;->a(Landroid/content/Context;IIZ)Landroid/view/View;

    move-result-object v3

    sget v4, Lccc71/pmw/lib/g;->dd:I

    move-object v1, p0

    move v5, v7

    invoke-virtual/range {v0 .. v5}, Lccc71/utils/android/z;->a(Landroid/content/Context;Landroid/widget/TabHost$TabSpec;Landroid/view/View;II)Landroid/widget/TabHost$TabSpec;

    invoke-virtual {v2, v9}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    iget-object v1, p0, Lccc71/pmw/lib/pmw_tweaks;->c:Landroid/widget/TabHost;

    invoke-virtual {v1, v2}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    :cond_1
    new-instance v9, Landroid/content/Intent;

    const-class v1, Lccc71/pmw/lib/pmw_sysctl;

    invoke-direct {v9, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "ccc71.pmw.contained"

    invoke-virtual {v9, v1, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lccc71/pmw/lib/pmw_tweaks;->c:Landroid/widget/TabHost;

    const-string v2, "sysctl"

    invoke-virtual {v1, v2}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    sget v3, Lccc71/pmw/lib/c;->aL:I

    sget v4, Lccc71/pmw/lib/g;->ff:I

    const/4 v1, 0x2

    if-ne v6, v1, :cond_8

    move v1, v8

    :goto_4
    invoke-virtual {v0, p0, v3, v4, v1}, Lccc71/utils/android/z;->a(Landroid/content/Context;IIZ)Landroid/view/View;

    move-result-object v3

    sget v4, Lccc71/pmw/lib/g;->ff:I

    sget v5, Lccc71/pmw/lib/c;->H:I

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lccc71/utils/android/z;->a(Landroid/content/Context;Landroid/widget/TabHost$TabSpec;Landroid/view/View;II)Landroid/widget/TabHost$TabSpec;

    invoke-virtual {v2, v9}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    iget-object v1, p0, Lccc71/pmw/lib/pmw_tweaks;->c:Landroid/widget/TabHost;

    invoke-virtual {v1, v2}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    new-instance v9, Landroid/content/Intent;

    const-class v1, Lccc71/pmw/lib/pmw_cpu;

    invoke-direct {v9, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "ccc71.pmw.contained"

    invoke-virtual {v9, v1, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lccc71/pmw/lib/pmw_tweaks;->c:Landroid/widget/TabHost;

    const-string v2, "cpu"

    invoke-virtual {v1, v2}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    sget v3, Lccc71/pmw/lib/c;->k:I

    sget v4, Lccc71/pmw/lib/g;->dv:I

    const/4 v1, 0x3

    if-ne v6, v1, :cond_9

    move v1, v8

    :goto_5
    invoke-virtual {v0, p0, v3, v4, v1}, Lccc71/utils/android/z;->a(Landroid/content/Context;IIZ)Landroid/view/View;

    move-result-object v3

    sget v4, Lccc71/pmw/lib/g;->dv:I

    sget v5, Lccc71/pmw/lib/c;->z:I

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lccc71/utils/android/z;->a(Landroid/content/Context;Landroid/widget/TabHost$TabSpec;Landroid/view/View;II)Landroid/widget/TabHost$TabSpec;

    invoke-virtual {v2, v9}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    iget-object v1, p0, Lccc71/pmw/lib/pmw_tweaks;->c:Landroid/widget/TabHost;

    invoke-virtual {v1, v2}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    invoke-static {}, Lccc71/pmw/a/ah;->w()Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v9, Landroid/content/Intent;

    const-class v1, Lccc71/pmw/lib/pmw_frequencies;

    invoke-direct {v9, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "ccc71.pmw.contained"

    invoke-virtual {v9, v1, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lccc71/pmw/lib/pmw_tweaks;->c:Landroid/widget/TabHost;

    const-string v2, "times"

    invoke-virtual {v1, v2}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    sget v3, Lccc71/pmw/lib/c;->k:I

    sget v4, Lccc71/pmw/lib/g;->bs:I

    const/4 v1, 0x4

    if-ne v6, v1, :cond_a

    move v1, v8

    :goto_6
    invoke-virtual {v0, p0, v3, v4, v1}, Lccc71/utils/android/z;->a(Landroid/content/Context;IIZ)Landroid/view/View;

    move-result-object v3

    sget v4, Lccc71/pmw/lib/g;->bs:I

    sget v5, Lccc71/pmw/lib/c;->I:I

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lccc71/utils/android/z;->a(Landroid/content/Context;Landroid/widget/TabHost$TabSpec;Landroid/view/View;II)Landroid/widget/TabHost$TabSpec;

    invoke-virtual {v2, v9}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    iget-object v1, p0, Lccc71/pmw/lib/pmw_tweaks;->c:Landroid/widget/TabHost;

    invoke-virtual {v1, v2}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    :cond_2
    invoke-static {}, Lccc71/pmw/a/ah;->o()Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v9, Landroid/content/Intent;

    const-class v1, Lccc71/pmw/lib/pmw_voltage_table;

    invoke-direct {v9, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "ccc71.pmw.contained"

    invoke-virtual {v9, v1, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lccc71/pmw/lib/pmw_tweaks;->c:Landroid/widget/TabHost;

    const-string v2, "volt"

    invoke-virtual {v1, v2}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    sget v3, Lccc71/pmw/lib/c;->aT:I

    sget v4, Lccc71/pmw/lib/g;->fs:I

    const/4 v1, 0x5

    if-ne v6, v1, :cond_b

    move v1, v8

    :goto_7
    invoke-virtual {v0, p0, v3, v4, v1}, Lccc71/utils/android/z;->a(Landroid/content/Context;IIZ)Landroid/view/View;

    move-result-object v3

    sget v4, Lccc71/pmw/lib/g;->fs:I

    sget v5, Lccc71/pmw/lib/c;->K:I

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lccc71/utils/android/z;->a(Landroid/content/Context;Landroid/widget/TabHost$TabSpec;Landroid/view/View;II)Landroid/widget/TabHost$TabSpec;

    invoke-virtual {v2, v9}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    iget-object v1, p0, Lccc71/pmw/lib/pmw_tweaks;->c:Landroid/widget/TabHost;

    invoke-virtual {v1, v2}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    :cond_3
    new-instance v9, Landroid/content/Intent;

    const-class v1, Lccc71/pmw/lib/pmw_sd;

    invoke-direct {v9, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "ccc71.pmw.contained"

    invoke-virtual {v9, v1, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lccc71/pmw/lib/pmw_tweaks;->c:Landroid/widget/TabHost;

    const-string v2, "sd"

    invoke-virtual {v1, v2}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    sget v3, Lccc71/pmw/lib/c;->c:I

    sget v4, Lccc71/pmw/lib/g;->eK:I

    const/4 v1, 0x6

    if-ne v6, v1, :cond_c

    move v1, v8

    :goto_8
    invoke-virtual {v0, p0, v3, v4, v1}, Lccc71/utils/android/z;->a(Landroid/content/Context;IIZ)Landroid/view/View;

    move-result-object v3

    sget v4, Lccc71/pmw/lib/g;->eK:I

    sget v5, Lccc71/pmw/lib/c;->E:I

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lccc71/utils/android/z;->a(Landroid/content/Context;Landroid/widget/TabHost$TabSpec;Landroid/view/View;II)Landroid/widget/TabHost$TabSpec;

    invoke-virtual {v2, v9}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    iget-object v1, p0, Lccc71/pmw/lib/pmw_tweaks;->c:Landroid/widget/TabHost;

    invoke-virtual {v1, v2}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    new-instance v9, Landroid/content/Intent;

    const-class v1, Lccc71/pmw/lib/pmw_memory;

    invoke-direct {v9, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "ccc71.pmw.contained"

    invoke-virtual {v9, v1, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lccc71/pmw/lib/pmw_tweaks;->c:Landroid/widget/TabHost;

    const-string v2, "mem"

    invoke-virtual {v1, v2}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    sget v3, Lccc71/pmw/lib/c;->R:I

    sget v4, Lccc71/pmw/lib/g;->eb:I

    const/4 v1, 0x7

    if-ne v6, v1, :cond_d

    move v1, v8

    :goto_9
    invoke-virtual {v0, p0, v3, v4, v1}, Lccc71/utils/android/z;->a(Landroid/content/Context;IIZ)Landroid/view/View;

    move-result-object v3

    sget v4, Lccc71/pmw/lib/g;->eb:I

    sget v5, Lccc71/pmw/lib/c;->D:I

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lccc71/utils/android/z;->a(Landroid/content/Context;Landroid/widget/TabHost$TabSpec;Landroid/view/View;II)Landroid/widget/TabHost$TabSpec;

    invoke-virtual {v2, v9}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    iget-object v1, p0, Lccc71/pmw/lib/pmw_tweaks;->c:Landroid/widget/TabHost;

    invoke-virtual {v1, v2}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    invoke-static {}, Lccc71/pmw/a/ar;->f()Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v9, Landroid/content/Intent;

    const-class v1, Lccc71/pmw/lib/pmw_memory_tweak;

    invoke-direct {v9, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "ccc71.pmw.contained"

    invoke-virtual {v9, v1, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lccc71/pmw/lib/pmw_tweaks;->c:Landroid/widget/TabHost;

    const-string v2, "mem"

    invoke-virtual {v1, v2}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    sget v1, Lccc71/pmw/lib/c;->R:I

    sget v3, Lccc71/pmw/lib/g;->cS:I

    const/16 v4, 0x8

    if-ne v6, v4, :cond_e

    :goto_a
    invoke-virtual {v0, p0, v1, v3, v8}, Lccc71/utils/android/z;->a(Landroid/content/Context;IIZ)Landroid/view/View;

    move-result-object v3

    sget v4, Lccc71/pmw/lib/g;->cS:I

    sget v5, Lccc71/pmw/lib/c;->D:I

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lccc71/utils/android/z;->a(Landroid/content/Context;Landroid/widget/TabHost$TabSpec;Landroid/view/View;II)Landroid/widget/TabHost$TabSpec;

    invoke-virtual {v2, v9}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    iget-object v1, p0, Lccc71/pmw/lib/pmw_tweaks;->c:Landroid/widget/TabHost;

    invoke-virtual {v1, v2}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    :cond_4
    invoke-direct {p0, v6}, Lccc71/pmw/lib/pmw_tweaks;->a(I)V

    iget-object v1, p0, Lccc71/pmw/lib/pmw_tweaks;->c:Landroid/widget/TabHost;

    invoke-virtual {v0, v1}, Lccc71/utils/android/z;->a(Landroid/widget/TabHost;)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lccc71/pmw/lib/pk;

    invoke-direct {v1, p0}, Lccc71/pmw/lib/pk;-><init>(Lccc71/pmw/lib/pmw_tweaks;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 51
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lccc71/pmw/lib/gh;->a(Landroid/content/Context;Landroid/os/Handler;)Z

    goto/16 :goto_0

    :cond_5
    move v6, v7

    .line 47
    goto/16 :goto_1

    :cond_6
    move v1, v7

    goto/16 :goto_2

    :cond_7
    move v1, v7

    goto/16 :goto_3

    :cond_8
    move v1, v7

    goto/16 :goto_4

    :cond_9
    move v1, v7

    goto/16 :goto_5

    :cond_a
    move v1, v7

    goto/16 :goto_6

    :cond_b
    move v1, v7

    goto/16 :goto_7

    :cond_c
    move v1, v7

    goto/16 :goto_8

    :cond_d
    move v1, v7

    goto :goto_9

    :cond_e
    move v8, v7

    goto :goto_a
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2
    .parameter

    .prologue
    .line 95
    invoke-super {p0, p1}, Lccc71/pmw/lib/pmw_tab_activity;->onNewIntent(Landroid/content/Intent;)V

    .line 97
    const-string v0, "ccc71.pmw.tweak_id"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 99
    invoke-direct {p0, v0}, Lccc71/pmw/lib/pmw_tweaks;->a(I)V

    .line 100
    return-void
.end method
