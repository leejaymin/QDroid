.class public abstract Lcom/stickycoding/rokon/Modifier;
.super Ljava/lang/Object;
.source "Modifier.java"


# instance fields
.field private sprite:Lcom/stickycoding/rokon/Sprite;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public end()V
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/stickycoding/rokon/Modifier;->sprite:Lcom/stickycoding/rokon/Sprite;

    invoke-virtual {v0, p0}, Lcom/stickycoding/rokon/Sprite;->removeModifier(Lcom/stickycoding/rokon/Modifier;)V

    .line 45
    iget-object v0, p0, Lcom/stickycoding/rokon/Modifier;->sprite:Lcom/stickycoding/rokon/Sprite;

    invoke-virtual {p0, v0}, Lcom/stickycoding/rokon/Modifier;->onEnd(Lcom/stickycoding/rokon/Sprite;)V

    .line 46
    return-void
.end method

.method public getSprite()Lcom/stickycoding/rokon/Sprite;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/stickycoding/rokon/Modifier;->sprite:Lcom/stickycoding/rokon/Sprite;

    return-object v0
.end method

.method protected onCreate(Lcom/stickycoding/rokon/Sprite;)V
    .locals 0
    .parameter "sprite"

    .prologue
    .line 15
    iput-object p1, p0, Lcom/stickycoding/rokon/Modifier;->sprite:Lcom/stickycoding/rokon/Sprite;

    .line 16
    invoke-virtual {p0, p1}, Lcom/stickycoding/rokon/Modifier;->onStart(Lcom/stickycoding/rokon/Sprite;)V

    .line 17
    return-void
.end method

.method public abstract onEnd(Lcom/stickycoding/rokon/Sprite;)V
.end method

.method public abstract onStart(Lcom/stickycoding/rokon/Sprite;)V
.end method

.method public abstract onUpdate(Lcom/stickycoding/rokon/Sprite;)V
.end method
