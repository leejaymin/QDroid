.class public Lcom/stickycoding/rokon/Polygon;
.super Ljava/lang/Object;
.source "Polygon.java"


# static fields
.field public static MAX_VERTEX_COUNT:I


# instance fields
.field protected buffer:Lcom/stickycoding/rokon/BufferObject;

.field protected building:Z

.field protected edge:[Lcom/badlogic/gdx/math/Vector2;

.field protected normal:[Lcom/badlogic/gdx/math/Vector2;

.field protected vbo:Lcom/stickycoding/rokon/vbo/ArrayVBO;

.field protected vertex:[Lcom/stickycoding/rokon/Point;

.field protected vertexCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const/16 v0, 0x80

    sput v0, Lcom/stickycoding/rokon/Polygon;->MAX_VERTEX_COUNT:I

    .line 20
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput v1, p0, Lcom/stickycoding/rokon/Polygon;->vertexCount:I

    .line 132
    sget v0, Lcom/stickycoding/rokon/Polygon;->MAX_VERTEX_COUNT:I

    new-array v0, v0, [Lcom/stickycoding/rokon/Point;

    iput-object v0, p0, Lcom/stickycoding/rokon/Polygon;->vertex:[Lcom/stickycoding/rokon/Point;

    .line 133
    iput v1, p0, Lcom/stickycoding/rokon/Polygon;->vertexCount:I

    .line 134
    return-void
.end method

.method public constructor <init>([F)V
    .locals 7
    .parameter "vertices"

    .prologue
    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v3, 0x0

    iput v3, p0, Lcom/stickycoding/rokon/Polygon;->vertexCount:I

    .line 114
    array-length v3, p1

    rem-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_0

    .line 115
    const-string v3, "Tried creating Polygon with odd number of vertices"

    invoke-static {v3}, Lcom/stickycoding/rokon/Debug;->error(Ljava/lang/String;)V

    .line 116
    invoke-static {}, Lcom/stickycoding/rokon/Debug;->forceExit()V

    .line 126
    :goto_0
    return-void

    .line 119
    :cond_0
    array-length v3, p1

    div-int/lit8 v3, v3, 0x2

    new-array v3, v3, [Lcom/stickycoding/rokon/Point;

    iput-object v3, p0, Lcom/stickycoding/rokon/Polygon;->vertex:[Lcom/stickycoding/rokon/Point;

    .line 120
    const/4 v0, 0x0

    .line 121
    .local v0, c:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    array-length v3, p1

    div-int/lit8 v3, v3, 0x2

    if-lt v2, v3, :cond_1

    .line 124
    array-length v3, p1

    div-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/stickycoding/rokon/Polygon;->vertexCount:I

    .line 125
    invoke-virtual {p0}, Lcom/stickycoding/rokon/Polygon;->findEdges()V

    goto :goto_0

    .line 122
    :cond_1
    iget-object v3, p0, Lcom/stickycoding/rokon/Polygon;->vertex:[Lcom/stickycoding/rokon/Point;

    new-instance v4, Lcom/stickycoding/rokon/Point;

    add-int/lit8 v1, v0, 0x1

    .end local v0           #c:I
    .local v1, c:I
    aget v5, p1, v0

    add-int/lit8 v0, v1, 0x1

    .end local v1           #c:I
    .restart local v0       #c:I
    aget v6, p1, v1

    invoke-direct {v4, v5, v6}, Lcom/stickycoding/rokon/Point;-><init>(FF)V

    aput-object v4, v3, v2

    .line 121
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public constructor <init>([Lcom/stickycoding/rokon/Point;)V
    .locals 1
    .parameter "vertices"

    .prologue
    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Lcom/stickycoding/rokon/Polygon;->vertexCount:I

    .line 103
    iput-object p1, p0, Lcom/stickycoding/rokon/Polygon;->vertex:[Lcom/stickycoding/rokon/Point;

    .line 104
    array-length v0, p1

    iput v0, p0, Lcom/stickycoding/rokon/Polygon;->vertexCount:I

    .line 105
    invoke-virtual {p0}, Lcom/stickycoding/rokon/Polygon;->findEdges()V

    .line 106
    return-void
.end method


# virtual methods
.method public addVertex(FF)V
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 152
    new-instance v0, Lcom/stickycoding/rokon/Point;

    invoke-direct {v0, p1, p2}, Lcom/stickycoding/rokon/Point;-><init>(FF)V

    invoke-virtual {p0, v0}, Lcom/stickycoding/rokon/Polygon;->addVertex(Lcom/stickycoding/rokon/Point;)V

    .line 153
    return-void
.end method

.method public addVertex(Lcom/stickycoding/rokon/Point;)V
    .locals 3
    .parameter "location"

    .prologue
    .line 142
    iget-object v0, p0, Lcom/stickycoding/rokon/Polygon;->vertex:[Lcom/stickycoding/rokon/Point;

    iget v1, p0, Lcom/stickycoding/rokon/Polygon;->vertexCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/stickycoding/rokon/Polygon;->vertexCount:I

    aput-object p1, v0, v1

    .line 143
    return-void
.end method

.method public complete()V
    .locals 0

    .prologue
    .line 171
    invoke-virtual {p0}, Lcom/stickycoding/rokon/Polygon;->findEdges()V

    .line 172
    return-void
.end method

.method public findEdges()V
    .locals 7

    .prologue
    .line 67
    iget v2, p0, Lcom/stickycoding/rokon/Polygon;->vertexCount:I

    new-array v2, v2, [Lcom/badlogic/gdx/math/Vector2;

    iput-object v2, p0, Lcom/stickycoding/rokon/Polygon;->edge:[Lcom/badlogic/gdx/math/Vector2;

    .line 68
    iget v2, p0, Lcom/stickycoding/rokon/Polygon;->vertexCount:I

    new-array v2, v2, [Lcom/badlogic/gdx/math/Vector2;

    iput-object v2, p0, Lcom/stickycoding/rokon/Polygon;->normal:[Lcom/badlogic/gdx/math/Vector2;

    .line 69
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v2, p0, Lcom/stickycoding/rokon/Polygon;->vertexCount:I

    if-lt v0, v2, :cond_0

    .line 75
    return-void

    .line 70
    :cond_0
    add-int/lit8 v1, v0, 0x1

    .line 71
    .local v1, nextEdge:I
    iget v2, p0, Lcom/stickycoding/rokon/Polygon;->vertexCount:I

    if-ne v1, v2, :cond_1

    const/4 v1, 0x0

    .line 72
    :cond_1
    iget-object v2, p0, Lcom/stickycoding/rokon/Polygon;->edge:[Lcom/badlogic/gdx/math/Vector2;

    new-instance v3, Lcom/badlogic/gdx/math/Vector2;

    iget-object v4, p0, Lcom/stickycoding/rokon/Polygon;->vertex:[Lcom/stickycoding/rokon/Point;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Lcom/stickycoding/rokon/Point;->getX()F

    move-result v4

    iget-object v5, p0, Lcom/stickycoding/rokon/Polygon;->vertex:[Lcom/stickycoding/rokon/Point;

    aget-object v5, v5, v0

    invoke-virtual {v5}, Lcom/stickycoding/rokon/Point;->getX()F

    move-result v5

    sub-float/2addr v4, v5

    iget-object v5, p0, Lcom/stickycoding/rokon/Polygon;->vertex:[Lcom/stickycoding/rokon/Point;

    aget-object v5, v5, v1

    invoke-virtual {v5}, Lcom/stickycoding/rokon/Point;->getY()F

    move-result v5

    iget-object v6, p0, Lcom/stickycoding/rokon/Polygon;->vertex:[Lcom/stickycoding/rokon/Point;

    aget-object v6, v6, v0

    invoke-virtual {v6}, Lcom/stickycoding/rokon/Point;->getY()F

    move-result v6

    sub-float/2addr v5, v6

    invoke-direct {v3, v4, v5}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    aput-object v3, v2, v0

    .line 73
    iget-object v2, p0, Lcom/stickycoding/rokon/Polygon;->normal:[Lcom/badlogic/gdx/math/Vector2;

    iget-object v3, p0, Lcom/stickycoding/rokon/Polygon;->edge:[Lcom/badlogic/gdx/math/Vector2;

    aget-object v3, v3, v0

    invoke-static {v3}, Lcom/stickycoding/rokon/MathHelper;->findNormal(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v3

    aput-object v3, v2, v0

    .line 69
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getBufferObject()Lcom/stickycoding/rokon/BufferObject;
    .locals 6

    .prologue
    .line 84
    iget-object v4, p0, Lcom/stickycoding/rokon/Polygon;->buffer:Lcom/stickycoding/rokon/BufferObject;

    if-nez v4, :cond_0

    .line 85
    new-instance v4, Lcom/stickycoding/rokon/BufferObject;

    iget v5, p0, Lcom/stickycoding/rokon/Polygon;->vertexCount:I

    mul-int/lit8 v5, v5, 0x2

    invoke-direct {v4, v5}, Lcom/stickycoding/rokon/BufferObject;-><init>(I)V

    iput-object v4, p0, Lcom/stickycoding/rokon/Polygon;->buffer:Lcom/stickycoding/rokon/BufferObject;

    .line 86
    iget v4, p0, Lcom/stickycoding/rokon/Polygon;->vertexCount:I

    mul-int/lit8 v4, v4, 0x2

    new-array v3, v4, [F

    .line 87
    .local v3, vertices:[F
    const/4 v0, 0x0

    .line 88
    .local v0, c:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget v4, p0, Lcom/stickycoding/rokon/Polygon;->vertexCount:I

    if-lt v2, v4, :cond_1

    .line 92
    iget-object v4, p0, Lcom/stickycoding/rokon/Polygon;->buffer:Lcom/stickycoding/rokon/BufferObject;

    invoke-virtual {v4, v3}, Lcom/stickycoding/rokon/BufferObject;->updateRaw([F)V

    .line 94
    .end local v0           #c:I
    .end local v2           #i:I
    .end local v3           #vertices:[F
    :cond_0
    iget-object v4, p0, Lcom/stickycoding/rokon/Polygon;->buffer:Lcom/stickycoding/rokon/BufferObject;

    return-object v4

    .line 89
    .restart local v0       #c:I
    .restart local v2       #i:I
    .restart local v3       #vertices:[F
    :cond_1
    add-int/lit8 v1, v0, 0x1

    .end local v0           #c:I
    .local v1, c:I
    iget-object v4, p0, Lcom/stickycoding/rokon/Polygon;->vertex:[Lcom/stickycoding/rokon/Point;

    aget-object v4, v4, v2

    invoke-virtual {v4}, Lcom/stickycoding/rokon/Point;->getX()F

    move-result v4

    aput v4, v3, v0

    .line 90
    add-int/lit8 v0, v1, 0x1

    .end local v1           #c:I
    .restart local v0       #c:I
    iget-object v4, p0, Lcom/stickycoding/rokon/Polygon;->vertex:[Lcom/stickycoding/rokon/Point;

    aget-object v4, v4, v2

    invoke-virtual {v4}, Lcom/stickycoding/rokon/Point;->getY()F

    move-result v4

    aput v4, v3, v1

    .line 88
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public getPolygonShape()Lcom/badlogic/gdx/physics/box2d/PolygonShape;
    .locals 2

    .prologue
    .line 43
    new-instance v0, Lcom/badlogic/gdx/physics/box2d/PolygonShape;

    invoke-direct {v0}, Lcom/badlogic/gdx/physics/box2d/PolygonShape;-><init>()V

    .line 44
    .local v0, shape:Lcom/badlogic/gdx/physics/box2d/PolygonShape;
    iget-object v1, p0, Lcom/stickycoding/rokon/Polygon;->vertex:[Lcom/stickycoding/rokon/Point;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/physics/box2d/PolygonShape;->set([Lcom/badlogic/gdx/math/Vector2;)V

    .line 45
    return-object v0
.end method

.method public getVBO()Lcom/stickycoding/rokon/vbo/ArrayVBO;
    .locals 3

    .prologue
    .line 55
    iget-object v0, p0, Lcom/stickycoding/rokon/Polygon;->vbo:Lcom/stickycoding/rokon/vbo/ArrayVBO;

    if-nez v0, :cond_0

    .line 56
    new-instance v0, Lcom/stickycoding/rokon/vbo/ArrayVBO;

    iget-object v1, p0, Lcom/stickycoding/rokon/Polygon;->buffer:Lcom/stickycoding/rokon/BufferObject;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/stickycoding/rokon/vbo/ArrayVBO;-><init>(Lcom/stickycoding/rokon/BufferObject;I)V

    iput-object v0, p0, Lcom/stickycoding/rokon/Polygon;->vbo:Lcom/stickycoding/rokon/vbo/ArrayVBO;

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/stickycoding/rokon/Polygon;->vbo:Lcom/stickycoding/rokon/vbo/ArrayVBO;

    return-object v0
.end method

.method public getVertex(I)Lcom/stickycoding/rokon/Point;
    .locals 1
    .parameter "index"

    .prologue
    .line 163
    iget-object v0, p0, Lcom/stickycoding/rokon/Polygon;->vertex:[Lcom/stickycoding/rokon/Point;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getVertexCount()I
    .locals 1

    .prologue
    .line 180
    iget v0, p0, Lcom/stickycoding/rokon/Polygon;->vertexCount:I

    return v0
.end method
