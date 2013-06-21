.class public Lcom/wolfram/alpha/impl/WAImageImpl;
.super Ljava/lang/Object;
.source "WAImageImpl.java"

# interfaces
.implements Lcom/wolfram/alpha/WAImage;
.implements Lcom/wolfram/alpha/visitor/Visitable;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x700ab155c8f67b56L


# instance fields
.field private alt:Ljava/lang/String;

.field private volatile cachedHashCode:I

.field private dimensions:[I

.field private volatile file:Ljava/io/File;

.field private format:I

.field private transient http:Lcom/wolfram/alpha/net/HttpProvider;

.field private volatile imageAcquired:Z

.field private transient tempDir:Ljava/io/File;

.field private title:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/wolfram/alpha/net/HttpProvider;Ljava/io/File;)V
    .locals 6
    .parameter "url"
    .parameter "http"
    .parameter "tempDir"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/wolfram/alpha/WAException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput v2, p0, Lcom/wolfram/alpha/impl/WAImageImpl;->cachedHashCode:I

    .line 32
    iput-boolean v2, p0, Lcom/wolfram/alpha/impl/WAImageImpl;->imageAcquired:Z

    .line 57
    iput-object p2, p0, Lcom/wolfram/alpha/impl/WAImageImpl;->http:Lcom/wolfram/alpha/net/HttpProvider;

    .line 58
    iput-object p3, p0, Lcom/wolfram/alpha/impl/WAImageImpl;->tempDir:Ljava/io/File;

    .line 59
    iput-object p1, p0, Lcom/wolfram/alpha/impl/WAImageImpl;->url:Ljava/lang/String;

    .line 61
    iput v2, p0, Lcom/wolfram/alpha/impl/WAImageImpl;->format:I

    .line 63
    const-string v2, "MSPStoreType=image/"

    invoke-virtual {p1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 64
    .local v1, index:I
    if-lez v1, :cond_2

    .line 65
    add-int/lit8 v2, v1, 0x13

    add-int/lit8 v3, v1, 0x16

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 66
    .local v0, fmtString:Ljava/lang/String;
    const-string v2, "gif"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 67
    iput v4, p0, Lcom/wolfram/alpha/impl/WAImageImpl;->format:I

    .line 75
    .end local v0           #fmtString:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 68
    .restart local v0       #fmtString:Ljava/lang/String;
    :cond_1
    const-string v2, "png"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 69
    iput v5, p0, Lcom/wolfram/alpha/impl/WAImageImpl;->format:I

    goto :goto_0

    .line 70
    .end local v0           #fmtString:Ljava/lang/String;
    :cond_2
    const-string v2, ".gif"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 71
    iput v4, p0, Lcom/wolfram/alpha/impl/WAImageImpl;->format:I

    goto :goto_0

    .line 72
    :cond_3
    const-string v2, ".png"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 73
    iput v5, p0, Lcom/wolfram/alpha/impl/WAImageImpl;->format:I

    goto :goto_0
.end method

.method constructor <init>(Lorg/w3c/dom/Element;Lcom/wolfram/alpha/net/HttpProvider;Ljava/io/File;)V
    .locals 4
    .parameter "thisElement"
    .parameter "http"
    .parameter "tempDir"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/wolfram/alpha/WAException;
        }
    .end annotation

    .prologue
    .line 42
    const-string v2, "src"

    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, p2, p3}, Lcom/wolfram/alpha/impl/WAImageImpl;-><init>(Ljava/lang/String;Lcom/wolfram/alpha/net/HttpProvider;Ljava/io/File;)V

    .line 44
    const-string v2, "alt"

    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/wolfram/alpha/impl/WAImageImpl;->alt:Ljava/lang/String;

    .line 45
    const-string v2, "title"

    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/wolfram/alpha/impl/WAImageImpl;->title:Ljava/lang/String;

    .line 47
    :try_start_0
    const-string v2, "width"

    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 48
    .local v1, width:I
    const-string v2, "height"

    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 49
    .local v0, height:I
    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput v1, v2, v3

    const/4 v3, 0x1

    aput v0, v2, v3

    iput-object v2, p0, Lcom/wolfram/alpha/impl/WAImageImpl;->dimensions:[I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    .end local v0           #height:I
    .end local v1           #width:I
    :goto_0
    return-void

    .line 50
    :catch_0
    move-exception v2

    goto :goto_0
.end method


# virtual methods
.method public accept(Lcom/wolfram/alpha/visitor/Visitor;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 165
    invoke-interface {p1, p0}, Lcom/wolfram/alpha/visitor/Visitor;->visit(Lcom/wolfram/alpha/WAImage;)V

    .line 166
    return-void
.end method

.method public acquireImage()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 108
    iget-boolean v3, p0, Lcom/wolfram/alpha/impl/WAImageImpl;->imageAcquired:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/wolfram/alpha/impl/WAImageImpl;->http:Lcom/wolfram/alpha/net/HttpProvider;

    if-eqz v3, :cond_0

    .line 111
    :try_start_0
    iget v3, p0, Lcom/wolfram/alpha/impl/WAImageImpl;->format:I

    if-ne v3, v6, :cond_1

    .line 112
    const-string v2, ".gif"

    .line 117
    .local v2, suffix:Ljava/lang/String;
    :goto_0
    const-string v3, "WAImage"

    iget-object v4, p0, Lcom/wolfram/alpha/impl/WAImageImpl;->tempDir:Ljava/io/File;

    invoke-static {v3, v2, v4}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 118
    .local v1, outFile:Ljava/lang/String;
    new-instance v0, Lcom/wolfram/alpha/net/URLFetcher;

    new-instance v3, Ljava/net/URL;

    iget-object v4, p0, Lcom/wolfram/alpha/impl/WAImageImpl;->url:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/wolfram/alpha/impl/WAImageImpl;->http:Lcom/wolfram/alpha/net/HttpProvider;

    const/4 v5, 0x0

    invoke-direct {v0, v3, v1, v4, v5}, Lcom/wolfram/alpha/net/URLFetcher;-><init>(Ljava/net/URL;Ljava/lang/String;Lcom/wolfram/alpha/net/HttpProvider;Lcom/wolfram/alpha/net/ProxySettings;)V

    .line 119
    .local v0, fetcher:Lcom/wolfram/alpha/net/URLFetcher;
    invoke-virtual {v0}, Lcom/wolfram/alpha/net/URLFetcher;->fetch()V

    .line 120
    invoke-virtual {v0}, Lcom/wolfram/alpha/net/URLFetcher;->getFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/wolfram/alpha/impl/WAImageImpl;->setFile(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    .end local v0           #fetcher:Lcom/wolfram/alpha/net/URLFetcher;
    .end local v1           #outFile:Ljava/lang/String;
    .end local v2           #suffix:Ljava/lang/String;
    :goto_1
    iput-boolean v6, p0, Lcom/wolfram/alpha/impl/WAImageImpl;->imageAcquired:Z

    .line 126
    :cond_0
    return-void

    .line 113
    :cond_1
    :try_start_1
    iget v3, p0, Lcom/wolfram/alpha/impl/WAImageImpl;->format:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    .line 114
    const-string v2, ".png"

    .restart local v2       #suffix:Ljava/lang/String;
    goto :goto_0

    .line 116
    .end local v2           #suffix:Ljava/lang/String;
    :cond_2
    const-string v2, ".tmp"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .restart local v2       #suffix:Ljava/lang/String;
    goto :goto_0

    .line 121
    .end local v2           #suffix:Ljava/lang/String;
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method public getAlt()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/wolfram/alpha/impl/WAImageImpl;->alt:Ljava/lang/String;

    return-object v0
.end method

.method public getDimensions()[I
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/wolfram/alpha/impl/WAImageImpl;->dimensions:[I

    return-object v0
.end method

.method public declared-synchronized getFile()Ljava/io/File;
    .locals 1

    .prologue
    .line 101
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/wolfram/alpha/impl/WAImageImpl;->file:Ljava/io/File;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getFormat()I
    .locals 1

    .prologue
    .line 93
    iget v0, p0, Lcom/wolfram/alpha/impl/WAImageImpl;->format:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/wolfram/alpha/impl/WAImageImpl;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/wolfram/alpha/impl/WAImageImpl;->url:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized hashCode()I
    .locals 3

    .prologue
    .line 142
    monitor-enter p0

    :try_start_0
    iget v1, p0, Lcom/wolfram/alpha/impl/WAImageImpl;->cachedHashCode:I

    if-eqz v1, :cond_0

    .line 143
    iget v1, p0, Lcom/wolfram/alpha/impl/WAImageImpl;->cachedHashCode:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 150
    :goto_0
    monitor-exit p0

    return v1

    .line 145
    :cond_0
    const/16 v0, 0x11

    .line 146
    .local v0, result:I
    mul-int/lit8 v1, v0, 0x25

    :try_start_1
    iget-object v1, p0, Lcom/wolfram/alpha/impl/WAImageImpl;->title:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/lit16 v0, v1, 0x275

    .line 147
    iget-object v1, p0, Lcom/wolfram/alpha/impl/WAImageImpl;->file:Ljava/io/File;

    if-eqz v1, :cond_1

    .line 148
    mul-int/lit8 v1, v0, 0x25

    iget-object v2, p0, Lcom/wolfram/alpha/impl/WAImageImpl;->file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 149
    :cond_1
    iput v0, p0, Lcom/wolfram/alpha/impl/WAImageImpl;->cachedHashCode:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v1, v0

    .line 150
    goto :goto_0

    .line 142
    .end local v0           #result:I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method declared-synchronized setFile(Ljava/io/File;)V
    .locals 1
    .parameter "file"

    .prologue
    .line 158
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/wolfram/alpha/impl/WAImageImpl;->file:Ljava/io/File;

    .line 159
    const/4 v0, 0x0

    iput v0, p0, Lcom/wolfram/alpha/impl/WAImageImpl;->cachedHashCode:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 160
    monitor-exit p0

    return-void

    .line 158
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
