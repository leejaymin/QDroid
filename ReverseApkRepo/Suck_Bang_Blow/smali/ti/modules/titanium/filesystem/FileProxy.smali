.class public Lti/modules/titanium/filesystem/FileProxy;
.super Lorg/appcelerator/titanium/TiFile;
.source "FileProxy.java"


# instance fields
.field path:Ljava/lang/String;

.field tbf:Lorg/appcelerator/titanium/io/TiBaseFile;


# direct methods
.method private constructor <init>(Lorg/appcelerator/titanium/TiContext;Lorg/appcelerator/titanium/io/TiBaseFile;)V
    .locals 0
    .parameter "tiContext"
    .parameter "tbf"

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lorg/appcelerator/titanium/TiFile;-><init>(Lorg/appcelerator/titanium/TiContext;)V

    .line 86
    iput-object p2, p0, Lti/modules/titanium/filesystem/FileProxy;->tbf:Lorg/appcelerator/titanium/io/TiBaseFile;

    .line 87
    return-void
.end method

.method public constructor <init>(Lorg/appcelerator/titanium/TiContext;[Ljava/lang/String;)V
    .locals 1
    .parameter "tiContext"
    .parameter "parts"

    .prologue
    .line 48
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lti/modules/titanium/filesystem/FileProxy;-><init>(Lorg/appcelerator/titanium/TiContext;[Ljava/lang/String;Z)V

    .line 49
    return-void
.end method

.method public constructor <init>(Lorg/appcelerator/titanium/TiContext;[Ljava/lang/String;Z)V
    .locals 11
    .parameter "tiContext"
    .parameter "parts"
    .parameter "resolve"

    .prologue
    const/4 v9, 0x0

    const-string v10, "/"

    .line 52
    invoke-direct {p0, p1}, Lorg/appcelerator/titanium/TiFile;-><init>(Lorg/appcelerator/titanium/TiContext;)V

    .line 55
    const-string v5, "appdata-private://"

    .line 56
    .local v5, scheme:Ljava/lang/String;
    const/4 v2, 0x0

    .line 57
    .local v2, path:Ljava/lang/String;
    aget-object v7, p2, v9

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 58
    .local v6, uri:Landroid/net/Uri;
    invoke-virtual {v6}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_5

    .line 59
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 60
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 61
    .local v3, pb:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    aget-object v7, p2, v9

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, 0x2

    invoke-virtual {v7, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 62
    .local v4, s:Ljava/lang/String;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_0

    .line 63
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    :cond_0
    const/4 v0, 0x1

    .local v0, i:I
    :goto_0
    array-length v7, p2

    if-ge v0, v7, :cond_1

    .line 66
    aget-object v7, p2, v0

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 68
    :cond_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v7, v7, [Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 69
    .local v1, newParts:[Ljava/lang/String;
    invoke-static {v1}, Lorg/appcelerator/titanium/util/TiFileHelper2;->joinSegments([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 70
    const-string v7, ".."

    invoke-virtual {v2, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    const-string v7, "/"

    invoke-virtual {v2, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 71
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "/"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 73
    :cond_3
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 78
    .end local v0           #i:I
    .end local v1           #newParts:[Ljava/lang/String;
    .end local v3           #pb:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4           #s:Ljava/lang/String;
    :goto_1
    if-eqz p3, :cond_4

    .line 79
    invoke-virtual {p0}, Lti/modules/titanium/filesystem/FileProxy;->getTiContext()Lorg/appcelerator/titanium/TiContext;

    move-result-object v7

    invoke-virtual {v7, v5, v2}, Lorg/appcelerator/titanium/TiContext;->resolveUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 81
    :cond_4
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    aput-object v2, v7, v9

    invoke-static {p1, v7, v9}, Lorg/appcelerator/titanium/io/TiFileFactory;->createTitaniumFile(Lorg/appcelerator/titanium/TiContext;[Ljava/lang/String;Z)Lorg/appcelerator/titanium/io/TiBaseFile;

    move-result-object v7

    iput-object v7, p0, Lti/modules/titanium/filesystem/FileProxy;->tbf:Lorg/appcelerator/titanium/io/TiBaseFile;

    .line 82
    return-void

    .line 75
    :cond_5
    invoke-static {p2}, Lorg/appcelerator/titanium/util/TiFileHelper2;->joinSegments([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method public static join(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter
    .parameter "delimiter"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<TT;>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p0, objs:Ljava/util/Collection;,"Ljava/util/Collection<TT;>;"
    const-string v3, ""

    .line 35
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 36
    :cond_0
    const-string v2, ""

    move-object v2, v3

    .line 44
    :goto_0
    return-object v2

    .line 37
    :cond_1
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 39
    .local v1, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<TT;>;"
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    .line 40
    const-string v2, ""

    move-object v2, v3

    goto :goto_0

    .line 41
    :cond_2
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 42
    .local v0, buffer:Ljava/lang/StringBuffer;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 43
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 44
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method


# virtual methods
.method public copy(Ljava/lang/String;)Z
    .locals 1
    .parameter "destination"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 115
    iget-object v0, p0, Lti/modules/titanium/filesystem/FileProxy;->tbf:Lorg/appcelerator/titanium/io/TiBaseFile;

    invoke-virtual {v0, p1}, Lorg/appcelerator/titanium/io/TiBaseFile;->copy(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public createDirectory(Ljava/lang/Object;)Z
    .locals 2
    .parameter "arg"
        .annotation runtime Lorg/appcelerator/kroll/annotations/Kroll$argument;
            optional = true
        .end annotation
    .end parameter

    .prologue
    .line 120
    const/4 v0, 0x1

    .line 122
    .local v0, recursive:Z
    if-eqz p1, :cond_0

    .line 123
    invoke-static {p1}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/lang/Object;)Z

    move-result v0

    .line 125
    :cond_0
    iget-object v1, p0, Lti/modules/titanium/filesystem/FileProxy;->tbf:Lorg/appcelerator/titanium/io/TiBaseFile;

    invoke-virtual {v1, v0}, Lorg/appcelerator/titanium/io/TiBaseFile;->createDirectory(Z)Z

    move-result v1

    return v1
.end method

.method public createTimestamp()D
    .locals 2

    .prologue
    .line 265
    iget-object v0, p0, Lti/modules/titanium/filesystem/FileProxy;->tbf:Lorg/appcelerator/titanium/io/TiBaseFile;

    invoke-virtual {v0}, Lorg/appcelerator/titanium/io/TiBaseFile;->createTimestamp()D

    move-result-wide v0

    return-wide v0
.end method

.method public deleteDirectory(Ljava/lang/Object;)Z
    .locals 2
    .parameter "arg"
        .annotation runtime Lorg/appcelerator/kroll/annotations/Kroll$argument;
            optional = true
        .end annotation
    .end parameter

    .prologue
    .line 130
    const/4 v0, 0x0

    .line 132
    .local v0, recursive:Z
    if-eqz p1, :cond_0

    .line 133
    invoke-static {p1}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/lang/Object;)Z

    move-result v0

    .line 135
    :cond_0
    iget-object v1, p0, Lti/modules/titanium/filesystem/FileProxy;->tbf:Lorg/appcelerator/titanium/io/TiBaseFile;

    invoke-virtual {v1, v0}, Lorg/appcelerator/titanium/io/TiBaseFile;->deleteDirectory(Z)Z

    move-result v1

    return v1
.end method

.method public deleteFile()Z
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lti/modules/titanium/filesystem/FileProxy;->tbf:Lorg/appcelerator/titanium/io/TiBaseFile;

    invoke-virtual {v0}, Lorg/appcelerator/titanium/io/TiBaseFile;->deleteFile()Z

    move-result v0

    return v0
.end method

.method public exists()Z
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lti/modules/titanium/filesystem/FileProxy;->tbf:Lorg/appcelerator/titanium/io/TiBaseFile;

    invoke-virtual {v0}, Lorg/appcelerator/titanium/io/TiBaseFile;->exists()Z

    move-result v0

    return v0
.end method

.method public extension()Ljava/lang/String;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lti/modules/titanium/filesystem/FileProxy;->tbf:Lorg/appcelerator/titanium/io/TiBaseFile;

    invoke-virtual {v0}, Lorg/appcelerator/titanium/io/TiBaseFile;->extension()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBaseFile()Lorg/appcelerator/titanium/io/TiBaseFile;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lti/modules/titanium/filesystem/FileProxy;->tbf:Lorg/appcelerator/titanium/io/TiBaseFile;

    return-object v0
.end method

.method public getDirectoryListing()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 171
    iget-object v1, p0, Lti/modules/titanium/filesystem/FileProxy;->tbf:Lorg/appcelerator/titanium/io/TiBaseFile;

    invoke-virtual {v1}, Lorg/appcelerator/titanium/io/TiBaseFile;->getDirectoryListing()Ljava/util/List;

    move-result-object v0

    .line 172
    .local v0, dl:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [Ljava/lang/String;

    move-object v1, p0

    :goto_0
    return-object v1

    .restart local p0
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getExecutable()Z
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lti/modules/titanium/filesystem/FileProxy;->tbf:Lorg/appcelerator/titanium/io/TiBaseFile;

    invoke-virtual {v0}, Lorg/appcelerator/titanium/io/TiBaseFile;->isExecutable()Z

    move-result v0

    return v0
.end method

.method public getHidden()Z
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lti/modules/titanium/filesystem/FileProxy;->tbf:Lorg/appcelerator/titanium/io/TiBaseFile;

    invoke-virtual {v0}, Lorg/appcelerator/titanium/io/TiBaseFile;->isHidden()Z

    move-result v0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lti/modules/titanium/filesystem/FileProxy;->tbf:Lorg/appcelerator/titanium/io/TiBaseFile;

    invoke-virtual {v0}, Lorg/appcelerator/titanium/io/TiBaseFile;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNativePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lti/modules/titanium/filesystem/FileProxy;->tbf:Lorg/appcelerator/titanium/io/TiBaseFile;

    invoke-virtual {v0}, Lorg/appcelerator/titanium/io/TiBaseFile;->nativePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getParent()Lti/modules/titanium/filesystem/FileProxy;
    .locals 3

    .prologue
    .line 178
    iget-object v1, p0, Lti/modules/titanium/filesystem/FileProxy;->tbf:Lorg/appcelerator/titanium/io/TiBaseFile;

    invoke-virtual {v1}, Lorg/appcelerator/titanium/io/TiBaseFile;->getParent()Lorg/appcelerator/titanium/io/TiBaseFile;

    move-result-object v0

    .line 179
    .local v0, bf:Lorg/appcelerator/titanium/io/TiBaseFile;
    if-eqz v0, :cond_0

    new-instance v1, Lti/modules/titanium/filesystem/FileProxy;

    invoke-virtual {p0}, Lti/modules/titanium/filesystem/FileProxy;->getTiContext()Lorg/appcelerator/titanium/TiContext;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lti/modules/titanium/filesystem/FileProxy;-><init>(Lorg/appcelerator/titanium/TiContext;Lorg/appcelerator/titanium/io/TiBaseFile;)V

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getReadonly()Z
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lti/modules/titanium/filesystem/FileProxy;->tbf:Lorg/appcelerator/titanium/io/TiBaseFile;

    invoke-virtual {v0}, Lorg/appcelerator/titanium/io/TiBaseFile;->isReadonly()Z

    move-result v0

    return v0
.end method

.method public getSize()D
    .locals 2

    .prologue
    .line 226
    iget-object v0, p0, Lti/modules/titanium/filesystem/FileProxy;->tbf:Lorg/appcelerator/titanium/io/TiBaseFile;

    invoke-virtual {v0}, Lorg/appcelerator/titanium/io/TiBaseFile;->size()D

    move-result-wide v0

    return-wide v0
.end method

.method public getSymbolicLink()Z
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lti/modules/titanium/filesystem/FileProxy;->tbf:Lorg/appcelerator/titanium/io/TiBaseFile;

    invoke-virtual {v0}, Lorg/appcelerator/titanium/io/TiBaseFile;->isSymbolicLink()Z

    move-result v0

    return v0
.end method

.method public getWritable()Z
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lti/modules/titanium/filesystem/FileProxy;->tbf:Lorg/appcelerator/titanium/io/TiBaseFile;

    invoke-virtual {v0}, Lorg/appcelerator/titanium/io/TiBaseFile;->isWriteable()Z

    move-result v0

    return v0
.end method

.method public isDirectory()Z
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lti/modules/titanium/filesystem/FileProxy;->tbf:Lorg/appcelerator/titanium/io/TiBaseFile;

    invoke-virtual {v0}, Lorg/appcelerator/titanium/io/TiBaseFile;->isDirectory()Z

    move-result v0

    return v0
.end method

.method public isFile()Z
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lti/modules/titanium/filesystem/FileProxy;->tbf:Lorg/appcelerator/titanium/io/TiBaseFile;

    invoke-virtual {v0}, Lorg/appcelerator/titanium/io/TiBaseFile;->isFile()Z

    move-result v0

    return v0
.end method

.method public modificationTimestamp()D
    .locals 2

    .prologue
    .line 271
    iget-object v0, p0, Lti/modules/titanium/filesystem/FileProxy;->tbf:Lorg/appcelerator/titanium/io/TiBaseFile;

    invoke-virtual {v0}, Lorg/appcelerator/titanium/io/TiBaseFile;->modificationTimestamp()D

    move-result-wide v0

    return-wide v0
.end method

.method public move(Ljava/lang/String;)Z
    .locals 1
    .parameter "destination"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 186
    iget-object v0, p0, Lti/modules/titanium/filesystem/FileProxy;->tbf:Lorg/appcelerator/titanium/io/TiBaseFile;

    invoke-virtual {v0, p1}, Lorg/appcelerator/titanium/io/TiBaseFile;->move(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public read()Lorg/appcelerator/titanium/TiBlob;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 203
    iget-object v0, p0, Lti/modules/titanium/filesystem/FileProxy;->tbf:Lorg/appcelerator/titanium/io/TiBaseFile;

    invoke-virtual {v0}, Lorg/appcelerator/titanium/io/TiBaseFile;->read()Lorg/appcelerator/titanium/TiBlob;

    move-result-object v0

    return-object v0
.end method

.method public readLine()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 210
    iget-object v0, p0, Lti/modules/titanium/filesystem/FileProxy;->tbf:Lorg/appcelerator/titanium/io/TiBaseFile;

    invoke-virtual {v0}, Lorg/appcelerator/titanium/io/TiBaseFile;->readLine()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public rename(Ljava/lang/String;)Z
    .locals 1
    .parameter "destination"

    .prologue
    .line 216
    iget-object v0, p0, Lti/modules/titanium/filesystem/FileProxy;->tbf:Lorg/appcelerator/titanium/io/TiBaseFile;

    invoke-virtual {v0, p1}, Lorg/appcelerator/titanium/io/TiBaseFile;->rename(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public resolve()Lorg/appcelerator/titanium/io/TiBaseFile;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lti/modules/titanium/filesystem/FileProxy;->tbf:Lorg/appcelerator/titanium/io/TiBaseFile;

    invoke-virtual {v0}, Lorg/appcelerator/titanium/io/TiBaseFile;->resolve()Lorg/appcelerator/titanium/io/TiBaseFile;

    move-result-object v0

    return-object v0
.end method

.method public spaceAvailable()D
    .locals 2

    .prologue
    .line 231
    iget-object v0, p0, Lti/modules/titanium/filesystem/FileProxy;->tbf:Lorg/appcelerator/titanium/io/TiBaseFile;

    invoke-virtual {v0}, Lorg/appcelerator/titanium/io/TiBaseFile;->spaceAvailable()D

    move-result-wide v0

    return-wide v0
.end method

.method public write([Ljava/lang/Object;)V
    .locals 4
    .parameter "args"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 238
    if-eqz p1, :cond_1

    array-length v1, p1

    if-lez v1, :cond_1

    .line 239
    const/4 v0, 0x0

    .line 240
    .local v0, append:Z
    array-length v1, p1

    if-le v1, v3, :cond_0

    aget-object v1, p1, v3

    instance-of v1, v1, Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    .line 241
    aget-object v1, p1, v3

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 243
    :cond_0
    aget-object v1, p1, v2

    instance-of v1, v1, Lorg/appcelerator/titanium/TiBlob;

    if-eqz v1, :cond_2

    .line 244
    iget-object v1, p0, Lti/modules/titanium/filesystem/FileProxy;->tbf:Lorg/appcelerator/titanium/io/TiBaseFile;

    aget-object p0, p1, v2

    .end local p0
    check-cast p0, Lorg/appcelerator/titanium/TiBlob;

    invoke-virtual {v1, p0, v0}, Lorg/appcelerator/titanium/io/TiBaseFile;->write(Lorg/appcelerator/titanium/TiBlob;Z)V

    .line 253
    .end local v0           #append:Z
    :cond_1
    :goto_0
    return-void

    .line 245
    .restart local v0       #append:Z
    .restart local p0
    :cond_2
    aget-object v1, p1, v2

    instance-of v1, v1, Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 246
    iget-object v1, p0, Lti/modules/titanium/filesystem/FileProxy;->tbf:Lorg/appcelerator/titanium/io/TiBaseFile;

    aget-object p0, p1, v2

    .end local p0
    check-cast p0, Ljava/lang/String;

    invoke-virtual {v1, p0, v0}, Lorg/appcelerator/titanium/io/TiBaseFile;->write(Ljava/lang/String;Z)V

    goto :goto_0

    .line 247
    .restart local p0
    :cond_3
    aget-object v1, p1, v2

    instance-of v1, v1, Lti/modules/titanium/filesystem/FileProxy;

    if-eqz v1, :cond_4

    .line 248
    iget-object v1, p0, Lti/modules/titanium/filesystem/FileProxy;->tbf:Lorg/appcelerator/titanium/io/TiBaseFile;

    aget-object p0, p1, v2

    .end local p0
    check-cast p0, Lti/modules/titanium/filesystem/FileProxy;

    invoke-virtual {p0}, Lti/modules/titanium/filesystem/FileProxy;->read()Lorg/appcelerator/titanium/TiBlob;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lorg/appcelerator/titanium/io/TiBaseFile;->write(Lorg/appcelerator/titanium/TiBlob;Z)V

    goto :goto_0

    .line 250
    .restart local p0
    :cond_4
    new-instance v1, Ljava/io/IOException;

    const-string v2, "unable to write, unrecognized type"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public writeLine(Ljava/lang/String;)V
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 259
    iget-object v0, p0, Lti/modules/titanium/filesystem/FileProxy;->tbf:Lorg/appcelerator/titanium/io/TiBaseFile;

    invoke-virtual {v0, p1}, Lorg/appcelerator/titanium/io/TiBaseFile;->writeLine(Ljava/lang/String;)V

    .line 260
    return-void
.end method
