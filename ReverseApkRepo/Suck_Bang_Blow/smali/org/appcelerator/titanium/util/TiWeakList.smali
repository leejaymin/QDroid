.class public Lorg/appcelerator/titanium/util/TiWeakList;
.super Ljava/util/ArrayList;
.source "TiWeakList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/appcelerator/titanium/util/TiWeakList$NonNullIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/ArrayList",
        "<",
        "Ljava/lang/ref/WeakReference",
        "<TT;>;>;"
    }
.end annotation


# instance fields
.field protected synchronizedList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    .local p0, this:Lorg/appcelerator/titanium/util/TiWeakList;,"Lorg/appcelerator/titanium/util/TiWeakList<TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/appcelerator/titanium/util/TiWeakList;-><init>(Z)V

    .line 24
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0
    .parameter "isSynchronized"

    .prologue
    .line 27
    .local p0, this:Lorg/appcelerator/titanium/util/TiWeakList;,"Lorg/appcelerator/titanium/util/TiWeakList<TT;>;"
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 28
    if-eqz p1, :cond_0

    .line 29
    invoke-virtual {p0}, Lorg/appcelerator/titanium/util/TiWeakList;->synchronizedList()Ljava/util/List;

    .line 31
    :cond_0
    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 2
    .parameter "o"

    .prologue
    .line 62
    .local p0, this:Lorg/appcelerator/titanium/util/TiWeakList;,"Lorg/appcelerator/titanium/util/TiWeakList<TT;>;"
    instance-of v0, p1, Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 68
    :goto_0
    return v0

    .line 63
    :cond_0
    iget-object v0, p0, Lorg/appcelerator/titanium/util/TiWeakList;->synchronizedList:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 64
    iget-object v0, p0, Lorg/appcelerator/titanium/util/TiWeakList;->synchronizedList:Ljava/util/List;

    monitor-enter v0

    .line 65
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/appcelerator/titanium/util/TiWeakList;->findRef(Ljava/lang/Object;)Z

    move-result v1

    monitor-exit v0

    move v0, v1

    goto :goto_0

    .line 66
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 68
    :cond_1
    invoke-virtual {p0, p1}, Lorg/appcelerator/titanium/util/TiWeakList;->findRef(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method protected findRef(Ljava/lang/Object;)Z
    .locals 3
    .parameter "o"

    .prologue
    .line 51
    .local p0, this:Lorg/appcelerator/titanium/util/TiWeakList;,"Lorg/appcelerator/titanium/util/TiWeakList<TT;>;"
    invoke-virtual {p0}, Lorg/appcelerator/titanium/util/TiWeakList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 52
    .local v1, ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<TT;>;"
    invoke-virtual {p0, v1, p1}, Lorg/appcelerator/titanium/util/TiWeakList;->refEquals(Ljava/lang/ref/WeakReference;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 53
    const/4 v2, 0x1

    .line 56
    .end local v1           #ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<TT;>;"
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public nonNull()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 164
    .local p0, this:Lorg/appcelerator/titanium/util/TiWeakList;,"Lorg/appcelerator/titanium/util/TiWeakList<TT;>;"
    new-instance v0, Lorg/appcelerator/titanium/util/TiWeakList$1;

    invoke-direct {v0, p0}, Lorg/appcelerator/titanium/util/TiWeakList$1;-><init>(Lorg/appcelerator/titanium/util/TiWeakList;)V

    return-object v0
.end method

.method public nonNullIterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 159
    .local p0, this:Lorg/appcelerator/titanium/util/TiWeakList;,"Lorg/appcelerator/titanium/util/TiWeakList<TT;>;"
    new-instance v0, Lorg/appcelerator/titanium/util/TiWeakList$NonNullIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/appcelerator/titanium/util/TiWeakList$NonNullIterator;-><init>(Lorg/appcelerator/titanium/util/TiWeakList;I)V

    return-object v0
.end method

.method public refEquals(Ljava/lang/ref/WeakReference;Ljava/lang/Object;)Z
    .locals 3
    .parameter
    .parameter "o"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<TT;>;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p0, this:Lorg/appcelerator/titanium/util/TiWeakList;,"Lorg/appcelerator/titanium/util/TiWeakList<TT;>;"
    .local p1, ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<TT;>;"
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 43
    if-nez p1, :cond_0

    move v0, v1

    .line 46
    :goto_0
    return v0

    .line 44
    :cond_0
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p2, :cond_1

    move v0, v2

    goto :goto_0

    .line 45
    :cond_1
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v1

    .line 46
    goto :goto_0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2
    .parameter "o"

    .prologue
    .line 87
    .local p0, this:Lorg/appcelerator/titanium/util/TiWeakList;,"Lorg/appcelerator/titanium/util/TiWeakList<TT;>;"
    instance-of v0, p1, Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 93
    :goto_0
    return v0

    .line 88
    :cond_0
    iget-object v0, p0, Lorg/appcelerator/titanium/util/TiWeakList;->synchronizedList:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 89
    iget-object v0, p0, Lorg/appcelerator/titanium/util/TiWeakList;->synchronizedList:Ljava/util/List;

    monitor-enter v0

    .line 90
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/appcelerator/titanium/util/TiWeakList;->removeRef(Ljava/lang/Object;)Z

    move-result v1

    monitor-exit v0

    move v0, v1

    goto :goto_0

    .line 91
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 93
    :cond_1
    invoke-virtual {p0, p1}, Lorg/appcelerator/titanium/util/TiWeakList;->removeRef(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method protected removeRef(Ljava/lang/Object;)Z
    .locals 3
    .parameter "o"

    .prologue
    .line 73
    .local p0, this:Lorg/appcelerator/titanium/util/TiWeakList;,"Lorg/appcelerator/titanium/util/TiWeakList<TT;>;"
    invoke-virtual {p0}, Lorg/appcelerator/titanium/util/TiWeakList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 74
    .local v0, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/ref/WeakReference<TT;>;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 75
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 76
    .local v1, ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<TT;>;"
    invoke-virtual {p0, v1, p1}, Lorg/appcelerator/titanium/util/TiWeakList;->refEquals(Ljava/lang/ref/WeakReference;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 77
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 78
    const/4 v2, 0x1

    .line 81
    .end local v1           #ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<TT;>;"
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public synchronizedList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 35
    .local p0, this:Lorg/appcelerator/titanium/util/TiWeakList;,"Lorg/appcelerator/titanium/util/TiWeakList<TT;>;"
    iget-object v0, p0, Lorg/appcelerator/titanium/util/TiWeakList;->synchronizedList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 36
    invoke-static {p0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/appcelerator/titanium/util/TiWeakList;->synchronizedList:Ljava/util/List;

    .line 38
    :cond_0
    iget-object v0, p0, Lorg/appcelerator/titanium/util/TiWeakList;->synchronizedList:Ljava/util/List;

    return-object v0
.end method
