.class public Lcom/stickycoding/rokon/vbo/VBO;
.super Ljava/lang/Object;
.source "VBO.java"


# static fields
.field public static final DYNAMIC:I = 0x1

.field public static final STATIC:I = 0x0

.field public static final STREAM:I = 0x2


# instance fields
.field protected bufferIndex:I

.field protected bufferObject:Lcom/stickycoding/rokon/BufferObject;

.field protected drawType:I


# direct methods
.method public constructor <init>(Lcom/stickycoding/rokon/BufferObject;I)V
    .locals 1
    .parameter "bufferObject"
    .parameter "drawType"

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput v0, p0, Lcom/stickycoding/rokon/vbo/VBO;->drawType:I

    .line 19
    const/4 v0, -0x1

    iput v0, p0, Lcom/stickycoding/rokon/vbo/VBO;->bufferIndex:I

    .line 23
    iput-object p1, p0, Lcom/stickycoding/rokon/vbo/VBO;->bufferObject:Lcom/stickycoding/rokon/BufferObject;

    .line 24
    iput p2, p0, Lcom/stickycoding/rokon/vbo/VBO;->drawType:I

    .line 25
    return-void
.end method


# virtual methods
.method public getBufferIndex()I
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lcom/stickycoding/rokon/vbo/VBO;->bufferIndex:I

    return v0
.end method

.method public getBufferObject()Lcom/stickycoding/rokon/BufferObject;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/stickycoding/rokon/vbo/VBO;->bufferObject:Lcom/stickycoding/rokon/BufferObject;

    return-object v0
.end method

.method public isLoaded()Z
    .locals 2

    .prologue
    .line 61
    iget v0, p0, Lcom/stickycoding/rokon/vbo/VBO;->bufferIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public load(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 0
    .parameter "gl"

    .prologue
    .line 89
    return-void
.end method

.method protected setLoaded(I)V
    .locals 0
    .parameter "bufferIndex"

    .prologue
    .line 77
    iput p1, p0, Lcom/stickycoding/rokon/vbo/VBO;->bufferIndex:I

    .line 78
    return-void
.end method

.method public setUnloaded()V
    .locals 1

    .prologue
    .line 68
    const/4 v0, -0x1

    iput v0, p0, Lcom/stickycoding/rokon/vbo/VBO;->bufferIndex:I

    .line 69
    return-void
.end method

.method public update(FFFF)V
    .locals 1
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/stickycoding/rokon/vbo/VBO;->bufferObject:Lcom/stickycoding/rokon/BufferObject;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/stickycoding/rokon/BufferObject;->update(FFFF)V

    .line 37
    return-void
.end method

.method public updateRaw([F)V
    .locals 1
    .parameter "floats"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/stickycoding/rokon/vbo/VBO;->bufferObject:Lcom/stickycoding/rokon/BufferObject;

    invoke-virtual {v0, p1}, Lcom/stickycoding/rokon/BufferObject;->updateRaw([F)V

    .line 46
    return-void
.end method
