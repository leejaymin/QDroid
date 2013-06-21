.class public Lorg/apache/james/mime4j/message/storage/SimpleTempStorage;
.super Lorg/apache/james/mime4j/message/storage/TempStorage;
.source "SimpleTempStorage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/james/mime4j/message/storage/SimpleTempStorage$1;,
        Lorg/apache/james/mime4j/message/storage/SimpleTempStorage$SimpleTempFile;,
        Lorg/apache/james/mime4j/message/storage/SimpleTempStorage$SimpleTempPath;
    }
.end annotation


# static fields
.field private static log:Lorg/apache/commons/logging/Log;


# instance fields
.field private random:Ljava/util/Random;

.field private rootPath:Lorg/apache/james/mime4j/message/storage/TempPath;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const-class v0, Lorg/apache/james/mime4j/message/storage/SimpleTempStorage;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lorg/apache/james/mime4j/message/storage/SimpleTempStorage;->log:Lorg/apache/commons/logging/Log;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 51
    invoke-direct {p0}, Lorg/apache/james/mime4j/message/storage/TempStorage;-><init>()V

    .line 45
    iput-object v2, p0, Lorg/apache/james/mime4j/message/storage/SimpleTempStorage;->rootPath:Lorg/apache/james/mime4j/message/storage/TempPath;

    .line 46
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/message/storage/SimpleTempStorage;->random:Ljava/util/Random;

    .line 52
    new-instance v0, Lorg/apache/james/mime4j/message/storage/SimpleTempStorage$SimpleTempPath;

    const-string v1, "java.io.tmpdir"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, v2}, Lorg/apache/james/mime4j/message/storage/SimpleTempStorage$SimpleTempPath;-><init>(Lorg/apache/james/mime4j/message/storage/SimpleTempStorage;Ljava/lang/String;Lorg/apache/james/mime4j/message/storage/SimpleTempStorage$1;)V

    iput-object v0, p0, Lorg/apache/james/mime4j/message/storage/SimpleTempStorage;->rootPath:Lorg/apache/james/mime4j/message/storage/TempPath;

    .line 53
    return-void
.end method

.method static synthetic access$300(Lorg/apache/james/mime4j/message/storage/SimpleTempStorage;Lorg/apache/james/mime4j/message/storage/TempPath;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/james/mime4j/message/storage/TempFile;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 42
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/james/mime4j/message/storage/SimpleTempStorage;->createTempFile(Lorg/apache/james/mime4j/message/storage/TempPath;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/james/mime4j/message/storage/TempFile;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lorg/apache/james/mime4j/message/storage/SimpleTempStorage;Lorg/apache/james/mime4j/message/storage/TempPath;Ljava/lang/String;)Lorg/apache/james/mime4j/message/storage/TempPath;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lorg/apache/james/mime4j/message/storage/SimpleTempStorage;->createTempPath(Lorg/apache/james/mime4j/message/storage/TempPath;Ljava/lang/String;)Lorg/apache/james/mime4j/message/storage/TempPath;

    move-result-object v0

    return-object v0
.end method

.method private createTempFile(Lorg/apache/james/mime4j/message/storage/TempPath;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/james/mime4j/message/storage/TempFile;
    .locals 9
    .parameter "parent"
    .parameter "prefix"
    .parameter "suffix"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 82
    if-nez p2, :cond_0

    .line 83
    const-string p2, ""

    .line 85
    :cond_0
    if-nez p3, :cond_1

    .line 86
    const-string p3, ".tmp"

    .line 89
    :cond_1
    const/4 v2, 0x0

    .line 91
    .local v2, f:Ljava/io/File;
    const/16 v0, 0x3e8

    .line 92
    .local v0, count:I
    monitor-enter p0

    :cond_2
    move-object v3, v2

    .line 94
    .end local v2           #f:Ljava/io/File;
    .local v3, f:Ljava/io/File;
    :try_start_0
    iget-object v6, p0, Lorg/apache/james/mime4j/message/storage/SimpleTempStorage;->random:Ljava/util/Random;

    invoke-virtual {v6}, Ljava/util/Random;->nextLong()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    .line 95
    .local v4, n:J
    new-instance v2, Ljava/io/File;

    invoke-interface {p1}, Lorg/apache/james/mime4j/message/storage/TempPath;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 96
    .end local v3           #f:Ljava/io/File;
    .restart local v2       #f:Ljava/io/File;
    add-int/lit8 v0, v0, -0x1

    .line 97
    :try_start_1
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_3

    if-gtz v0, :cond_2

    .line 99
    :cond_3
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 100
    new-instance v6, Ljava/io/IOException;

    const-string v7, "Creating temp file failed: Unable to find unique file name"

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 110
    .end local v4           #n:J
    :catchall_0
    move-exception v6

    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6

    .line 105
    .restart local v4       #n:J
    :cond_4
    :try_start_2
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 110
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 112
    new-instance v6, Lorg/apache/james/mime4j/message/storage/SimpleTempStorage$SimpleTempFile;

    const/4 v7, 0x0

    invoke-direct {v6, v2, v7}, Lorg/apache/james/mime4j/message/storage/SimpleTempStorage$SimpleTempFile;-><init>(Ljava/io/File;Lorg/apache/james/mime4j/message/storage/SimpleTempStorage$1;)V

    return-object v6

    .line 106
    :catch_0
    move-exception v1

    .line 107
    .local v1, e:Ljava/io/IOException;
    :try_start_4
    new-instance v6, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Creating dir \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\' failed."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 110
    .end local v1           #e:Ljava/io/IOException;
    .end local v2           #f:Ljava/io/File;
    .end local v4           #n:J
    .restart local v3       #f:Ljava/io/File;
    :catchall_1
    move-exception v6

    move-object v2, v3

    .end local v3           #f:Ljava/io/File;
    .restart local v2       #f:Ljava/io/File;
    goto :goto_0
.end method

.method private createTempPath(Lorg/apache/james/mime4j/message/storage/TempPath;Ljava/lang/String;)Lorg/apache/james/mime4j/message/storage/TempPath;
    .locals 7
    .parameter "parent"
    .parameter "prefix"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 58
    if-nez p2, :cond_0

    .line 59
    const-string p2, ""

    .line 62
    :cond_0
    const/4 v3, 0x0

    .line 63
    .local v3, p:Ljava/io/File;
    const/16 v0, 0x3e8

    .line 65
    .local v0, count:I
    :cond_1
    iget-object v4, p0, Lorg/apache/james/mime4j/message/storage/SimpleTempStorage;->random:Ljava/util/Random;

    invoke-virtual {v4}, Ljava/util/Random;->nextLong()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v1

    .line 66
    .local v1, n:J
    new-instance v3, Ljava/io/File;

    .end local v3           #p:Ljava/io/File;
    invoke-interface {p1}, Lorg/apache/james/mime4j/message/storage/TempPath;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    .restart local v3       #p:Ljava/io/File;
    add-int/lit8 v0, v0, -0x1

    .line 68
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    if-gtz v0, :cond_1

    .line 70
    :cond_2
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    move-result v4

    if-nez v4, :cond_4

    .line 71
    :cond_3
    sget-object v4, Lorg/apache/james/mime4j/message/storage/SimpleTempStorage;->log:Lorg/apache/commons/logging/Log;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to mkdirs on "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;)V

    .line 72
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Creating dir \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\' failed."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 76
    :cond_4
    new-instance v4, Lorg/apache/james/mime4j/message/storage/SimpleTempStorage$SimpleTempPath;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v3, v5}, Lorg/apache/james/mime4j/message/storage/SimpleTempStorage$SimpleTempPath;-><init>(Lorg/apache/james/mime4j/message/storage/SimpleTempStorage;Ljava/io/File;Lorg/apache/james/mime4j/message/storage/SimpleTempStorage$1;)V

    return-object v4
.end method


# virtual methods
.method public getRootTempPath()Lorg/apache/james/mime4j/message/storage/TempPath;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lorg/apache/james/mime4j/message/storage/SimpleTempStorage;->rootPath:Lorg/apache/james/mime4j/message/storage/TempPath;

    return-object v0
.end method