.class public final Lcom/google/ads/internal/o;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/Object;


# instance fields
.field private final b:Lcom/google/ads/aq;

.field private c:Lcom/google/ads/internal/h;

.field private d:Lcom/google/ads/d;

.field private e:Lcom/google/ads/internal/t;

.field private f:Lcom/google/ads/internal/AdWebView;

.field private g:Lcom/google/ads/internal/v;

.field private h:Landroid/os/Handler;

.field private i:J

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:Landroid/content/SharedPreferences;

.field private p:J

.field private q:Lcom/google/ads/m;

.field private r:Z

.field private s:Ljava/util/LinkedList;

.field private t:Ljava/util/LinkedList;

.field private u:I

.field private v:Ljava/lang/Boolean;

.field private w:Lcom/google/ads/aa;

.field private x:Lcom/google/ads/ab;

.field private y:Lcom/google/ads/af;

.field private z:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 86
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/ads/internal/o;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/google/ads/aq;)V
    .locals 5
    .parameter

    .prologue
    const-wide/32 v2, 0xea60

    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/ads/internal/o;->u:I

    .line 312
    iput-object v4, p0, Lcom/google/ads/internal/o;->z:Ljava/lang/String;

    .line 195
    iput-object p1, p0, Lcom/google/ads/internal/o;->b:Lcom/google/ads/aq;

    .line 196
    iput-boolean v1, p0, Lcom/google/ads/internal/o;->r:Z

    .line 199
    new-instance v0, Lcom/google/ads/internal/t;

    invoke-direct {v0}, Lcom/google/ads/internal/t;-><init>()V

    iput-object v0, p0, Lcom/google/ads/internal/o;->e:Lcom/google/ads/internal/t;

    .line 203
    iput-object v4, p0, Lcom/google/ads/internal/o;->c:Lcom/google/ads/internal/h;

    .line 206
    iput-object v4, p0, Lcom/google/ads/internal/o;->d:Lcom/google/ads/d;

    .line 210
    iput-boolean v1, p0, Lcom/google/ads/internal/o;->k:Z

    .line 213
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/ads/internal/o;->h:Landroid/os/Handler;

    .line 217
    iput-wide v2, p0, Lcom/google/ads/internal/o;->p:J

    .line 218
    iput-boolean v1, p0, Lcom/google/ads/internal/o;->l:Z

    .line 219
    iput-boolean v1, p0, Lcom/google/ads/internal/o;->n:Z

    .line 220
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/ads/internal/o;->m:Z

    .line 222
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/google/ads/aq;->d:Lcom/google/ads/util/ab;

    invoke-virtual {v0}, Lcom/google/ads/util/ab;->a()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 265
    :cond_0
    :goto_0
    return-void

    .line 229
    :cond_1
    sget-object v1, Lcom/google/ads/internal/o;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 230
    :try_start_0
    iget-object v0, p1, Lcom/google/ads/aq;->d:Lcom/google/ads/util/ab;

    invoke-virtual {v0}, Lcom/google/ads/util/ab;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const-string v2, "GoogleAdMobAdsPrefs"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/internal/o;->o:Landroid/content/SharedPreferences;

    .line 232
    const-wide/32 v2, 0xea60

    iput-wide v2, p0, Lcom/google/ads/internal/o;->i:J

    .line 244
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 247
    new-instance v0, Lcom/google/ads/m;

    invoke-direct {v0, p0}, Lcom/google/ads/m;-><init>(Lcom/google/ads/internal/o;)V

    iput-object v0, p0, Lcom/google/ads/internal/o;->q:Lcom/google/ads/m;

    .line 250
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/ads/internal/o;->s:Ljava/util/LinkedList;

    .line 253
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/ads/internal/o;->t:Ljava/util/LinkedList;

    .line 256
    invoke-virtual {p0}, Lcom/google/ads/internal/o;->a()V

    .line 259
    iget-object v0, p1, Lcom/google/ads/aq;->d:Lcom/google/ads/util/ab;

    invoke-virtual {v0}, Lcom/google/ads/util/ab;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/google/ads/util/AdUtil;->h(Landroid/content/Context;)V

    .line 261
    new-instance v0, Lcom/google/ads/aa;

    invoke-direct {v0}, Lcom/google/ads/aa;-><init>()V

    iput-object v0, p0, Lcom/google/ads/internal/o;->w:Lcom/google/ads/aa;

    .line 262
    new-instance v0, Lcom/google/ads/ab;

    invoke-direct {v0, p0}, Lcom/google/ads/ab;-><init>(Lcom/google/ads/internal/o;)V

    iput-object v0, p0, Lcom/google/ads/internal/o;->x:Lcom/google/ads/ab;

    .line 263
    iput-object v4, p0, Lcom/google/ads/internal/o;->v:Ljava/lang/Boolean;

    .line 264
    iput-object v4, p0, Lcom/google/ads/internal/o;->y:Lcom/google/ads/af;

    goto :goto_0

    .line 244
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private declared-synchronized A()V
    .locals 6

    .prologue
    .line 1120
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/ads/internal/o;->b:Lcom/google/ads/aq;

    iget-object v0, v0, Lcom/google/ads/aq;->c:Lcom/google/ads/util/ad;

    invoke-virtual {v0}, Lcom/google/ads/util/ad;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 1121
    if-nez v0, :cond_1

    .line 1122
    const-string v0, "activity was null while trying to ping click tracking URLs."

    invoke-static {v0}, Lcom/google/ads/util/d;->e(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1132
    :cond_0
    monitor-exit p0

    return-void

    .line 1127
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/google/ads/internal/o;->t:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1128
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/google/ads/l;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v1, v5}, Lcom/google/ads/l;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1130
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1120
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private a(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 1014
    iget-object v0, p0, Lcom/google/ads/internal/o;->b:Lcom/google/ads/aq;

    iget-object v0, v0, Lcom/google/ads/aq;->e:Lcom/google/ads/util/ab;

    invoke-virtual {v0}, Lcom/google/ads/util/ab;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 1015
    iget-object v0, p0, Lcom/google/ads/internal/o;->b:Lcom/google/ads/aq;

    iget-object v0, v0, Lcom/google/ads/aq;->e:Lcom/google/ads/util/ab;

    invoke-virtual {v0}, Lcom/google/ads/util/ab;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1016
    return-void
.end method

.method private a(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 887
    iget-object v0, p0, Lcom/google/ads/internal/o;->b:Lcom/google/ads/aq;

    iget-object v0, v0, Lcom/google/ads/aq;->d:Lcom/google/ads/util/ab;

    invoke-virtual {v0}, Lcom/google/ads/util/ab;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/google/ads/util/AdUtil;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 890
    invoke-static {}, Lcom/google/ads/x;->a()Lcom/google/ads/x;

    move-result-object v0

    .line 891
    invoke-virtual {v0}, Lcom/google/ads/x;->b()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v3

    .line 892
    invoke-virtual {v0}, Lcom/google/ads/x;->c()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v4

    .line 893
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 894
    iget-object v1, p0, Lcom/google/ads/internal/o;->b:Lcom/google/ads/aq;

    iget-object v1, v1, Lcom/google/ads/aq;->b:Lcom/google/ads/util/ab;

    invoke-virtual {v1}, Lcom/google/ads/util/ab;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v6, "@gw_adlocid@"

    invoke-virtual {v0, v6, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "@gw_qdata@"

    invoke-virtual {v0, v1, p4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "@gw_sdkver@"

    const-string v6, "afma-sdk-a-v6.1.0"

    invoke-virtual {v0, v1, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "@gw_sessid@"

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "@gw_seqnum@"

    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "@gw_devid@"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz p3, :cond_0

    const-string v0, "@gw_adnetid@"

    invoke-virtual {v1, v0, p3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    if-eqz p2, :cond_1

    const-string v0, "@gw_allocid@"

    invoke-virtual {v1, v0, p2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_1
    if-eqz p6, :cond_2

    const-string v0, "@gw_adt@"

    invoke-virtual {v1, v0, p6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_2
    if-eqz p7, :cond_3

    const-string v0, "@gw_aec@"

    invoke-virtual {v1, v0, p7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_3
    if-eqz p5, :cond_4

    invoke-virtual {p5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "1"

    :goto_1
    const-string v6, "@gw_adnetrefresh@"

    invoke-virtual {v1, v6, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 905
    :cond_4
    new-instance v6, Ljava/lang/Thread;

    new-instance v7, Lcom/google/ads/l;

    iget-object v0, p0, Lcom/google/ads/internal/o;->b:Lcom/google/ads/aq;

    iget-object v0, v0, Lcom/google/ads/aq;->d:Lcom/google/ads/util/ab;

    invoke-virtual {v0}, Lcom/google/ads/util/ab;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-direct {v7, v1, v0}, Lcom/google/ads/l;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    invoke-direct {v6, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 907
    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    .line 894
    :cond_5
    const-string v0, "0"

    goto :goto_1

    .line 911
    :cond_6
    iget-object v0, p0, Lcom/google/ads/internal/o;->e:Lcom/google/ads/internal/t;

    invoke-virtual {v0}, Lcom/google/ads/internal/t;->b()V

    .line 912
    return-void
.end method

.method private declared-synchronized y()Z
    .locals 1

    .prologue
    .line 501
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/ads/internal/o;->c:Lcom/google/ads/internal/h;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized z()V
    .locals 6

    .prologue
    .line 921
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/ads/internal/o;->b:Lcom/google/ads/aq;

    iget-object v0, v0, Lcom/google/ads/aq;->c:Lcom/google/ads/util/ad;

    invoke-virtual {v0}, Lcom/google/ads/util/ad;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 922
    if-nez v0, :cond_1

    .line 923
    const-string v0, "activity was null while trying to ping tracking URLs."

    invoke-static {v0}, Lcom/google/ads/util/d;->e(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 933
    :cond_0
    monitor-exit p0

    return-void

    .line 928
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/google/ads/internal/o;->s:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 929
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/google/ads/l;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v1, v5}, Lcom/google/ads/l;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 931
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 921
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 3

    .prologue
    .line 275
    monitor-enter p0

    :try_start_0
    new-instance v1, Lcom/google/ads/internal/AdWebView;

    iget-object v2, p0, Lcom/google/ads/internal/o;->b:Lcom/google/ads/aq;

    iget-object v0, p0, Lcom/google/ads/internal/o;->b:Lcom/google/ads/aq;

    iget-object v0, v0, Lcom/google/ads/aq;->i:Lcom/google/ads/util/ab;

    invoke-virtual {v0}, Lcom/google/ads/util/ab;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/internal/u;

    invoke-virtual {v0}, Lcom/google/ads/internal/u;->b()Lcom/google/ads/g;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/google/ads/internal/AdWebView;-><init>(Lcom/google/ads/aq;Lcom/google/ads/g;)V

    iput-object v1, p0, Lcom/google/ads/internal/o;->f:Lcom/google/ads/internal/AdWebView;

    .line 277
    iget-object v0, p0, Lcom/google/ads/internal/o;->f:Lcom/google/ads/internal/AdWebView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/google/ads/internal/AdWebView;->setVisibility(I)V

    .line 280
    sget-object v0, Lcom/google/ads/internal/c;->c:Ljava/util/Map;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/ads/internal/o;->b:Lcom/google/ads/aq;

    invoke-virtual {v2}, Lcom/google/ads/aq;->b()Z

    move-result v2

    invoke-static {p0, v0, v1, v2}, Lcom/google/ads/internal/v;->a(Lcom/google/ads/internal/o;Ljava/util/Map;ZZ)Lcom/google/ads/internal/v;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/internal/o;->g:Lcom/google/ads/internal/v;

    .line 282
    iget-object v0, p0, Lcom/google/ads/internal/o;->f:Lcom/google/ads/internal/AdWebView;

    iget-object v1, p0, Lcom/google/ads/internal/o;->g:Lcom/google/ads/internal/v;

    invoke-virtual {v0, v1}, Lcom/google/ads/internal/AdWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 285
    iget-object v0, p0, Lcom/google/ads/internal/o;->b:Lcom/google/ads/aq;

    iget-object v0, v0, Lcom/google/ads/aq;->a:Lcom/google/ads/util/ab;

    invoke-virtual {v0}, Lcom/google/ads/util/ab;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/ao;

    iget-object v0, v0, Lcom/google/ads/ao;->a:Lcom/google/ads/util/ab;

    invoke-virtual {v0}, Lcom/google/ads/util/ab;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/ap;

    .line 286
    sget v1, Lcom/google/ads/util/AdUtil;->a:I

    iget-object v0, v0, Lcom/google/ads/ap;->a:Lcom/google/ads/util/ac;

    invoke-virtual {v0}, Lcom/google/ads/util/ac;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lcom/google/ads/internal/o;->b:Lcom/google/ads/aq;

    iget-object v0, v0, Lcom/google/ads/aq;->i:Lcom/google/ads/util/ab;

    invoke-virtual {v0}, Lcom/google/ads/util/ab;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/internal/u;

    invoke-virtual {v0}, Lcom/google/ads/internal/u;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 288
    const-string v0, "Disabling hardware acceleration for a banner."

    invoke-static {v0}, Lcom/google/ads/util/d;->a(Ljava/lang/String;)V

    .line 289
    iget-object v0, p0, Lcom/google/ads/internal/o;->f:Lcom/google/ads/internal/AdWebView;

    invoke-virtual {v0}, Lcom/google/ads/internal/AdWebView;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 291
    :cond_0
    monitor-exit p0

    return-void

    .line 275
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(F)V
    .locals 4
    .parameter

    .prologue
    .line 1026
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/google/ads/internal/o;->p:J

    .line 1027
    const/high16 v2, 0x447a

    mul-float/2addr v2, p1

    float-to-long v2, v2

    iput-wide v2, p0, Lcom/google/ads/internal/o;->p:J

    .line 1029
    invoke-virtual {p0}, Lcom/google/ads/internal/o;->p()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-wide v2, p0, Lcom/google/ads/internal/o;->p:J

    cmp-long v0, v2, v0

    if-eqz v0, :cond_0

    .line 1030
    invoke-virtual {p0}, Lcom/google/ads/internal/o;->e()V

    .line 1031
    invoke-virtual {p0}, Lcom/google/ads/internal/o;->f()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1033
    :cond_0
    monitor-exit p0

    return-void

    .line 1026
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(I)V
    .locals 1
    .parameter

    .prologue
    .line 472
    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/google/ads/internal/o;->u:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 473
    monitor-exit p0

    return-void

    .line 472
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(J)V
    .locals 4
    .parameter

    .prologue
    .line 990
    sget-object v1, Lcom/google/ads/internal/o;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 991
    :try_start_0
    iget-object v0, p0, Lcom/google/ads/internal/o;->o:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 992
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Timeout"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/google/ads/internal/o;->b:Lcom/google/ads/aq;

    iget-object v3, v3, Lcom/google/ads/aq;->b:Lcom/google/ads/util/ab;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 993
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 995
    iget-boolean v0, p0, Lcom/google/ads/internal/o;->r:Z

    if-eqz v0, :cond_0

    .line 996
    iput-wide p1, p0, Lcom/google/ads/internal/o;->i:J

    .line 998
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final declared-synchronized a(Landroid/view/View;Lcom/google/ads/ai;Lcom/google/ads/af;)V
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 665
    monitor-enter p0

    :try_start_0
    const-string v0, "AdManager.onReceiveGWhirlAd() called."

    invoke-static {v0}, Lcom/google/ads/util/d;->a(Ljava/lang/String;)V

    .line 668
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/ads/internal/o;->k:Z

    .line 669
    iput-object p3, p0, Lcom/google/ads/internal/o;->y:Lcom/google/ads/af;

    .line 673
    iget-object v0, p0, Lcom/google/ads/internal/o;->b:Lcom/google/ads/aq;

    invoke-virtual {v0}, Lcom/google/ads/aq;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 674
    invoke-direct {p0, p1}, Lcom/google/ads/internal/o;->a(Landroid/view/View;)V

    .line 675
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {p3}, Lcom/google/ads/af;->d()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "http://e.admob.com/imp?ad_loc=@gw_adlocid@&qdata=@gw_qdata@&ad_network_id=@gw_adnetid@&js=@gw_sdkver@&session_id=@gw_sessid@&seq_num=@gw_seqnum@&nr=@gw_adnetrefresh@&adt=@gw_adt@&aec=@gw_aec@"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {p3}, Lcom/google/ads/af;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3}, Lcom/google/ads/af;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3}, Lcom/google/ads/af;->c()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/google/ads/internal/o;->e:Lcom/google/ads/internal/t;

    invoke-virtual {v0}, Lcom/google/ads/internal/t;->d()Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lcom/google/ads/internal/o;->e:Lcom/google/ads/internal/t;

    invoke-virtual {v0}, Lcom/google/ads/internal/t;->e()Ljava/lang/String;

    move-result-object v7

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/google/ads/internal/o;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;)V

    .line 679
    :cond_1
    iget-object v0, p0, Lcom/google/ads/internal/o;->x:Lcom/google/ads/ab;

    invoke-virtual {v0, p2}, Lcom/google/ads/ab;->a(Lcom/google/ads/ai;)V

    .line 682
    iget-object v0, p0, Lcom/google/ads/internal/o;->b:Lcom/google/ads/aq;

    iget-object v0, v0, Lcom/google/ads/aq;->k:Lcom/google/ads/util/ac;

    invoke-virtual {v0}, Lcom/google/ads/util/ac;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/c;

    .line 683
    if-eqz v0, :cond_2

    .line 684
    iget-object v0, p0, Lcom/google/ads/internal/o;->b:Lcom/google/ads/aq;

    iget-object v0, v0, Lcom/google/ads/aq;->f:Lcom/google/ads/util/ab;

    invoke-virtual {v0}, Lcom/google/ads/util/ab;->a()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 686
    :cond_2
    monitor-exit p0

    return-void

    .line 665
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Lcom/google/ads/d;)V
    .locals 4
    .parameter

    .prologue
    .line 536
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/google/ads/internal/o;->y()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 537
    const-string v0, "loadAd called while the ad is already loading, so aborting."

    invoke-static {v0}, Lcom/google/ads/util/d;->e(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 581
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 543
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/google/ads/AdActivity;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 544
    const-string v0, "loadAd called while an interstitial or landing page is displayed, so aborting"

    invoke-static {v0}, Lcom/google/ads/util/d;->e(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 536
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 550
    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/google/ads/internal/o;->b:Lcom/google/ads/aq;

    iget-object v0, v0, Lcom/google/ads/aq;->d:Lcom/google/ads/util/ab;

    invoke-virtual {v0}, Lcom/google/ads/util/ab;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/google/ads/util/AdUtil;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 553
    iget-object v0, p0, Lcom/google/ads/internal/o;->b:Lcom/google/ads/aq;

    iget-object v0, v0, Lcom/google/ads/aq;->d:Lcom/google/ads/util/ab;

    invoke-virtual {v0}, Lcom/google/ads/util/ab;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/google/ads/util/AdUtil;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 558
    iget-object v0, p0, Lcom/google/ads/internal/o;->o:Landroid/content/SharedPreferences;

    const-string v1, "GoogleAdMobDoritosLife"

    const-wide/32 v2, 0xea60

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    .line 559
    iget-object v0, p0, Lcom/google/ads/internal/o;->b:Lcom/google/ads/aq;

    iget-object v0, v0, Lcom/google/ads/aq;->d:Lcom/google/ads/util/ab;

    invoke-virtual {v0}, Lcom/google/ads/util/ab;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lcom/google/ads/o;->a(Landroid/content/Context;J)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 560
    iget-object v0, p0, Lcom/google/ads/internal/o;->b:Lcom/google/ads/aq;

    iget-object v0, v0, Lcom/google/ads/aq;->c:Lcom/google/ads/util/ad;

    invoke-virtual {v0}, Lcom/google/ads/util/ad;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/google/ads/o;->a(Landroid/app/Activity;)V

    .line 565
    :cond_3
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/ads/internal/o;->k:Z

    .line 566
    iget-object v0, p0, Lcom/google/ads/internal/o;->s:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 569
    iput-object p1, p0, Lcom/google/ads/internal/o;->d:Lcom/google/ads/d;

    .line 573
    iget-object v0, p0, Lcom/google/ads/internal/o;->w:Lcom/google/ads/aa;

    invoke-virtual {v0}, Lcom/google/ads/aa;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 574
    iget-object v0, p0, Lcom/google/ads/internal/o;->x:Lcom/google/ads/ab;

    iget-object v1, p0, Lcom/google/ads/internal/o;->w:Lcom/google/ads/aa;

    invoke-virtual {v1}, Lcom/google/ads/aa;->b()Lcom/google/ads/y;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/google/ads/ab;->a(Lcom/google/ads/y;Lcom/google/ads/d;)V

    goto :goto_0

    .line 579
    :cond_4
    new-instance v0, Lcom/google/ads/internal/h;

    invoke-direct {v0, p0}, Lcom/google/ads/internal/h;-><init>(Lcom/google/ads/internal/o;)V

    iput-object v0, p0, Lcom/google/ads/internal/o;->c:Lcom/google/ads/internal/h;

    .line 580
    iget-object v0, p0, Lcom/google/ads/internal/o;->c:Lcom/google/ads/internal/h;

    invoke-virtual {v0, p1}, Lcom/google/ads/internal/h;->a(Lcom/google/ads/d;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method public final declared-synchronized a(Lcom/google/ads/e;)V
    .locals 2
    .parameter

    .prologue
    .line 593
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/google/ads/internal/o;->c:Lcom/google/ads/internal/h;

    .line 597
    sget-object v0, Lcom/google/ads/e;->c:Lcom/google/ads/e;

    if-ne p1, v0, :cond_0

    .line 598
    iget-object v0, p0, Lcom/google/ads/internal/o;->e:Lcom/google/ads/internal/t;

    .line 599
    invoke-static {}, Lcom/google/ads/internal/t;->q()V

    .line 603
    const/high16 v0, 0x4270

    invoke-virtual {p0, v0}, Lcom/google/ads/internal/o;->a(F)V

    .line 604
    invoke-virtual {p0}, Lcom/google/ads/internal/o;->p()Z

    move-result v0

    if-nez v0, :cond_0

    .line 606
    invoke-virtual {p0}, Lcom/google/ads/internal/o;->f()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/ads/internal/o;->n:Z

    .line 610
    :cond_0
    iget-object v0, p0, Lcom/google/ads/internal/o;->b:Lcom/google/ads/aq;

    invoke-virtual {v0}, Lcom/google/ads/aq;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 611
    sget-object v0, Lcom/google/ads/e;->b:Lcom/google/ads/e;

    if-ne p1, v0, :cond_3

    .line 612
    iget-object v0, p0, Lcom/google/ads/internal/o;->e:Lcom/google/ads/internal/t;

    invoke-virtual {v0}, Lcom/google/ads/internal/t;->v()V

    .line 618
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onFailedToReceiveAd("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/util/d;->c(Ljava/lang/String;)V

    .line 621
    iget-object v0, p0, Lcom/google/ads/internal/o;->b:Lcom/google/ads/aq;

    iget-object v0, v0, Lcom/google/ads/aq;->k:Lcom/google/ads/util/ac;

    invoke-virtual {v0}, Lcom/google/ads/util/ac;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/c;

    .line 622
    if-eqz v0, :cond_2

    .line 623
    iget-object v0, p0, Lcom/google/ads/internal/o;->b:Lcom/google/ads/aq;

    iget-object v0, v0, Lcom/google/ads/aq;->f:Lcom/google/ads/util/ab;

    invoke-virtual {v0}, Lcom/google/ads/util/ab;->a()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 625
    :cond_2
    monitor-exit p0

    return-void

    .line 613
    :cond_3
    :try_start_1
    sget-object v0, Lcom/google/ads/e;->c:Lcom/google/ads/e;

    if-ne p1, v0, :cond_1

    .line 614
    iget-object v0, p0, Lcom/google/ads/internal/o;->e:Lcom/google/ads/internal/t;

    invoke-virtual {v0}, Lcom/google/ads/internal/t;->t()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 593
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Lcom/google/ads/y;)V
    .locals 2
    .parameter

    .prologue
    .line 636
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/google/ads/internal/o;->c:Lcom/google/ads/internal/h;

    .line 638
    invoke-virtual {p1}, Lcom/google/ads/y;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 639
    invoke-virtual {p1}, Lcom/google/ads/y;->e()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/google/ads/internal/o;->a(F)V

    .line 640
    iget-boolean v0, p0, Lcom/google/ads/internal/o;->l:Z

    if-nez v0, :cond_0

    .line 641
    invoke-virtual {p0}, Lcom/google/ads/internal/o;->f()V

    .line 649
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/ads/internal/o;->x:Lcom/google/ads/ab;

    iget-object v1, p0, Lcom/google/ads/internal/o;->d:Lcom/google/ads/d;

    invoke-virtual {v0, p1, v1}, Lcom/google/ads/ab;->a(Lcom/google/ads/y;Lcom/google/ads/d;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 650
    monitor-exit p0

    return-void

    .line 644
    :cond_1
    :try_start_1
    iget-boolean v0, p0, Lcom/google/ads/internal/o;->l:Z

    if-eqz v0, :cond_0

    .line 645
    invoke-virtual {p0}, Lcom/google/ads/internal/o;->e()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 636
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Ljava/lang/Runnable;)V
    .locals 1
    .parameter

    .prologue
    .line 943
    iget-object v0, p0, Lcom/google/ads/internal/o;->h:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 944
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 6
    .parameter

    .prologue
    .line 318
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->encodedQuery(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 320
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 321
    invoke-static {v0}, Lcom/google/ads/util/AdUtil;->b(Landroid/net/Uri;)Ljava/util/HashMap;

    move-result-object v2

    .line 322
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 323
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 330
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/internal/o;->z:Ljava/lang/String;

    .line 331
    iget-object v0, p0, Lcom/google/ads/internal/o;->z:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 332
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/ads/internal/o;->z:Ljava/lang/String;

    .line 334
    :cond_1
    return-void
.end method

.method protected final declared-synchronized a(Ljava/util/LinkedList;)V
    .locals 4
    .parameter

    .prologue
    .line 1194
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1195
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Adding a click tracking URL: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/util/d;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1194
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1197
    :cond_0
    :try_start_1
    iput-object p1, p0, Lcom/google/ads/internal/o;->t:Ljava/util/LinkedList;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1198
    monitor-exit p0

    return-void
.end method

.method public final declared-synchronized a(Z)V
    .locals 1
    .parameter

    .prologue
    .line 1007
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/google/ads/internal/o;->j:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1008
    monitor-exit p0

    return-void

    .line 1007
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b()V
    .locals 2

    .prologue
    .line 300
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/ads/internal/o;->x:Lcom/google/ads/ab;

    if-eqz v0, :cond_0

    .line 301
    iget-object v0, p0, Lcom/google/ads/internal/o;->x:Lcom/google/ads/ab;

    invoke-virtual {v0}, Lcom/google/ads/ab;->a()V

    .line 303
    :cond_0
    iget-object v0, p0, Lcom/google/ads/internal/o;->b:Lcom/google/ads/aq;

    iget-object v0, v0, Lcom/google/ads/aq;->k:Lcom/google/ads/util/ac;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/ads/util/ac;->a(Ljava/lang/Object;)V

    .line 304
    iget-object v0, p0, Lcom/google/ads/internal/o;->b:Lcom/google/ads/aq;

    iget-object v0, v0, Lcom/google/ads/aq;->l:Lcom/google/ads/util/ac;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/ads/util/ac;->a(Ljava/lang/Object;)V

    .line 305
    invoke-virtual {p0}, Lcom/google/ads/internal/o;->w()V

    .line 306
    iget-object v0, p0, Lcom/google/ads/internal/o;->f:Lcom/google/ads/internal/AdWebView;

    if-eqz v0, :cond_1

    .line 307
    iget-object v0, p0, Lcom/google/ads/internal/o;->f:Lcom/google/ads/internal/AdWebView;

    invoke-virtual {v0}, Lcom/google/ads/internal/AdWebView;->destroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 309
    :cond_1
    monitor-exit p0

    return-void

    .line 300
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b(J)V
    .locals 2
    .parameter

    .prologue
    .line 1043
    monitor-enter p0

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 1044
    :try_start_0
    iget-object v0, p0, Lcom/google/ads/internal/o;->o:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "GoogleAdMobDoritosLife"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1046
    :cond_0
    monitor-exit p0

    return-void

    .line 1043
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b(Lcom/google/ads/y;)V
    .locals 8
    .parameter

    .prologue
    .line 712
    monitor-enter p0

    :try_start_0
    const-string v0, "AdManager.onGWhirlNoFill() called."

    invoke-static {v0}, Lcom/google/ads/util/d;->a(Ljava/lang/String;)V

    .line 715
    invoke-virtual {p1}, Lcom/google/ads/y;->i()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/ads/y;->c()Ljava/lang/String;

    move-result-object v4

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "http://e.admob.com/nofill?ad_loc=@gw_adlocid@&qdata=@gw_qdata@&js=@gw_sdkver@&session_id=@gw_sessid@&seq_num=@gw_seqnum@&adt=@gw_adt@&aec=@gw_aec@"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/google/ads/internal/o;->e:Lcom/google/ads/internal/t;

    invoke-virtual {v0}, Lcom/google/ads/internal/t;->d()Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lcom/google/ads/internal/o;->e:Lcom/google/ads/internal/t;

    invoke-virtual {v0}, Lcom/google/ads/internal/t;->e()Ljava/lang/String;

    move-result-object v7

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/google/ads/internal/o;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;)V

    .line 718
    iget-object v0, p0, Lcom/google/ads/internal/o;->b:Lcom/google/ads/aq;

    iget-object v0, v0, Lcom/google/ads/aq;->k:Lcom/google/ads/util/ac;

    invoke-virtual {v0}, Lcom/google/ads/util/ac;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/c;

    .line 719
    if-eqz v0, :cond_1

    .line 720
    iget-object v0, p0, Lcom/google/ads/internal/o;->b:Lcom/google/ads/aq;

    iget-object v0, v0, Lcom/google/ads/aq;->f:Lcom/google/ads/util/ab;

    invoke-virtual {v0}, Lcom/google/ads/util/ab;->a()Ljava/lang/Object;

    sget-object v0, Lcom/google/ads/e;->b:Lcom/google/ads/e;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 722
    :cond_1
    monitor-exit p0

    return-void

    .line 712
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected final declared-synchronized b(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 1181
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Adding a tracking URL: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/util/d;->a(Ljava/lang/String;)V

    .line 1182
    iget-object v0, p0, Lcom/google/ads/internal/o;->s:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1183
    monitor-exit p0

    return-void

    .line 1181
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final b(Z)V
    .locals 1
    .parameter

    .prologue
    .line 1217
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/internal/o;->v:Ljava/lang/Boolean;

    .line 1218
    return-void
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 341
    iget-object v0, p0, Lcom/google/ads/internal/o;->z:Ljava/lang/String;

    return-object v0
.end method

.method public final declared-synchronized d()V
    .locals 1

    .prologue
    .line 350
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/google/ads/internal/o;->m:Z

    .line 351
    const-string v0, "Refreshing is no longer allowed on this AdView."

    invoke-static {v0}, Lcom/google/ads/util/d;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 352
    monitor-exit p0

    return-void

    .line 350
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized e()V
    .locals 2

    .prologue
    .line 361
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/ads/internal/o;->l:Z

    if-eqz v0, :cond_0

    .line 363
    const-string v0, "Disabling refreshing."

    invoke-static {v0}, Lcom/google/ads/util/d;->a(Ljava/lang/String;)V

    .line 364
    iget-object v0, p0, Lcom/google/ads/internal/o;->h:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/ads/internal/o;->q:Lcom/google/ads/m;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 365
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/ads/internal/o;->l:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 369
    :goto_0
    monitor-exit p0

    return-void

    .line 367
    :cond_0
    :try_start_1
    const-string v0, "Refreshing is already disabled."

    invoke-static {v0}, Lcom/google/ads/util/d;->a(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 361
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized f()V
    .locals 4

    .prologue
    .line 376
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/google/ads/internal/o;->n:Z

    .line 378
    iget-object v0, p0, Lcom/google/ads/internal/o;->b:Lcom/google/ads/aq;

    invoke-virtual {v0}, Lcom/google/ads/aq;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 379
    iget-boolean v0, p0, Lcom/google/ads/internal/o;->m:Z

    if-eqz v0, :cond_1

    .line 380
    iget-boolean v0, p0, Lcom/google/ads/internal/o;->l:Z

    if-nez v0, :cond_0

    .line 382
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Enabling refreshing every "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/google/ads/internal/o;->p:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " milliseconds."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/util/d;->a(Ljava/lang/String;)V

    .line 383
    iget-object v0, p0, Lcom/google/ads/internal/o;->h:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/ads/internal/o;->q:Lcom/google/ads/m;

    iget-wide v2, p0, Lcom/google/ads/internal/o;->p:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 384
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/ads/internal/o;->l:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 395
    :goto_0
    monitor-exit p0

    return-void

    .line 387
    :cond_0
    :try_start_1
    const-string v0, "Refreshing is already enabled."

    invoke-static {v0}, Lcom/google/ads/util/d;->a(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 376
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 390
    :cond_1
    :try_start_2
    const-string v0, "Refreshing disabled on this AdView"

    invoke-static {v0}, Lcom/google/ads/util/d;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 393
    :cond_2
    const-string v0, "Tried to enable refreshing on something other than an AdView."

    invoke-static {v0}, Lcom/google/ads/util/d;->a(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public final g()Lcom/google/ads/aq;
    .locals 1

    .prologue
    .line 416
    iget-object v0, p0, Lcom/google/ads/internal/o;->b:Lcom/google/ads/aq;

    return-object v0
.end method

.method public final declared-synchronized h()Lcom/google/ads/aa;
    .locals 1

    .prologue
    .line 425
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/ads/internal/o;->w:Lcom/google/ads/aa;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized i()Lcom/google/ads/internal/h;
    .locals 1

    .prologue
    .line 434
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/ads/internal/o;->c:Lcom/google/ads/internal/h;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized j()Lcom/google/ads/internal/AdWebView;
    .locals 1

    .prologue
    .line 443
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/ads/internal/o;->f:Lcom/google/ads/internal/AdWebView;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized k()Lcom/google/ads/internal/v;
    .locals 1

    .prologue
    .line 452
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/ads/internal/o;->g:Lcom/google/ads/internal/v;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final l()Lcom/google/ads/internal/t;
    .locals 1

    .prologue
    .line 461
    iget-object v0, p0, Lcom/google/ads/internal/o;->e:Lcom/google/ads/internal/t;

    return-object v0
.end method

.method public final declared-synchronized m()I
    .locals 1

    .prologue
    .line 481
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/ads/internal/o;->u:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final n()J
    .locals 2

    .prologue
    .line 490
    iget-wide v0, p0, Lcom/google/ads/internal/o;->i:J

    return-wide v0
.end method

.method public final declared-synchronized o()Z
    .locals 1

    .prologue
    .line 508
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/ads/internal/o;->j:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized p()Z
    .locals 1

    .prologue
    .line 524
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/ads/internal/o;->l:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized q()V
    .locals 1

    .prologue
    .line 733
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/ads/internal/o;->e:Lcom/google/ads/internal/t;

    invoke-virtual {v0}, Lcom/google/ads/internal/t;->w()V

    .line 735
    const-string v0, "onDismissScreen()"

    invoke-static {v0}, Lcom/google/ads/util/d;->c(Ljava/lang/String;)V

    .line 738
    iget-object v0, p0, Lcom/google/ads/internal/o;->b:Lcom/google/ads/aq;

    iget-object v0, v0, Lcom/google/ads/aq;->k:Lcom/google/ads/util/ac;

    invoke-virtual {v0}, Lcom/google/ads/util/ac;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/c;

    .line 739
    if-eqz v0, :cond_0

    .line 740
    iget-object v0, p0, Lcom/google/ads/internal/o;->b:Lcom/google/ads/aq;

    iget-object v0, v0, Lcom/google/ads/aq;->f:Lcom/google/ads/util/ab;

    invoke-virtual {v0}, Lcom/google/ads/util/ab;->a()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 742
    :cond_0
    monitor-exit p0

    return-void

    .line 733
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized r()V
    .locals 1

    .prologue
    .line 752
    monitor-enter p0

    :try_start_0
    const-string v0, "onPresentScreen()"

    invoke-static {v0}, Lcom/google/ads/util/d;->c(Ljava/lang/String;)V

    .line 755
    iget-object v0, p0, Lcom/google/ads/internal/o;->b:Lcom/google/ads/aq;

    iget-object v0, v0, Lcom/google/ads/aq;->k:Lcom/google/ads/util/ac;

    invoke-virtual {v0}, Lcom/google/ads/util/ac;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/c;

    .line 756
    if-eqz v0, :cond_0

    .line 757
    iget-object v0, p0, Lcom/google/ads/internal/o;->b:Lcom/google/ads/aq;

    iget-object v0, v0, Lcom/google/ads/aq;->f:Lcom/google/ads/util/ab;

    invoke-virtual {v0}, Lcom/google/ads/util/ab;->a()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 759
    :cond_0
    monitor-exit p0

    return-void

    .line 752
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized s()V
    .locals 1

    .prologue
    .line 769
    monitor-enter p0

    :try_start_0
    const-string v0, "onLeaveApplication()"

    invoke-static {v0}, Lcom/google/ads/util/d;->c(Ljava/lang/String;)V

    .line 772
    iget-object v0, p0, Lcom/google/ads/internal/o;->b:Lcom/google/ads/aq;

    iget-object v0, v0, Lcom/google/ads/aq;->k:Lcom/google/ads/util/ac;

    invoke-virtual {v0}, Lcom/google/ads/util/ac;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/c;

    .line 773
    if-eqz v0, :cond_0

    .line 774
    iget-object v0, p0, Lcom/google/ads/internal/o;->b:Lcom/google/ads/aq;

    iget-object v0, v0, Lcom/google/ads/aq;->f:Lcom/google/ads/util/ab;

    invoke-virtual {v0}, Lcom/google/ads/util/ab;->a()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 776
    :cond_0
    monitor-exit p0

    return-void

    .line 769
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized t()V
    .locals 1

    .prologue
    .line 784
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/ads/internal/o;->b:Lcom/google/ads/aq;

    iget-object v0, v0, Lcom/google/ads/aq;->l:Lcom/google/ads/util/ac;

    invoke-virtual {v0}, Lcom/google/ads/util/ac;->a()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 785
    monitor-exit p0

    return-void

    .line 784
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final u()V
    .locals 1

    .prologue
    .line 796
    iget-object v0, p0, Lcom/google/ads/internal/o;->e:Lcom/google/ads/internal/t;

    invoke-virtual {v0}, Lcom/google/ads/internal/t;->f()V

    .line 797
    invoke-direct {p0}, Lcom/google/ads/internal/o;->A()V

    .line 798
    return-void
.end method

.method public final declared-synchronized v()V
    .locals 4

    .prologue
    .line 953
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/ads/internal/o;->d:Lcom/google/ads/d;

    if-eqz v0, :cond_3

    .line 954
    iget-object v0, p0, Lcom/google/ads/internal/o;->b:Lcom/google/ads/aq;

    invoke-virtual {v0}, Lcom/google/ads/aq;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 956
    iget-object v0, p0, Lcom/google/ads/internal/o;->b:Lcom/google/ads/aq;

    iget-object v0, v0, Lcom/google/ads/aq;->g:Lcom/google/ads/util/ab;

    invoke-virtual {v0}, Lcom/google/ads/util/ab;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/AdView;

    invoke-virtual {v0}, Lcom/google/ads/AdView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/ads/util/AdUtil;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 957
    const-string v0, "Refreshing ad."

    invoke-static {v0}, Lcom/google/ads/util/d;->c(Ljava/lang/String;)V

    .line 958
    iget-object v0, p0, Lcom/google/ads/internal/o;->d:Lcom/google/ads/d;

    invoke-virtual {p0, v0}, Lcom/google/ads/internal/o;->a(Lcom/google/ads/d;)V

    .line 966
    :goto_0
    iget-boolean v0, p0, Lcom/google/ads/internal/o;->n:Z

    if-eqz v0, :cond_1

    .line 968
    invoke-virtual {p0}, Lcom/google/ads/internal/o;->e()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 979
    :goto_1
    monitor-exit p0

    return-void

    .line 962
    :cond_0
    :try_start_1
    const-string v0, "Not refreshing because the ad is not visible."

    invoke-static {v0}, Lcom/google/ads/util/d;->a(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 953
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 971
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/google/ads/internal/o;->h:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/ads/internal/o;->q:Lcom/google/ads/m;

    iget-wide v2, p0, Lcom/google/ads/internal/o;->p:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 974
    :cond_2
    const-string v0, "Tried to refresh an ad that wasn\'t an AdView."

    invoke-static {v0}, Lcom/google/ads/util/d;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 977
    :cond_3
    const-string v0, "Tried to refresh before calling loadAd()."

    invoke-static {v0}, Lcom/google/ads/util/d;->a(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public final declared-synchronized w()V
    .locals 1

    .prologue
    .line 1090
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/ads/internal/o;->c:Lcom/google/ads/internal/h;

    if-eqz v0, :cond_0

    .line 1091
    iget-object v0, p0, Lcom/google/ads/internal/o;->c:Lcom/google/ads/internal/h;

    invoke-virtual {v0}, Lcom/google/ads/internal/h;->a()V

    .line 1092
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/ads/internal/o;->c:Lcom/google/ads/internal/h;

    .line 1096
    :cond_0
    iget-object v0, p0, Lcom/google/ads/internal/o;->f:Lcom/google/ads/internal/AdWebView;

    if-eqz v0, :cond_1

    .line 1097
    iget-object v0, p0, Lcom/google/ads/internal/o;->f:Lcom/google/ads/internal/AdWebView;

    invoke-virtual {v0}, Lcom/google/ads/internal/AdWebView;->stopLoading()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1099
    :cond_1
    monitor-exit p0

    return-void

    .line 1090
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected final declared-synchronized x()V
    .locals 2

    .prologue
    .line 1142
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/google/ads/internal/o;->c:Lcom/google/ads/internal/h;

    .line 1145
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/ads/internal/o;->k:Z

    .line 1148
    iget-object v0, p0, Lcom/google/ads/internal/o;->f:Lcom/google/ads/internal/AdWebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/ads/internal/AdWebView;->setVisibility(I)V

    .line 1152
    iget-object v0, p0, Lcom/google/ads/internal/o;->b:Lcom/google/ads/aq;

    invoke-virtual {v0}, Lcom/google/ads/aq;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1153
    iget-object v0, p0, Lcom/google/ads/internal/o;->f:Lcom/google/ads/internal/AdWebView;

    invoke-direct {p0, v0}, Lcom/google/ads/internal/o;->a(Landroid/view/View;)V

    .line 1157
    :cond_0
    iget-object v0, p0, Lcom/google/ads/internal/o;->e:Lcom/google/ads/internal/t;

    invoke-virtual {v0}, Lcom/google/ads/internal/t;->g()V

    .line 1160
    iget-object v0, p0, Lcom/google/ads/internal/o;->b:Lcom/google/ads/aq;

    invoke-virtual {v0}, Lcom/google/ads/aq;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1161
    invoke-direct {p0}, Lcom/google/ads/internal/o;->z()V

    .line 1164
    :cond_1
    const-string v0, "onReceiveAd()"

    invoke-static {v0}, Lcom/google/ads/util/d;->c(Ljava/lang/String;)V

    .line 1167
    iget-object v0, p0, Lcom/google/ads/internal/o;->b:Lcom/google/ads/aq;

    iget-object v0, v0, Lcom/google/ads/aq;->k:Lcom/google/ads/util/ac;

    invoke-virtual {v0}, Lcom/google/ads/util/ac;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/c;

    .line 1168
    if-eqz v0, :cond_2

    .line 1169
    iget-object v0, p0, Lcom/google/ads/internal/o;->b:Lcom/google/ads/aq;

    iget-object v0, v0, Lcom/google/ads/aq;->f:Lcom/google/ads/util/ab;

    invoke-virtual {v0}, Lcom/google/ads/util/ab;->a()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1171
    :cond_2
    monitor-exit p0

    return-void

    .line 1142
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
