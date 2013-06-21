.class public Lcom/stickycoding/rokon/RenderQueueManager$RenderElementPool;
.super Lcom/stickycoding/rokon/TObjectPool;
.source "RenderQueueManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stickycoding/rokon/RenderQueueManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "RenderElementPool"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/stickycoding/rokon/TObjectPool",
        "<",
        "Lcom/stickycoding/rokon/RenderQueueManager$RenderElement;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/stickycoding/rokon/RenderQueueManager;


# direct methods
.method constructor <init>(Lcom/stickycoding/rokon/RenderQueueManager;I)V
    .locals 0
    .parameter
    .parameter "max"

    .prologue
    .line 94
    iput-object p1, p0, Lcom/stickycoding/rokon/RenderQueueManager$RenderElementPool;->this$0:Lcom/stickycoding/rokon/RenderQueueManager;

    .line 93
    invoke-direct {p0, p2}, Lcom/stickycoding/rokon/TObjectPool;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected fill()V
    .locals 4

    .prologue
    .line 105
    const/4 v0, 0x0

    .local v0, x:I
    :goto_0
    invoke-virtual {p0}, Lcom/stickycoding/rokon/RenderQueueManager$RenderElementPool;->getSize()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 108
    return-void

    .line 106
    :cond_0
    invoke-virtual {p0}, Lcom/stickycoding/rokon/RenderQueueManager$RenderElementPool;->getAvailable()Lcom/stickycoding/rokon/FixedSizeArray;

    move-result-object v1

    new-instance v2, Lcom/stickycoding/rokon/RenderQueueManager$RenderElement;

    iget-object v3, p0, Lcom/stickycoding/rokon/RenderQueueManager$RenderElementPool;->this$0:Lcom/stickycoding/rokon/RenderQueueManager;

    invoke-direct {v2, v3}, Lcom/stickycoding/rokon/RenderQueueManager$RenderElement;-><init>(Lcom/stickycoding/rokon/RenderQueueManager;)V

    invoke-virtual {v1, v2}, Lcom/stickycoding/rokon/FixedSizeArray;->add(Ljava/lang/Object;)V

    .line 105
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public release(Ljava/lang/Object;)V
    .locals 2
    .parameter "element"

    .prologue
    .line 98
    move-object v0, p1

    check-cast v0, Lcom/stickycoding/rokon/RenderQueueManager$RenderElement;

    move-object v1, v0

    .line 99
    .local v1, renderable:Lcom/stickycoding/rokon/RenderQueueManager$RenderElement;
    invoke-virtual {v1}, Lcom/stickycoding/rokon/RenderQueueManager$RenderElement;->reset()V

    .line 100
    invoke-super {p0, p1}, Lcom/stickycoding/rokon/TObjectPool;->release(Ljava/lang/Object;)V

    .line 101
    return-void
.end method
