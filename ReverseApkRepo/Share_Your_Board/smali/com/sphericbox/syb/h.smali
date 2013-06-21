.class public Lcom/sphericbox/syb/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private aW:Landroid/content/Context;

.field private r:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/sphericbox/syb/h;->aW:Landroid/content/Context;

    .line 22
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/sphericbox/syb/h;->r:Landroid/content/ContentResolver;

    .line 23
    return-void
.end method

.method static synthetic a(Lcom/sphericbox/syb/h;)Landroid/content/ContentResolver;
    .locals 1
    .parameter

    .prologue
    .line 13
    iget-object v0, p0, Lcom/sphericbox/syb/h;->r:Landroid/content/ContentResolver;

    return-object v0
.end method


# virtual methods
.method public A()[Lcom/sphericbox/syb/b;
    .locals 9

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 63
    const/4 v0, 0x4

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v1

    const-string v0, "_data"

    aput-object v0, v2, v4

    const-string v0, "created"

    aput-object v0, v2, v5

    const-string v0, "comment"

    aput-object v0, v2, v6

    .line 68
    iget-object v0, p0, Lcom/sphericbox/syb/h;->r:Landroid/content/ContentResolver;

    sget-object v1, Lcom/sphericbox/syb/i;->CONTENT_URI:Landroid/net/Uri;

    const-string v5, "created desc"

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 74
    new-instance v8, Ljava/util/ArrayList;

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    invoke-direct {v8, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 76
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 77
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 78
    const/4 v0, 0x1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 79
    const/4 v0, 0x2

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 80
    const/4 v0, 0x3

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 82
    new-instance v0, Lcom/sphericbox/syb/b;

    iget-object v1, p0, Lcom/sphericbox/syb/h;->r:Landroid/content/ContentResolver;

    invoke-direct/range {v0 .. v6}, Lcom/sphericbox/syb/b;-><init>(Landroid/content/ContentResolver;ILjava/lang/String;JLjava/lang/String;)V

    .line 83
    invoke-virtual {v0}, Lcom/sphericbox/syb/b;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 84
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 88
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 90
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lcom/sphericbox/syb/b;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/sphericbox/syb/b;

    return-object p0
.end method

.method public a(Ljava/io/File;)V
    .locals 3
    .parameter

    .prologue
    .line 31
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 32
    const-string v1, "_data"

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    iget-object v1, p0, Lcom/sphericbox/syb/h;->r:Landroid/content/ContentResolver;

    sget-object v2, Lcom/sphericbox/syb/i;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 35
    new-instance v0, Lcom/sphericbox/syb/g;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v1, v2}, Lcom/sphericbox/syb/g;-><init>(Lcom/sphericbox/syb/h;Ljava/io/File;ZLcom/sphericbox/syb/d;)V

    .line 36
    new-instance v1, Landroid/media/MediaScannerConnection;

    iget-object v2, p0, Lcom/sphericbox/syb/h;->aW:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Landroid/media/MediaScannerConnection;-><init>(Landroid/content/Context;Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;)V

    .line 37
    invoke-virtual {v0, v1}, Lcom/sphericbox/syb/g;->a(Landroid/media/MediaScannerConnection;)V

    .line 38
    invoke-virtual {v1}, Landroid/media/MediaScannerConnection;->connect()V

    .line 39
    return-void
.end method

.method public b(Lcom/sphericbox/syb/b;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 51
    iget-object v0, p0, Lcom/sphericbox/syb/h;->r:Landroid/content/ContentResolver;

    sget-object v1, Lcom/sphericbox/syb/i;->CONTENT_URI:Landroid/net/Uri;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sphericbox/syb/b;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x27

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 54
    invoke-virtual {p1}, Lcom/sphericbox/syb/b;->f()V

    .line 56
    new-instance v0, Lcom/sphericbox/syb/g;

    invoke-virtual {p1}, Lcom/sphericbox/syb/b;->g()Ljava/io/File;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2, v4}, Lcom/sphericbox/syb/g;-><init>(Lcom/sphericbox/syb/h;Ljava/io/File;ZLcom/sphericbox/syb/d;)V

    .line 57
    new-instance v1, Landroid/media/MediaScannerConnection;

    iget-object v2, p0, Lcom/sphericbox/syb/h;->aW:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Landroid/media/MediaScannerConnection;-><init>(Landroid/content/Context;Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;)V

    .line 58
    invoke-virtual {v0, v1}, Lcom/sphericbox/syb/g;->a(Landroid/media/MediaScannerConnection;)V

    .line 59
    invoke-virtual {v1}, Landroid/media/MediaScannerConnection;->connect()V

    .line 60
    return-void
.end method

.method public c(Lcom/sphericbox/syb/b;)V
    .locals 5
    .parameter

    .prologue
    .line 42
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 43
    const-string v1, "comment"

    invoke-virtual {p1}, Lcom/sphericbox/syb/b;->getComment()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    iget-object v1, p0, Lcom/sphericbox/syb/h;->r:Landroid/content/ContentResolver;

    sget-object v2, Lcom/sphericbox/syb/i;->CONTENT_URI:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/sphericbox/syb/b;->getId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x27

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 48
    return-void
.end method

.method public release()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 26
    iput-object v0, p0, Lcom/sphericbox/syb/h;->aW:Landroid/content/Context;

    .line 27
    iput-object v0, p0, Lcom/sphericbox/syb/h;->r:Landroid/content/ContentResolver;

    .line 28
    return-void
.end method
