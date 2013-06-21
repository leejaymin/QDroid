.class public Lcom/b2bstudio/graphics/TiledLayer;
.super Ljava/lang/Object;
.source "TiledLayer.java"


# instance fields
.field cell:[[I

.field column:I

.field height:I

.field row:I

.field tile:[Landroid/graphics/drawable/Drawable;

.field visible:Z

.field width:I

.field x:I

.field y:I


# direct methods
.method public constructor <init>(II[Landroid/graphics/drawable/Drawable;II)V
    .locals 2
    .parameter "r"
    .parameter "c"
    .parameter "t"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput p1, p0, Lcom/b2bstudio/graphics/TiledLayer;->row:I

    iput p2, p0, Lcom/b2bstudio/graphics/TiledLayer;->column:I

    iput p4, p0, Lcom/b2bstudio/graphics/TiledLayer;->width:I

    iput p5, p0, Lcom/b2bstudio/graphics/TiledLayer;->height:I

    .line 15
    iput-object p3, p0, Lcom/b2bstudio/graphics/TiledLayer;->tile:[Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/b2bstudio/graphics/TiledLayer;->visible:Z

    .line 16
    filled-new-array {p1, p2}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iput-object v0, p0, Lcom/b2bstudio/graphics/TiledLayer;->cell:[[I

    .line 17
    return-void
.end method


# virtual methods
.method public getCell(II)I
    .locals 0
    .parameter "i"
    .parameter "j"

    .prologue
    .line 24
    return p2
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/b2bstudio/graphics/TiledLayer;->visible:Z

    return v0
.end method

.method public onDraw(Landroid/graphics/Canvas;II)V
    .locals 8
    .parameter "canvas"
    .parameter "ofx"
    .parameter "ofy"

    .prologue
    .line 40
    iget-boolean v2, p0, Lcom/b2bstudio/graphics/TiledLayer;->visible:Z

    if-eqz v2, :cond_0

    .line 41
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v2, p0, Lcom/b2bstudio/graphics/TiledLayer;->row:I

    if-lt v0, v2, :cond_1

    .line 48
    .end local v0           #i:I
    :cond_0
    return-void

    .line 42
    .restart local v0       #i:I
    :cond_1
    const/4 v1, 0x0

    .local v1, j:I
    :goto_1
    iget v2, p0, Lcom/b2bstudio/graphics/TiledLayer;->column:I

    if-lt v1, v2, :cond_2

    .line 41
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 43
    :cond_2
    iget-object v2, p0, Lcom/b2bstudio/graphics/TiledLayer;->cell:[[I

    aget-object v2, v2, v0

    aget v2, v2, v1

    if-ltz v2, :cond_3

    .line 44
    iget-object v2, p0, Lcom/b2bstudio/graphics/TiledLayer;->tile:[Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcom/b2bstudio/graphics/TiledLayer;->cell:[[I

    aget-object v3, v3, v0

    aget v3, v3, v1

    aget-object v2, v2, v3

    iget v3, p0, Lcom/b2bstudio/graphics/TiledLayer;->width:I

    mul-int/2addr v3, v0

    add-int/2addr v3, p2

    iget v4, p0, Lcom/b2bstudio/graphics/TiledLayer;->height:I

    mul-int/2addr v4, v1

    iget v5, p0, Lcom/b2bstudio/graphics/TiledLayer;->y:I

    add-int/2addr v4, v5

    add-int/2addr v4, p3

    iget v5, p0, Lcom/b2bstudio/graphics/TiledLayer;->width:I

    mul-int/2addr v5, v0

    iget v6, p0, Lcom/b2bstudio/graphics/TiledLayer;->width:I

    add-int/2addr v5, v6

    add-int/2addr v5, p2

    iget v6, p0, Lcom/b2bstudio/graphics/TiledLayer;->height:I

    mul-int/2addr v6, v1

    iget v7, p0, Lcom/b2bstudio/graphics/TiledLayer;->height:I

    add-int/2addr v6, v7

    iget v7, p0, Lcom/b2bstudio/graphics/TiledLayer;->y:I

    add-int/2addr v6, v7

    add-int/2addr v6, p3

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 45
    iget-object v2, p0, Lcom/b2bstudio/graphics/TiledLayer;->tile:[Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcom/b2bstudio/graphics/TiledLayer;->cell:[[I

    aget-object v3, v3, v0

    aget v3, v3, v1

    aget-object v2, v2, v3

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 42
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public setCell(III)V
    .locals 2
    .parameter "i"
    .parameter "j"
    .parameter "v"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/b2bstudio/graphics/TiledLayer;->cell:[[I

    aget-object v0, v0, p1

    const/4 v1, 0x1

    sub-int v1, p3, v1

    aput v1, v0, p2

    .line 21
    return-void
.end method

.method public setPosition(II)V
    .locals 0
    .parameter "tx"
    .parameter "ty"

    .prologue
    .line 36
    iput p1, p0, Lcom/b2bstudio/graphics/TiledLayer;->x:I

    iput p2, p0, Lcom/b2bstudio/graphics/TiledLayer;->y:I

    .line 37
    return-void
.end method

.method public setVisible(Z)V
    .locals 0
    .parameter "v"

    .prologue
    .line 28
    iput-boolean p1, p0, Lcom/b2bstudio/graphics/TiledLayer;->visible:Z

    .line 29
    return-void
.end method
