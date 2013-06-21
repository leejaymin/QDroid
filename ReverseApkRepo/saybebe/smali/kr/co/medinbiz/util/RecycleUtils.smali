.class public Lkr/co/medinbiz/util/RecycleUtils;
.super Ljava/lang/Object;
.source "RecycleUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static recursiveRecycle(Landroid/view/View;)V
    .locals 5
    .parameter "root"

    .prologue
    const/4 v4, 0x0

    .line 19
    if-nez p0, :cond_0

    .line 45
    :goto_0
    return-void

    .line 24
    :cond_0
    invoke-virtual {p0, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 26
    instance-of v3, p0, Landroid/view/ViewGroup;

    if-eqz v3, :cond_1

    move-object v1, p0

    .line 27
    check-cast v1, Landroid/view/ViewGroup;

    .line 28
    .local v1, group:Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 29
    .local v0, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-lt v2, v0, :cond_3

    .line 33
    instance-of v3, p0, Landroid/widget/AdapterView;

    if-nez v3, :cond_1

    .line 34
    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 39
    .end local v0           #count:I
    .end local v1           #group:Landroid/view/ViewGroup;
    .end local v2           #i:I
    :cond_1
    instance-of v3, p0, Landroid/widget/ImageView;

    if-eqz v3, :cond_2

    .line 40
    check-cast p0, Landroid/widget/ImageView;

    .end local p0
    invoke-virtual {p0, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 43
    :cond_2
    const/4 p0, 0x0

    .line 45
    .restart local p0
    goto :goto_0

    .line 30
    .restart local v0       #count:I
    .restart local v1       #group:Landroid/view/ViewGroup;
    .restart local v2       #i:I
    :cond_3
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Lkr/co/medinbiz/util/RecycleUtils;->recursiveRecycle(Landroid/view/View;)V

    .line 29
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public static recursiveRecycle(Ljava/util/List;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 50
    .local p0, recycleList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/ref/WeakReference<Landroid/view/View;>;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 53
    return-void

    .line 50
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 51
    .local v0, ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/view/View;>;"
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-static {v1}, Lkr/co/medinbiz/util/RecycleUtils;->recursiveRecycle(Landroid/view/View;)V

    goto :goto_0
.end method
