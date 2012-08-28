.class public Lcom/trilead/ssh2/compression/CompressionFactory;
.super Ljava/lang/Object;
.source "CompressionFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/trilead/ssh2/compression/CompressionFactory$CompressorEntry;
    }
.end annotation


# static fields
.field static compressors:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/trilead/ssh2/compression/CompressionFactory$CompressorEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 39
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sput-object v0, Lcom/trilead/ssh2/compression/CompressionFactory;->compressors:Ljava/util/Vector;

    .line 45
    sget-object v0, Lcom/trilead/ssh2/compression/CompressionFactory;->compressors:Ljava/util/Vector;

    new-instance v1, Lcom/trilead/ssh2/compression/CompressionFactory$CompressorEntry;

    const-string v2, "zlib"

    const-string v3, "com.trilead.ssh2.compression.Zlib"

    invoke-direct {v1, v2, v3}, Lcom/trilead/ssh2/compression/CompressionFactory$CompressorEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 46
    sget-object v0, Lcom/trilead/ssh2/compression/CompressionFactory;->compressors:Ljava/util/Vector;

    new-instance v1, Lcom/trilead/ssh2/compression/CompressionFactory$CompressorEntry;

    const-string v2, "zlib@openssh.com"

    const-string v3, "com.trilead.ssh2.compression.ZlibOpenSSH"

    invoke-direct {v1, v2, v3}, Lcom/trilead/ssh2/compression/CompressionFactory$CompressorEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 47
    sget-object v0, Lcom/trilead/ssh2/compression/CompressionFactory;->compressors:Ljava/util/Vector;

    new-instance v1, Lcom/trilead/ssh2/compression/CompressionFactory$CompressorEntry;

    const-string v2, "none"

    const-string v3, ""

    invoke-direct {v1, v2, v3}, Lcom/trilead/ssh2/compression/CompressionFactory$CompressorEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 26
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createCompressor(Ljava/lang/String;)Lcom/trilead/ssh2/compression/ICompressor;
    .locals 7
    .parameter "type"

    .prologue
    .line 71
    :try_start_0
    invoke-static {p0}, Lcom/trilead/ssh2/compression/CompressionFactory;->getEntry(Ljava/lang/String;)Lcom/trilead/ssh2/compression/CompressionFactory$CompressorEntry;

    move-result-object v1

    .line 72
    .local v1, ce:Lcom/trilead/ssh2/compression/CompressionFactory$CompressorEntry;
    const-string v4, ""

    iget-object v5, v1, Lcom/trilead/ssh2/compression/CompressionFactory$CompressorEntry;->compressorClass:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 73
    const/4 v2, 0x0

    .line 78
    :goto_0
    return-object v2

    .line 75
    :cond_0
    iget-object v4, v1, Lcom/trilead/ssh2/compression/CompressionFactory$CompressorEntry;->compressorClass:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 76
    .local v0, cc:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/trilead/ssh2/compression/ICompressor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    .local v2, cmp:Lcom/trilead/ssh2/compression/ICompressor;
    goto :goto_0

    .line 80
    .end local v0           #cc:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v1           #ce:Lcom/trilead/ssh2/compression/CompressionFactory$CompressorEntry;
    .end local v2           #cmp:Lcom/trilead/ssh2/compression/ICompressor;
    :catch_0
    move-exception v3

    .line 82
    .local v3, e:Ljava/lang/Exception;
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Cannot instantiate "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public static getDefaultCompressorList()[Ljava/lang/String;
    .locals 5

    .prologue
    .line 52
    sget-object v3, Lcom/trilead/ssh2/compression/CompressionFactory;->compressors:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    new-array v2, v3, [Ljava/lang/String;

    .line 53
    .local v2, list:[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    sget-object v3, Lcom/trilead/ssh2/compression/CompressionFactory;->compressors:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-lt v1, v3, :cond_0

    .line 58
    return-object v2

    .line 55
    :cond_0
    sget-object v3, Lcom/trilead/ssh2/compression/CompressionFactory;->compressors:Ljava/util/Vector;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/trilead/ssh2/compression/CompressionFactory$CompressorEntry;

    .line 56
    .local v0, ce:Lcom/trilead/ssh2/compression/CompressionFactory$CompressorEntry;
    new-instance v3, Ljava/lang/String;

    iget-object v4, v0, Lcom/trilead/ssh2/compression/CompressionFactory$CompressorEntry;->type:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v1

    .line 53
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private static getEntry(Ljava/lang/String;)Lcom/trilead/ssh2/compression/CompressionFactory$CompressorEntry;
    .locals 5
    .parameter "type"

    .prologue
    .line 88
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    sget-object v2, Lcom/trilead/ssh2/compression/CompressionFactory;->compressors:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-lt v1, v2, :cond_0

    .line 94
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unkown algorithm "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 90
    :cond_0
    sget-object v2, Lcom/trilead/ssh2/compression/CompressionFactory;->compressors:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/trilead/ssh2/compression/CompressionFactory$CompressorEntry;

    .line 91
    .local v0, ce:Lcom/trilead/ssh2/compression/CompressionFactory$CompressorEntry;
    iget-object v2, v0, Lcom/trilead/ssh2/compression/CompressionFactory$CompressorEntry;->type:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 92
    return-object v0

    .line 88
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
