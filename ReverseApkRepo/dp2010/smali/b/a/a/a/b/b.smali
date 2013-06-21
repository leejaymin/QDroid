.class public final Lb/a/a/a/b/b;
.super Ljava/io/PushbackInputStream;


# static fields
.field static final a:Z

.field static final b:Ljava/lang/String;

.field static final c:[B


# instance fields
.field private d:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lb/a/a/a/b/b;->b:Ljava/lang/String;

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lb/a/a/a/b/b;->a:Z

    sget-object v0, Lb/a/a/a/b/b;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lb/a/a/a/b/b;->c:[B

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    sget-object v0, Lb/a/a/a/b/b;->c:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, p1, v0}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;I)V

    const/4 v0, 0x0

    iput v0, p0, Lb/a/a/a/b/b;->d:I

    return-void
.end method

.method private a()I
    .locals 3

    const/16 v1, 0xd

    invoke-super {p0}, Ljava/io/PushbackInputStream;->read()I

    move-result v0

    if-ne v0, v1, :cond_0

    invoke-super {p0}, Ljava/io/PushbackInputStream;->read()I

    move-result v0

    const/16 v2, 0xa

    if-ne v0, v2, :cond_1

    sget-object v0, Lb/a/a/a/b/b;->c:[B

    invoke-virtual {p0, v0}, Lb/a/a/a/b/b;->unread([B)V

    invoke-super {p0}, Ljava/io/PushbackInputStream;->read()I

    move-result v0

    iget v1, p0, Lb/a/a/a/b/b;->d:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lb/a/a/a/b/b;->d:I

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v2, -0x1

    if-eq v0, v2, :cond_2

    invoke-virtual {p0, v0}, Lb/a/a/a/b/b;->unread(I)V

    :cond_2
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public final available()I
    .locals 2

    iget-object v0, p0, Lb/a/a/a/b/b;->in:Ljava/io/InputStream;

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lb/a/a/a/b/b;->buf:[B

    array-length v0, v0

    iget v1, p0, Lb/a/a/a/b/b;->pos:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lb/a/a/a/b/b;->in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final read()I
    .locals 1

    sget-boolean v0, Lb/a/a/a/b/b;->a:Z

    if-eqz v0, :cond_0

    invoke-super {p0}, Ljava/io/PushbackInputStream;->read()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Lb/a/a/a/b/b;->a()I

    move-result v0

    goto :goto_0
.end method

.method public final read([B)I
    .locals 2

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lb/a/a/a/b/b;->read([BII)I

    move-result v0

    return v0
.end method

.method public final read([BII)I
    .locals 4

    const/4 v3, -0x1

    sget-boolean v0, Lb/a/a/a/b/b;->a:Z

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2, p3}, Ljava/io/PushbackInputStream;->read([BII)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    if-gtz p3, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lb/a/a/a/b/b;->available()I

    move-result v0

    if-le p3, v0, :cond_2

    move p3, v0

    :cond_2
    iput p3, p0, Lb/a/a/a/b/b;->d:I

    iget v0, p0, Lb/a/a/a/b/b;->d:I

    if-gtz v0, :cond_3

    const/4 v0, 0x1

    iput v0, p0, Lb/a/a/a/b/b;->d:I

    :cond_3
    invoke-direct {p0}, Lb/a/a/a/b/b;->a()I

    move-result v0

    if-ne v0, v3, :cond_4

    move v0, v3

    goto :goto_0

    :cond_4
    move v1, p2

    :goto_1
    add-int/lit8 v2, v1, 0x1

    int-to-byte v0, v0

    aput-byte v0, p1, v1

    iget v0, p0, Lb/a/a/a/b/b;->d:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lb/a/a/a/b/b;->d:I

    if-lez v0, :cond_5

    invoke-direct {p0}, Lb/a/a/a/b/b;->a()I

    move-result v0

    if-ne v0, v3, :cond_6

    :cond_5
    sub-int v0, v2, p2

    goto :goto_0

    :cond_6
    move v1, v2

    goto :goto_1
.end method
