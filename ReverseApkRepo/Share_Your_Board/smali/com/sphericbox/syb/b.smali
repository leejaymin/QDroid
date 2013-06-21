.class public Lcom/sphericbox/syb/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final id:I

.field private final r:Landroid/content/ContentResolver;

.field private final s:Ljava/lang/String;

.field private final t:J

.field private final u:Ljava/util/Date;

.field private v:Ljava/lang/String;

.field private w:Lcom/sphericbox/syb/a/l;


# direct methods
.method constructor <init>(Landroid/content/ContentResolver;ILjava/lang/String;JLjava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/sphericbox/syb/b;->r:Landroid/content/ContentResolver;

    .line 30
    iput p2, p0, Lcom/sphericbox/syb/b;->id:I

    .line 31
    iput-object p3, p0, Lcom/sphericbox/syb/b;->s:Ljava/lang/String;

    .line 32
    iput-wide p4, p0, Lcom/sphericbox/syb/b;->t:J

    .line 33
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p4, p5}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Lcom/sphericbox/syb/b;->u:Ljava/util/Date;

    .line 34
    iput-object p6, p0, Lcom/sphericbox/syb/b;->v:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public static a(Ljava/util/Date;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/text/DateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/text/DateFormat;->getTimeInstance(I)Ljava/text/DateFormat;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 2
    .parameter

    .prologue
    .line 82
    invoke-virtual {p0}, Lcom/sphericbox/syb/b;->getUri()Landroid/net/Uri;

    move-result-object v0

    .line 83
    iget-object v1, p0, Lcom/sphericbox/syb/b;->r:Landroid/content/ContentResolver;

    invoke-virtual {v1, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    .line 85
    const/4 v1, 0x0

    :try_start_0
    invoke-static {v0, v1, p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 87
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    throw v1
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/sphericbox/syb/b;->u:Ljava/util/Date;

    invoke-static {v0}, Lcom/sphericbox/syb/b;->a(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 116
    if-nez p1, :cond_0

    move v0, v1

    .line 123
    :goto_0
    return v0

    .line 119
    :cond_0
    instance-of v0, p1, Lcom/sphericbox/syb/b;

    if-eqz v0, :cond_1

    .line 120
    check-cast p1, Lcom/sphericbox/syb/b;

    .line 121
    iget-object v0, p1, Lcom/sphericbox/syb/b;->s:Ljava/lang/String;

    iget-object v1, p0, Lcom/sphericbox/syb/b;->s:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v1

    .line 123
    goto :goto_0
.end method

.method exists()Z
    .locals 1

    .prologue
    .line 62
    invoke-virtual {p0}, Lcom/sphericbox/syb/b;->g()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method f()V
    .locals 1

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/sphericbox/syb/b;->g()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 59
    return-void
.end method

.method g()Ljava/io/File;
    .locals 2

    .prologue
    .line 70
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/sphericbox/syb/b;->s:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getComment()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/sphericbox/syb/b;->v:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lcom/sphericbox/syb/b;->id:I

    return v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 2

    .prologue
    .line 42
    sget-object v0, Lcom/sphericbox/syb/i;->CONTENT_URI:Landroid/net/Uri;

    iget v1, p0, Lcom/sphericbox/syb/b;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public h()Z
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/sphericbox/syb/b;->v:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sphericbox/syb/b;->v:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/sphericbox/syb/b;->s:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public i()Lcom/sphericbox/syb/a/l;
    .locals 4

    .prologue
    .line 92
    iget-object v0, p0, Lcom/sphericbox/syb/b;->w:Lcom/sphericbox/syb/a/l;

    if-nez v0, :cond_0

    .line 93
    invoke-virtual {p0}, Lcom/sphericbox/syb/b;->getUri()Landroid/net/Uri;

    move-result-object v0

    .line 94
    iget-object v1, p0, Lcom/sphericbox/syb/b;->r:Landroid/content/ContentResolver;

    invoke-virtual {v1, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    .line 96
    :try_start_0
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 97
    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 98
    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 99
    iget v2, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 100
    iget v1, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 101
    new-instance v3, Lcom/sphericbox/syb/a/l;

    invoke-direct {v3, v2, v1}, Lcom/sphericbox/syb/a/l;-><init>(II)V

    iput-object v3, p0, Lcom/sphericbox/syb/b;->w:Lcom/sphericbox/syb/a/l;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/sphericbox/syb/b;->w:Lcom/sphericbox/syb/a/l;

    return-object v0

    .line 103
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    throw v1
.end method

.method public j()Ljava/lang/String;
    .locals 3

    .prologue
    .line 110
    invoke-virtual {p0}, Lcom/sphericbox/syb/b;->i()Lcom/sphericbox/syb/a/l;

    move-result-object v0

    .line 111
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, v0, Lcom/sphericbox/syb/a/l;->width:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v0, v0, Lcom/sphericbox/syb/a/l;->height:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setComment(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 74
    iput-object p1, p0, Lcom/sphericbox/syb/b;->v:Ljava/lang/String;

    .line 75
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    const-string v3, " "

    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sphericbox/syb/b;->s:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/sphericbox/syb/b;->t:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sphericbox/syb/b;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sphericbox/syb/b;->v:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
