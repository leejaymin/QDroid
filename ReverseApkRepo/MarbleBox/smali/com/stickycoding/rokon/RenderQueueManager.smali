.class public Lcom/stickycoding/rokon/RenderQueueManager;
.super Ljava/lang/Object;
.source "RenderQueueManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stickycoding/rokon/RenderQueueManager$RenderElement;,
        Lcom/stickycoding/rokon/RenderQueueManager$RenderElementPool;
    }
.end annotation


# static fields
.field private static final MAX_RENDER_OBJECTS:I = 0x200

.field private static final MAX_RENDER_OBJECTS_PER_QUEUE:I = 0x100

.field private static final RENDER_QUEUE_COUNT:I = 0x2


# instance fields
.field private elementPool:Lcom/stickycoding/rokon/RenderQueueManager$RenderElementPool;

.field private queueIndex:I

.field private renderQueue:[Lcom/stickycoding/rokon/ObjectManager;


# direct methods
.method protected constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v1, Lcom/stickycoding/rokon/RenderQueueManager$RenderElementPool;

    const/16 v2, 0x200

    invoke-direct {v1, p0, v2}, Lcom/stickycoding/rokon/RenderQueueManager$RenderElementPool;-><init>(Lcom/stickycoding/rokon/RenderQueueManager;I)V

    iput-object v1, p0, Lcom/stickycoding/rokon/RenderQueueManager;->elementPool:Lcom/stickycoding/rokon/RenderQueueManager$RenderElementPool;

    .line 26
    new-array v1, v4, [Lcom/stickycoding/rokon/ObjectManager;

    iput-object v1, p0, Lcom/stickycoding/rokon/RenderQueueManager;->renderQueue:[Lcom/stickycoding/rokon/ObjectManager;

    .line 27
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-lt v0, v4, :cond_0

    .line 30
    const/4 v1, 0x0

    iput v1, p0, Lcom/stickycoding/rokon/RenderQueueManager;->queueIndex:I

    .line 31
    return-void

    .line 28
    :cond_0
    iget-object v1, p0, Lcom/stickycoding/rokon/RenderQueueManager;->renderQueue:[Lcom/stickycoding/rokon/ObjectManager;

    new-instance v2, Lcom/stickycoding/rokon/ObjectManager;

    const/16 v3, 0x100

    invoke-direct {v2, v3}, Lcom/stickycoding/rokon/ObjectManager;-><init>(I)V

    aput-object v2, v1, v0

    .line 27
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private clearQueue(Lcom/stickycoding/rokon/FixedSizeArray;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stickycoding/rokon/FixedSizeArray",
            "<",
            "Lcom/stickycoding/rokon/BaseObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 42
    .local p1, objects:Lcom/stickycoding/rokon/FixedSizeArray;,"Lcom/stickycoding/rokon/FixedSizeArray<Lcom/stickycoding/rokon/BaseObject;>;"
    invoke-virtual {p1}, Lcom/stickycoding/rokon/FixedSizeArray;->getCount()I

    move-result v0

    .line 43
    .local v0, count:I
    invoke-virtual {p1}, Lcom/stickycoding/rokon/FixedSizeArray;->getArray()[Ljava/lang/Object;

    move-result-object v4

    .line 44
    .local v4, objectArray:[Ljava/lang/Object;
    iget-object v2, p0, Lcom/stickycoding/rokon/RenderQueueManager;->elementPool:Lcom/stickycoding/rokon/RenderQueueManager$RenderElementPool;

    .line 45
    .local v2, elementPool:Lcom/stickycoding/rokon/RenderQueueManager$RenderElementPool;
    const/4 v5, 0x1

    sub-int v3, v0, v5

    .local v3, i:I
    :goto_0
    if-gez v3, :cond_0

    .line 50
    return-void

    .line 46
    :cond_0
    aget-object v1, v4, v3

    check-cast v1, Lcom/stickycoding/rokon/RenderQueueManager$RenderElement;

    .line 47
    .local v1, element:Lcom/stickycoding/rokon/RenderQueueManager$RenderElement;
    invoke-virtual {v2, v1}, Lcom/stickycoding/rokon/RenderQueueManager$RenderElementPool;->release(Ljava/lang/Object;)V

    .line 48
    invoke-virtual {p1}, Lcom/stickycoding/rokon/FixedSizeArray;->removeLast()Ljava/lang/Object;

    .line 45
    add-int/lit8 v3, v3, -0x1

    goto :goto_0
.end method


# virtual methods
.method protected add(Lcom/stickycoding/rokon/Drawable;Z)V
    .locals 3
    .parameter "drawable"
    .parameter "useWindow"

    .prologue
    .line 34
    iget-object v1, p0, Lcom/stickycoding/rokon/RenderQueueManager;->elementPool:Lcom/stickycoding/rokon/RenderQueueManager$RenderElementPool;

    invoke-virtual {v1}, Lcom/stickycoding/rokon/RenderQueueManager$RenderElementPool;->allocate()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stickycoding/rokon/RenderQueueManager$RenderElement;

    .line 35
    .local v0, element:Lcom/stickycoding/rokon/RenderQueueManager$RenderElement;
    if-eqz v0, :cond_0

    .line 36
    invoke-virtual {v0, p1, p2}, Lcom/stickycoding/rokon/RenderQueueManager$RenderElement;->set(Lcom/stickycoding/rokon/Drawable;Z)V

    .line 37
    iget-object v1, p0, Lcom/stickycoding/rokon/RenderQueueManager;->renderQueue:[Lcom/stickycoding/rokon/ObjectManager;

    iget v2, p0, Lcom/stickycoding/rokon/RenderQueueManager;->queueIndex:I

    aget-object v1, v1, v2

    invoke-virtual {v1, v0}, Lcom/stickycoding/rokon/ObjectManager;->add(Lcom/stickycoding/rokon/BaseObject;)V

    .line 39
    :cond_0
    return-void
.end method

.method public emptyQueues(Lcom/stickycoding/rokon/RokonRenderer;)V
    .locals 3
    .parameter "renderer"

    .prologue
    .line 62
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lcom/stickycoding/rokon/RokonRenderer;->setDrawQueue(Lcom/stickycoding/rokon/ObjectManager;)V

    .line 63
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v2, 0x2

    if-lt v0, v2, :cond_0

    .line 68
    return-void

    .line 64
    :cond_0
    iget-object v2, p0, Lcom/stickycoding/rokon/RenderQueueManager;->renderQueue:[Lcom/stickycoding/rokon/ObjectManager;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/stickycoding/rokon/ObjectManager;->commitUpdates()V

    .line 65
    iget-object v2, p0, Lcom/stickycoding/rokon/RenderQueueManager;->renderQueue:[Lcom/stickycoding/rokon/ObjectManager;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/stickycoding/rokon/ObjectManager;->getObjects()Lcom/stickycoding/rokon/FixedSizeArray;

    move-result-object v1

    .line 66
    .local v1, objects:Lcom/stickycoding/rokon/FixedSizeArray;,"Lcom/stickycoding/rokon/FixedSizeArray<Lcom/stickycoding/rokon/BaseObject;>;"
    invoke-direct {p0, v1}, Lcom/stickycoding/rokon/RenderQueueManager;->clearQueue(Lcom/stickycoding/rokon/FixedSizeArray;)V

    .line 63
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected swap(Lcom/stickycoding/rokon/RokonRenderer;)V
    .locals 5
    .parameter "renderer"

    .prologue
    const/4 v4, 0x1

    .line 53
    iget-object v2, p0, Lcom/stickycoding/rokon/RenderQueueManager;->renderQueue:[Lcom/stickycoding/rokon/ObjectManager;

    iget v3, p0, Lcom/stickycoding/rokon/RenderQueueManager;->queueIndex:I

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/stickycoding/rokon/ObjectManager;->commitUpdates()V

    .line 54
    iget-object v2, p0, Lcom/stickycoding/rokon/RenderQueueManager;->renderQueue:[Lcom/stickycoding/rokon/ObjectManager;

    iget v3, p0, Lcom/stickycoding/rokon/RenderQueueManager;->queueIndex:I

    aget-object v2, v2, v3

    invoke-virtual {p1, v2}, Lcom/stickycoding/rokon/RokonRenderer;->setDrawQueue(Lcom/stickycoding/rokon/ObjectManager;)V

    .line 55
    iget v2, p0, Lcom/stickycoding/rokon/RenderQueueManager;->queueIndex:I

    if-nez v2, :cond_0

    move v0, v4

    .line 56
    .local v0, lastQueue:I
    :goto_0
    iget-object v2, p0, Lcom/stickycoding/rokon/RenderQueueManager;->renderQueue:[Lcom/stickycoding/rokon/ObjectManager;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/stickycoding/rokon/ObjectManager;->getObjects()Lcom/stickycoding/rokon/FixedSizeArray;

    move-result-object v1

    .line 57
    .local v1, objects:Lcom/stickycoding/rokon/FixedSizeArray;,"Lcom/stickycoding/rokon/FixedSizeArray<Lcom/stickycoding/rokon/BaseObject;>;"
    invoke-direct {p0, v1}, Lcom/stickycoding/rokon/RenderQueueManager;->clearQueue(Lcom/stickycoding/rokon/FixedSizeArray;)V

    .line 58
    iget v2, p0, Lcom/stickycoding/rokon/RenderQueueManager;->queueIndex:I

    add-int/lit8 v2, v2, 0x1

    rem-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/stickycoding/rokon/RenderQueueManager;->queueIndex:I

    .line 59
    return-void

    .line 55
    .end local v0           #lastQueue:I
    .end local v1           #objects:Lcom/stickycoding/rokon/FixedSizeArray;,"Lcom/stickycoding/rokon/FixedSizeArray<Lcom/stickycoding/rokon/BaseObject;>;"
    :cond_0
    iget v2, p0, Lcom/stickycoding/rokon/RenderQueueManager;->queueIndex:I

    sub-int/2addr v2, v4

    move v0, v2

    goto :goto_0
.end method
