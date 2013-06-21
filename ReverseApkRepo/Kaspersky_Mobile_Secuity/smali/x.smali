.class public final Lx;
.super Ljava/lang/Object;


# static fields
.field private static a:Lx;


# instance fields
.field private b:Z

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:I

.field private g:Ljava/lang/String;

.field private h:Landroid/content/Context;

.field private i:Landroid/net/ConnectivityManager;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:I

.field private m:LD;

.field private n:Lu;

.field private o:Z

.field private p:Z

.field private q:Lp;

.field private r:Lt;

.field private s:Landroid/os/Handler;

.field private t:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lx;

    invoke-direct {v0}, Lx;-><init>()V

    sput-object v0, Lx;->a:Lx;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lx;->b:Z

    iput-boolean v0, p0, Lx;->c:Z

    iput-boolean v0, p0, Lx;->d:Z

    iput-boolean v0, p0, Lx;->e:Z

    const/16 v0, 0x64

    iput v0, p0, Lx;->f:I

    const-string v0, "GoogleAnalytics"

    iput-object v0, p0, Lx;->j:Ljava/lang/String;

    const-string v0, "1.4.2"

    iput-object v0, p0, Lx;->k:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v0, Ly;

    invoke-direct {v0, p0}, Ly;-><init>(Lx;)V

    iput-object v0, p0, Lx;->t:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic a(Lx;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lx;->s:Landroid/os/Handler;

    return-object v0
.end method

.method public static a()Lx;
    .locals 1

    sget-object v0, Lx;->a:Lx;

    return-object v0
.end method

.method private a(I)V
    .locals 1

    iget v0, p0, Lx;->l:I

    iput p1, p0, Lx;->l:I

    if-gtz v0, :cond_1

    invoke-direct {p0}, Lx;->f()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-lez v0, :cond_0

    invoke-direct {p0}, Lx;->g()V

    invoke-direct {p0}, Lx;->f()V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;ILandroid/content/Context;)V
    .locals 2

    const/4 v0, -0x1

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, p3, v1}, Lx;->a(Ljava/lang/String;ILandroid/content/Context;Z)V

    return-void
.end method

.method private a(Ljava/lang/String;ILandroid/content/Context;LD;Lu;Z)V
    .locals 8

    new-instance v7, Lz;

    invoke-direct {v7, p0}, Lz;-><init>(Lx;)V

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v7}, Lx;->a(Ljava/lang/String;ILandroid/content/Context;LD;Lu;ZLv;)V

    return-void
.end method

.method private a(Ljava/lang/String;ILandroid/content/Context;LD;Lu;ZLv;)V
    .locals 2

    iput-object p1, p0, Lx;->g:Ljava/lang/String;

    if-nez p3, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Context cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lx;->h:Landroid/content/Context;

    iput-object p4, p0, Lx;->m:LD;

    new-instance v0, Lp;

    invoke-direct {v0}, Lp;-><init>()V

    iput-object v0, p0, Lx;->q:Lp;

    if-eqz p6, :cond_1

    iget-object v0, p0, Lx;->m:LD;

    invoke-interface {v0}, LD;->c()V

    :cond_1
    iput-object p5, p0, Lx;->n:Lu;

    iget-object v0, p0, Lx;->n:Lu;

    invoke-interface {v0, p7}, Lu;->a(Lv;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lx;->p:Z

    iget-object v0, p0, Lx;->i:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_2

    iget-object v0, p0, Lx;->h:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lx;->i:Landroid/net/ConnectivityManager;

    :cond_2
    iget-object v0, p0, Lx;->s:Landroid/os/Handler;

    if-nez v0, :cond_3

    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p3}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lx;->s:Landroid/os/Handler;

    :goto_0
    invoke-direct {p0, p2}, Lx;->a(I)V

    return-void

    :cond_3
    invoke-direct {p0}, Lx;->g()V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;ILandroid/content/Context;Z)V
    .locals 7

    const/4 v2, 0x0

    if-nez p3, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Context cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lx;->m:LD;

    if-nez v0, :cond_1

    new-instance v4, LK;

    invoke-direct {v4, p3}, LK;-><init>(Landroid/content/Context;)V

    invoke-interface {v4, v2}, LD;->a(Z)V

    iget v0, p0, Lx;->f:I

    invoke-interface {v4, v0}, LD;->a(I)V

    :goto_0
    iget-object v0, p0, Lx;->n:Lu;

    if-nez v0, :cond_2

    new-instance v5, LG;

    iget-object v0, p0, Lx;->j:Ljava/lang/String;

    iget-object v1, p0, Lx;->k:Ljava/lang/String;

    invoke-direct {v5, v0, v1}, LG;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v2}, Lu;->a(Z)V

    :goto_1
    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v6}, Lx;->a(Ljava/lang/String;ILandroid/content/Context;LD;Lu;Z)V

    return-void

    :cond_1
    iget-object v4, p0, Lx;->m:LD;

    goto :goto_0

    :cond_2
    iget-object v5, p0, Lx;->n:Lu;

    goto :goto_1
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 8

    new-instance v0, Lw;

    const/4 v4, 0x0

    const/4 v5, -0x1

    iget-object v1, p0, Lx;->h:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v6, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v1, p0, Lx;->h:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v7, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v7}, Lw;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V

    iget-object v1, p0, Lx;->r:Lt;

    invoke-virtual {v0, v1}, Lw;->a(Lt;)V

    iget-object v1, p0, Lx;->q:Lp;

    invoke-virtual {v1}, Lp;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Lw;->b(I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lw;->b(Z)V

    new-instance v1, Lt;

    invoke-direct {v1}, Lt;-><init>()V

    iput-object v1, p0, Lx;->r:Lt;

    iget-object v1, p0, Lx;->m:LD;

    invoke-interface {v1, v0}, LD;->a(Lw;)V

    invoke-direct {p0}, Lx;->h()V

    return-void
.end method

.method static synthetic b(Lx;)LD;
    .locals 1

    iget-object v0, p0, Lx;->m:LD;

    return-object v0
.end method

.method private f()V
    .locals 4

    iget v0, p0, Lx;->l:I

    if-gez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lx;->s:Landroid/os/Handler;

    iget-object v1, p0, Lx;->t:Ljava/lang/Runnable;

    iget v2, p0, Lx;->l:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private g()V
    .locals 2

    iget-object v0, p0, Lx;->s:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lx;->s:Landroid/os/Handler;

    iget-object v1, p0, Lx;->t:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private h()V
    .locals 1

    iget-boolean v0, p0, Lx;->o:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lx;->o:Z

    invoke-direct {p0}, Lx;->f()V

    :cond_0
    return-void
.end method

.method private i()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lx;->n:Lu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lx;->n:Lu;

    invoke-interface {v0}, Lu;->a()V

    :cond_0
    invoke-direct {p0}, Lx;->g()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 6

    iget-object v1, p0, Lx;->g:Ljava/lang/String;

    const-string v2, "__##GOOGLEPAGEVIEW##__"

    const/4 v4, 0x0

    const/4 v5, -0x1

    move-object v0, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lx;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public final a(Ljava/lang/String;Landroid/content/Context;)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, p1, v0, p2}, Lx;->a(Ljava/lang/String;ILandroid/content/Context;)V

    return-void
.end method

.method public final b()Z
    .locals 3

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-boolean v2, p0, Lx;->p:Z

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lx;->f()V

    :goto_0
    return v0

    :cond_0
    iget-object v2, p0, Lx;->i:Landroid/net/ConnectivityManager;

    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    invoke-direct {p0}, Lx;->f()V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lx;->m:LD;

    invoke-interface {v2}, LD;->b()I

    move-result v2

    if-eqz v2, :cond_3

    iget-object v0, p0, Lx;->m:LD;

    invoke-interface {v0}, LD;->a()[LB;

    move-result-object v0

    iget-object v2, p0, Lx;->n:Lu;

    invoke-interface {v2, v0}, Lu;->a([LB;)V

    iput-boolean v1, p0, Lx;->p:Z

    invoke-direct {p0}, Lx;->f()V

    move v0, v1

    goto :goto_0

    :cond_3
    iput-boolean v1, p0, Lx;->o:Z

    goto :goto_0
.end method

.method final c()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lx;->p:Z

    return-void
.end method

.method public final d()V
    .locals 0

    invoke-direct {p0}, Lx;->i()V

    return-void
.end method

.method public final e()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
