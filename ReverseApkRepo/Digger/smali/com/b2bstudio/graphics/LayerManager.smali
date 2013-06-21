.class public Lcom/b2bstudio/graphics/LayerManager;
.super Ljava/lang/Object;
.source "LayerManager.java"


# instance fields
.field elements:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field types:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/b2bstudio/graphics/LayerManager;->elements:Ljava/util/Vector;

    .line 13
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/b2bstudio/graphics/LayerManager;->types:Ljava/lang/String;

    .line 14
    return-void
.end method


# virtual methods
.method public append(Lcom/b2bstudio/graphics/Sprite;)V
    .locals 2
    .parameter "obj"

    .prologue
    .line 17
    iget-object v0, p0, Lcom/b2bstudio/graphics/LayerManager;->elements:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 18
    iget-object v0, p0, Lcom/b2bstudio/graphics/LayerManager;->types:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "0"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/b2bstudio/graphics/LayerManager;->types:Ljava/lang/String;

    .line 19
    return-void
.end method

.method public append(Lcom/b2bstudio/graphics/TiledLayer;)V
    .locals 2
    .parameter "obj"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/b2bstudio/graphics/LayerManager;->elements:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 23
    iget-object v0, p0, Lcom/b2bstudio/graphics/LayerManager;->types:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "1"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/b2bstudio/graphics/LayerManager;->types:Ljava/lang/String;

    .line 24
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;II)V
    .locals 5
    .parameter "canvas"
    .parameter "ofx"
    .parameter "ofy"

    .prologue
    .line 27
    iget-object v3, p0, Lcom/b2bstudio/graphics/LayerManager;->elements:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int v0, v3, v4

    .local v0, i:I
    :goto_0
    if-gez v0, :cond_0

    .line 37
    return-void

    .line 28
    :cond_0
    iget-object v3, p0, Lcom/b2bstudio/graphics/LayerManager;->types:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 27
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 29
    :pswitch_0
    iget-object v3, p0, Lcom/b2bstudio/graphics/LayerManager;->elements:Ljava/util/Vector;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/b2bstudio/graphics/Sprite;

    .line 30
    .local v1, sprite:Lcom/b2bstudio/graphics/Sprite;
    invoke-virtual {v1, p1, p2, p3}, Lcom/b2bstudio/graphics/Sprite;->onDraw(Landroid/graphics/Canvas;II)V

    goto :goto_1

    .line 32
    .end local v1           #sprite:Lcom/b2bstudio/graphics/Sprite;
    :pswitch_1
    iget-object v3, p0, Lcom/b2bstudio/graphics/LayerManager;->elements:Ljava/util/Vector;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/b2bstudio/graphics/TiledLayer;

    .line 33
    .local v2, tile:Lcom/b2bstudio/graphics/TiledLayer;
    invoke-virtual {v2, p1, p2, p3}, Lcom/b2bstudio/graphics/TiledLayer;->onDraw(Landroid/graphics/Canvas;II)V

    goto :goto_1

    .line 28
    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
