.class public Lcom/stickycoding/rokon/GameObject;
.super Lcom/stickycoding/rokon/DrawableObject;
.source "GameObject.java"


# instance fields
.field protected isOnScene:Z

.field protected isTouchable:Z


# direct methods
.method public constructor <init>(FFFF)V
    .locals 1
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v0, 0x0

    .line 9
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/stickycoding/rokon/DrawableObject;-><init>(FFFF)V

    .line 5
    iput-boolean v0, p0, Lcom/stickycoding/rokon/GameObject;->isTouchable:Z

    .line 6
    iput-boolean v0, p0, Lcom/stickycoding/rokon/GameObject;->isOnScene:Z

    .line 10
    return-void
.end method


# virtual methods
.method public isAdded()Z
    .locals 1

    .prologue
    .line 16
    iget-boolean v0, p0, Lcom/stickycoding/rokon/GameObject;->isOnScene:Z

    return v0
.end method

.method public isTouchable()Z
    .locals 1

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/stickycoding/rokon/GameObject;->isTouchable:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/stickycoding/rokon/GameObject;->invisible:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onAdd(Lcom/stickycoding/rokon/Layer;)V
    .locals 2
    .parameter "layer"

    .prologue
    .line 54
    invoke-super {p0, p1}, Lcom/stickycoding/rokon/DrawableObject;->onAdd(Lcom/stickycoding/rokon/Layer;)V

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/stickycoding/rokon/GameObject;->killNextUpdate:Z

    .line 56
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/stickycoding/rokon/GameObject;->isOnScene:Z

    .line 57
    iget-object v0, p1, Lcom/stickycoding/rokon/Layer;->parentScene:Lcom/stickycoding/rokon/Scene;

    iput-object v0, p0, Lcom/stickycoding/rokon/GameObject;->parentScene:Lcom/stickycoding/rokon/Scene;

    .line 58
    iput-object p1, p0, Lcom/stickycoding/rokon/GameObject;->parentLayer:Lcom/stickycoding/rokon/Layer;

    .line 59
    iget-object v0, p0, Lcom/stickycoding/rokon/GameObject;->texture:Lcom/stickycoding/rokon/Texture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/stickycoding/rokon/GameObject;->texture:Lcom/stickycoding/rokon/Texture;

    invoke-virtual {v0}, Lcom/stickycoding/rokon/Texture;->getTextureIndex()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 60
    iget-object v0, p1, Lcom/stickycoding/rokon/Layer;->parentScene:Lcom/stickycoding/rokon/Scene;

    if-eqz v0, :cond_0

    .line 61
    sget-boolean v0, Lcom/stickycoding/rokon/Rokon;->verbose:Z

    if-eqz v0, :cond_0

    const-string v0, "DrawableObject.onAdd"

    const-string v1, "Scene does not already contain the this objects Texture, adding automatically."

    invoke-static {v0, v1}, Lcom/stickycoding/rokon/Debug;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    :cond_0
    return-void
.end method

.method public onRemove()V
    .locals 1

    .prologue
    .line 24
    invoke-super {p0}, Lcom/stickycoding/rokon/DrawableObject;->onRemove()V

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/stickycoding/rokon/GameObject;->isOnScene:Z

    .line 26
    return-void
.end method

.method public removeTouchable()V
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/stickycoding/rokon/GameObject;->isTouchable:Z

    .line 40
    return-void
.end method

.method public setTouchable()V
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/stickycoding/rokon/GameObject;->isTouchable:Z

    .line 33
    return-void
.end method
