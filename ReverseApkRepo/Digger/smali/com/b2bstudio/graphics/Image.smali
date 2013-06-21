.class public Lcom/b2bstudio/graphics/Image;
.super Ljava/lang/Object;
.source "Image.java"


# instance fields
.field h:I

.field image:Landroid/graphics/drawable/Drawable;

.field w:I


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "i"

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/b2bstudio/graphics/Image;->image:Landroid/graphics/drawable/Drawable;

    .line 12
    iget-object v0, p0, Lcom/b2bstudio/graphics/Image;->image:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Lcom/b2bstudio/graphics/Image;->w:I

    .line 13
    iget-object v0, p0, Lcom/b2bstudio/graphics/Image;->image:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Lcom/b2bstudio/graphics/Image;->h:I

    .line 14
    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;II)V
    .locals 3
    .parameter "canvas"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 17
    iget-object v0, p0, Lcom/b2bstudio/graphics/Image;->image:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/b2bstudio/graphics/Image;->w:I

    add-int/2addr v1, p2

    iget v2, p0, Lcom/b2bstudio/graphics/Image;->h:I

    add-int/2addr v2, p3

    invoke-virtual {v0, p2, p3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 18
    iget-object v0, p0, Lcom/b2bstudio/graphics/Image;->image:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 19
    return-void
.end method
