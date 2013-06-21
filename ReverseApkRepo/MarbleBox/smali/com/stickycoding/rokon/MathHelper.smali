.class public Lcom/stickycoding/rokon/MathHelper;
.super Ljava/lang/Object;
.source "MathHelper.java"


# static fields
.field public static final DEG_TO_RAD:F = 0.017453292f

.field public static final RAD_TO_DEG:F = 57.29578f


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static distanceToShape(FFLcom/stickycoding/rokon/Sprite;)F
    .locals 11
    .parameter "x"
    .parameter "y"
    .parameter "sprite"

    .prologue
    .line 198
    iget-object v0, p2, Lcom/stickycoding/rokon/Sprite;->polygon:Lcom/stickycoding/rokon/Polygon;

    sget-object v1, Lcom/stickycoding/rokon/Rokon;->circle:Lcom/stickycoding/rokon/Polygon;

    if-eq v0, v1, :cond_4

    .line 199
    const v1, 0x461c3c00

    .line 200
    .local v1, minDistance:F
    const/4 v0, 0x0

    .local v0, i:I
    move v6, v0

    .end local v0           #i:I
    .local v6, i:I
    move v7, v1

    .end local v1           #minDistance:F
    .local v7, minDistance:F
    :goto_0
    invoke-virtual {p2}, Lcom/stickycoding/rokon/Sprite;->getPolygon()Lcom/stickycoding/rokon/Polygon;

    move-result-object v0

    iget v0, v0, Lcom/stickycoding/rokon/Polygon;->vertexCount:I

    if-lt v6, v0, :cond_0

    move p0, v7

    .line 236
    .end local v6           #i:I
    .end local v7           #minDistance:F
    .end local p0
    .end local p1
    .end local p2
    :goto_1
    return p0

    .line 201
    .restart local v6       #i:I
    .restart local v7       #minDistance:F
    .restart local p0
    .restart local p1
    .restart local p2
    :cond_0
    move v1, v6

    .line 202
    .local v1, startIndex:I
    iget-object v0, p2, Lcom/stickycoding/rokon/Sprite;->polygon:Lcom/stickycoding/rokon/Polygon;

    iget-object v0, v0, Lcom/stickycoding/rokon/Polygon;->edge:[Lcom/badlogic/gdx/math/Vector2;

    array-length v0, v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    if-ge v6, v0, :cond_3

    add-int/lit8 v0, v6, 0x1

    .line 203
    .local v0, endIndex:I
    :goto_2
    invoke-virtual {p2, v1}, Lcom/stickycoding/rokon/Sprite;->getVertex(I)[F

    move-result-object v8

    .line 204
    .local v8, startVertex:[F
    invoke-virtual {p2, v0}, Lcom/stickycoding/rokon/Sprite;->getVertex(I)[F

    move-result-object v2

    .line 205
    .local v2, endVertex:[F
    const/4 v0, 0x0

    aget v0, v2, v0

    .end local v0           #endIndex:I
    const/4 v1, 0x0

    aget v1, v8, v1

    .end local v1           #startIndex:I
    sub-float v3, v0, v1

    .line 206
    .local v3, edgeX:F
    const/4 v0, 0x1

    aget v0, v2, v0

    const/4 v1, 0x1

    aget v1, v8, v1

    sub-float v5, v0, v1

    .line 207
    .local v5, edgeY:F
    move v0, v5

    .line 208
    .local v0, axisX:F
    neg-float v1, v3

    .line 210
    .local v1, axisY:F
    const/4 v4, 0x0

    aget v4, v8, v4

    const/4 v9, 0x1

    aget v9, v8, v9

    invoke-static {v3, v5, v4, v9}, Lcom/stickycoding/rokon/MathHelper;->dot(FFFF)F

    move-result v4

    .line 211
    .local v4, edgeStartPoint:F
    const/4 v9, 0x0

    aget v9, v2, v9

    const/4 v10, 0x1

    aget v2, v2, v10

    .end local v2           #endVertex:[F
    invoke-static {v3, v5, v9, v2}, Lcom/stickycoding/rokon/MathHelper;->dot(FFFF)F

    move-result v2

    .line 212
    .local v2, edgeEndPoint:F
    invoke-static {v3, v5, p0, p1}, Lcom/stickycoding/rokon/MathHelper;->dot(FFFF)F

    move-result v3

    .line 214
    .local v3, edgePointPos:F
    cmpl-float v5, v3, v4

    if-lez v5, :cond_1

    .end local v5           #edgeY:F
    cmpg-float v5, v3, v2

    if-ltz v5, :cond_2

    :cond_1
    cmpl-float v2, v3, v2

    if-lez v2, :cond_6

    .end local v2           #edgeEndPoint:F
    cmpg-float v2, v3, v4

    if-gez v2, :cond_6

    .line 216
    :cond_2
    const/4 v2, 0x0

    aget v2, v8, v2

    const/4 v3, 0x1

    aget v3, v8, v3

    .end local v3           #edgePointPos:F
    invoke-static {v0, v1, v2, v3}, Lcom/stickycoding/rokon/MathHelper;->dot(FFFF)F

    move-result v2

    .line 217
    .local v2, normalDotEdge:F
    invoke-static {v0, v1, p0, p1}, Lcom/stickycoding/rokon/MathHelper;->dot(FFFF)F

    move-result v0

    .line 218
    .local v0, normalDotPoint:F
    sub-float v0, v2, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .end local v0           #normalDotPoint:F
    move-result v0

    .line 220
    .local v0, normalDotDiff:F
    cmpg-float v1, v0, v7

    if-gez v1, :cond_6

    .end local v1           #axisY:F
    move v0, v0

    .end local v7           #minDistance:F
    .local v0, minDistance:F
    move v2, v0

    .line 224
    .end local v0           #minDistance:F
    .local v2, minDistance:F
    :goto_3
    const/4 v0, 0x0

    aget v0, v8, v0

    sub-float v0, p0, v0

    .line 225
    .local v0, dx:F
    const/4 v1, 0x1

    aget v1, v8, v1

    sub-float v1, p1, v1

    .line 226
    .local v1, dy:F
    mul-float/2addr v0, v0

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    .end local v0           #dx:F
    .end local v1           #dy:F
    move-result-wide v0

    double-to-float v0, v0

    .line 227
    .local v0, vertexDiff:F
    cmpg-float v1, v0, v2

    if-gez v1, :cond_5

    move v0, v0

    .end local v2           #minDistance:F
    .local v0, minDistance:F
    move v1, v0

    .line 200
    .end local v0           #minDistance:F
    .local v1, minDistance:F
    :goto_4
    add-int/lit8 v0, v6, 0x1

    .end local v6           #i:I
    .local v0, i:I
    move v6, v0

    .end local v0           #i:I
    .restart local v6       #i:I
    move v7, v1

    .end local v1           #minDistance:F
    .restart local v7       #minDistance:F
    goto/16 :goto_0

    .line 202
    .end local v4           #edgeStartPoint:F
    .end local v8           #startVertex:[F
    .local v1, startIndex:I
    :cond_3
    const/4 v0, 0x0

    goto :goto_2

    .line 231
    .end local v1           #startIndex:I
    .end local v6           #i:I
    .end local v7           #minDistance:F
    :cond_4
    invoke-virtual {p2}, Lcom/stickycoding/rokon/Sprite;->getX()F

    move-result v0

    invoke-virtual {p2}, Lcom/stickycoding/rokon/Sprite;->getWidth()F

    move-result v1

    const/high16 v2, 0x4000

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 232
    .local v0, centreX:F
    invoke-virtual {p2}, Lcom/stickycoding/rokon/Sprite;->getY()F

    move-result v1

    invoke-virtual {p2}, Lcom/stickycoding/rokon/Sprite;->getHeight()F

    move-result v2

    const/high16 v3, 0x4000

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    .line 234
    .local v1, centreY:F
    sub-float/2addr p0, v0

    .line 235
    .local p0, dx:F
    sub-float/2addr p1, v1

    .line 236
    .local p1, dy:F
    mul-float/2addr p0, p0

    mul-float/2addr p1, p1

    add-float/2addr p0, p1

    float-to-double p0, p0

    invoke-static {p0, p1}, Ljava/lang/Math;->sqrt(D)D

    .end local p0           #dx:F
    .end local p1           #dy:F
    move-result-wide p0

    double-to-float p0, p0

    invoke-virtual {p2}, Lcom/stickycoding/rokon/Sprite;->getWidth()F

    move-result p1

    const/high16 p2, 0x4000

    div-float/2addr p1, p2

    sub-float/2addr p0, p1

    goto/16 :goto_1

    .end local v1           #centreY:F
    .local v0, vertexDiff:F
    .restart local v2       #minDistance:F
    .restart local v4       #edgeStartPoint:F
    .restart local v6       #i:I
    .restart local v8       #startVertex:[F
    .local p0, x:F
    .local p1, y:F
    :cond_5
    move v1, v2

    .end local v2           #minDistance:F
    .local v1, minDistance:F
    goto :goto_4

    .end local v0           #vertexDiff:F
    .end local v1           #minDistance:F
    .restart local v7       #minDistance:F
    :cond_6
    move v2, v7

    .end local v7           #minDistance:F
    .restart local v2       #minDistance:F
    goto :goto_3
.end method

.method public static dot(FFFF)F
    .locals 2
    .parameter "x1"
    .parameter "y1"
    .parameter "x2"
    .parameter "y2"

    .prologue
    .line 311
    mul-float v0, p0, p2

    mul-float v1, p1, p3

    add-float/2addr v0, v1

    return v0
.end method

.method public static dot(Lcom/badlogic/gdx/math/Vector2;FF)F
    .locals 2
    .parameter "vector"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 297
    iget v0, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    mul-float/2addr v0, p1

    iget v1, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    mul-float/2addr v1, p2

    add-float/2addr v0, v1

    return v0
.end method

.method public static dot(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;)F
    .locals 1
    .parameter "vector1"
    .parameter "vector2"

    .prologue
    .line 284
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Vector2;->dot(Lcom/badlogic/gdx/math/Vector2;)F

    move-result v0

    return v0
.end method

.method public static findNormal(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;
    .locals 3
    .parameter "vector"

    .prologue
    .line 69
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    iget v1, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v2, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    neg-float v2, v2

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    invoke-virtual {v0}, Lcom/badlogic/gdx/math/Vector2;->nor()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    return-object v0
.end method

.method public static intersects(Lcom/stickycoding/rokon/Sprite;Lcom/stickycoding/rokon/Sprite;)Z
    .locals 12
    .parameter "sprite1"
    .parameter "sprite2"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/stickycoding/rokon/Sprite;->polygon:Lcom/stickycoding/rokon/Polygon;

    sget-object v1, Lcom/stickycoding/rokon/Rokon;->rectangle:Lcom/stickycoding/rokon/Polygon;

    if-ne v0, v1, :cond_0

    iget-object v0, p1, Lcom/stickycoding/rokon/Sprite;->polygon:Lcom/stickycoding/rokon/Polygon;

    sget-object v1, Lcom/stickycoding/rokon/Rokon;->rectangle:Lcom/stickycoding/rokon/Polygon;

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/stickycoding/rokon/Sprite;->rotation:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p1, Lcom/stickycoding/rokon/Sprite;->rotation:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 82
    invoke-virtual {p0}, Lcom/stickycoding/rokon/Sprite;->getX()F

    move-result v0

    invoke-virtual {p0}, Lcom/stickycoding/rokon/Sprite;->getY()F

    move-result v1

    invoke-virtual {p0}, Lcom/stickycoding/rokon/Sprite;->getX()F

    move-result v2

    invoke-virtual {p0}, Lcom/stickycoding/rokon/Sprite;->getWidth()F

    move-result v3

    add-float/2addr v2, v3

    invoke-virtual {p0}, Lcom/stickycoding/rokon/Sprite;->getY()F

    move-result v3

    invoke-virtual {p0}, Lcom/stickycoding/rokon/Sprite;->getHeight()F

    move-result p0

    .end local p0
    add-float/2addr v3, p0

    invoke-virtual {p1}, Lcom/stickycoding/rokon/Sprite;->getX()F

    move-result v4

    invoke-virtual {p1}, Lcom/stickycoding/rokon/Sprite;->getY()F

    move-result v5

    invoke-virtual {p1}, Lcom/stickycoding/rokon/Sprite;->getX()F

    move-result p0

    invoke-virtual {p1}, Lcom/stickycoding/rokon/Sprite;->getWidth()F

    move-result v6

    add-float/2addr v6, p0

    invoke-virtual {p1}, Lcom/stickycoding/rokon/Sprite;->getY()F

    move-result p0

    invoke-virtual {p1}, Lcom/stickycoding/rokon/Sprite;->getHeight()F

    move-result p1

    .end local p1
    add-float v7, p0, p1

    invoke-static/range {v0 .. v7}, Lcom/stickycoding/rokon/MathHelper;->rectOverlap(FFFFFFFF)Z

    move-result p0

    .line 178
    :goto_0
    return p0

    .line 85
    .restart local p0
    .restart local p1
    :cond_0
    const/4 v0, 0x0

    .line 86
    .local v0, dotProduct:F
    const/4 v4, 0x0

    .line 87
    .local v4, minA:F
    const/4 v2, 0x0

    .line 88
    .local v2, maxA:F
    const/4 v5, 0x0

    .line 89
    .local v5, minB:F
    const/4 v3, 0x0

    .line 91
    .local v3, maxB:F
    const/4 v1, 0x0

    .local v1, i:I
    move v6, v5

    .end local v5           #minB:F
    .local v6, minB:F
    move v5, v4

    .end local v4           #minA:F
    .local v5, minA:F
    move v4, v3

    .end local v3           #maxB:F
    .local v4, maxB:F
    move v3, v1

    .end local v1           #i:I
    .local v3, i:I
    :goto_1
    iget-object v1, p0, Lcom/stickycoding/rokon/Sprite;->polygon:Lcom/stickycoding/rokon/Polygon;

    iget v1, v1, Lcom/stickycoding/rokon/Polygon;->vertexCount:I

    if-lt v3, v1, :cond_1

    .line 135
    const/4 v1, 0x0

    .end local v3           #i:I
    .restart local v1       #i:I
    move v3, v1

    .end local v1           #i:I
    .restart local v3       #i:I
    move v1, v2

    .end local v2           #maxA:F
    .local v1, maxA:F
    move v2, v4

    .end local v4           #maxB:F
    .local v2, maxB:F
    move v4, v5

    .end local v5           #minA:F
    .local v4, minA:F
    move v5, v6

    .end local v6           #minB:F
    .local v5, minB:F
    :goto_2
    iget-object v0, p1, Lcom/stickycoding/rokon/Sprite;->polygon:Lcom/stickycoding/rokon/Polygon;

    .end local v0           #dotProduct:F
    iget v0, v0, Lcom/stickycoding/rokon/Polygon;->vertexCount:I

    if-lt v3, v0, :cond_9

    .line 178
    const/4 p0, 0x1

    goto :goto_0

    .line 92
    .end local v1           #maxA:F
    .restart local v0       #dotProduct:F
    .local v2, maxA:F
    .local v4, maxB:F
    .local v5, minA:F
    .restart local v6       #minB:F
    :cond_1
    move v1, v3

    .line 93
    .local v1, startIndex:I
    iget-object v0, p0, Lcom/stickycoding/rokon/Sprite;->polygon:Lcom/stickycoding/rokon/Polygon;

    .end local v0           #dotProduct:F
    iget-object v0, v0, Lcom/stickycoding/rokon/Polygon;->edge:[Lcom/badlogic/gdx/math/Vector2;

    array-length v0, v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    if-ge v3, v0, :cond_2

    .end local v2           #maxA:F
    add-int/lit8 v0, v3, 0x1

    .line 94
    .local v0, endIndex:I
    :goto_3
    invoke-virtual {p0, v1}, Lcom/stickycoding/rokon/Sprite;->getVertex(I)[F

    move-result-object v2

    .line 95
    .local v2, startVertex:[F
    invoke-virtual {p0, v0}, Lcom/stickycoding/rokon/Sprite;->getVertex(I)[F

    move-result-object v0

    .line 96
    .local v0, endVertex:[F
    const/4 v1, 0x0

    aget v1, v0, v1

    .end local v1           #startIndex:I
    const/4 v4, 0x0

    aget v4, v2, v4

    .end local v4           #maxB:F
    sub-float/2addr v1, v4

    .line 97
    .local v1, edgeX:F
    const/4 v4, 0x1

    aget v0, v0, v4

    .end local v0           #endVertex:[F
    const/4 v4, 0x1

    aget v2, v2, v4

    .end local v2           #startVertex:[F
    sub-float/2addr v0, v2

    .line 99
    .local v0, edgeY:F
    move v0, v0

    .line 100
    .local v0, axisX:F
    neg-float v1, v1

    .line 102
    .local v1, axisY:F
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lcom/stickycoding/rokon/Sprite;->getVertex(I)[F

    move-result-object v7

    .line 103
    .local v7, vertex:[F
    const/4 v2, 0x0

    aget v2, v7, v2

    const/4 v4, 0x1

    aget v4, v7, v4

    invoke-static {v0, v1, v2, v4}, Lcom/stickycoding/rokon/MathHelper;->dot(FFFF)F

    move-result v2

    .line 104
    .local v2, dotProduct:F
    move v6, v2

    .line 105
    .end local v5           #minA:F
    .local v6, minA:F
    move v5, v2

    .line 106
    .local v5, maxA:F
    const/4 v4, 0x1

    .local v4, j:I
    move-object v11, v7

    .end local v7           #vertex:[F
    .local v11, vertex:[F
    move v7, v6

    .end local v6           #minA:F
    .local v7, minA:F
    move-object v6, v11

    .end local v11           #vertex:[F
    .local v6, vertex:[F
    :goto_4
    iget-object v2, p1, Lcom/stickycoding/rokon/Sprite;->polygon:Lcom/stickycoding/rokon/Polygon;

    .end local v2           #dotProduct:F
    iget v2, v2, Lcom/stickycoding/rokon/Polygon;->vertexCount:I

    if-lt v4, v2, :cond_3

    .line 116
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/stickycoding/rokon/Sprite;->getVertex(I)[F

    move-result-object v9

    .line 117
    .end local v6           #vertex:[F
    .local v9, vertex:[F
    const/4 v2, 0x0

    aget v2, v9, v2

    const/4 v4, 0x1

    aget v4, v9, v4

    .end local v4           #j:I
    invoke-static {v0, v1, v2, v4}, Lcom/stickycoding/rokon/MathHelper;->dot(FFFF)F

    move-result v2

    .line 118
    .restart local v2       #dotProduct:F
    move v8, v2

    .line 119
    .local v8, minB:F
    move v6, v2

    .line 120
    .local v6, maxB:F
    const/4 v4, 0x1

    .restart local v4       #j:I
    :goto_5
    iget-object v9, p0, Lcom/stickycoding/rokon/Sprite;->polygon:Lcom/stickycoding/rokon/Polygon;

    .end local v9           #vertex:[F
    iget v9, v9, Lcom/stickycoding/rokon/Polygon;->vertexCount:I

    if-lt v4, v9, :cond_5

    .line 130
    invoke-static {v8, v6, v7, v5}, Lcom/stickycoding/rokon/MathHelper;->intervalDistance(FFFF)F

    move-result v0

    .end local v0           #axisX:F
    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_8

    .line 131
    .end local v1           #axisY:F
    const/4 p0, 0x0

    goto :goto_0

    .line 93
    .end local v2           #dotProduct:F
    .end local v7           #minA:F
    .end local v8           #minB:F
    .local v1, startIndex:I
    .local v4, maxB:F
    .local v5, minA:F
    .local v6, minB:F
    :cond_2
    const/4 v0, 0x0

    goto :goto_3

    .line 107
    .restart local v0       #axisX:F
    .local v1, axisY:F
    .local v4, j:I
    .local v5, maxA:F
    .local v6, vertex:[F
    .restart local v7       #minA:F
    :cond_3
    invoke-virtual {p1, v4}, Lcom/stickycoding/rokon/Sprite;->getVertex(I)[F

    move-result-object v8

    .line 108
    .end local v6           #vertex:[F
    .local v8, vertex:[F
    const/4 v2, 0x0

    aget v2, v8, v2

    const/4 v6, 0x1

    aget v6, v8, v6

    invoke-static {v0, v1, v2, v6}, Lcom/stickycoding/rokon/MathHelper;->dot(FFFF)F

    move-result v2

    .line 109
    .restart local v2       #dotProduct:F
    cmpg-float v6, v2, v7

    if-gez v6, :cond_4

    .line 110
    move v6, v2

    .line 106
    .end local v7           #minA:F
    .local v6, minA:F
    :goto_6
    add-int/lit8 v4, v4, 0x1

    move v7, v6

    .end local v6           #minA:F
    .restart local v7       #minA:F
    move-object v6, v8

    .end local v8           #vertex:[F
    .local v6, vertex:[F
    goto :goto_4

    .line 111
    .end local v6           #vertex:[F
    .restart local v8       #vertex:[F
    :cond_4
    cmpl-float v6, v2, v5

    if-lez v6, :cond_12

    .line 112
    move v5, v2

    move v6, v7

    .end local v7           #minA:F
    .local v6, minA:F
    goto :goto_6

    .line 121
    .local v6, maxB:F
    .restart local v7       #minA:F
    .local v8, minB:F
    :cond_5
    invoke-virtual {p0, v4}, Lcom/stickycoding/rokon/Sprite;->getVertex(I)[F

    move-result-object v9

    .line 122
    .restart local v9       #vertex:[F
    const/4 v2, 0x0

    aget v2, v9, v2

    .end local v2           #dotProduct:F
    const/4 v10, 0x1

    aget v10, v9, v10

    invoke-static {v0, v1, v2, v10}, Lcom/stickycoding/rokon/MathHelper;->dot(FFFF)F

    move-result v2

    .line 123
    .restart local v2       #dotProduct:F
    cmpg-float v10, v2, v8

    if-gez v10, :cond_7

    .line 124
    move v8, v2

    .line 120
    :cond_6
    :goto_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 125
    :cond_7
    cmpl-float v10, v2, v6

    if-lez v10, :cond_6

    .line 126
    move v6, v2

    goto :goto_7

    .line 91
    .end local v0           #axisX:F
    .end local v1           #axisY:F
    .end local v9           #vertex:[F
    :cond_8
    add-int/lit8 v0, v3, 0x1

    .end local v3           #i:I
    .local v0, i:I
    move v3, v0

    .end local v0           #i:I
    .restart local v3       #i:I
    move v4, v6

    .end local v6           #maxB:F
    .local v4, maxB:F
    move v6, v8

    .end local v8           #minB:F
    .local v6, minB:F
    move v0, v2

    .end local v2           #dotProduct:F
    .local v0, dotProduct:F
    move v2, v5

    .end local v5           #maxA:F
    .local v2, maxA:F
    move v5, v7

    .end local v7           #minA:F
    .local v5, minA:F
    goto/16 :goto_1

    .line 136
    .end local v0           #dotProduct:F
    .end local v6           #minB:F
    .local v1, maxA:F
    .local v2, maxB:F
    .local v4, minA:F
    .local v5, minB:F
    :cond_9
    move v1, v3

    .line 137
    .local v1, startIndex:I
    iget-object v0, p1, Lcom/stickycoding/rokon/Sprite;->polygon:Lcom/stickycoding/rokon/Polygon;

    iget-object v0, v0, Lcom/stickycoding/rokon/Polygon;->edge:[Lcom/badlogic/gdx/math/Vector2;

    array-length v0, v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    if-ge v3, v0, :cond_a

    .end local v2           #maxB:F
    add-int/lit8 v0, v3, 0x1

    .line 138
    .local v0, endIndex:I
    :goto_8
    invoke-virtual {p1, v1}, Lcom/stickycoding/rokon/Sprite;->getVertex(I)[F

    move-result-object v2

    .line 139
    .local v2, startVertex:[F
    invoke-virtual {p1, v0}, Lcom/stickycoding/rokon/Sprite;->getVertex(I)[F

    move-result-object v0

    .line 140
    .local v0, endVertex:[F
    const/4 v1, 0x0

    aget v1, v0, v1

    .end local v1           #startIndex:I
    const/4 v4, 0x0

    aget v4, v2, v4

    .end local v4           #minA:F
    sub-float/2addr v1, v4

    .line 141
    .local v1, edgeX:F
    const/4 v4, 0x1

    aget v0, v0, v4

    .end local v0           #endVertex:[F
    const/4 v4, 0x1

    aget v2, v2, v4

    .end local v2           #startVertex:[F
    sub-float/2addr v0, v2

    .line 143
    .local v0, edgeY:F
    move v0, v0

    .line 144
    .local v0, axisX:F
    neg-float v1, v1

    .line 146
    .local v1, axisY:F
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lcom/stickycoding/rokon/Sprite;->getVertex(I)[F

    move-result-object v7

    .line 147
    .local v7, vertex:[F
    const/4 v2, 0x0

    aget v2, v7, v2

    const/4 v4, 0x1

    aget v4, v7, v4

    invoke-static {v0, v1, v2, v4}, Lcom/stickycoding/rokon/MathHelper;->dot(FFFF)F

    move-result v2

    .line 148
    .local v2, dotProduct:F
    move v6, v2

    .line 149
    .local v6, minA:F
    move v5, v2

    .line 150
    .local v5, maxA:F
    const/4 v4, 0x1

    .local v4, j:I
    move-object v11, v7

    .end local v7           #vertex:[F
    .restart local v11       #vertex:[F
    move v7, v6

    .end local v6           #minA:F
    .local v7, minA:F
    move-object v6, v11

    .end local v11           #vertex:[F
    .local v6, vertex:[F
    :goto_9
    iget-object v2, p1, Lcom/stickycoding/rokon/Sprite;->polygon:Lcom/stickycoding/rokon/Polygon;

    .end local v2           #dotProduct:F
    iget v2, v2, Lcom/stickycoding/rokon/Polygon;->vertexCount:I

    if-lt v4, v2, :cond_b

    .line 160
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/stickycoding/rokon/Sprite;->getVertex(I)[F

    move-result-object v9

    .line 161
    .end local v6           #vertex:[F
    .restart local v9       #vertex:[F
    const/4 v2, 0x0

    aget v2, v9, v2

    const/4 v4, 0x1

    aget v4, v9, v4

    .end local v4           #j:I
    invoke-static {v0, v1, v2, v4}, Lcom/stickycoding/rokon/MathHelper;->dot(FFFF)F

    move-result v2

    .line 162
    .restart local v2       #dotProduct:F
    move v8, v2

    .line 163
    .restart local v8       #minB:F
    move v6, v2

    .line 164
    .local v6, maxB:F
    const/4 v4, 0x1

    .restart local v4       #j:I
    :goto_a
    iget-object v9, p0, Lcom/stickycoding/rokon/Sprite;->polygon:Lcom/stickycoding/rokon/Polygon;

    .end local v9           #vertex:[F
    iget v9, v9, Lcom/stickycoding/rokon/Polygon;->vertexCount:I

    if-lt v4, v9, :cond_d

    .line 174
    invoke-static {v8, v6, v7, v5}, Lcom/stickycoding/rokon/MathHelper;->intervalDistance(FFFF)F

    move-result v0

    .end local v0           #axisX:F
    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_10

    .line 175
    .end local v1           #axisY:F
    const/4 p0, 0x0

    goto/16 :goto_0

    .line 137
    .end local v2           #dotProduct:F
    .end local v6           #maxB:F
    .end local v7           #minA:F
    .end local v8           #minB:F
    .local v1, startIndex:I
    .local v4, minA:F
    .local v5, minB:F
    :cond_a
    const/4 v0, 0x0

    goto :goto_8

    .line 151
    .restart local v0       #axisX:F
    .local v1, axisY:F
    .local v4, j:I
    .local v5, maxA:F
    .local v6, vertex:[F
    .restart local v7       #minA:F
    :cond_b
    invoke-virtual {p1, v4}, Lcom/stickycoding/rokon/Sprite;->getVertex(I)[F

    move-result-object v8

    .line 152
    .end local v6           #vertex:[F
    .local v8, vertex:[F
    const/4 v2, 0x0

    aget v2, v8, v2

    const/4 v6, 0x1

    aget v6, v8, v6

    invoke-static {v0, v1, v2, v6}, Lcom/stickycoding/rokon/MathHelper;->dot(FFFF)F

    move-result v2

    .line 153
    .restart local v2       #dotProduct:F
    cmpg-float v6, v2, v7

    if-gez v6, :cond_c

    .line 154
    move v6, v2

    .line 150
    .end local v7           #minA:F
    .local v6, minA:F
    :goto_b
    add-int/lit8 v4, v4, 0x1

    move v7, v6

    .end local v6           #minA:F
    .restart local v7       #minA:F
    move-object v6, v8

    .end local v8           #vertex:[F
    .local v6, vertex:[F
    goto :goto_9

    .line 155
    .end local v6           #vertex:[F
    .restart local v8       #vertex:[F
    :cond_c
    cmpl-float v6, v2, v5

    if-lez v6, :cond_11

    .line 156
    move v5, v2

    move v6, v7

    .end local v7           #minA:F
    .local v6, minA:F
    goto :goto_b

    .line 165
    .local v6, maxB:F
    .restart local v7       #minA:F
    .local v8, minB:F
    :cond_d
    invoke-virtual {p0, v4}, Lcom/stickycoding/rokon/Sprite;->getVertex(I)[F

    move-result-object v9

    .line 166
    .restart local v9       #vertex:[F
    const/4 v2, 0x0

    aget v2, v9, v2

    .end local v2           #dotProduct:F
    const/4 v10, 0x1

    aget v10, v9, v10

    invoke-static {v0, v1, v2, v10}, Lcom/stickycoding/rokon/MathHelper;->dot(FFFF)F

    move-result v2

    .line 167
    .restart local v2       #dotProduct:F
    cmpg-float v10, v2, v8

    if-gez v10, :cond_f

    .line 168
    move v8, v2

    .line 164
    :cond_e
    :goto_c
    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    .line 169
    :cond_f
    cmpl-float v10, v2, v6

    if-lez v10, :cond_e

    .line 170
    move v6, v2

    goto :goto_c

    .line 135
    .end local v0           #axisX:F
    .end local v1           #axisY:F
    .end local v9           #vertex:[F
    :cond_10
    add-int/lit8 v0, v3, 0x1

    .end local v3           #i:I
    .local v0, i:I
    move v3, v0

    .end local v0           #i:I
    .restart local v3       #i:I
    move v1, v5

    .end local v5           #maxA:F
    .local v1, maxA:F
    move v4, v7

    .end local v7           #minA:F
    .local v4, minA:F
    move v5, v8

    .end local v8           #minB:F
    .local v5, minB:F
    move v0, v2

    .end local v2           #dotProduct:F
    .local v0, dotProduct:F
    move v2, v6

    .end local v6           #maxB:F
    .local v2, maxB:F
    goto/16 :goto_2

    .local v0, axisX:F
    .local v1, axisY:F
    .local v2, dotProduct:F
    .local v4, j:I
    .local v5, maxA:F
    .restart local v7       #minA:F
    .local v8, vertex:[F
    :cond_11
    move v6, v7

    .end local v7           #minA:F
    .local v6, minA:F
    goto :goto_b

    .end local v6           #minA:F
    .restart local v7       #minA:F
    :cond_12
    move v6, v7

    .end local v7           #minA:F
    .restart local v6       #minA:F
    goto/16 :goto_6
.end method

.method private static intervalDistance(FFFF)F
    .locals 1
    .parameter "minA"
    .parameter "maxA"
    .parameter "minB"
    .parameter "maxB"

    .prologue
    .line 182
    cmpg-float v0, p0, p2

    if-gez v0, :cond_0

    .line 183
    sub-float v0, p2, p1

    .line 185
    :goto_0
    return v0

    :cond_0
    sub-float v0, p0, p3

    goto :goto_0
.end method

.method public static pointInRect(FFFFFF)Z
    .locals 1
    .parameter "pointX"
    .parameter "pointY"
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 37
    cmpg-float v0, p0, p2

    if-ltz v0, :cond_0

    cmpg-float v0, p1, p3

    if-ltz v0, :cond_0

    add-float v0, p2, p4

    cmpl-float v0, p0, v0

    if-gtz v0, :cond_0

    add-float v0, p3, p5

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    .line 38
    :cond_0
    const/4 v0, 0x0

    .line 40
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static pointInShape(FFLcom/stickycoding/rokon/Sprite;)Z
    .locals 7
    .parameter "x"
    .parameter "y"
    .parameter "sprite"

    .prologue
    .line 241
    iget-object v0, p2, Lcom/stickycoding/rokon/Sprite;->polygon:Lcom/stickycoding/rokon/Polygon;

    sget-object v1, Lcom/stickycoding/rokon/Rokon;->circle:Lcom/stickycoding/rokon/Polygon;

    if-eq v0, v1, :cond_6

    .line 242
    const/4 v0, 0x0

    .local v0, i:I
    move v4, v0

    .end local v0           #i:I
    .local v4, i:I
    :goto_0
    invoke-virtual {p2}, Lcom/stickycoding/rokon/Sprite;->getPolygon()Lcom/stickycoding/rokon/Polygon;

    move-result-object v0

    iget v0, v0, Lcom/stickycoding/rokon/Polygon;->vertexCount:I

    if-lt v4, v0, :cond_0

    .line 263
    const/4 p0, 0x1

    .line 271
    .end local v4           #i:I
    .end local p0
    .end local p1
    .end local p2
    :goto_1
    return p0

    .line 243
    .restart local v4       #i:I
    .restart local p0
    .restart local p1
    .restart local p2
    :cond_0
    move v0, v4

    .line 244
    .local v0, startIndex:I
    iget-object v1, p2, Lcom/stickycoding/rokon/Sprite;->polygon:Lcom/stickycoding/rokon/Polygon;

    iget-object v1, v1, Lcom/stickycoding/rokon/Polygon;->edge:[Lcom/badlogic/gdx/math/Vector2;

    array-length v1, v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-ge v4, v1, :cond_3

    add-int/lit8 v1, v4, 0x1

    move v3, v1

    .line 245
    .local v3, endIndex:I
    :goto_2
    invoke-virtual {p2, v0}, Lcom/stickycoding/rokon/Sprite;->getVertex(I)[F

    move-result-object v5

    .line 246
    .local v5, startVertex:[F
    invoke-virtual {p2, v3}, Lcom/stickycoding/rokon/Sprite;->getVertex(I)[F

    move-result-object v1

    .line 247
    .local v1, endVertex:[F
    const/4 v0, 0x0

    aget v0, v1, v0

    .end local v0           #startIndex:I
    const/4 v2, 0x0

    aget v2, v5, v2

    sub-float/2addr v0, v2

    .line 248
    .local v0, edgeX:F
    const/4 v2, 0x1

    aget v1, v1, v2

    .end local v1           #endVertex:[F
    const/4 v2, 0x1

    aget v2, v5, v2

    sub-float/2addr v1, v2

    .line 249
    .local v1, edgeY:F
    move v1, v1

    .line 250
    .local v1, axisX:F
    neg-float v2, v0

    .line 252
    .local v2, axisY:F
    iget-object v0, p2, Lcom/stickycoding/rokon/Sprite;->polygon:Lcom/stickycoding/rokon/Polygon;

    .end local v0           #edgeX:F
    iget-object v0, v0, Lcom/stickycoding/rokon/Polygon;->edge:[Lcom/badlogic/gdx/math/Vector2;

    array-length v0, v0

    const/4 v6, 0x1

    sub-int/2addr v0, v6

    if-ge v3, v0, :cond_4

    add-int/lit8 v0, v3, 0x1

    .line 253
    .local v0, nextIndex:I
    :goto_3
    invoke-virtual {p2, v0}, Lcom/stickycoding/rokon/Sprite;->getVertex(I)[F

    move-result-object v3

    .line 255
    .local v3, nextVertex:[F
    const/4 v0, 0x0

    aget v0, v5, v0

    .end local v0           #nextIndex:I
    const/4 v6, 0x1

    aget v5, v5, v6

    .end local v5           #startVertex:[F
    invoke-static {v1, v2, v0, v5}, Lcom/stickycoding/rokon/MathHelper;->dot(FFFF)F

    move-result v0

    .line 256
    .local v0, axisDot:F
    const/4 v5, 0x0

    aget v5, v3, v5

    const/4 v6, 0x1

    aget v3, v3, v6

    .end local v3           #nextVertex:[F
    invoke-static {v1, v2, v5, v3}, Lcom/stickycoding/rokon/MathHelper;->dot(FFFF)F

    move-result v3

    .line 257
    .local v3, nextDot:F
    invoke-static {v1, v2, p0, p1}, Lcom/stickycoding/rokon/MathHelper;->dot(FFFF)F

    move-result v1

    .line 259
    .local v1, testDot:F
    cmpl-float v2, v3, v0

    if-ltz v2, :cond_1

    .end local v2           #axisY:F
    cmpg-float v2, v1, v0

    if-ltz v2, :cond_2

    :cond_1
    cmpg-float v2, v3, v0

    if-gtz v2, :cond_5

    cmpl-float v0, v1, v0

    if-lez v0, :cond_5

    .line 260
    .end local v0           #axisDot:F
    :cond_2
    const/4 p0, 0x0

    goto :goto_1

    .line 244
    .end local v1           #testDot:F
    .end local v3           #nextDot:F
    .local v0, startIndex:I
    :cond_3
    const/4 v1, 0x0

    move v3, v1

    goto :goto_2

    .line 252
    .end local v0           #startIndex:I
    .local v1, axisX:F
    .restart local v2       #axisY:F
    .local v3, endIndex:I
    .restart local v5       #startVertex:[F
    :cond_4
    const/4 v0, 0x0

    goto :goto_3

    .line 242
    .end local v2           #axisY:F
    .end local v5           #startVertex:[F
    .local v1, testDot:F
    .local v3, nextDot:F
    :cond_5
    add-int/lit8 v0, v4, 0x1

    .end local v4           #i:I
    .local v0, i:I
    move v4, v0

    .end local v0           #i:I
    .restart local v4       #i:I
    goto :goto_0

    .line 265
    .end local v1           #testDot:F
    .end local v3           #nextDot:F
    .end local v4           #i:I
    :cond_6
    invoke-virtual {p2}, Lcom/stickycoding/rokon/Sprite;->getX()F

    move-result v0

    invoke-virtual {p2}, Lcom/stickycoding/rokon/Sprite;->getWidth()F

    move-result v1

    const/high16 v2, 0x4000

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 266
    .local v0, centreX:F
    invoke-virtual {p2}, Lcom/stickycoding/rokon/Sprite;->getY()F

    move-result v1

    invoke-virtual {p2}, Lcom/stickycoding/rokon/Sprite;->getHeight()F

    move-result v2

    const/high16 v3, 0x4000

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    .line 267
    .local v1, centreY:F
    invoke-virtual {p2}, Lcom/stickycoding/rokon/Sprite;->getWidth()F

    move-result v2

    const/high16 v3, 0x4000

    div-float/2addr v2, v3

    invoke-virtual {p2}, Lcom/stickycoding/rokon/Sprite;->getWidth()F

    move-result p2

    .end local p2
    const/high16 v3, 0x4000

    div-float/2addr p2, v3

    mul-float/2addr p2, v2

    .line 268
    .local p2, maxDistance:F
    sub-float/2addr p0, v0

    .line 269
    .local p0, dx:F
    sub-float/2addr p1, v1

    .line 270
    .local p1, dy:F
    mul-float/2addr p0, p0

    mul-float/2addr p1, p1

    add-float/2addr p0, p1

    .line 271
    .local p0, distance:F
    cmpg-float p0, p0, p2

    if-gtz p0, :cond_7

    .end local p0           #distance:F
    .end local p1           #dy:F
    const/4 p0, 0x1

    goto/16 :goto_1

    :cond_7
    const/4 p0, 0x0

    goto/16 :goto_1
.end method

.method public static rectOverlap(FFFFFFFF)Z
    .locals 1
    .parameter "rect1X1"
    .parameter "rect1Y1"
    .parameter "rect1X2"
    .parameter "rect1Y2"
    .parameter "rect2X1"
    .parameter "rect2Y1"
    .parameter "rect2X2"
    .parameter "rect2Y2"

    .prologue
    .line 58
    cmpg-float v0, p0, p6

    if-gez v0, :cond_0

    cmpl-float v0, p2, p4

    if-lez v0, :cond_0

    cmpg-float v0, p1, p7

    if-gez v0, :cond_0

    cmpl-float v0, p3, p5

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static rotate(FFFFF)[F
    .locals 5
    .parameter "angle"
    .parameter "x"
    .parameter "y"
    .parameter "pivotX"
    .parameter "pivotY"

    .prologue
    .line 326
    const v1, 0x3c8efa35

    mul-float/2addr p0, v1

    .line 327
    const/4 v1, 0x2

    new-array v0, v1, [F

    .line 328
    .local v0, ret:[F
    const/4 v1, 0x0

    float-to-double v2, p0

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float v2, v2

    sub-float v3, p1, p3

    mul-float/2addr v2, v3

    float-to-double v3, p0

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    double-to-float v3, v3

    sub-float v4, p2, p4

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    add-float/2addr v2, p3

    aput v2, v0, v1

    .line 329
    const/4 v1, 0x1

    float-to-double v2, p0

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v2, v2

    sub-float v3, p1, p3

    mul-float/2addr v2, v3

    float-to-double v3, p0

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    double-to-float v3, v3

    sub-float v4, p2, p4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    add-float/2addr v2, p4

    aput v2, v0, v1

    .line 330
    return-object v0
.end method
