.class public Lcom/mosaicture/view/TabSettingsActivity;
.super Lcom/mosaicture/view/StandardLeakSafeActivity;

# interfaces
.implements Lcom/mosaicture/c/d;
.implements Lcom/mosaicture/view/m;


# static fields
.field public static a:Lcom/mosaicture/view/aj;

.field public static b:Ljava/util/ArrayList;

.field public static c:Ljava/util/concurrent/ConcurrentHashMap;

.field public static d:Z

.field public static e:Lcom/mosaicture/c/f;

.field static f:Landroid/os/Handler;

.field private static g:Ljava/util/ArrayList;

.field private static h:Ljava/util/ArrayList;

.field private static i:I

.field private static j:Z

.field private static k:Ljava/util/concurrent/ConcurrentHashMap;

.field private static l:Ljava/lang/ref/WeakReference;

.field private static m:Z


# instance fields
.field private n:Landroid/app/ProgressDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    sput v1, Lcom/mosaicture/view/TabSettingsActivity;->i:I

    sput-boolean v1, Lcom/mosaicture/view/TabSettingsActivity;->j:Z

    sput-boolean v1, Lcom/mosaicture/view/TabSettingsActivity;->m:Z

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/mosaicture/view/TabSettingsActivity;->c:Ljava/util/concurrent/ConcurrentHashMap;

    sput-boolean v1, Lcom/mosaicture/view/TabSettingsActivity;->d:Z

    new-instance v0, Lcom/mosaicture/view/ah;

    invoke-direct {v0}, Lcom/mosaicture/view/ah;-><init>()V

    sput-object v0, Lcom/mosaicture/view/TabSettingsActivity;->f:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/mosaicture/view/StandardLeakSafeActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/mosaicture/view/TabSettingsActivity;)Landroid/app/ProgressDialog;
    .locals 1

    iget-object v0, p0, Lcom/mosaicture/view/TabSettingsActivity;->n:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method public static a()V
    .locals 2

    sget-boolean v0, Lcom/mosaicture/view/TabSettingsActivity;->m:Z

    if-nez v0, :cond_0

    new-instance v0, Lcom/mosaicture/view/ao;

    invoke-direct {v0}, Lcom/mosaicture/view/ao;-><init>()V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/mosaicture/view/ao;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    return-void
.end method

.method static synthetic a(I)V
    .locals 0

    sput p0, Lcom/mosaicture/view/TabSettingsActivity;->i:I

    return-void
.end method

.method static synthetic a(Ljava/util/ArrayList;)V
    .locals 0

    sput-object p0, Lcom/mosaicture/view/TabSettingsActivity;->h:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic a(Z)V
    .locals 0

    sput-boolean p0, Lcom/mosaicture/view/TabSettingsActivity;->m:Z

    return-void
.end method

.method static synthetic b(Ljava/util/ArrayList;)V
    .locals 0

    sput-object p0, Lcom/mosaicture/view/TabSettingsActivity;->g:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic b(Z)V
    .locals 0

    sput-boolean p0, Lcom/mosaicture/view/TabSettingsActivity;->j:Z

    return-void
.end method

.method static synthetic d()Ljava/lang/ref/WeakReference;
    .locals 1

    sget-object v0, Lcom/mosaicture/view/TabSettingsActivity;->l:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic e()I
    .locals 1

    sget v0, Lcom/mosaicture/view/TabSettingsActivity;->i:I

    return v0
.end method

.method static synthetic f()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    sget-object v0, Lcom/mosaicture/view/TabSettingsActivity;->k:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic g()Ljava/util/ArrayList;
    .locals 1

    sget-object v0, Lcom/mosaicture/view/TabSettingsActivity;->h:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic h()Ljava/util/ArrayList;
    .locals 1

    sget-object v0, Lcom/mosaicture/view/TabSettingsActivity;->g:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic i()Z
    .locals 1

    sget-boolean v0, Lcom/mosaicture/view/TabSettingsActivity;->j:Z

    return v0
.end method


# virtual methods
.method public final a(Lcom/mosaicture/c/j;)V
    .locals 7

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    iget-object v0, p1, Lcom/mosaicture/c/j;->e:Lcom/mosaicture/c/a;

    sget-object v1, Lcom/mosaicture/c/a;->e:Lcom/mosaicture/c/a;

    if-ne v0, v1, :cond_1

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/mosaicture/view/TabSettingsActivity;->k:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v0, p1, Lcom/mosaicture/c/j;->a:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/mosaicture/c/j;->a:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/mosaicture/c/j;->a:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lcom/mosaicture/d/a;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mosaicture/d/a;

    array-length v3, v0

    move v1, v2

    :goto_0
    if-lt v1, v3, :cond_2

    :cond_0
    sget-object v0, Lcom/mosaicture/view/TabSettingsActivity;->f:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1
    return-void

    :cond_2
    aget-object v4, v0, v1

    sget-object v5, Lcom/mosaicture/view/TabSettingsActivity;->k:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v6, v4, Lcom/mosaicture/d/a;->b:Ljava/lang/String;

    invoke-virtual {v5, v6, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public final b()V
    .locals 2

    new-instance v0, Lcom/mosaicture/view/aq;

    invoke-direct {v0, p0}, Lcom/mosaicture/view/aq;-><init>(Lcom/mosaicture/view/TabSettingsActivity;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/mosaicture/view/aq;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public final c()[Lcom/markupartist/android/widget/b;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/markupartist/android/widget/b;

    const/4 v1, 0x0

    new-instance v2, Lcom/mosaicture/view/as;

    invoke-direct {v2, p0}, Lcom/mosaicture/view/as;-><init>(Lcom/mosaicture/view/TabSettingsActivity;)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lcom/mosaicture/view/ar;

    invoke-direct {v2, p0}, Lcom/mosaicture/view/ar;-><init>(Lcom/mosaicture/view/TabSettingsActivity;)V

    aput-object v2, v0, v1

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/mosaicture/view/StandardLeakSafeActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/mosaicture/view/TabSettingsActivity;->requestWindowFeature(I)Z

    invoke-virtual {p0}, Lcom/mosaicture/view/TabSettingsActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setFlags(II)V

    const v0, 0x7f030010

    invoke-virtual {p0, v0}, Lcom/mosaicture/view/TabSettingsActivity;->setContentView(I)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/mosaicture/view/TabSettingsActivity;->l:Ljava/lang/ref/WeakReference;

    const v0, 0x7f0a0042

    invoke-virtual {p0, v0}, Lcom/mosaicture/view/TabSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    new-instance v1, Lcom/mosaicture/view/aj;

    invoke-direct {v1, p0}, Lcom/mosaicture/view/aj;-><init>(Lcom/mosaicture/view/TabSettingsActivity;)V

    sput-object v1, Lcom/mosaicture/view/TabSettingsActivity;->a:Lcom/mosaicture/view/aj;

    sget-object v1, Lcom/mosaicture/view/TabSettingsActivity;->a:Lcom/mosaicture/view/aj;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-virtual {p0}, Lcom/mosaicture/view/TabSettingsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mosaicture/a/a;->a(Landroid/content/Context;)Lcom/mosaicture/c/f;

    move-result-object v0

    sput-object v0, Lcom/mosaicture/view/TabSettingsActivity;->e:Lcom/mosaicture/c/f;

    invoke-virtual {v0, p0}, Lcom/mosaicture/c/f;->a(Lcom/mosaicture/c/d;)V

    const v0, 0x7f0a0040

    invoke-virtual {p0, v0}, Lcom/mosaicture/view/TabSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    sget-object v1, Lcom/mosaicture/a/a;->b:Lcom/mosaicture/g/a;

    invoke-virtual {v1}, Lcom/mosaicture/g/a;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    new-instance v1, Lcom/mosaicture/view/ai;

    invoke-direct {v1, p0}, Lcom/mosaicture/view/ai;-><init>(Lcom/mosaicture/view/TabSettingsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    new-instance v0, Lcom/mosaicture/view/ao;

    invoke-direct {v0}, Lcom/mosaicture/view/ao;-><init>()V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/mosaicture/view/ao;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_0
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mosaicture/view/TabSettingsActivity;->n:Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/mosaicture/view/TabSettingsActivity;->n:Landroid/app/ProgressDialog;

    const v1, 0x7f070013

    invoke-virtual {p0, v1}, Lcom/mosaicture/view/TabSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/mosaicture/view/TabSettingsActivity;->n:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    iget-object v0, p0, Lcom/mosaicture/view/TabSettingsActivity;->n:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    iget-object v0, p0, Lcom/mosaicture/view/TabSettingsActivity;->n:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    iget-object v0, p0, Lcom/mosaicture/view/TabSettingsActivity;->n:Landroid/app/ProgressDialog;

    goto :goto_0

    :pswitch_1
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mosaicture/view/TabSettingsActivity;->n:Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/mosaicture/view/TabSettingsActivity;->n:Landroid/app/ProgressDialog;

    const v1, 0x7f070014

    invoke-virtual {p0, v1}, Lcom/mosaicture/view/TabSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/mosaicture/view/TabSettingsActivity;->n:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    iget-object v0, p0, Lcom/mosaicture/view/TabSettingsActivity;->n:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    iget-object v0, p0, Lcom/mosaicture/view/TabSettingsActivity;->n:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    iget-object v0, p0, Lcom/mosaicture/view/TabSettingsActivity;->n:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    iget-object v0, p0, Lcom/mosaicture/view/TabSettingsActivity;->n:Landroid/app/ProgressDialog;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 1

    sget-object v0, Lcom/mosaicture/view/TabSettingsActivity;->e:Lcom/mosaicture/c/f;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/mosaicture/view/TabSettingsActivity;->e:Lcom/mosaicture/c/f;

    invoke-virtual {v0, p0}, Lcom/mosaicture/c/f;->b(Lcom/mosaicture/c/d;)V

    :cond_0
    invoke-super {p0}, Lcom/mosaicture/view/StandardLeakSafeActivity;->onDestroy()V

    invoke-static {}, Ljava/lang/System;->gc()V

    return-void
.end method
