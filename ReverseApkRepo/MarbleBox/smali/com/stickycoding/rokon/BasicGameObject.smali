.class public Lcom/stickycoding/rokon/BasicGameObject;
.super Lcom/stickycoding/rokon/RotationalObject;
.source "BasicGameObject.java"


# instance fields
.field protected id:I

.field protected name:Ljava/lang/String;

.field protected parentLayer:Lcom/stickycoding/rokon/Layer;

.field protected parentScene:Lcom/stickycoding/rokon/Scene;


# direct methods
.method public constructor <init>(FFFF)V
    .locals 2
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v1, 0x0

    .line 101
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/stickycoding/rokon/RotationalObject;-><init>(FFFF)V

    .line 17
    const/4 v0, -0x1

    iput v0, p0, Lcom/stickycoding/rokon/BasicGameObject;->id:I

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/stickycoding/rokon/BasicGameObject;->name:Ljava/lang/String;

    .line 102
    cmpg-float v0, p3, v1

    if-ltz v0, :cond_0

    cmpg-float v0, p4, v1

    if-gez v0, :cond_1

    .line 103
    :cond_0
    const-string v0, "StaticObject()"

    const-string v1, "Tried creating StaticObject with dimensions < 0"

    invoke-static {v0, v1}, Lcom/stickycoding/rokon/Debug;->warning(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    :cond_1
    return-void
.end method


# virtual methods
.method public attemptInvoke(Lcom/stickycoding/rokon/Callback;)Z
    .locals 1
    .parameter "callback"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/stickycoding/rokon/BasicGameObject;->name:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/stickycoding/rokon/BasicGameObject;->parentScene:Lcom/stickycoding/rokon/Scene;

    if-eqz v0, :cond_0

    .line 31
    iget-object v0, p0, Lcom/stickycoding/rokon/BasicGameObject;->parentScene:Lcom/stickycoding/rokon/Scene;

    invoke-virtual {v0, p1}, Lcom/stickycoding/rokon/Scene;->invoke(Lcom/stickycoding/rokon/Callback;)Z

    move-result v0

    .line 33
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public attemptInvoke(Ljava/lang/String;)Z
    .locals 3
    .parameter "methodSuffix"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/stickycoding/rokon/BasicGameObject;->name:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/stickycoding/rokon/BasicGameObject;->parentScene:Lcom/stickycoding/rokon/Scene;

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/stickycoding/rokon/BasicGameObject;->parentScene:Lcom/stickycoding/rokon/Scene;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/stickycoding/rokon/BasicGameObject;->name:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/stickycoding/rokon/Scene;->invoke(Ljava/lang/String;)Z

    move-result v0

    .line 47
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public attemptInvoke(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Z
    .locals 3
    .parameter "methodSuffix"
    .parameter "parameterTypes"
    .parameter "parameters"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 77
    iget-object v0, p0, Lcom/stickycoding/rokon/BasicGameObject;->name:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/stickycoding/rokon/BasicGameObject;->parentScene:Lcom/stickycoding/rokon/Scene;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/stickycoding/rokon/BasicGameObject;->parentScene:Lcom/stickycoding/rokon/Scene;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/stickycoding/rokon/BasicGameObject;->name:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3}, Lcom/stickycoding/rokon/Scene;->invoke(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Z

    move-result v0

    .line 80
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public attemptInvoke(Ljava/lang/String;[Ljava/lang/Object;)Z
    .locals 3
    .parameter "methodSuffix"
    .parameter "parameters"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/stickycoding/rokon/BasicGameObject;->name:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/stickycoding/rokon/BasicGameObject;->parentScene:Lcom/stickycoding/rokon/Scene;

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/stickycoding/rokon/BasicGameObject;->parentScene:Lcom/stickycoding/rokon/Scene;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/stickycoding/rokon/BasicGameObject;->name:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/stickycoding/rokon/Scene;->invoke(Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v0

    .line 64
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 141
    iget v0, p0, Lcom/stickycoding/rokon/BasicGameObject;->id:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/stickycoding/rokon/BasicGameObject;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getParentScene()Lcom/stickycoding/rokon/Scene;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/stickycoding/rokon/BasicGameObject;->parentScene:Lcom/stickycoding/rokon/Scene;

    return-object v0
.end method

.method public setId(I)V
    .locals 0
    .parameter "id"

    .prologue
    .line 132
    iput p1, p0, Lcom/stickycoding/rokon/BasicGameObject;->id:I

    .line 133
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 114
    iput-object p1, p0, Lcom/stickycoding/rokon/BasicGameObject;->name:Ljava/lang/String;

    .line 115
    return-void
.end method
