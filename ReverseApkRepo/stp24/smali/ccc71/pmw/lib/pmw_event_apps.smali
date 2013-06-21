.class public Lccc71/pmw/lib/pmw_event_apps;
.super Lccc71/pmw/lib/pmw_activity;
.source "SourceFile"


# static fields
.field static b:Z

.field private static l:Ljava/text/Collator;


# instance fields
.field public a:Landroid/content/pm/ApplicationInfo;

.field protected c:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private d:[Ljava/lang/String;

.field private e:[Ljava/lang/String;

.field private f:Ljava/util/ArrayList;

.field private j:Landroid/content/pm/PackageManager;

.field private k:Z

.field private m:Ljava/lang/Object;

.field private n:Lccc71/utils/android/a;

.field private o:Landroid/view/View$OnClickListener;

.field private p:Landroid/view/View$OnLongClickListener;

.field private q:Landroid/view/View$OnClickListener;

.field private r:Landroid/view/View$OnClickListener;

.field private s:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 73
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object v0

    sput-object v0, Lccc71/pmw/lib/pmw_event_apps;->l:Ljava/text/Collator;

    .line 75
    const/4 v0, 0x0

    sput-boolean v0, Lccc71/pmw/lib/pmw_event_apps;->b:Z

    .line 39
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 39
    invoke-direct {p0}, Lccc71/pmw/lib/pmw_activity;-><init>()V

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lccc71/pmw/lib/pmw_event_apps;->f:Ljava/util/ArrayList;

    .line 67
    iput-object v1, p0, Lccc71/pmw/lib/pmw_event_apps;->a:Landroid/content/pm/ApplicationInfo;

    .line 69
    iput-object v1, p0, Lccc71/pmw/lib/pmw_event_apps;->j:Landroid/content/pm/PackageManager;

    .line 77
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lccc71/pmw/lib/pmw_event_apps;->m:Ljava/lang/Object;

    .line 79
    iput-object v1, p0, Lccc71/pmw/lib/pmw_event_apps;->n:Lccc71/utils/android/a;

    .line 392
    new-instance v0, Lccc71/pmw/lib/fo;

    invoke-direct {v0, p0}, Lccc71/pmw/lib/fo;-><init>(Lccc71/pmw/lib/pmw_event_apps;)V

    iput-object v0, p0, Lccc71/pmw/lib/pmw_event_apps;->o:Landroid/view/View$OnClickListener;

    .line 479
    new-instance v0, Lccc71/pmw/lib/fp;

    invoke-direct {v0, p0}, Lccc71/pmw/lib/fp;-><init>(Lccc71/pmw/lib/pmw_event_apps;)V

    iput-object v0, p0, Lccc71/pmw/lib/pmw_event_apps;->p:Landroid/view/View$OnLongClickListener;

    .line 504
    new-instance v0, Lccc71/pmw/lib/fq;

    invoke-direct {v0, p0}, Lccc71/pmw/lib/fq;-><init>(Lccc71/pmw/lib/pmw_event_apps;)V

    iput-object v0, p0, Lccc71/pmw/lib/pmw_event_apps;->q:Landroid/view/View$OnClickListener;

    .line 526
    new-instance v0, Lccc71/pmw/lib/fr;

    invoke-direct {v0, p0}, Lccc71/pmw/lib/fr;-><init>(Lccc71/pmw/lib/pmw_event_apps;)V

    iput-object v0, p0, Lccc71/pmw/lib/pmw_event_apps;->r:Landroid/view/View$OnClickListener;

    .line 548
    new-instance v0, Lccc71/pmw/lib/fs;

    invoke-direct {v0, p0}, Lccc71/pmw/lib/fs;-><init>(Lccc71/pmw/lib/pmw_event_apps;)V

    iput-object v0, p0, Lccc71/pmw/lib/pmw_event_apps;->c:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 569
    new-instance v0, Lccc71/pmw/lib/ft;

    invoke-direct {v0, p0}, Lccc71/pmw/lib/ft;-><init>(Lccc71/pmw/lib/pmw_event_apps;)V

    iput-object v0, p0, Lccc71/pmw/lib/pmw_event_apps;->s:Landroid/os/Handler;

    .line 39
    return-void
.end method

.method static synthetic a(Lccc71/pmw/lib/pmw_event_apps;)Landroid/view/View$OnClickListener;
    .locals 1
    .parameter

    .prologue
    .line 504
    iget-object v0, p0, Lccc71/pmw/lib/pmw_event_apps;->q:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic b(Lccc71/pmw/lib/pmw_event_apps;)Landroid/view/View$OnClickListener;
    .locals 1
    .parameter

    .prologue
    .line 526
    iget-object v0, p0, Lccc71/pmw/lib/pmw_event_apps;->r:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic c(Lccc71/pmw/lib/pmw_event_apps;)Z
    .locals 1
    .parameter

    .prologue
    .line 71
    iget-boolean v0, p0, Lccc71/pmw/lib/pmw_event_apps;->k:Z

    return v0
.end method

.method static synthetic d(Lccc71/pmw/lib/pmw_event_apps;)[Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 64
    iget-object v0, p0, Lccc71/pmw/lib/pmw_event_apps;->e:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lccc71/pmw/lib/pmw_event_apps;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 569
    iget-object v0, p0, Lccc71/pmw/lib/pmw_event_apps;->s:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic e()Ljava/text/Collator;
    .locals 1

    .prologue
    .line 73
    sget-object v0, Lccc71/pmw/lib/pmw_event_apps;->l:Ljava/text/Collator;

    return-object v0
.end method

.method static synthetic f(Lccc71/pmw/lib/pmw_event_apps;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 65
    iget-object v0, p0, Lccc71/pmw/lib/pmw_event_apps;->f:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic g(Lccc71/pmw/lib/pmw_event_apps;)Landroid/view/View$OnClickListener;
    .locals 1
    .parameter

    .prologue
    .line 392
    iget-object v0, p0, Lccc71/pmw/lib/pmw_event_apps;->o:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic h(Lccc71/pmw/lib/pmw_event_apps;)Landroid/content/pm/PackageManager;
    .locals 1
    .parameter

    .prologue
    .line 69
    iget-object v0, p0, Lccc71/pmw/lib/pmw_event_apps;->j:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic i(Lccc71/pmw/lib/pmw_event_apps;)[Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 63
    iget-object v0, p0, Lccc71/pmw/lib/pmw_event_apps;->d:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic j(Lccc71/pmw/lib/pmw_event_apps;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 77
    iget-object v0, p0, Lccc71/pmw/lib/pmw_event_apps;->m:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic k(Lccc71/pmw/lib/pmw_event_apps;)V
    .locals 1
    .parameter

    .prologue
    .line 79
    const/4 v0, 0x0

    iput-object v0, p0, Lccc71/pmw/lib/pmw_event_apps;->n:Lccc71/utils/android/a;

    return-void
.end method

.method static synthetic l(Lccc71/pmw/lib/pmw_event_apps;)Landroid/view/View$OnLongClickListener;
    .locals 1
    .parameter

    .prologue
    .line 479
    iget-object v0, p0, Lccc71/pmw/lib/pmw_event_apps;->p:Landroid/view/View$OnLongClickListener;

    return-object v0
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter

    .prologue
    .line 148
    invoke-super {p0, p1}, Lccc71/pmw/lib/pmw_activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 149
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 84
    invoke-super {p0, p1}, Lccc71/pmw/lib/pmw_activity;->onCreate(Landroid/os/Bundle;)V

    .line 86
    invoke-virtual {p0}, Lccc71/pmw/lib/pmw_event_apps;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lccc71/pmw/lib/b;->q:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lccc71/pmw/lib/pmw_event_apps;->d:[Ljava/lang/String;

    .line 87
    invoke-virtual {p0}, Lccc71/pmw/lib/pmw_event_apps;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lccc71/pmw/lib/b;->p:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lccc71/pmw/lib/pmw_event_apps;->e:[Ljava/lang/String;

    .line 89
    invoke-static {p0}, Lccc71/pmw/a/d;->a(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lccc71/pmw/lib/pmw_event_apps;->k:Z

    .line 90
    iget-boolean v0, p0, Lccc71/pmw/lib/pmw_event_apps;->k:Z

    if-nez v0, :cond_0

    .line 92
    sget v0, Lccc71/pmw/lib/g;->dH:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_event_apps;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 93
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 95
    :cond_0
    sget-boolean v0, Lccc71/pmw/b/h;->c:Z

    if-nez v0, :cond_1

    .line 97
    sget v0, Lccc71/pmw/lib/g;->eJ:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_event_apps;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 98
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 101
    :cond_1
    const/4 v0, 0x1

    sput-boolean v0, Lccc71/pmw/lib/pmw_event_apps;->b:Z

    .line 102
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 128
    iget-object v1, p0, Lccc71/pmw/lib/pmw_event_apps;->m:Ljava/lang/Object;

    monitor-enter v1

    .line 130
    :try_start_0
    iget-object v0, p0, Lccc71/pmw/lib/pmw_event_apps;->n:Lccc71/utils/android/a;

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lccc71/pmw/lib/pmw_event_apps;->n:Lccc71/utils/android/a;

    invoke-virtual {v0}, Lccc71/utils/android/a;->c()Z

    .line 128
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    sget v0, Lccc71/pmw/lib/d;->a:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_event_apps;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TableLayout;

    .line 135
    if-eqz v0, :cond_1

    .line 136
    invoke-virtual {v0}, Landroid/widget/TableLayout;->removeAllViews()V

    .line 138
    :cond_1
    iget-object v0, p0, Lccc71/pmw/lib/pmw_event_apps;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 140
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 142
    invoke-super {p0}, Lccc71/pmw/lib/pmw_activity;->onDestroy()V

    .line 143
    return-void

    .line 128
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 107
    invoke-super {p0}, Lccc71/pmw/lib/pmw_activity;->onPause()V

    .line 108
    return-void
.end method

.method protected onResume()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 113
    invoke-super {p0}, Lccc71/pmw/lib/pmw_activity;->onResume()V

    .line 115
    sget-boolean v0, Lccc71/pmw/lib/pmw_event_apps;->b:Z

    if-eqz v0, :cond_1

    .line 117
    sget v0, Lccc71/pmw/lib/e;->bu:I

    invoke-virtual {p0, v0}, Lccc71/pmw/lib/pmw_event_apps;->setContentView(I)V

    .line 119
    iget-object v0, p0, Lccc71/pmw/lib/pmw_event_apps;->j:Landroid/content/pm/PackageManager;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lccc71/pmw/lib/pmw_event_apps;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lccc71/pmw/lib/pmw_event_apps;->j:Landroid/content/pm/PackageManager;

    :cond_0
    iget-object v1, p0, Lccc71/pmw/lib/pmw_event_apps;->m:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    new-instance v0, Lccc71/pmw/lib/fu;

    invoke-direct {v0, p0}, Lccc71/pmw/lib/fu;-><init>(Lccc71/pmw/lib/pmw_event_apps;)V

    sget-object v2, Lccc71/utils/android/a;->e:Ljava/util/concurrent/Executor;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v2, v3}, Lccc71/pmw/lib/fu;->a(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Lccc71/utils/android/a;

    move-result-object v0

    iput-object v0, p0, Lccc71/pmw/lib/pmw_event_apps;->n:Lccc71/utils/android/a;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    sput-boolean v4, Lccc71/pmw/lib/pmw_event_apps;->b:Z

    .line 123
    :cond_1
    return-void

    .line 119
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
