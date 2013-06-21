.class public Lcom/stickycoding/rokon/Rokon;
.super Ljava/lang/Object;
.source "Rokon.java"


# static fields
.field protected static arrayVBO:Lcom/stickycoding/rokon/vbo/ArrayVBO;

.field protected static blendFunction:Lcom/stickycoding/rokon/BlendFunction;

.field protected static boxArrayVBO:Lcom/stickycoding/rokon/vbo/ArrayVBO;

.field public static circle:Lcom/stickycoding/rokon/Polygon;

.field protected static currentActivity:Lcom/stickycoding/rokon/RokonActivity;

.field protected static elementVBO:Lcom/stickycoding/rokon/vbo/ElementVBO;

.field public static lineLoopBoxBuffer:Lcom/stickycoding/rokon/BufferObject;

.field protected static lineVertexBuffer:Lcom/stickycoding/rokon/BufferObject;

.field protected static motionEvent5:Lcom/stickycoding/rokon/MotionEventWrapper5;

.field protected static motionEvent8:Lcom/stickycoding/rokon/MotionEventWrapper8;

.field public static rectangle:Lcom/stickycoding/rokon/Polygon;

.field protected static triangleStripBoxBuffer:Lcom/stickycoding/rokon/BufferObject;

.field protected static verbose:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x0

    sput-boolean v0, Lcom/stickycoding/rokon/Rokon;->verbose:Z

    .line 13
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static defaultElementVBO()Lcom/stickycoding/rokon/vbo/ElementVBO;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcom/stickycoding/rokon/Rokon;->elementVBO:Lcom/stickycoding/rokon/vbo/ElementVBO;

    return-object v0
.end method

.method public static defaultVBO()Lcom/stickycoding/rokon/vbo/ArrayVBO;
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lcom/stickycoding/rokon/Rokon;->arrayVBO:Lcom/stickycoding/rokon/vbo/ArrayVBO;

    return-object v0
.end method

.method public static defaultVertexBuffer()Lcom/stickycoding/rokon/BufferObject;
    .locals 1

    .prologue
    .line 74
    sget-object v0, Lcom/stickycoding/rokon/Rokon;->triangleStripBoxBuffer:Lcom/stickycoding/rokon/BufferObject;

    return-object v0
.end method

.method public static getActivity()Lcom/stickycoding/rokon/RokonActivity;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/stickycoding/rokon/Rokon;->currentActivity:Lcom/stickycoding/rokon/RokonActivity;

    return-object v0
.end method

.method public static getBlendFunction()Lcom/stickycoding/rokon/BlendFunction;
    .locals 1

    .prologue
    .line 94
    sget-object v0, Lcom/stickycoding/rokon/Rokon;->blendFunction:Lcom/stickycoding/rokon/BlendFunction;

    return-object v0
.end method

.method public static lineVertexBuffer()Lcom/stickycoding/rokon/BufferObject;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/stickycoding/rokon/Rokon;->lineVertexBuffer:Lcom/stickycoding/rokon/BufferObject;

    return-object v0
.end method

.method public static setBlendFunction(Lcom/stickycoding/rokon/BlendFunction;)V
    .locals 0
    .parameter "blendFunction"

    .prologue
    .line 83
    sput-object p0, Lcom/stickycoding/rokon/Rokon;->blendFunction:Lcom/stickycoding/rokon/BlendFunction;

    .line 84
    return-void
.end method
