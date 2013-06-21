.class public Lcom/wolfram/alpha/impl/WASoundImpl;
.super Ljava/lang/Object;
.source "WASoundImpl.java"

# interfaces
.implements Lcom/wolfram/alpha/WASound;
.implements Lcom/wolfram/alpha/visitor/Visitable;
.implements Ljava/io/Serializable;


# static fields
.field static final EMPTY_ARRAY:[Lcom/wolfram/alpha/impl/WASoundImpl; = null

.field private static final serialVersionUID:J = 0x359f3062c9eb50baL


# instance fields
.field private volatile cachedHashCode:I

.field private volatile file:Ljava/io/File;

.field private format:Ljava/lang/String;

.field private transient http:Lcom/wolfram/alpha/net/HttpProvider;

.field private volatile soundAcquired:Z

.field private transient tempDir:Ljava/io/File;

.field private url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/wolfram/alpha/impl/WASoundImpl;

    sput-object v0, Lcom/wolfram/alpha/impl/WASoundImpl;->EMPTY_ARRAY:[Lcom/wolfram/alpha/impl/WASoundImpl;

    return-void
.end method

.method constructor <init>(Lorg/w3c/dom/Element;Lcom/wolfram/alpha/net/HttpProvider;Ljava/io/File;)V
    .locals 2
    .parameter "thisElement"
    .parameter "http"
    .parameter "tempDir"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/wolfram/alpha/WAException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput v0, p0, Lcom/wolfram/alpha/impl/WASoundImpl;->cachedHashCode:I

    .line 36
    iput-boolean v0, p0, Lcom/wolfram/alpha/impl/WASoundImpl;->soundAcquired:Z

    .line 48
    const-string v0, "url"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wolfram/alpha/impl/WASoundImpl;->url:Ljava/lang/String;

    .line 49
    const-string v0, "type"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wolfram/alpha/impl/WASoundImpl;->format:Ljava/lang/String;

    .line 50
    iget-object v0, p0, Lcom/wolfram/alpha/impl/WASoundImpl;->format:Ljava/lang/String;

    const-string v1, "audio/x-wav"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 51
    const-string v0, "WAV"

    iput-object v0, p0, Lcom/wolfram/alpha/impl/WASoundImpl;->format:Ljava/lang/String;

    .line 54
    :cond_0
    :goto_0
    iput-object p2, p0, Lcom/wolfram/alpha/impl/WASoundImpl;->http:Lcom/wolfram/alpha/net/HttpProvider;

    .line 55
    iput-object p3, p0, Lcom/wolfram/alpha/impl/WASoundImpl;->tempDir:Ljava/io/File;

    .line 56
    return-void

    .line 52
    :cond_1
    iget-object v0, p0, Lcom/wolfram/alpha/impl/WASoundImpl;->format:Ljava/lang/String;

    const-string v1, "audio/midi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    const-string v0, "MIDI"

    iput-object v0, p0, Lcom/wolfram/alpha/impl/WASoundImpl;->format:Ljava/lang/String;

    goto :goto_0
.end method

.method private declared-synchronized setFile(Ljava/io/File;)V
    .locals 1
    .parameter "file"

    .prologue
    .line 130
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/wolfram/alpha/impl/WASoundImpl;->file:Ljava/io/File;

    .line 131
    const/4 v0, 0x0

    iput v0, p0, Lcom/wolfram/alpha/impl/WASoundImpl;->cachedHashCode:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    monitor-exit p0

    return-void

    .line 130
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public accept(Lcom/wolfram/alpha/visitor/Visitor;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 137
    invoke-interface {p1, p0}, Lcom/wolfram/alpha/visitor/Visitor;->visit(Lcom/wolfram/alpha/WASound;)V

    .line 138
    return-void
.end method

.method public acquireSound()V
    .locals 6

    .prologue
    .line 78
    iget-boolean v3, p0, Lcom/wolfram/alpha/impl/WASoundImpl;->soundAcquired:Z

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/wolfram/alpha/impl/WASoundImpl;->http:Lcom/wolfram/alpha/net/HttpProvider;

    if-eqz v3, :cond_1

    .line 79
    iget-object v3, p0, Lcom/wolfram/alpha/impl/WASoundImpl;->url:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 82
    :try_start_0
    iget-object v3, p0, Lcom/wolfram/alpha/impl/WASoundImpl;->format:Ljava/lang/String;

    const-string v4, "WAV"

    if-ne v3, v4, :cond_2

    .line 83
    const-string v2, ".wav"

    .line 88
    .local v2, suffix:Ljava/lang/String;
    :goto_0
    const-string v3, "WASound"

    iget-object v4, p0, Lcom/wolfram/alpha/impl/WASoundImpl;->tempDir:Ljava/io/File;

    invoke-static {v3, v2, v4}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 89
    .local v1, outFile:Ljava/lang/String;
    new-instance v0, Lcom/wolfram/alpha/net/URLFetcher;

    new-instance v3, Ljava/net/URL;

    iget-object v4, p0, Lcom/wolfram/alpha/impl/WASoundImpl;->url:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/wolfram/alpha/impl/WASoundImpl;->http:Lcom/wolfram/alpha/net/HttpProvider;

    const/4 v5, 0x0

    invoke-direct {v0, v3, v1, v4, v5}, Lcom/wolfram/alpha/net/URLFetcher;-><init>(Ljava/net/URL;Ljava/lang/String;Lcom/wolfram/alpha/net/HttpProvider;Lcom/wolfram/alpha/net/ProxySettings;)V

    .line 90
    .local v0, fetcher:Lcom/wolfram/alpha/net/URLFetcher;
    invoke-virtual {v0}, Lcom/wolfram/alpha/net/URLFetcher;->fetch()V

    .line 91
    invoke-virtual {v0}, Lcom/wolfram/alpha/net/URLFetcher;->getFile()Ljava/io/File;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/wolfram/alpha/impl/WASoundImpl;->setFile(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    .end local v0           #fetcher:Lcom/wolfram/alpha/net/URLFetcher;
    .end local v1           #outFile:Ljava/lang/String;
    .end local v2           #suffix:Ljava/lang/String;
    :cond_0
    :goto_1
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/wolfram/alpha/impl/WASoundImpl;->soundAcquired:Z

    .line 99
    :cond_1
    return-void

    .line 84
    :cond_2
    :try_start_1
    iget-object v3, p0, Lcom/wolfram/alpha/impl/WASoundImpl;->format:Ljava/lang/String;

    const-string v4, "MIDI"

    if-ne v3, v4, :cond_3

    .line 85
    const-string v2, ".mid"

    .restart local v2       #suffix:Ljava/lang/String;
    goto :goto_0

    .line 87
    .end local v2           #suffix:Ljava/lang/String;
    :cond_3
    const-string v2, ".tmp"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .restart local v2       #suffix:Ljava/lang/String;
    goto :goto_0

    .line 92
    .end local v2           #suffix:Ljava/lang/String;
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method public declared-synchronized getFile()Ljava/io/File;
    .locals 1

    .prologue
    .line 70
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/wolfram/alpha/impl/WASoundImpl;->file:Ljava/io/File;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/wolfram/alpha/impl/WASoundImpl;->format:Ljava/lang/String;

    return-object v0
.end method

.method public getURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/wolfram/alpha/impl/WASoundImpl;->url:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized hashCode()I
    .locals 3

    .prologue
    .line 115
    monitor-enter p0

    :try_start_0
    iget v1, p0, Lcom/wolfram/alpha/impl/WASoundImpl;->cachedHashCode:I

    if-eqz v1, :cond_0

    .line 116
    iget v1, p0, Lcom/wolfram/alpha/impl/WASoundImpl;->cachedHashCode:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    :goto_0
    monitor-exit p0

    return v1

    .line 118
    :cond_0
    const/16 v0, 0x11

    .line 119
    .local v0, result:I
    mul-int/lit8 v1, v0, 0x25

    :try_start_1
    iget-object v1, p0, Lcom/wolfram/alpha/impl/WASoundImpl;->url:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/lit16 v0, v1, 0x275

    .line 120
    iget-object v1, p0, Lcom/wolfram/alpha/impl/WASoundImpl;->file:Ljava/io/File;

    if-eqz v1, :cond_1

    .line 121
    mul-int/lit8 v1, v0, 0x25

    iget-object v2, p0, Lcom/wolfram/alpha/impl/WASoundImpl;->file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 122
    :cond_1
    iput v0, p0, Lcom/wolfram/alpha/impl/WASoundImpl;->cachedHashCode:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v1, v0

    .line 123
    goto :goto_0

    .line 115
    .end local v0           #result:I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
