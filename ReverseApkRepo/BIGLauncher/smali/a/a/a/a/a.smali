.class public final La/a/a/a/a;
.super Ljava/lang/Object;


# static fields
.field private static a:C

.field private static b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-char v0, Ljava/io/File;->separatorChar:C

    sput-char v0, La/a/a/a/a;->a:C

    new-instance v0, La/a/a/a/a/a;

    invoke-direct {v0}, La/a/a/a/a/a;-><init>()V

    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    invoke-virtual {v0}, La/a/a/a/a/a;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, La/a/a/a/a;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/io/Reader;Ljava/io/Writer;)I
    .locals 6

    const/4 v2, -0x1

    const/16 v0, 0x1000

    new-array v3, v0, [C

    const-wide/16 v0, 0x0

    :goto_0
    invoke-virtual {p0, v3}, Ljava/io/Reader;->read([C)I

    move-result v4

    if-eq v2, v4, :cond_0

    const/4 v5, 0x0

    invoke-virtual {p1, v3, v5, v4}, Ljava/io/Writer;->write([CII)V

    int-to-long v4, v4

    add-long/2addr v0, v4

    goto :goto_0

    :cond_0
    const-wide/32 v3, 0x7fffffff

    cmp-long v3, v0, v3

    if-lez v3, :cond_1

    move v0, v2

    :goto_1
    return v0

    :cond_1
    long-to-int v0, v0

    goto :goto_1
.end method

.method public static a(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, La/a/a/a/a/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, La/a/a/a/a/a;-><init>(B)V

    if-nez p1, :cond_0

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-static {v1, v0}, La/a/a/a/a;->a(Ljava/io/Reader;Ljava/io/Writer;)I

    :goto_0
    invoke-virtual {v0}, La/a/a/a/a/a;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-static {v1, v0}, La/a/a/a/a;->a(Ljava/io/Reader;Ljava/io/Writer;)I

    goto :goto_0
.end method

.method public static a(Ljava/io/Closeable;)V
    .locals 1

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static a(Ljava/io/InputStream;)V
    .locals 0

    invoke-static {p0}, La/a/a/a/a;->a(Ljava/io/Closeable;)V

    return-void
.end method

.method public static a(Ljava/io/OutputStream;)V
    .locals 0

    invoke-static {p0}, La/a/a/a/a;->a(Ljava/io/Closeable;)V

    return-void
.end method
