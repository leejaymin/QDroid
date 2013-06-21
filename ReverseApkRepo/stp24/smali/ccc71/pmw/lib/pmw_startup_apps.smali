.class public Lccc71/pmw/lib/pmw_startup_apps;
.super Lccc71/pmw/lib/pmw_activity;
.source "SourceFile"


# static fields
.field private static j:Ljava/text/Collator;


# instance fields
.field public a:Landroid/content/pm/ApplicationInfo;

.field protected b:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private c:Landroid/content/pm/PackageManager;

.field private d:Z

.field private e:Z

.field private f:Ljava/util/ArrayList;

.field private k:Landroid/view/View$OnClickListener;

.field private l:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object v0

    sput-object v0, Lccc71/pmw/lib/pmw_startup_apps;->j:Ljava/text/Collator;

    .line 38
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 38
    invoke-direct {p0}, Lccc71/pmw/lib/pmw_activity;-><init>()V

    .line 40
    iput-object v0, p0, Lccc71/pmw/lib/pmw_startup_apps;->a:Landroid/content/pm/ApplicationInfo;

    .line 42
    iput-object v0, p0, Lccc71/pmw/lib/pmw_startup_apps;->c:Landroid/content/pm/PackageManager;

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lccc71/pmw/lib/pmw_startup_apps;->d:Z

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lccc71/pmw/lib/pmw_startup_apps;->f:Ljava/util/ArrayList;

    .line 293
    new-instance v0, Lccc71/pmw/lib/ob;

    invoke-direct {v0, p0}, Lccc71/pmw/lib/ob;-><init>(Lccc71/pmw/lib/pmw_startup_apps;)V

    iput-object v0, p0, Lccc71/pmw/lib/pmw_startup_apps;->k:Landroid/view/View$OnClickListener;

    .line 318
    new-instance v0, Lccc71/pmw/lib/oc;

    invoke-direct {v0, p0}, Lccc71/pmw/lib/oc;-><init>(Lccc71/pmw/lib/pmw_startup_apps;)V

    iput-object v0, p0, Lccc71/pmw/lib/pmw_startup_apps;->b:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 338
    new-instance v0, Lccc71/pmw/lib/od;

    invoke-direct {v0, p0}, Lccc71/pmw/lib/od;-><init>(Lccc71/pmw/lib/pmw_startup_apps;)V

    iput-object v0, p0, Lccc71/pmw/lib/pmw_startup_apps;->l:Landroid/os/Handler;

    .line 38
    return-void
.end method

.method static synthetic a(Lccc71/pmw/lib/pmw_startup_apps;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lccc71/pmw/lib/pmw_startup_apps;->f:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic a(Lccc71/pmw/lib/pmw_startup_apps;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 59
    iput-object p1, p0, Lccc71/pmw/lib/pmw_startup_apps;->f:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic b(Lccc71/pmw/lib/pmw_startup_apps;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 338
    iget-object v0, p0, Lccc71/pmw/lib/pmw_startup_apps;->l:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic c(Lccc71/pmw/lib/pmw_startup_apps;)Landroid/content/pm/PackageManager;
    .locals 1
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lccc71/pmw/lib/pmw_startup_apps;->c:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic d(Lccc71/pmw/lib/pmw_startup_apps;)Z
    .locals 1
    .parameter

    .prologue
    .line 44
    iget-boolean v0, p0, Lccc71/pmw/lib/pmw_startup_apps;->d:Z

    return v0
.end method

.method static synthetic e(Lccc71/pmw/lib/pmw_startup_apps;)Landroid/view/View$OnClickListener;
    .locals 1
    .parameter

    .prologue
    .line 293
    iget-object v0, p0, Lccc71/pmw/lib/pmw_startup_apps;->k:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic e()Ljava/text/Collator;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lccc71/pmw/lib/pmw_startup_apps;->j:Ljava/text/Collator;

    return-object v0
.end method

.method static synthetic f(Lccc71/pmw/lib/pmw_startup_apps;)Z
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-boolean v0, p0, Lccc71/pmw/lib/pmw_startup_apps;->e:Z

    return v0
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter

    .prologue
    .line 118
    invoke-super {p0, p1}, Lccc71/pmw/lib/pmw_activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 119
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 66
    invoke-super {p0, p1}, Lccc71/pmw/lib/pmw_activity;->onCreate(Landroid/os/Bundle;)V

    .line 68
    invoke-static {p0}, Lccc71/pmw/a/d;->a(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lccc71/pmw/lib/pmw_startup_apps;->e:Z

    .line 69
    iget-boolean v0, p0, Lccc71/pmw/lib/pmw_startup_apps;->e:Z

    if-nez v0, :cond_0

    .line 71
    sget v0, Lccc71/pmw/lib/g;->dH:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_startup_apps;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 72
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 74
    :cond_0
    sget-boolean v0, Lccc71/pmw/b/h;->c:Z

    if-nez v0, :cond_1

    .line 76
    sget v0, Lccc71/pmw/lib/g;->eJ:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_startup_apps;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 77
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 79
    :cond_1
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 104
    sget v0, Lccc71/pmw/lib/d;->a:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_startup_apps;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TableLayout;

    .line 105
    if-eqz v0, :cond_0

    .line 106
    invoke-virtual {v0}, Landroid/widget/TableLayout;->removeAllViews()V

    .line 108
    :cond_0
    invoke-super {p0}, Lccc71/pmw/lib/pmw_activity;->onDestroy()V

    .line 110
    iget-object v0, p0, Lccc71/pmw/lib/pmw_startup_apps;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 112
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 113
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 84
    invoke-super {p0}, Lccc71/pmw/lib/pmw_activity;->onPause()V

    .line 86
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccc71/pmw/lib/pmw_startup_apps;->d:Z

    .line 87
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 92
    invoke-super {p0}, Lccc71/pmw/lib/pmw_activity;->onResume()V

    .line 94
    iput-boolean v1, p0, Lccc71/pmw/lib/pmw_startup_apps;->d:Z

    .line 96
    sget v0, Lccc71/pmw/lib/e;->bu:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_startup_apps;->setContentView(I)V

    .line 98
    iget-object v0, p0, Lccc71/pmw/lib/pmw_startup_apps;->c:Landroid/content/pm/PackageManager;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lccc71/pmw/lib/pmw_startup_apps;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lccc71/pmw/lib/pmw_startup_apps;->c:Landroid/content/pm/PackageManager;

    :cond_0
    new-instance v0, Lccc71/pmw/lib/oe;

    invoke-direct {v0, p0}, Lccc71/pmw/lib/oe;-><init>(Lccc71/pmw/lib/pmw_startup_apps;)V

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lccc71/pmw/lib/oe;->c([Ljava/lang/Object;)Lccc71/utils/android/a;

    .line 99
    return-void
.end method
