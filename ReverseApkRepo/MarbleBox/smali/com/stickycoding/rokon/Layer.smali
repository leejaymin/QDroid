.class public Lcom/stickycoding/rokon/Layer;
.super Ljava/lang/Object;
.source "Layer.java"


# instance fields
.field protected drawQueueType:I

.field protected gameObjects:Lcom/stickycoding/rokon/FixedSizeArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/stickycoding/rokon/FixedSizeArray",
            "<",
            "Lcom/stickycoding/rokon/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field protected gameObjectsSorted:Lcom/stickycoding/rokon/FixedSizeArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/stickycoding/rokon/FixedSizeArray",
            "<",
            "Lcom/stickycoding/rokon/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field protected ignoreWindow:Z

.field protected maximumDrawableObjects:I

.field protected parentScene:Lcom/stickycoding/rokon/Scene;


# direct methods
.method public constructor <init>(Lcom/stickycoding/rokon/Scene;I)V
    .locals 1
    .parameter "parentScene"
    .parameter "maximumDrawableObjects"

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput v0, p0, Lcom/stickycoding/rokon/Layer;->drawQueueType:I

    .line 27
    iput-object p1, p0, Lcom/stickycoding/rokon/Layer;->parentScene:Lcom/stickycoding/rokon/Scene;

    .line 28
    iput p2, p0, Lcom/stickycoding/rokon/Layer;->maximumDrawableObjects:I

    .line 29
    new-instance v0, Lcom/stickycoding/rokon/FixedSizeArray;

    invoke-direct {v0, p2}, Lcom/stickycoding/rokon/FixedSizeArray;-><init>(I)V

    iput-object v0, p0, Lcom/stickycoding/rokon/Layer;->gameObjects:Lcom/stickycoding/rokon/FixedSizeArray;

    .line 30
    new-instance v0, Lcom/stickycoding/rokon/FixedSizeArray;

    invoke-direct {v0, p2}, Lcom/stickycoding/rokon/FixedSizeArray;-><init>(I)V

    iput-object v0, p0, Lcom/stickycoding/rokon/Layer;->gameObjectsSorted:Lcom/stickycoding/rokon/FixedSizeArray;

    .line 31
    return-void
.end method


# virtual methods
.method public add(Lcom/stickycoding/rokon/GameObject;)V
    .locals 3
    .parameter "drawableObject"

    .prologue
    const-string v2, "Layer.add"

    .line 105
    if-nez p1, :cond_0

    .line 106
    const-string v0, "Layer.add"

    const-string v0, "Tried adding an invalid DrawableObject"

    invoke-static {v2, v0}, Lcom/stickycoding/rokon/Debug;->warning(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    :goto_0
    return-void

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/stickycoding/rokon/Layer;->gameObjects:Lcom/stickycoding/rokon/FixedSizeArray;

    invoke-virtual {v0}, Lcom/stickycoding/rokon/FixedSizeArray;->getCount()I

    move-result v0

    iget-object v1, p0, Lcom/stickycoding/rokon/Layer;->gameObjects:Lcom/stickycoding/rokon/FixedSizeArray;

    invoke-virtual {v1}, Lcom/stickycoding/rokon/FixedSizeArray;->getCapacity()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 110
    const-string v0, "Layer.add"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Tried adding to a Layer which is full, maximum="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/stickycoding/rokon/Layer;->maximumDrawableObjects:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/stickycoding/rokon/Debug;->warning(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 113
    :cond_1
    iget-object v0, p0, Lcom/stickycoding/rokon/Layer;->gameObjects:Lcom/stickycoding/rokon/FixedSizeArray;

    invoke-virtual {v0, p1}, Lcom/stickycoding/rokon/FixedSizeArray;->add(Ljava/lang/Object;)V

    .line 114
    invoke-virtual {p1, p0}, Lcom/stickycoding/rokon/GameObject;->onAdd(Lcom/stickycoding/rokon/Layer;)V

    goto :goto_0
.end method

.method public clear()V
    .locals 2

    .prologue
    .line 91
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/stickycoding/rokon/Layer;->gameObjects:Lcom/stickycoding/rokon/FixedSizeArray;

    invoke-virtual {v1}, Lcom/stickycoding/rokon/FixedSizeArray;->getCount()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 96
    iget-object v1, p0, Lcom/stickycoding/rokon/Layer;->gameObjects:Lcom/stickycoding/rokon/FixedSizeArray;

    invoke-virtual {v1}, Lcom/stickycoding/rokon/FixedSizeArray;->clear()V

    .line 97
    return-void

    .line 93
    :cond_0
    iget-object v1, p0, Lcom/stickycoding/rokon/Layer;->gameObjects:Lcom/stickycoding/rokon/FixedSizeArray;

    invoke-virtual {v1, v0}, Lcom/stickycoding/rokon/FixedSizeArray;->remove(I)V

    .line 92
    :cond_1
    iget-object v1, p0, Lcom/stickycoding/rokon/Layer;->gameObjects:Lcom/stickycoding/rokon/FixedSizeArray;

    invoke-virtual {v1, v0}, Lcom/stickycoding/rokon/FixedSizeArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 91
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getDrawQueue()I
    .locals 1

    .prologue
    .line 70
    iget v0, p0, Lcom/stickycoding/rokon/Layer;->drawQueueType:I

    return v0
.end method

.method public getGameObject(I)Lcom/stickycoding/rokon/Drawable;
    .locals 1
    .parameter "index"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/stickycoding/rokon/Layer;->gameObjects:Lcom/stickycoding/rokon/FixedSizeArray;

    invoke-virtual {v0, p1}, Lcom/stickycoding/rokon/FixedSizeArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/stickycoding/rokon/Drawable;

    return-object p0
.end method

.method public ignoreWindow()V
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/stickycoding/rokon/Layer;->ignoreWindow:Z

    .line 39
    return-void
.end method

.method public isUsingWindow()Z
    .locals 1

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/stickycoding/rokon/Layer;->ignoreWindow:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected removeDead()V
    .locals 2

    .prologue
    .line 118
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/stickycoding/rokon/Layer;->gameObjects:Lcom/stickycoding/rokon/FixedSizeArray;

    invoke-virtual {v1}, Lcom/stickycoding/rokon/FixedSizeArray;->getCount()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 123
    return-void

    .line 120
    :cond_0
    iget-object v1, p0, Lcom/stickycoding/rokon/Layer;->gameObjects:Lcom/stickycoding/rokon/FixedSizeArray;

    invoke-virtual {v1, v0}, Lcom/stickycoding/rokon/FixedSizeArray;->remove(I)V

    .line 119
    :cond_1
    iget-object v1, p0, Lcom/stickycoding/rokon/Layer;->gameObjects:Lcom/stickycoding/rokon/FixedSizeArray;

    invoke-virtual {v1, v0}, Lcom/stickycoding/rokon/FixedSizeArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/stickycoding/rokon/Layer;->gameObjects:Lcom/stickycoding/rokon/FixedSizeArray;

    invoke-virtual {v1, v0}, Lcom/stickycoding/rokon/FixedSizeArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stickycoding/rokon/Drawable;

    invoke-interface {v1}, Lcom/stickycoding/rokon/Drawable;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 118
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected render()V
    .locals 4

    .prologue
    .line 126
    iget-object v2, p0, Lcom/stickycoding/rokon/Layer;->gameObjects:Lcom/stickycoding/rokon/FixedSizeArray;

    iget v3, p0, Lcom/stickycoding/rokon/Layer;->drawQueueType:I

    invoke-static {v2, v3}, Lcom/stickycoding/rokon/DrawOrder;->sort(Lcom/stickycoding/rokon/FixedSizeArray;I)V

    .line 127
    invoke-virtual {p0}, Lcom/stickycoding/rokon/Layer;->removeDead()V

    .line 128
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/stickycoding/rokon/Layer;->gameObjects:Lcom/stickycoding/rokon/FixedSizeArray;

    invoke-virtual {v2}, Lcom/stickycoding/rokon/FixedSizeArray;->getCount()I

    move-result v2

    if-lt v1, v2, :cond_0

    .line 137
    return-void

    .line 129
    :cond_0
    iget-object v2, p0, Lcom/stickycoding/rokon/Layer;->gameObjects:Lcom/stickycoding/rokon/FixedSizeArray;

    invoke-virtual {v2, v1}, Lcom/stickycoding/rokon/FixedSizeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stickycoding/rokon/Drawable;

    .line 130
    .local v0, drawable:Lcom/stickycoding/rokon/Drawable;
    if-eqz v0, :cond_1

    .line 131
    invoke-interface {v0}, Lcom/stickycoding/rokon/Drawable;->onUpdate()V

    .line 132
    invoke-interface {v0}, Lcom/stickycoding/rokon/Drawable;->isOnScreen()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 133
    sget-object v2, Lcom/stickycoding/rokon/RokonActivity;->renderQueueManager:Lcom/stickycoding/rokon/RenderQueueManager;

    iget-boolean v3, p0, Lcom/stickycoding/rokon/Layer;->ignoreWindow:Z

    if-eqz v3, :cond_2

    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v2, v0, v3}, Lcom/stickycoding/rokon/RenderQueueManager;->add(Lcom/stickycoding/rokon/Drawable;Z)V

    .line 128
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 133
    :cond_2
    const/4 v3, 0x1

    goto :goto_1
.end method

.method public setDrawOrder(I)V
    .locals 3
    .parameter "type"

    .prologue
    .line 79
    if-ltz p1, :cond_0

    const/4 v0, 0x5

    if-le p1, v0, :cond_1

    .line 80
    :cond_0
    const-string v0, "Scene.setDrawOrder"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Tried setting DrawOrder type to "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", defaulting to 0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/stickycoding/rokon/Debug;->warning(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    const/4 v0, 0x0

    iput v0, p0, Lcom/stickycoding/rokon/Layer;->drawQueueType:I

    .line 85
    :goto_0
    return-void

    .line 84
    :cond_1
    iput p1, p0, Lcom/stickycoding/rokon/Layer;->drawQueueType:I

    goto :goto_0
.end method

.method public useWindow()V
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/stickycoding/rokon/Layer;->ignoreWindow:Z

    .line 47
    return-void
.end method
