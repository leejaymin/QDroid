.class public Lcom/ui/LapseIt/remote/HTTPHtmlGenerator;
.super Ljava/lang/Object;
.source "HTTPHtmlGenerator.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static generateHTML(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 7
    .parameter "htmlStream"

    .prologue
    .line 14
    :try_start_0
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, p0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 15
    .local v1, bis:Ljava/io/BufferedInputStream;
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 16
    .local v2, buf:Ljava/io/ByteArrayOutputStream;
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->read()I

    move-result v5

    .line 17
    .local v5, result:I
    :goto_0
    const/4 v6, -0x1

    if-ne v5, v6, :cond_0

    .line 22
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v6

    .line 28
    .end local v1           #bis:Ljava/io/BufferedInputStream;
    .end local v2           #buf:Ljava/io/ByteArrayOutputStream;
    .end local v5           #result:I
    :goto_1
    return-object v6

    .line 18
    .restart local v1       #bis:Ljava/io/BufferedInputStream;
    .restart local v2       #buf:Ljava/io/ByteArrayOutputStream;
    .restart local v5       #result:I
    :cond_0
    int-to-byte v0, v5

    .line 19
    .local v0, b:B
    invoke-virtual {v2, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 20
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->read()I
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v5

    goto :goto_0

    .line 23
    .end local v0           #b:B
    .end local v1           #bis:Ljava/io/BufferedInputStream;
    .end local v2           #buf:Ljava/io/ByteArrayOutputStream;
    .end local v5           #result:I
    :catch_0
    move-exception v4

    .line 24
    .local v4, e1:Ljava/io/FileNotFoundException;
    invoke-virtual {v4}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 28
    .end local v4           #e1:Ljava/io/FileNotFoundException;
    :goto_2
    const/4 v6, 0x0

    goto :goto_1

    .line 25
    :catch_1
    move-exception v3

    .line 26
    .local v3, e:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2
.end method
