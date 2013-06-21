.class public Lorg/appcelerator/titanium/view/Ti2DMatrix;
.super Lorg/appcelerator/kroll/KrollProxy;
.source "Ti2DMatrix.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;
    }
.end annotation


# static fields
.field public static final DEFAULT_ANCHOR_VALUE:F = -1.0f


# instance fields
.field protected next:Lorg/appcelerator/titanium/view/Ti2DMatrix;

.field protected op:Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;

.field protected prev:Lorg/appcelerator/titanium/view/Ti2DMatrix;


# direct methods
.method public constructor <init>(Lorg/appcelerator/titanium/TiContext;)V
    .locals 0
    .parameter "tiContext"

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lorg/appcelerator/kroll/KrollProxy;-><init>(Lorg/appcelerator/titanium/TiContext;)V

    .line 71
    return-void
.end method

.method protected constructor <init>(Lorg/appcelerator/titanium/TiContext;Lorg/appcelerator/titanium/view/Ti2DMatrix;I)V
    .locals 1
    .parameter "tiContext"
    .parameter "prev"
    .parameter "opType"

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lorg/appcelerator/kroll/KrollProxy;-><init>(Lorg/appcelerator/titanium/TiContext;)V

    .line 76
    if-eqz p2, :cond_0

    .line 77
    iput-object p2, p0, Lorg/appcelerator/titanium/view/Ti2DMatrix;->prev:Lorg/appcelerator/titanium/view/Ti2DMatrix;

    .line 78
    iput-object p0, p2, Lorg/appcelerator/titanium/view/Ti2DMatrix;->next:Lorg/appcelerator/titanium/view/Ti2DMatrix;

    .line 80
    :cond_0
    new-instance v0, Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;

    invoke-direct {v0, p3}, Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;-><init>(I)V

    iput-object v0, p0, Lorg/appcelerator/titanium/view/Ti2DMatrix;->op:Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;

    .line 81
    return-void
.end method


# virtual methods
.method protected handleAnchorPoint(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 3
    .parameter "dict"

    .prologue
    const-string v2, "anchorPoint"

    .line 103
    const-string v1, "anchorPoint"

    invoke-virtual {p1, v2}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 104
    const-string v1, "anchorPoint"

    invoke-virtual {p1, v2}, Lorg/appcelerator/kroll/KrollDict;->getKrollDict(Ljava/lang/String;)Lorg/appcelerator/kroll/KrollDict;

    move-result-object v0

    .line 105
    .local v0, anchorPoint:Lorg/appcelerator/kroll/KrollDict;
    if-eqz v0, :cond_0

    .line 106
    iget-object v1, p0, Lorg/appcelerator/titanium/view/Ti2DMatrix;->op:Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;

    const-string v2, "x"

    invoke-static {v0, v2}, Lorg/appcelerator/titanium/util/TiConvert;->toFloat(Lorg/appcelerator/kroll/KrollDict;Ljava/lang/String;)F

    move-result v2

    iput v2, v1, Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;->anchorX:F

    .line 107
    iget-object v1, p0, Lorg/appcelerator/titanium/view/Ti2DMatrix;->op:Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;

    const-string v2, "y"

    invoke-static {v0, v2}, Lorg/appcelerator/titanium/util/TiConvert;->toFloat(Lorg/appcelerator/kroll/KrollDict;Ljava/lang/String;)F

    move-result v2

    iput v2, v1, Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;->anchorY:F

    .line 110
    .end local v0           #anchorPoint:Lorg/appcelerator/kroll/KrollDict;
    :cond_0
    return-void
.end method

.method public handleCreationDict(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 4
    .parameter "dict"

    .prologue
    const-string v3, "scale"

    const-string v2, "rotate"

    .line 86
    invoke-super {p0, p1}, Lorg/appcelerator/kroll/KrollProxy;->handleCreationDict(Lorg/appcelerator/kroll/KrollDict;)V

    .line 87
    const-string v0, "rotate"

    invoke-virtual {p1, v2}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    new-instance v0, Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;-><init>(I)V

    iput-object v0, p0, Lorg/appcelerator/titanium/view/Ti2DMatrix;->op:Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;

    .line 89
    iget-object v0, p0, Lorg/appcelerator/titanium/view/Ti2DMatrix;->op:Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;

    const/4 v1, 0x0

    iput v1, v0, Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;->rotateFrom:F

    .line 90
    iget-object v0, p0, Lorg/appcelerator/titanium/view/Ti2DMatrix;->op:Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;

    const-string v1, "rotate"

    invoke-static {p1, v2}, Lorg/appcelerator/titanium/util/TiConvert;->toFloat(Lorg/appcelerator/kroll/KrollDict;Ljava/lang/String;)F

    move-result v1

    iput v1, v0, Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;->rotateTo:F

    .line 91
    invoke-virtual {p0, p1}, Lorg/appcelerator/titanium/view/Ti2DMatrix;->handleAnchorPoint(Lorg/appcelerator/kroll/KrollDict;)V

    .line 93
    :cond_0
    const-string v0, "scale"

    invoke-virtual {p1, v3}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 94
    new-instance v0, Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;-><init>(I)V

    iput-object v0, p0, Lorg/appcelerator/titanium/view/Ti2DMatrix;->op:Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;

    .line 95
    iget-object v0, p0, Lorg/appcelerator/titanium/view/Ti2DMatrix;->op:Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;

    iget-object v1, p0, Lorg/appcelerator/titanium/view/Ti2DMatrix;->op:Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;

    const/high16 v2, 0x3f80

    iput v2, v1, Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;->scaleFromY:F

    iput v2, v0, Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;->scaleFromX:F

    .line 96
    iget-object v0, p0, Lorg/appcelerator/titanium/view/Ti2DMatrix;->op:Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;

    iget-object v1, p0, Lorg/appcelerator/titanium/view/Ti2DMatrix;->op:Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;

    const-string v2, "scale"

    invoke-static {p1, v3}, Lorg/appcelerator/titanium/util/TiConvert;->toFloat(Lorg/appcelerator/kroll/KrollDict;Ljava/lang/String;)F

    move-result v2

    iput v2, v1, Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;->scaleToY:F

    iput v2, v0, Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;->scaleToX:F

    .line 97
    invoke-virtual {p0, p1}, Lorg/appcelerator/titanium/view/Ti2DMatrix;->handleAnchorPoint(Lorg/appcelerator/kroll/KrollDict;)V

    .line 99
    :cond_1
    return-void
.end method

.method public interpolate(FIIFF)Landroid/graphics/Matrix;
    .locals 9
    .parameter "interpolatedTime"
    .parameter "childWidth"
    .parameter "childHeight"
    .parameter "anchorX"
    .parameter "anchorY"

    .prologue
    .line 181
    move-object v8, p0

    .line 182
    .local v8, first:Lorg/appcelerator/titanium/view/Ti2DMatrix;
    :goto_0
    iget-object v0, v8, Lorg/appcelerator/titanium/view/Ti2DMatrix;->prev:Lorg/appcelerator/titanium/view/Ti2DMatrix;

    if-eqz v0, :cond_0

    .line 184
    iget-object v8, v8, Lorg/appcelerator/titanium/view/Ti2DMatrix;->prev:Lorg/appcelerator/titanium/view/Ti2DMatrix;

    goto :goto_0

    .line 187
    :cond_0
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    .line 188
    .local v2, matrix:Landroid/graphics/Matrix;
    move-object v7, v8

    .local v7, current:Lorg/appcelerator/titanium/view/Ti2DMatrix;
    :goto_1
    if-eq v7, p0, :cond_2

    .line 189
    iget-object v0, v7, Lorg/appcelerator/titanium/view/Ti2DMatrix;->op:Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;

    if-eqz v0, :cond_1

    .line 190
    iget-object v0, v7, Lorg/appcelerator/titanium/view/Ti2DMatrix;->op:Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;

    move v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;->apply(FLandroid/graphics/Matrix;IIFF)V

    .line 188
    :cond_1
    iget-object v7, v7, Lorg/appcelerator/titanium/view/Ti2DMatrix;->next:Lorg/appcelerator/titanium/view/Ti2DMatrix;

    goto :goto_1

    .line 193
    :cond_2
    iget-object v0, p0, Lorg/appcelerator/titanium/view/Ti2DMatrix;->op:Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;

    if-eqz v0, :cond_3

    .line 194
    iget-object v0, p0, Lorg/appcelerator/titanium/view/Ti2DMatrix;->op:Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;

    move v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;->apply(FLandroid/graphics/Matrix;IIFF)V

    .line 196
    :cond_3
    return-object v2
.end method

.method public invert(Lorg/appcelerator/kroll/KrollInvocation;)Lorg/appcelerator/titanium/view/Ti2DMatrix;
    .locals 3
    .parameter "invocation"

    .prologue
    .line 168
    new-instance v0, Lorg/appcelerator/titanium/view/Ti2DMatrix;

    invoke-virtual {p1}, Lorg/appcelerator/kroll/KrollInvocation;->getTiContext()Lorg/appcelerator/titanium/TiContext;

    move-result-object v1

    const/4 v2, 0x4

    invoke-direct {v0, v1, p0, v2}, Lorg/appcelerator/titanium/view/Ti2DMatrix;-><init>(Lorg/appcelerator/titanium/TiContext;Lorg/appcelerator/titanium/view/Ti2DMatrix;I)V

    return-object v0
.end method

.method public multiply(Lorg/appcelerator/kroll/KrollInvocation;Lorg/appcelerator/titanium/view/Ti2DMatrix;)Lorg/appcelerator/titanium/view/Ti2DMatrix;
    .locals 3
    .parameter "invocation"
    .parameter "other"

    .prologue
    .line 175
    new-instance v0, Lorg/appcelerator/titanium/view/Ti2DMatrix;

    invoke-virtual {p1}, Lorg/appcelerator/kroll/KrollInvocation;->getTiContext()Lorg/appcelerator/titanium/TiContext;

    move-result-object v1

    const/4 v2, 0x3

    invoke-direct {v0, v1, p0, v2}, Lorg/appcelerator/titanium/view/Ti2DMatrix;-><init>(Lorg/appcelerator/titanium/TiContext;Lorg/appcelerator/titanium/view/Ti2DMatrix;I)V

    return-object v0
.end method

.method public rotate(Lorg/appcelerator/kroll/KrollInvocation;[Ljava/lang/Object;)Lorg/appcelerator/titanium/view/Ti2DMatrix;
    .locals 5
    .parameter "invocation"
    .parameter "args"

    .prologue
    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 152
    new-instance v0, Lorg/appcelerator/titanium/view/Ti2DMatrix;

    invoke-virtual {p1}, Lorg/appcelerator/kroll/KrollInvocation;->getTiContext()Lorg/appcelerator/titanium/TiContext;

    move-result-object v1

    invoke-direct {v0, v1, p0, v2}, Lorg/appcelerator/titanium/view/Ti2DMatrix;-><init>(Lorg/appcelerator/titanium/TiContext;Lorg/appcelerator/titanium/view/Ti2DMatrix;I)V

    .line 154
    .local v0, newMatrix:Lorg/appcelerator/titanium/view/Ti2DMatrix;
    array-length v1, p2

    if-ne v1, v4, :cond_1

    .line 155
    iget-object v1, v0, Lorg/appcelerator/titanium/view/Ti2DMatrix;->op:Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;

    const/4 v2, 0x0

    iput v2, v1, Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;->rotateFrom:F

    .line 156
    iget-object v1, v0, Lorg/appcelerator/titanium/view/Ti2DMatrix;->op:Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;

    aget-object v2, p2, v3

    invoke-static {v2}, Lorg/appcelerator/titanium/util/TiConvert;->toFloat(Ljava/lang/Object;)F

    move-result v2

    iput v2, v1, Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;->rotateTo:F

    .line 161
    :cond_0
    :goto_0
    invoke-virtual {v0}, Lorg/appcelerator/titanium/view/Ti2DMatrix;->getProperties()Lorg/appcelerator/kroll/KrollDict;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/appcelerator/titanium/view/Ti2DMatrix;->handleAnchorPoint(Lorg/appcelerator/kroll/KrollDict;)V

    .line 162
    return-object v0

    .line 157
    :cond_1
    array-length v1, p2

    if-ne v1, v2, :cond_0

    .line 158
    iget-object v1, v0, Lorg/appcelerator/titanium/view/Ti2DMatrix;->op:Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;

    aget-object v2, p2, v3

    invoke-static {v2}, Lorg/appcelerator/titanium/util/TiConvert;->toFloat(Ljava/lang/Object;)F

    move-result v2

    iput v2, v1, Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;->rotateFrom:F

    .line 159
    iget-object v1, v0, Lorg/appcelerator/titanium/view/Ti2DMatrix;->op:Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;

    aget-object v2, p2, v4

    invoke-static {v2}, Lorg/appcelerator/titanium/util/TiConvert;->toFloat(Ljava/lang/Object;)F

    move-result v2

    iput v2, v1, Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;->rotateTo:F

    goto :goto_0
.end method

.method public scale(Lorg/appcelerator/kroll/KrollInvocation;[Ljava/lang/Object;)Lorg/appcelerator/titanium/view/Ti2DMatrix;
    .locals 7
    .parameter "invocation"
    .parameter "args"

    .prologue
    const/4 v6, 0x2

    const/high16 v5, 0x3f80

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 125
    new-instance v0, Lorg/appcelerator/titanium/view/Ti2DMatrix;

    invoke-virtual {p1}, Lorg/appcelerator/kroll/KrollInvocation;->getTiContext()Lorg/appcelerator/titanium/TiContext;

    move-result-object v1

    invoke-direct {v0, v1, p0, v3}, Lorg/appcelerator/titanium/view/Ti2DMatrix;-><init>(Lorg/appcelerator/titanium/TiContext;Lorg/appcelerator/titanium/view/Ti2DMatrix;I)V

    .line 127
    .local v0, newMatrix:Lorg/appcelerator/titanium/view/Ti2DMatrix;
    iget-object v1, v0, Lorg/appcelerator/titanium/view/Ti2DMatrix;->op:Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;

    iget-object v2, v0, Lorg/appcelerator/titanium/view/Ti2DMatrix;->op:Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;

    iput v5, v2, Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;->scaleFromY:F

    iput v5, v1, Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;->scaleFromX:F

    .line 128
    iget-object v1, v0, Lorg/appcelerator/titanium/view/Ti2DMatrix;->op:Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;

    iget-object v2, v0, Lorg/appcelerator/titanium/view/Ti2DMatrix;->op:Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;

    iput v5, v2, Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;->scaleToY:F

    iput v5, v1, Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;->scaleToX:F

    .line 130
    array-length v1, p2

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 132
    iget-object v1, v0, Lorg/appcelerator/titanium/view/Ti2DMatrix;->op:Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;

    aget-object v2, p2, v3

    invoke-static {v2}, Lorg/appcelerator/titanium/util/TiConvert;->toFloat(Ljava/lang/Object;)F

    move-result v2

    iput v2, v1, Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;->scaleFromX:F

    .line 133
    iget-object v1, v0, Lorg/appcelerator/titanium/view/Ti2DMatrix;->op:Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;

    aget-object v2, p2, v4

    invoke-static {v2}, Lorg/appcelerator/titanium/util/TiConvert;->toFloat(Ljava/lang/Object;)F

    move-result v2

    iput v2, v1, Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;->scaleFromY:F

    .line 134
    iget-object v1, v0, Lorg/appcelerator/titanium/view/Ti2DMatrix;->op:Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;

    aget-object v2, p2, v6

    invoke-static {v2}, Lorg/appcelerator/titanium/util/TiConvert;->toFloat(Ljava/lang/Object;)F

    move-result v2

    iput v2, v1, Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;->scaleToX:F

    .line 135
    iget-object v1, v0, Lorg/appcelerator/titanium/view/Ti2DMatrix;->op:Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;

    const/4 v2, 0x3

    aget-object v2, p2, v2

    invoke-static {v2}, Lorg/appcelerator/titanium/util/TiConvert;->toFloat(Ljava/lang/Object;)F

    move-result v2

    iput v2, v1, Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;->scaleToY:F

    .line 137
    :cond_0
    array-length v1, p2

    if-ne v1, v6, :cond_2

    .line 139
    iget-object v1, v0, Lorg/appcelerator/titanium/view/Ti2DMatrix;->op:Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;

    aget-object v2, p2, v3

    invoke-static {v2}, Lorg/appcelerator/titanium/util/TiConvert;->toFloat(Ljava/lang/Object;)F

    move-result v2

    iput v2, v1, Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;->scaleToX:F

    .line 140
    iget-object v1, v0, Lorg/appcelerator/titanium/view/Ti2DMatrix;->op:Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;

    aget-object v2, p2, v4

    invoke-static {v2}, Lorg/appcelerator/titanium/util/TiConvert;->toFloat(Ljava/lang/Object;)F

    move-result v2

    iput v2, v1, Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;->scaleToY:F

    .line 145
    :cond_1
    :goto_0
    invoke-virtual {v0}, Lorg/appcelerator/titanium/view/Ti2DMatrix;->getProperties()Lorg/appcelerator/kroll/KrollDict;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/appcelerator/titanium/view/Ti2DMatrix;->handleAnchorPoint(Lorg/appcelerator/kroll/KrollDict;)V

    .line 146
    return-object v0

    .line 141
    :cond_2
    array-length v1, p2

    if-ne v1, v4, :cond_1

    .line 143
    iget-object v1, v0, Lorg/appcelerator/titanium/view/Ti2DMatrix;->op:Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;

    iget-object v2, v0, Lorg/appcelerator/titanium/view/Ti2DMatrix;->op:Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;

    aget-object v3, p2, v3

    invoke-static {v3}, Lorg/appcelerator/titanium/util/TiConvert;->toFloat(Ljava/lang/Object;)F

    move-result v3

    iput v3, v2, Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;->scaleToY:F

    iput v3, v1, Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;->scaleToX:F

    goto :goto_0
.end method

.method public translate(Lorg/appcelerator/kroll/KrollInvocation;DD)Lorg/appcelerator/titanium/view/Ti2DMatrix;
    .locals 3
    .parameter "invocation"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 115
    new-instance v0, Lorg/appcelerator/titanium/view/Ti2DMatrix;

    invoke-virtual {p1}, Lorg/appcelerator/kroll/KrollInvocation;->getTiContext()Lorg/appcelerator/titanium/TiContext;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, p0, v2}, Lorg/appcelerator/titanium/view/Ti2DMatrix;-><init>(Lorg/appcelerator/titanium/TiContext;Lorg/appcelerator/titanium/view/Ti2DMatrix;I)V

    .line 117
    .local v0, newMatrix:Lorg/appcelerator/titanium/view/Ti2DMatrix;
    iget-object v1, v0, Lorg/appcelerator/titanium/view/Ti2DMatrix;->op:Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;

    double-to-float v2, p2

    iput v2, v1, Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;->translateX:F

    .line 118
    iget-object v1, v0, Lorg/appcelerator/titanium/view/Ti2DMatrix;->op:Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;

    double-to-float v2, p4

    iput v2, v1, Lorg/appcelerator/titanium/view/Ti2DMatrix$Operation;->translateY:F

    .line 119
    return-object v0
.end method
