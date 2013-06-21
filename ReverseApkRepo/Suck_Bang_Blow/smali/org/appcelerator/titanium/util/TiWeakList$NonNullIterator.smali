.class public Lorg/appcelerator/titanium/util/TiWeakList$NonNullIterator;
.super Ljava/lang/Object;
.source "TiWeakList.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/appcelerator/titanium/util/TiWeakList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "NonNullIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TT;>;"
    }
.end annotation


# instance fields
.field protected index:I

.field final synthetic this$0:Lorg/appcelerator/titanium/util/TiWeakList;


# direct methods
.method public constructor <init>(Lorg/appcelerator/titanium/util/TiWeakList;I)V
    .locals 0
    .parameter
    .parameter "index"

    .prologue
    .line 101
    .local p0, this:Lorg/appcelerator/titanium/util/TiWeakList$NonNullIterator;,"Lorg/appcelerator/titanium/util/TiWeakList<TT;>.NonNullIterator;"
    iput-object p1, p0, Lorg/appcelerator/titanium/util/TiWeakList$NonNullIterator;->this$0:Lorg/appcelerator/titanium/util/TiWeakList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    iput p2, p0, Lorg/appcelerator/titanium/util/TiWeakList$NonNullIterator;->index:I

    .line 103
    return-void
.end method


# virtual methods
.method protected getNextIndex()I
    .locals 4

    .prologue
    .line 107
    .local p0, this:Lorg/appcelerator/titanium/util/TiWeakList$NonNullIterator;,"Lorg/appcelerator/titanium/util/TiWeakList<TT;>.NonNullIterator;"
    iget-object v3, p0, Lorg/appcelerator/titanium/util/TiWeakList$NonNullIterator;->this$0:Lorg/appcelerator/titanium/util/TiWeakList;

    invoke-virtual {v3}, Lorg/appcelerator/titanium/util/TiWeakList;->size()I

    move-result v2

    .line 108
    .local v2, size:I
    iget v0, p0, Lorg/appcelerator/titanium/util/TiWeakList$NonNullIterator;->index:I

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 109
    iget-object v3, p0, Lorg/appcelerator/titanium/util/TiWeakList$NonNullIterator;->this$0:Lorg/appcelerator/titanium/util/TiWeakList;

    invoke-virtual {v3, v0}, Lorg/appcelerator/titanium/util/TiWeakList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 110
    .local v1, ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<TT;>;"
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    move v3, v0

    .line 114
    .end local v1           #ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<TT;>;"
    :goto_1
    return v3

    .line 108
    .restart local v1       #ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<TT;>;"
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 114
    .end local v1           #ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<TT;>;"
    :cond_1
    const/4 v3, -0x1

    goto :goto_1
.end method

.method public hasNext()Z
    .locals 4

    .prologue
    .local p0, this:Lorg/appcelerator/titanium/util/TiWeakList$NonNullIterator;,"Lorg/appcelerator/titanium/util/TiWeakList<TT;>.NonNullIterator;"
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 119
    iget-object v0, p0, Lorg/appcelerator/titanium/util/TiWeakList$NonNullIterator;->this$0:Lorg/appcelerator/titanium/util/TiWeakList;

    iget-object v0, v0, Lorg/appcelerator/titanium/util/TiWeakList;->synchronizedList:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 120
    iget-object v0, p0, Lorg/appcelerator/titanium/util/TiWeakList$NonNullIterator;->this$0:Lorg/appcelerator/titanium/util/TiWeakList;

    iget-object v0, v0, Lorg/appcelerator/titanium/util/TiWeakList;->synchronizedList:Ljava/util/List;

    monitor-enter v0

    .line 121
    :try_start_0
    invoke-virtual {p0}, Lorg/appcelerator/titanium/util/TiWeakList$NonNullIterator;->getNextIndex()I

    move-result v1

    if-ltz v1, :cond_0

    move v1, v3

    :goto_0
    monitor-exit v0

    move v0, v1

    .line 124
    :goto_1
    return v0

    :cond_0
    move v1, v2

    .line 121
    goto :goto_0

    .line 122
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 124
    :cond_1
    invoke-virtual {p0}, Lorg/appcelerator/titanium/util/TiWeakList$NonNullIterator;->getNextIndex()I

    move-result v0

    if-ltz v0, :cond_2

    move v0, v3

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_1
.end method

.method public next()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 130
    .local p0, this:Lorg/appcelerator/titanium/util/TiWeakList$NonNullIterator;,"Lorg/appcelerator/titanium/util/TiWeakList<TT;>.NonNullIterator;"
    iget-object v1, p0, Lorg/appcelerator/titanium/util/TiWeakList$NonNullIterator;->this$0:Lorg/appcelerator/titanium/util/TiWeakList;

    iget-object v1, v1, Lorg/appcelerator/titanium/util/TiWeakList;->synchronizedList:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 131
    iget-object v1, p0, Lorg/appcelerator/titanium/util/TiWeakList$NonNullIterator;->this$0:Lorg/appcelerator/titanium/util/TiWeakList;

    iget-object v1, v1, Lorg/appcelerator/titanium/util/TiWeakList;->synchronizedList:Ljava/util/List;

    monitor-enter v1

    .line 132
    :try_start_0
    invoke-virtual {p0}, Lorg/appcelerator/titanium/util/TiWeakList$NonNullIterator;->getNextIndex()I

    move-result v0

    .line 133
    .local v0, nextIndex:I
    if-gez v0, :cond_0

    new-instance v2, Ljava/util/NoSuchElementException;

    invoke-direct {v2}, Ljava/util/NoSuchElementException;-><init>()V

    throw v2

    .line 136
    .end local v0           #nextIndex:I
    .end local p0           #this:Lorg/appcelerator/titanium/util/TiWeakList$NonNullIterator;,"Lorg/appcelerator/titanium/util/TiWeakList<TT;>.NonNullIterator;"
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 134
    .restart local v0       #nextIndex:I
    .restart local p0       #this:Lorg/appcelerator/titanium/util/TiWeakList$NonNullIterator;,"Lorg/appcelerator/titanium/util/TiWeakList<TT;>.NonNullIterator;"
    :cond_0
    add-int/lit8 v2, v0, 0x1

    :try_start_1
    iput v2, p0, Lorg/appcelerator/titanium/util/TiWeakList$NonNullIterator;->index:I

    .line 135
    iget-object v2, p0, Lorg/appcelerator/titanium/util/TiWeakList$NonNullIterator;->this$0:Lorg/appcelerator/titanium/util/TiWeakList;

    invoke-virtual {v2, v0}, Lorg/appcelerator/titanium/util/TiWeakList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0           #this:Lorg/appcelerator/titanium/util/TiWeakList$NonNullIterator;,"Lorg/appcelerator/titanium/util/TiWeakList<TT;>.NonNullIterator;"
    check-cast p0, Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v1, v2

    .line 141
    :goto_0
    return-object v1

    .line 138
    .end local v0           #nextIndex:I
    .restart local p0       #this:Lorg/appcelerator/titanium/util/TiWeakList$NonNullIterator;,"Lorg/appcelerator/titanium/util/TiWeakList<TT;>.NonNullIterator;"
    :cond_1
    invoke-virtual {p0}, Lorg/appcelerator/titanium/util/TiWeakList$NonNullIterator;->getNextIndex()I

    move-result v0

    .line 139
    .restart local v0       #nextIndex:I
    if-gez v0, :cond_2

    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 140
    :cond_2
    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/appcelerator/titanium/util/TiWeakList$NonNullIterator;->index:I

    .line 141
    iget-object v1, p0, Lorg/appcelerator/titanium/util/TiWeakList$NonNullIterator;->this$0:Lorg/appcelerator/titanium/util/TiWeakList;

    invoke-virtual {v1, v0}, Lorg/appcelerator/titanium/util/TiWeakList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0           #this:Lorg/appcelerator/titanium/util/TiWeakList$NonNullIterator;,"Lorg/appcelerator/titanium/util/TiWeakList<TT;>.NonNullIterator;"
    check-cast p0, Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public remove()V
    .locals 3

    .prologue
    .line 147
    .local p0, this:Lorg/appcelerator/titanium/util/TiWeakList$NonNullIterator;,"Lorg/appcelerator/titanium/util/TiWeakList<TT;>.NonNullIterator;"
    iget-object v0, p0, Lorg/appcelerator/titanium/util/TiWeakList$NonNullIterator;->this$0:Lorg/appcelerator/titanium/util/TiWeakList;

    iget-object v0, v0, Lorg/appcelerator/titanium/util/TiWeakList;->synchronizedList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lorg/appcelerator/titanium/util/TiWeakList$NonNullIterator;->this$0:Lorg/appcelerator/titanium/util/TiWeakList;

    iget-object v0, v0, Lorg/appcelerator/titanium/util/TiWeakList;->synchronizedList:Ljava/util/List;

    monitor-enter v0

    .line 149
    :try_start_0
    iget-object v1, p0, Lorg/appcelerator/titanium/util/TiWeakList$NonNullIterator;->this$0:Lorg/appcelerator/titanium/util/TiWeakList;

    iget v2, p0, Lorg/appcelerator/titanium/util/TiWeakList$NonNullIterator;->index:I

    invoke-virtual {v1, v2}, Lorg/appcelerator/titanium/util/TiWeakList;->remove(I)Ljava/lang/Object;

    .line 150
    monitor-exit v0

    .line 154
    :goto_0
    return-void

    .line 150
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 152
    :cond_0
    iget-object v0, p0, Lorg/appcelerator/titanium/util/TiWeakList$NonNullIterator;->this$0:Lorg/appcelerator/titanium/util/TiWeakList;

    iget v1, p0, Lorg/appcelerator/titanium/util/TiWeakList$NonNullIterator;->index:I

    invoke-virtual {v0, v1}, Lorg/appcelerator/titanium/util/TiWeakList;->remove(I)Ljava/lang/Object;

    goto :goto_0
.end method
