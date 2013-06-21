.class public Lorg/appcelerator/titanium/TiActivity;
.super Lorg/appcelerator/titanium/TiBaseActivity;
.source "TiActivity.java"


# instance fields
.field protected contexts:Lorg/appcelerator/titanium/util/TiWeakList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/appcelerator/titanium/util/TiWeakList",
            "<",
            "Lorg/appcelerator/titanium/TiContext;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Lorg/appcelerator/titanium/TiBaseActivity;-><init>()V

    .line 20
    new-instance v0, Lorg/appcelerator/titanium/util/TiWeakList;

    invoke-direct {v0}, Lorg/appcelerator/titanium/util/TiWeakList;-><init>()V

    iput-object v0, p0, Lorg/appcelerator/titanium/TiActivity;->contexts:Lorg/appcelerator/titanium/util/TiWeakList;

    .line 21
    return-void
.end method


# virtual methods
.method public addTiContext(Lorg/appcelerator/titanium/TiContext;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 25
    iget-object v0, p0, Lorg/appcelerator/titanium/TiActivity;->contexts:Lorg/appcelerator/titanium/util/TiWeakList;

    invoke-virtual {v0, p1}, Lorg/appcelerator/titanium/util/TiWeakList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 26
    iget-object v0, p0, Lorg/appcelerator/titanium/TiActivity;->contexts:Lorg/appcelerator/titanium/util/TiWeakList;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lorg/appcelerator/titanium/util/TiWeakList;->add(Ljava/lang/Object;)Z

    .line 28
    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    .line 76
    invoke-virtual {p0}, Lorg/appcelerator/titanium/TiActivity;->fireOnDestroy()V

    .line 78
    iget-object v2, p0, Lorg/appcelerator/titanium/TiActivity;->contexts:Lorg/appcelerator/titanium/util/TiWeakList;

    invoke-virtual {v2}, Lorg/appcelerator/titanium/util/TiWeakList;->nonNull()Ljava/lang/Iterable;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/appcelerator/titanium/TiContext;

    .line 79
    .local v0, context:Lorg/appcelerator/titanium/TiContext;
    const/4 v2, 0x4

    invoke-virtual {v0, p0, v2}, Lorg/appcelerator/titanium/TiContext;->fireLifecycleEvent(Landroid/app/Activity;I)V

    .line 80
    invoke-virtual {v0}, Lorg/appcelerator/titanium/TiContext;->release()V

    goto :goto_0

    .line 82
    .end local v0           #context:Lorg/appcelerator/titanium/TiContext;
    :cond_0
    invoke-super {p0}, Lorg/appcelerator/titanium/TiBaseActivity;->onDestroy()V

    .line 83
    return-void
.end method

.method protected onPause()V
    .locals 3

    .prologue
    .line 40
    invoke-super {p0}, Lorg/appcelerator/titanium/TiBaseActivity;->onPause()V

    .line 41
    iget-object v2, p0, Lorg/appcelerator/titanium/TiActivity;->contexts:Lorg/appcelerator/titanium/util/TiWeakList;

    invoke-virtual {v2}, Lorg/appcelerator/titanium/util/TiWeakList;->nonNull()Ljava/lang/Iterable;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/appcelerator/titanium/TiContext;

    .line 42
    .local v0, context:Lorg/appcelerator/titanium/TiContext;
    const/4 v2, 0x2

    invoke-virtual {v0, p0, v2}, Lorg/appcelerator/titanium/TiContext;->fireLifecycleEvent(Landroid/app/Activity;I)V

    goto :goto_0

    .line 44
    .end local v0           #context:Lorg/appcelerator/titanium/TiContext;
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 49
    invoke-super {p0}, Lorg/appcelerator/titanium/TiBaseActivity;->onResume()V

    .line 50
    iget-object v2, p0, Lorg/appcelerator/titanium/TiActivity;->contexts:Lorg/appcelerator/titanium/util/TiWeakList;

    invoke-virtual {v2}, Lorg/appcelerator/titanium/util/TiWeakList;->nonNull()Ljava/lang/Iterable;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/appcelerator/titanium/TiContext;

    .line 51
    .local v0, context:Lorg/appcelerator/titanium/TiContext;
    const/4 v2, 0x1

    invoke-virtual {v0, p0, v2}, Lorg/appcelerator/titanium/TiContext;->fireLifecycleEvent(Landroid/app/Activity;I)V

    goto :goto_0

    .line 53
    .end local v0           #context:Lorg/appcelerator/titanium/TiContext;
    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 3

    .prologue
    .line 58
    invoke-super {p0}, Lorg/appcelerator/titanium/TiBaseActivity;->onStart()V

    .line 59
    iget-object v2, p0, Lorg/appcelerator/titanium/TiActivity;->contexts:Lorg/appcelerator/titanium/util/TiWeakList;

    invoke-virtual {v2}, Lorg/appcelerator/titanium/util/TiWeakList;->nonNull()Ljava/lang/Iterable;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/appcelerator/titanium/TiContext;

    .line 60
    .local v0, context:Lorg/appcelerator/titanium/TiContext;
    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2}, Lorg/appcelerator/titanium/TiContext;->fireLifecycleEvent(Landroid/app/Activity;I)V

    goto :goto_0

    .line 62
    .end local v0           #context:Lorg/appcelerator/titanium/TiContext;
    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 3

    .prologue
    .line 67
    invoke-super {p0}, Lorg/appcelerator/titanium/TiBaseActivity;->onStop()V

    .line 68
    iget-object v2, p0, Lorg/appcelerator/titanium/TiActivity;->contexts:Lorg/appcelerator/titanium/util/TiWeakList;

    invoke-virtual {v2}, Lorg/appcelerator/titanium/util/TiWeakList;->nonNull()Ljava/lang/Iterable;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/appcelerator/titanium/TiContext;

    .line 69
    .local v0, context:Lorg/appcelerator/titanium/TiContext;
    const/4 v2, 0x3

    invoke-virtual {v0, p0, v2}, Lorg/appcelerator/titanium/TiContext;->fireLifecycleEvent(Landroid/app/Activity;I)V

    goto :goto_0

    .line 71
    .end local v0           #context:Lorg/appcelerator/titanium/TiContext;
    :cond_0
    return-void
.end method

.method public removeTiContext(Lorg/appcelerator/titanium/TiContext;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 32
    iget-object v0, p0, Lorg/appcelerator/titanium/TiActivity;->contexts:Lorg/appcelerator/titanium/util/TiWeakList;

    invoke-virtual {v0, p1}, Lorg/appcelerator/titanium/util/TiWeakList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 33
    iget-object v0, p0, Lorg/appcelerator/titanium/TiActivity;->contexts:Lorg/appcelerator/titanium/util/TiWeakList;

    invoke-virtual {v0, p1}, Lorg/appcelerator/titanium/util/TiWeakList;->remove(Ljava/lang/Object;)Z

    .line 35
    :cond_0
    return-void
.end method
