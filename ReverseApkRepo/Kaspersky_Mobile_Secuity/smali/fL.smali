.class public final LfL;
.super LfK;
.source "SourceFile"


# instance fields
.field public d:I

.field public e:Ljava/lang/String;

.field public f:J

.field public g:J

.field private h:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 32
    invoke-direct {p0}, LfK;-><init>()V

    .line 24
    const-wide/16 v0, -0x1

    iput-wide v0, p0, LfL;->f:J

    .line 32
    return-void
.end method

.method public constructor <init>(J)V
    .locals 2
    .parameter

    .prologue
    .line 34
    invoke-direct {p0}, LfK;-><init>()V

    .line 24
    const-wide/16 v0, -0x1

    iput-wide v0, p0, LfL;->f:J

    .line 35
    iput-wide p1, p0, LfL;->h:J

    .line 36
    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 10
    .parameter

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 40
    invoke-virtual {p0}, LfL;->c()V

    .line 41
    iput-boolean v7, p0, LfL;->b:Z

    .line 57
    iget-wide v0, p0, LfL;->f:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 61
    sget-object v0, Lcom/kms/kmsshared/KMSApplication;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 62
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 63
    const-string v2, "read"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 64
    sget-object v2, Lfp;->a:Landroid/net/Uri;

    const-string v3, "thread_id=? AND date=?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    iget-wide v5, p0, LfL;->f:J

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    iget-wide v5, p0, LfL;->g:J

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 68
    if-eqz p1, :cond_2

    .line 70
    iget-wide v1, p0, LfL;->h:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_1

    .line 71
    iget-wide v1, p0, LfL;->h:J

    invoke-static {v0, v1, v2}, Lff;->a(Landroid/content/ContentResolver;J)I

    .line 86
    :cond_0
    :goto_0
    invoke-static {}, Lfp;->c()V

    .line 87
    return-void

    .line 73
    :cond_1
    sget-object v0, Lcom/kms/kmsshared/KMSApplication;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "content://sms/conversations/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, LfL;->f:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "body=?"

    new-array v3, v7, [Ljava/lang/String;

    iget-object v4, p0, LfL;->e:Ljava/lang/String;

    aput-object v4, v3, v8

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 78
    :cond_2
    sget-object v0, Lcom/kms/kmsshared/KMSApplication;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "content://sms/conversations/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, LfL;->f:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v9, v9}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method

.method public final d()J
    .locals 2

    .prologue
    .line 29
    iget-wide v0, p0, LfL;->h:J

    return-wide v0
.end method
