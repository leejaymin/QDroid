.class public final Lfd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lfd;->a:Landroid/content/Context;

    .line 21
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 24
    iget-object v0, p0, Lfd;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 25
    const-string v3, "date between ? and ?"

    .line 28
    invoke-static {}, Lfp;->i()J

    move-result-wide v4

    .line 31
    invoke-static {}, LfS;->a()LfS;

    move-result-object v1

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, LfS;->a(I)LfV;

    move-result-object v1

    check-cast v1, Lgd;

    .line 32
    const-class v2, Lgd;

    monitor-enter v2

    .line 33
    :try_start_0
    invoke-virtual {v1}, Lgd;->a()V

    .line 34
    iget-wide v6, v1, Lgd;->o:J

    .line 35
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    .line 37
    sget-object v1, Lfp;->a:Landroid/net/Uri;

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "_id"

    aput-object v4, v2, v8

    const-string v4, "body"

    aput-object v4, v2, v9

    const-string v4, "address"

    aput-object v4, v2, v10

    const/4 v4, 0x3

    const-string v6, "thread_id"

    aput-object v6, v2, v4

    const/4 v4, 0x4

    const-string v6, "date"

    aput-object v6, v2, v4

    new-array v4, v10, [Ljava/lang/String;

    aput-object v5, v4, v8

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v9

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 46
    if-eqz v2, :cond_3

    .line 48
    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 49
    iget-object v1, p0, Lfd;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/kms/kmsshared/KMSApplication;

    .line 50
    invoke-virtual {v1}, Lcom/kms/kmsshared/KMSApplication;->m()Lcom/kms/kmsdaemon/KMSDaemon;

    move-result-object v1

    .line 52
    invoke-virtual {v1}, Lcom/kms/kmsdaemon/KMSDaemon;->c()LfE;

    move-result-object v1

    .line 55
    :cond_0
    const-string v3, "_id"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 56
    new-instance v5, LfL;

    invoke-direct {v5, v3, v4}, LfL;-><init>(J)V

    .line 57
    const-string v6, "thread_id"

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    iput-wide v6, v5, LfL;->f:J

    .line 58
    const-string v6, "address"

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, LfL;->c:Ljava/lang/String;

    .line 59
    const/4 v6, 0x0

    iput v6, v5, LfL;->d:I

    .line 60
    const-string v6, "body"

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, LfL;->e:Ljava/lang/String;

    .line 61
    const-string v6, "date"

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    iput-wide v6, v5, LfL;->g:J

    .line 67
    invoke-virtual {v1, v5}, LfE;->a(LfK;)V

    .line 68
    invoke-virtual {v5}, LfL;->b()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 69
    invoke-static {v0, v3, v4}, Lff;->a(Landroid/content/ContentResolver;J)I

    .line 70
    invoke-virtual {v1, v5}, LfE;->a(LfL;)V

    .line 71
    invoke-static {}, Lfp;->c()V

    .line 74
    :cond_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v3

    if-nez v3, :cond_0

    .line 78
    :cond_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 83
    :cond_3
    return-void

    .line 35
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    .line 78
    :catchall_1
    move-exception v0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    throw v0
.end method
