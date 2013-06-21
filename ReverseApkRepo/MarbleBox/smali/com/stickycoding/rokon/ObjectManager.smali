.class public Lcom/stickycoding/rokon/ObjectManager;
.super Lcom/stickycoding/rokon/BaseObject;
.source "ObjectManager.java"


# static fields
.field protected static final DEFAULT_ARRAY_SIZE:I = 0x100


# instance fields
.field private mObjects:Lcom/stickycoding/rokon/FixedSizeArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/stickycoding/rokon/FixedSizeArray",
            "<",
            "Lcom/stickycoding/rokon/BaseObject;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingAdditions:Lcom/stickycoding/rokon/FixedSizeArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/stickycoding/rokon/FixedSizeArray",
            "<",
            "Lcom/stickycoding/rokon/BaseObject;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingRemovals:Lcom/stickycoding/rokon/FixedSizeArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/stickycoding/rokon/FixedSizeArray",
            "<",
            "Lcom/stickycoding/rokon/BaseObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .parameter "arraySize"

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/stickycoding/rokon/BaseObject;-><init>()V

    .line 39
    new-instance v0, Lcom/stickycoding/rokon/FixedSizeArray;

    invoke-direct {v0, p1}, Lcom/stickycoding/rokon/FixedSizeArray;-><init>(I)V

    iput-object v0, p0, Lcom/stickycoding/rokon/ObjectManager;->mObjects:Lcom/stickycoding/rokon/FixedSizeArray;

    .line 40
    new-instance v0, Lcom/stickycoding/rokon/FixedSizeArray;

    invoke-direct {v0, p1}, Lcom/stickycoding/rokon/FixedSizeArray;-><init>(I)V

    iput-object v0, p0, Lcom/stickycoding/rokon/ObjectManager;->mPendingAdditions:Lcom/stickycoding/rokon/FixedSizeArray;

    .line 41
    new-instance v0, Lcom/stickycoding/rokon/FixedSizeArray;

    invoke-direct {v0, p1}, Lcom/stickycoding/rokon/FixedSizeArray;-><init>(I)V

    iput-object v0, p0, Lcom/stickycoding/rokon/ObjectManager;->mPendingRemovals:Lcom/stickycoding/rokon/FixedSizeArray;

    .line 42
    return-void
.end method


# virtual methods
.method public add(Lcom/stickycoding/rokon/BaseObject;)V
    .locals 1
    .parameter "object"

    .prologue
    .line 108
    iget-object v0, p0, Lcom/stickycoding/rokon/ObjectManager;->mPendingAdditions:Lcom/stickycoding/rokon/FixedSizeArray;

    invoke-virtual {v0, p1}, Lcom/stickycoding/rokon/FixedSizeArray;->add(Ljava/lang/Object;)V

    .line 109
    return-void
.end method

.method public commitUpdates()V
    .locals 8

    .prologue
    .line 55
    iget-object v6, p0, Lcom/stickycoding/rokon/ObjectManager;->mPendingAdditions:Lcom/stickycoding/rokon/FixedSizeArray;

    invoke-virtual {v6}, Lcom/stickycoding/rokon/FixedSizeArray;->getCount()I

    move-result v0

    .line 56
    .local v0, additionCount:I
    if-lez v0, :cond_0

    .line 57
    iget-object v6, p0, Lcom/stickycoding/rokon/ObjectManager;->mPendingAdditions:Lcom/stickycoding/rokon/FixedSizeArray;

    invoke-virtual {v6}, Lcom/stickycoding/rokon/FixedSizeArray;->getArray()[Ljava/lang/Object;

    move-result-object v1

    .line 58
    .local v1, additionsArray:[Ljava/lang/Object;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-lt v2, v0, :cond_2

    .line 62
    iget-object v6, p0, Lcom/stickycoding/rokon/ObjectManager;->mPendingAdditions:Lcom/stickycoding/rokon/FixedSizeArray;

    invoke-virtual {v6}, Lcom/stickycoding/rokon/FixedSizeArray;->clear()V

    .line 65
    .end local v1           #additionsArray:[Ljava/lang/Object;
    .end local v2           #i:I
    :cond_0
    iget-object v6, p0, Lcom/stickycoding/rokon/ObjectManager;->mPendingRemovals:Lcom/stickycoding/rokon/FixedSizeArray;

    invoke-virtual {v6}, Lcom/stickycoding/rokon/FixedSizeArray;->getCount()I

    move-result v4

    .line 66
    .local v4, removalCount:I
    if-lez v4, :cond_1

    .line 67
    iget-object v6, p0, Lcom/stickycoding/rokon/ObjectManager;->mPendingRemovals:Lcom/stickycoding/rokon/FixedSizeArray;

    invoke-virtual {v6}, Lcom/stickycoding/rokon/FixedSizeArray;->getArray()[Ljava/lang/Object;

    move-result-object v5

    .line 69
    .local v5, removalsArray:[Ljava/lang/Object;
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_1
    if-lt v2, v4, :cond_3

    .line 73
    iget-object v6, p0, Lcom/stickycoding/rokon/ObjectManager;->mPendingRemovals:Lcom/stickycoding/rokon/FixedSizeArray;

    invoke-virtual {v6}, Lcom/stickycoding/rokon/FixedSizeArray;->clear()V

    .line 75
    .end local v2           #i:I
    .end local v5           #removalsArray:[Ljava/lang/Object;
    :cond_1
    return-void

    .line 59
    .end local v4           #removalCount:I
    .restart local v1       #additionsArray:[Ljava/lang/Object;
    .restart local v2       #i:I
    :cond_2
    aget-object v3, v1, v2

    check-cast v3, Lcom/stickycoding/rokon/BaseObject;

    .line 60
    .local v3, object:Lcom/stickycoding/rokon/BaseObject;
    iget-object v6, p0, Lcom/stickycoding/rokon/ObjectManager;->mObjects:Lcom/stickycoding/rokon/FixedSizeArray;

    invoke-virtual {v6, v3}, Lcom/stickycoding/rokon/FixedSizeArray;->add(Ljava/lang/Object;)V

    .line 58
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 70
    .end local v1           #additionsArray:[Ljava/lang/Object;
    .end local v3           #object:Lcom/stickycoding/rokon/BaseObject;
    .restart local v4       #removalCount:I
    .restart local v5       #removalsArray:[Ljava/lang/Object;
    :cond_3
    aget-object v3, v5, v2

    check-cast v3, Lcom/stickycoding/rokon/BaseObject;

    .line 71
    .restart local v3       #object:Lcom/stickycoding/rokon/BaseObject;
    iget-object v6, p0, Lcom/stickycoding/rokon/ObjectManager;->mObjects:Lcom/stickycoding/rokon/FixedSizeArray;

    const/4 v7, 0x1

    invoke-virtual {v6, v3, v7}, Lcom/stickycoding/rokon/FixedSizeArray;->remove(Ljava/lang/Object;Z)V

    .line 69
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public findByClass(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 131
    .local p1, classObject:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    const/4 v3, 0x0

    .line 132
    .local v3, object:Ljava/lang/Object;,"TT;"
    iget-object v4, p0, Lcom/stickycoding/rokon/ObjectManager;->mObjects:Lcom/stickycoding/rokon/FixedSizeArray;

    invoke-virtual {v4}, Lcom/stickycoding/rokon/FixedSizeArray;->getCount()I

    move-result v0

    .line 133
    .local v0, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-lt v2, v0, :cond_0

    .line 140
    .end local v3           #object:Ljava/lang/Object;,"TT;"
    :goto_1
    return-object v3

    .line 134
    .restart local v3       #object:Ljava/lang/Object;,"TT;"
    :cond_0
    iget-object v4, p0, Lcom/stickycoding/rokon/ObjectManager;->mObjects:Lcom/stickycoding/rokon/FixedSizeArray;

    invoke-virtual {v4, v2}, Lcom/stickycoding/rokon/FixedSizeArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stickycoding/rokon/BaseObject;

    .line 135
    .local v1, currentObject:Lcom/stickycoding/rokon/BaseObject;
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-ne v4, p1, :cond_1

    .line 136
    invoke-virtual {p1, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 137
    goto :goto_1

    .line 133
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public final get(I)Lcom/stickycoding/rokon/BaseObject;
    .locals 1
    .parameter "index"

    .prologue
    .line 104
    iget-object v0, p0, Lcom/stickycoding/rokon/ObjectManager;->mObjects:Lcom/stickycoding/rokon/FixedSizeArray;

    invoke-virtual {v0, p1}, Lcom/stickycoding/rokon/FixedSizeArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/stickycoding/rokon/BaseObject;

    return-object p0
.end method

.method public final getConcreteCount()I
    .locals 2

    .prologue
    .line 100
    iget-object v0, p0, Lcom/stickycoding/rokon/ObjectManager;->mObjects:Lcom/stickycoding/rokon/FixedSizeArray;

    invoke-virtual {v0}, Lcom/stickycoding/rokon/FixedSizeArray;->getCount()I

    move-result v0

    iget-object v1, p0, Lcom/stickycoding/rokon/ObjectManager;->mPendingAdditions:Lcom/stickycoding/rokon/FixedSizeArray;

    invoke-virtual {v1}, Lcom/stickycoding/rokon/FixedSizeArray;->getCount()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/stickycoding/rokon/ObjectManager;->mPendingRemovals:Lcom/stickycoding/rokon/FixedSizeArray;

    invoke-virtual {v1}, Lcom/stickycoding/rokon/FixedSizeArray;->getCount()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public final getCount()I
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/stickycoding/rokon/ObjectManager;->mObjects:Lcom/stickycoding/rokon/FixedSizeArray;

    invoke-virtual {v0}, Lcom/stickycoding/rokon/FixedSizeArray;->getCount()I

    move-result v0

    return v0
.end method

.method public final getObjects()Lcom/stickycoding/rokon/FixedSizeArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/stickycoding/rokon/FixedSizeArray",
            "<",
            "Lcom/stickycoding/rokon/BaseObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 91
    iget-object v0, p0, Lcom/stickycoding/rokon/ObjectManager;->mObjects:Lcom/stickycoding/rokon/FixedSizeArray;

    return-object v0
.end method

.method protected getPendingObjects()Lcom/stickycoding/rokon/FixedSizeArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/stickycoding/rokon/FixedSizeArray",
            "<",
            "Lcom/stickycoding/rokon/BaseObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 144
    iget-object v0, p0, Lcom/stickycoding/rokon/ObjectManager;->mPendingAdditions:Lcom/stickycoding/rokon/FixedSizeArray;

    return-object v0
.end method

.method public remove(Lcom/stickycoding/rokon/BaseObject;)V
    .locals 1
    .parameter "object"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/stickycoding/rokon/ObjectManager;->mPendingRemovals:Lcom/stickycoding/rokon/FixedSizeArray;

    invoke-virtual {v0, p1}, Lcom/stickycoding/rokon/FixedSizeArray;->add(Ljava/lang/Object;)V

    .line 113
    return-void
.end method

.method public removeAll()V
    .locals 5

    .prologue
    .line 116
    iget-object v3, p0, Lcom/stickycoding/rokon/ObjectManager;->mObjects:Lcom/stickycoding/rokon/FixedSizeArray;

    invoke-virtual {v3}, Lcom/stickycoding/rokon/FixedSizeArray;->getCount()I

    move-result v0

    .line 117
    .local v0, count:I
    iget-object v3, p0, Lcom/stickycoding/rokon/ObjectManager;->mObjects:Lcom/stickycoding/rokon/FixedSizeArray;

    invoke-virtual {v3}, Lcom/stickycoding/rokon/FixedSizeArray;->getArray()[Ljava/lang/Object;

    move-result-object v2

    .line 118
    .local v2, objectArray:[Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-lt v1, v0, :cond_0

    .line 121
    iget-object v3, p0, Lcom/stickycoding/rokon/ObjectManager;->mPendingAdditions:Lcom/stickycoding/rokon/FixedSizeArray;

    invoke-virtual {v3}, Lcom/stickycoding/rokon/FixedSizeArray;->clear()V

    .line 122
    return-void

    .line 119
    :cond_0
    iget-object v4, p0, Lcom/stickycoding/rokon/ObjectManager;->mPendingRemovals:Lcom/stickycoding/rokon/FixedSizeArray;

    aget-object v3, v2, v1

    check-cast v3, Lcom/stickycoding/rokon/BaseObject;

    invoke-virtual {v4, v3}, Lcom/stickycoding/rokon/FixedSizeArray;->add(Ljava/lang/Object;)V

    .line 118
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public reset()V
    .locals 4

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/stickycoding/rokon/ObjectManager;->commitUpdates()V

    .line 47
    iget-object v3, p0, Lcom/stickycoding/rokon/ObjectManager;->mObjects:Lcom/stickycoding/rokon/FixedSizeArray;

    invoke-virtual {v3}, Lcom/stickycoding/rokon/FixedSizeArray;->getCount()I

    move-result v0

    .line 48
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-lt v1, v0, :cond_0

    .line 52
    return-void

    .line 49
    :cond_0
    iget-object v3, p0, Lcom/stickycoding/rokon/ObjectManager;->mObjects:Lcom/stickycoding/rokon/FixedSizeArray;

    invoke-virtual {v3, v1}, Lcom/stickycoding/rokon/FixedSizeArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stickycoding/rokon/BaseObject;

    .line 50
    .local v2, object:Lcom/stickycoding/rokon/BaseObject;
    invoke-virtual {v2}, Lcom/stickycoding/rokon/BaseObject;->reset()V

    .line 48
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public update(FLcom/stickycoding/rokon/BaseObject;)V
    .locals 5
    .parameter "timeDelta"
    .parameter "parent"

    .prologue
    .line 79
    invoke-virtual {p0}, Lcom/stickycoding/rokon/ObjectManager;->commitUpdates()V

    .line 80
    iget-object v4, p0, Lcom/stickycoding/rokon/ObjectManager;->mObjects:Lcom/stickycoding/rokon/FixedSizeArray;

    invoke-virtual {v4}, Lcom/stickycoding/rokon/FixedSizeArray;->getCount()I

    move-result v0

    .line 81
    .local v0, count:I
    if-lez v0, :cond_0

    .line 82
    iget-object v4, p0, Lcom/stickycoding/rokon/ObjectManager;->mObjects:Lcom/stickycoding/rokon/FixedSizeArray;

    invoke-virtual {v4}, Lcom/stickycoding/rokon/FixedSizeArray;->getArray()[Ljava/lang/Object;

    move-result-object v3

    .line 83
    .local v3, objectArray:[Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-lt v1, v0, :cond_1

    .line 88
    .end local v1           #i:I
    .end local v3           #objectArray:[Ljava/lang/Object;
    :cond_0
    return-void

    .line 84
    .restart local v1       #i:I
    .restart local v3       #objectArray:[Ljava/lang/Object;
    :cond_1
    aget-object v2, v3, v1

    check-cast v2, Lcom/stickycoding/rokon/BaseObject;

    .line 85
    .local v2, object:Lcom/stickycoding/rokon/BaseObject;
    invoke-virtual {v2, p1, p0}, Lcom/stickycoding/rokon/BaseObject;->update(FLcom/stickycoding/rokon/BaseObject;)V

    .line 83
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
