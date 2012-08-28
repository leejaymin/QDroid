.class public Lorg/connectbot/HostEditorActivity$CharsetHolder;
.super Ljava/lang/Object;
.source "HostEditorActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/connectbot/HostEditorActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CharsetHolder"
.end annotation


# static fields
.field private static charsetIds:[Ljava/lang/CharSequence;

.field private static charsetNames:[Ljava/lang/CharSequence;

.field private static initialized:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 383
    const/4 v0, 0x0

    sput-boolean v0, Lorg/connectbot/HostEditorActivity$CharsetHolder;->initialized:Z

    .line 382
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 382
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCharsetIds()[Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 396
    sget-object v0, Lorg/connectbot/HostEditorActivity$CharsetHolder;->charsetIds:[Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    .line 397
    invoke-static {}, Lorg/connectbot/HostEditorActivity$CharsetHolder;->initialize()V

    .line 399
    :cond_0
    sget-object v0, Lorg/connectbot/HostEditorActivity$CharsetHolder;->charsetIds:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method public static getCharsetNames()[Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 389
    sget-object v0, Lorg/connectbot/HostEditorActivity$CharsetHolder;->charsetNames:[Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    .line 390
    invoke-static {}, Lorg/connectbot/HostEditorActivity$CharsetHolder;->initialize()V

    .line 392
    :cond_0
    sget-object v0, Lorg/connectbot/HostEditorActivity$CharsetHolder;->charsetNames:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method private static declared-synchronized initialize()V
    .locals 8

    .prologue
    .line 403
    const-class v6, Lorg/connectbot/HostEditorActivity$CharsetHolder;

    monitor-enter v6

    :try_start_0
    sget-boolean v5, Lorg/connectbot/HostEditorActivity$CharsetHolder;->initialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v5, :cond_0

    .line 427
    .local v1, charsetIdsList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/CharSequence;>;"
    .local v2, charsetNamesList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/CharSequence;>;"
    :goto_0
    monitor-exit v6

    return-void

    .line 406
    .end local v1           #charsetIdsList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/CharSequence;>;"
    .end local v2           #charsetNamesList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/CharSequence;>;"
    :cond_0
    :try_start_1
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 407
    .restart local v1       #charsetIdsList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/CharSequence;>;"
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 409
    .restart local v2       #charsetNamesList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/CharSequence;>;"
    invoke-static {}, Ljava/nio/charset/Charset;->availableCharsets()Ljava/util/SortedMap;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/SortedMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_2

    .line 423
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/CharSequence;

    invoke-interface {v1, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/CharSequence;

    sput-object v5, Lorg/connectbot/HostEditorActivity$CharsetHolder;->charsetIds:[Ljava/lang/CharSequence;

    .line 424
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/CharSequence;

    invoke-interface {v2, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/CharSequence;

    sput-object v5, Lorg/connectbot/HostEditorActivity$CharsetHolder;->charsetNames:[Ljava/lang/CharSequence;

    .line 426
    const/4 v5, 0x1

    sput-boolean v5, Lorg/connectbot/HostEditorActivity$CharsetHolder;->initialized:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 403
    .end local v2           #charsetNamesList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/CharSequence;>;"
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5

    .line 409
    .restart local v2       #charsetNamesList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/CharSequence;>;"
    :cond_2
    :try_start_2
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 410
    .local v3, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/nio/charset/Charset;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/charset/Charset;

    .line 411
    .local v0, c:Ljava/nio/charset/Charset;
    invoke-virtual {v0}, Ljava/nio/charset/Charset;->canEncode()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->isRegistered()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 412
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 413
    .local v4, key:Ljava/lang/String;
    const-string v5, "cp"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 415
    const-string v5, "CP437"

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 416
    const-string v5, "CP437"

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 418
    :cond_3
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 419
    invoke-virtual {v0}, Ljava/nio/charset/Charset;->displayName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public static isInitialized()Z
    .locals 1

    .prologue
    .line 430
    sget-boolean v0, Lorg/connectbot/HostEditorActivity$CharsetHolder;->initialized:Z

    return v0
.end method
