.class public Lcom/b2bstudio/graphics/Sprite;
.super Ljava/lang/Object;
.source "Sprite.java"


# instance fields
.field frame:I

.field height:I

.field tile:[Landroid/graphics/drawable/Drawable;

.field visible:Z

.field width:I

.field x:I

.field y:I


# direct methods
.method public constructor <init>([Landroid/graphics/drawable/Drawable;II)V
    .locals 1
    .parameter "t"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/4 v0, 0x0

    iput v0, p0, Lcom/b2bstudio/graphics/Sprite;->frame:I

    iput p2, p0, Lcom/b2bstudio/graphics/Sprite;->width:I

    iput p3, p0, Lcom/b2bstudio/graphics/Sprite;->height:I

    .line 13
    iput-object p1, p0, Lcom/b2bstudio/graphics/Sprite;->tile:[Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/b2bstudio/graphics/Sprite;->visible:Z

    .line 14
    return-void
.end method


# virtual methods
.method public getFrame()I
    .locals 1

    .prologue
    .line 17
    iget v0, p0, Lcom/b2bstudio/graphics/Sprite;->frame:I

    return v0
.end method

.method public getX()I
    .locals 1

    .prologue
    .line 21
    iget v0, p0, Lcom/b2bstudio/graphics/Sprite;->x:I

    return v0
.end method

.method public getY()I
    .locals 1

    .prologue
    .line 25
    iget v0, p0, Lcom/b2bstudio/graphics/Sprite;->y:I

    return v0
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/b2bstudio/graphics/Sprite;->visible:Z

    return v0
.end method

.method public onDraw(Landroid/graphics/Canvas;II)V
    .locals 6
    .parameter "canvas"
    .parameter "ofx"
    .parameter "ofy"

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/b2bstudio/graphics/Sprite;->visible:Z

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/b2bstudio/graphics/Sprite;->tile:[Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/b2bstudio/graphics/Sprite;->frame:I

    aget-object v0, v0, v1

    iget v1, p0, Lcom/b2bstudio/graphics/Sprite;->x:I

    add-int/2addr v1, p2

    iget v2, p0, Lcom/b2bstudio/graphics/Sprite;->y:I

    add-int/2addr v2, p3

    iget v3, p0, Lcom/b2bstudio/graphics/Sprite;->x:I

    iget v4, p0, Lcom/b2bstudio/graphics/Sprite;->width:I

    add-int/2addr v3, v4

    add-int/2addr v3, p2

    iget v4, p0, Lcom/b2bstudio/graphics/Sprite;->y:I

    iget v5, p0, Lcom/b2bstudio/graphics/Sprite;->height:I

    add-int/2addr v4, v5

    add-int/2addr v4, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 47
    iget-object v0, p0, Lcom/b2bstudio/graphics/Sprite;->tile:[Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/b2bstudio/graphics/Sprite;->frame:I

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 49
    :cond_0
    return-void
.end method

.method public setFrame(I)V
    .locals 0
    .parameter "f"

    .prologue
    .line 37
    iput p1, p0, Lcom/b2bstudio/graphics/Sprite;->frame:I

    .line 38
    return-void
.end method

.method public setPosition(II)V
    .locals 0
    .parameter "tx"
    .parameter "ty"

    .prologue
    .line 33
    iput p1, p0, Lcom/b2bstudio/graphics/Sprite;->x:I

    iput p2, p0, Lcom/b2bstudio/graphics/Sprite;->y:I

    .line 34
    return-void
.end method

.method public setVisible(Z)V
    .locals 0
    .parameter "v"

    .prologue
    .line 41
    iput-boolean p1, p0, Lcom/b2bstudio/graphics/Sprite;->visible:Z

    .line 42
    return-void
.end method
