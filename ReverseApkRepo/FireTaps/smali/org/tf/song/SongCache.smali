.class public Lorg/tf/song/SongCache;
.super Ljava/lang/Object;
.source "SongCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/tf/song/SongCache$OldestFilesFirst;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static find(I)Ljava/io/File;
    .locals 2
    .parameter "songID"

    .prologue
    .line 45
    invoke-static {p0}, Lorg/tf/song/SongCache;->getPath(I)Ljava/io/File;

    move-result-object v0

    .line 46
    .local v0, songPath:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    .line 49
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getPath(I)Ljava/io/File;
    .locals 6
    .parameter "songID"

    .prologue
    .line 65
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lorg/tf/Config;->getSongCachePath()Ljava/io/File;

    move-result-object v1

    const-string v2, "%08X"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private static pop()V
    .locals 8

    .prologue
    .line 89
    invoke-static {}, Lorg/tf/Config;->getSongCachePath()Ljava/io/File;

    move-result-object v4

    .line 90
    .local v4, path:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 91
    .local v2, files:[Ljava/io/File;
    if-nez v2, :cond_1

    .line 104
    :cond_0
    return-void

    .line 94
    :cond_1
    sget-object v5, Lorg/tf/song/SongCache$OldestFilesFirst;->INSTANCE:Lorg/tf/song/SongCache$OldestFilesFirst;

    invoke-static {v2, v5}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 96
    array-length v5, v2

    add-int/lit8 v5, v5, 0x1

    .line 97
    const/4 v6, 0x1

    invoke-static {}, Lorg/tf/Config;->getSongCacheLength()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 96
    sub-int v0, v5, v6

    .line 98
    .local v0, deleteCount:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v0, :cond_0

    .line 99
    aget-object v1, v2, v3

    .line 100
    .local v1, file:Ljava/io/File;
    invoke-static {v1}, Lorg/tf/util/MiscHelpers;->cleanup(Ljava/io/File;)V

    .line 101
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 98
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public static push(I)Ljava/io/File;
    .locals 2
    .parameter "songID"

    .prologue
    .line 30
    invoke-static {p0}, Lorg/tf/song/SongCache;->getPath(I)Ljava/io/File;

    move-result-object v0

    .line 31
    .local v0, songPath:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 32
    invoke-static {}, Lorg/tf/song/SongCache;->pop()V

    .line 33
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 35
    :cond_0
    return-object v0
.end method

.method public static remove(I)V
    .locals 1
    .parameter "songID"

    .prologue
    .line 39
    invoke-static {p0}, Lorg/tf/song/SongCache;->getPath(I)Ljava/io/File;

    move-result-object v0

    .line 40
    .local v0, songPath:Ljava/io/File;
    invoke-static {v0}, Lorg/tf/util/MiscHelpers;->cleanup(Ljava/io/File;)V

    .line 41
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 42
    return-void
.end method

.method public static removeAll()V
    .locals 1

    .prologue
    .line 61
    invoke-static {}, Lorg/tf/Config;->getSongCachePath()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lorg/tf/util/MiscHelpers;->cleanup(Ljava/io/File;)V

    .line 62
    return-void
.end method

.method public static touch(I)V
    .locals 3
    .parameter "songID"

    .prologue
    .line 54
    invoke-static {p0}, Lorg/tf/song/SongCache;->getPath(I)Ljava/io/File;

    move-result-object v0

    .line 55
    .local v0, songPath:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 56
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/io/File;->setLastModified(J)Z

    .line 58
    :cond_0
    return-void
.end method
