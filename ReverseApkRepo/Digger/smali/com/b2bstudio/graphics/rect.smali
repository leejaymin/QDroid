.class public Lcom/b2bstudio/graphics/rect;
.super Ljava/lang/Object;
.source "rect.java"


# instance fields
.field public bottom:I

.field public left:I

.field public right:I

.field public top:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 0
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput p1, p0, Lcom/b2bstudio/graphics/rect;->left:I

    iput p2, p0, Lcom/b2bstudio/graphics/rect;->top:I

    .line 8
    iput p4, p0, Lcom/b2bstudio/graphics/rect;->bottom:I

    iput p3, p0, Lcom/b2bstudio/graphics/rect;->right:I

    .line 9
    return-void
.end method
