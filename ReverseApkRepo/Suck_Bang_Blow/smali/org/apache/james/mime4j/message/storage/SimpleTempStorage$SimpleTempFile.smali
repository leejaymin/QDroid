.class Lorg/apache/james/mime4j/message/storage/SimpleTempStorage$SimpleTempFile;
.super Ljava/lang/Object;
.source "SimpleTempStorage.java"

# interfaces
.implements Lorg/apache/james/mime4j/message/storage/TempFile;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/james/mime4j/message/storage/SimpleTempStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SimpleTempFile"
.end annotation


# static fields
.field private static final filesToDelete:Ljava/util/Set;


# instance fields
.field private file:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 191
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lorg/apache/james/mime4j/message/storage/SimpleTempStorage$SimpleTempFile;->filesToDelete:Ljava/util/Set;

    return-void
.end method

.method private constructor <init>(Ljava/io/File;)V
    .locals 1
    .parameter "file"

    .prologue
    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 189
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/james/mime4j/message/storage/SimpleTempStorage$SimpleTempFile;->file:Ljava/io/File;

    .line 194
    iput-object p1, p0, Lorg/apache/james/mime4j/message/storage/SimpleTempStorage$SimpleTempFile;->file:Ljava/io/File;

    .line 195
    iget-object v0, p0, Lorg/apache/james/mime4j/message/storage/SimpleTempStorage$SimpleTempFile;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->deleteOnExit()V

    .line 196
    return-void
.end method

.method synthetic constructor <init>(Ljava/io/File;Lorg/apache/james/mime4j/message/storage/SimpleTempStorage$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 188
    invoke-direct {p0, p1}, Lorg/apache/james/mime4j/message/storage/SimpleTempStorage$SimpleTempFile;-><init>(Ljava/io/File;)V

    return-void
.end method


# virtual methods
.method public delete()V
    .locals 5

    .prologue
    .line 231
    sget-object v2, Lorg/apache/james/mime4j/message/storage/SimpleTempStorage$SimpleTempFile;->filesToDelete:Ljava/util/Set;

    monitor-enter v2

    .line 232
    :try_start_0
    iget-object v3, p0, Lorg/apache/james/mime4j/message/storage/SimpleTempStorage$SimpleTempFile;->file:Ljava/io/File;

    if-eqz v3, :cond_0

    .line 233
    sget-object v3, Lorg/apache/james/mime4j/message/storage/SimpleTempStorage$SimpleTempFile;->filesToDelete:Ljava/util/Set;

    iget-object v4, p0, Lorg/apache/james/mime4j/message/storage/SimpleTempStorage$SimpleTempFile;->file:Ljava/io/File;

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 234
    const/4 v3, 0x0

    iput-object v3, p0, Lorg/apache/james/mime4j/message/storage/SimpleTempStorage$SimpleTempFile;->file:Ljava/io/File;

    .line 237
    :cond_0
    sget-object v3, Lorg/apache/james/mime4j/message/storage/SimpleTempStorage$SimpleTempFile;->filesToDelete:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 238
    .local v1, iterator:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 239
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 240
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 241
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 243
    .end local v0           #file:Ljava/io/File;
    .end local v1           #iterator:Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v1       #iterator:Ljava/util/Iterator;
    :cond_2
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 244
    return-void
.end method

.method public getAbsolutePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lorg/apache/james/mime4j/message/storage/SimpleTempStorage$SimpleTempFile;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 202
    new-instance v0, Ljava/io/BufferedInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    iget-object v2, p0, Lorg/apache/james/mime4j/message/storage/SimpleTempStorage$SimpleTempFile;->file:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 209
    new-instance v0, Ljava/io/BufferedOutputStream;

    new-instance v1, Ljava/io/FileOutputStream;

    iget-object v2, p0, Lorg/apache/james/mime4j/message/storage/SimpleTempStorage$SimpleTempFile;->file:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    return-object v0
.end method

.method public isInMemory()Z
    .locals 1

    .prologue
    .line 250
    const/4 v0, 0x0

    return v0
.end method

.method public length()J
    .locals 2

    .prologue
    .line 257
    iget-object v0, p0, Lorg/apache/james/mime4j/message/storage/SimpleTempStorage$SimpleTempFile;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0
.end method
