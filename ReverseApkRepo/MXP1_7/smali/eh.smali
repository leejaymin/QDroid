.class public Leh;
.super Ljava/lang/Object;


# instance fields
.field private final 癤욱븳援:Ljava/util/zip/Adler32;

.field private final 궗:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/zip/Adler32;

    invoke-direct {v0}, Ljava/util/zip/Adler32;-><init>()V

    iput-object v0, p0, Leh;->癤욱븳援:Ljava/util/zip/Adler32;

    const/16 v0, 0x2000

    new-array v0, v0, [B

    iput-object v0, p0, Leh;->궗:[B

    return-void
.end method


# virtual methods
.method public 癤욱븳援()J
    .locals 2

    iget-object v0, p0, Leh;->癤욱븳援:Ljava/util/zip/Adler32;

    invoke-virtual {v0}, Ljava/util/zip/Adler32;->getValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public 癤욱븳援(Ljava/lang/String;)V
    .locals 5

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    :goto_0
    :try_start_0
    iget-object v0, p0, Leh;->궗:[B

    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-gez v0, :cond_0

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    return-void

    :cond_0
    :try_start_1
    iget-object v2, p0, Leh;->癤욱븳援:Ljava/util/zip/Adler32;

    iget-object v3, p0, Leh;->궗:[B

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v0}, Ljava/util/zip/Adler32;->update([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    throw v0
.end method
