.class public final LfE;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ley;


# instance fields
.field private a:Landroid/content/Context;

.field private b:LfI;

.field private c:LfJ;

.field private d:LfH;

.field private e:Ljava/util/Vector;

.field private f:Ljava/util/Vector;

.field private g:Ljava/util/Vector;

.field private h:LfG;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, LfI;

    invoke-direct {v0, p0}, LfI;-><init>(LfE;)V

    iput-object v0, p0, LfE;->b:LfI;

    .line 36
    new-instance v0, LfJ;

    invoke-direct {v0, p0}, LfJ;-><init>(LfE;)V

    iput-object v0, p0, LfE;->c:LfJ;

    .line 37
    new-instance v0, LfH;

    invoke-direct {v0, p0}, LfH;-><init>(LfE;)V

    iput-object v0, p0, LfE;->d:LfH;

    .line 38
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, LfE;->e:Ljava/util/Vector;

    .line 39
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, LfE;->f:Ljava/util/Vector;

    .line 40
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, LfE;->g:Ljava/util/Vector;

    .line 65
    new-instance v0, LfG;

    invoke-direct {v0, p0}, LfG;-><init>(LfE;)V

    iput-object v0, p0, LfE;->h:LfG;

    .line 46
    iput-object p1, p0, LfE;->a:Landroid/content/Context;

    .line 47
    invoke-static {p0}, Lcom/kms/kmsdaemon/SMSReceiver;->a(Ley;)V

    .line 48
    return-void
.end method

.method static synthetic a(LfE;)LfI;
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, LfE;->b:LfI;

    return-object v0
.end method

.method static synthetic b(LfE;)LfH;
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, LfE;->d:LfH;

    return-object v0
.end method

.method static synthetic c(LfE;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, LfE;->a:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public final a()Landroid/telephony/ServiceState;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, LfE;->h:LfG;

    invoke-virtual {v0}, LfG;->a()Landroid/telephony/ServiceState;

    move-result-object v0

    return-object v0
.end method

.method public final declared-synchronized a(LfD;)V
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 570
    monitor-enter p0

    :try_start_0
    invoke-interface {p1}, LfD;->a()I

    move-result v3

    move v2, v1

    .line 572
    :goto_0
    iget-object v0, p0, LfE;->e:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v2, v0, :cond_2

    .line 574
    iget-object v0, p0, LfE;->e:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LfD;

    .line 575
    invoke-interface {v0}, LfD;->a()I

    move-result v0

    if-le v3, v0, :cond_1

    .line 577
    iget-object v0, p0, LfE;->e:Ljava/util/Vector;

    invoke-virtual {v0, p1, v2}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    .line 578
    const/4 v0, 0x1

    .line 582
    :goto_1
    if-nez v0, :cond_0

    .line 584
    iget-object v0, p0, LfE;->e:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 586
    :cond_0
    monitor-exit p0

    return-void

    .line 572
    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 570
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public final declared-synchronized a(LfK;)V
    .locals 3
    .parameter

    .prologue
    .line 548
    monitor-enter p0

    :try_start_0
    instance-of v1, p1, LfN;

    if-eqz v1, :cond_0

    .line 549
    move-object v0, p1

    check-cast v0, LfN;

    move-object v1, v0

    .line 550
    iget v2, v1, LfN;->d:I

    if-nez v2, :cond_0

    .line 551
    iget-object v2, p0, LfE;->f:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 554
    :cond_0
    instance-of v1, p1, LfL;

    if-eqz v1, :cond_1

    .line 555
    move-object v0, p1

    check-cast v0, LfL;

    move-object v1, v0

    .line 556
    iget v2, v1, LfL;->d:I

    if-nez v2, :cond_1

    .line 557
    iget-object v2, p0, LfE;->g:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 560
    :cond_1
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v1, p0, LfE;->e:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v2, v1, :cond_2

    .line 562
    iget-object v1, p0, LfE;->e:Ljava/util/Vector;

    invoke-virtual {v1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LfD;

    .line 563
    invoke-interface {v1, p1}, LfD;->a(LfK;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_2

    .line 564
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    .line 566
    :cond_2
    monitor-exit p0

    return-void

    .line 548
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public final a(LfL;)V
    .locals 1
    .parameter

    .prologue
    .line 543
    iget-object v0, p0, LfE;->g:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 544
    return-void
.end method

.method public final a(LfM;)V
    .locals 1
    .parameter

    .prologue
    .line 57
    iget-object v0, p0, LfE;->h:LfG;

    invoke-virtual {v0, p1}, LfG;->a(LfM;)V

    .line 58
    return-void
.end method

.method public final a(LfN;)V
    .locals 1
    .parameter

    .prologue
    .line 529
    iget-object v0, p0, LfE;->f:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 530
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 519
    invoke-virtual {p0}, LfE;->d()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 520
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LfN;

    .line 521
    iget-object v2, v0, LfN;->c:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 522
    iget-object v1, p0, LfE;->f:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 526
    :cond_1
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 224
    new-instance v1, LfL;

    invoke-direct {v1}, LfL;-><init>()V

    .line 225
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    iput-wide v2, v1, LfL;->g:J

    .line 226
    iput-object p1, v1, LfL;->c:Ljava/lang/String;

    .line 227
    iput v0, v1, LfL;->d:I

    .line 228
    iput-object p2, v1, LfL;->e:Ljava/lang/String;

    .line 233
    invoke-virtual {p0, v1}, LfE;->a(LfK;)V

    .line 235
    invoke-virtual {v1}, LfL;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 241
    const/4 v0, 0x1

    .line 244
    :cond_0
    return v0
.end method

.method public final b()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 194
    iget-object v0, p0, LfE;->a:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 195
    iget-object v1, p0, LfE;->h:LfG;

    const/16 v2, 0x21

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 196
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, LfF;

    invoke-direct {v1, p0}, LfF;-><init>(LfE;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 203
    iget-object v0, p0, LfE;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lff;->a:Landroid/net/Uri;

    iget-object v2, p0, LfE;->b:LfI;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 204
    iget-object v0, p0, LfE;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lff;->b:Landroid/net/Uri;

    iget-object v2, p0, LfE;->c:LfJ;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 205
    iget-object v0, p0, LfE;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, LfE;->d:LfH;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 206
    return-void
.end method

.method public final b(LfM;)V
    .locals 1
    .parameter

    .prologue
    .line 62
    iget-object v0, p0, LfE;->h:LfG;

    invoke-virtual {v0, p1}, LfG;->b(LfM;)V

    .line 63
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 533
    invoke-virtual {p0}, LfE;->e()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 534
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LfL;

    .line 535
    iget-object v2, v0, LfL;->c:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 536
    iget-object v1, p0, LfE;->g:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 540
    :cond_1
    return-void
.end method

.method public final c()V
    .locals 3

    .prologue
    .line 214
    iget-object v0, p0, LfE;->a:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 215
    iget-object v1, p0, LfE;->h:LfG;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 216
    iget-object v0, p0, LfE;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, LfE;->b:LfI;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 217
    iget-object v0, p0, LfE;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, LfE;->c:LfJ;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 218
    iget-object v0, p0, LfE;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, LfE;->d:LfH;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 219
    return-void
.end method

.method public final d()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 511
    iget-object v0, p0, LfE;->f:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public final e()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 515
    iget-object v0, p0, LfE;->g:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
