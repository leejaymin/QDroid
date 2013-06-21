.class Lcom/b2bstudio/digger/bag;
.super Ljava/lang/Object;
.source "bag.java"


# instance fields
.field dir:I

.field exist:Z

.field fallh:I

.field gt:I

.field h:I

.field unfallen:Z

.field v:I

.field wobbling:Z

.field wt:I

.field x:I

.field xr:I

.field y:I

.field yr:I


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public copyFrom(Lcom/b2bstudio/digger/bag;)V
    .locals 1
    .parameter "t"

    .prologue
    .line 8
    iget v0, p1, Lcom/b2bstudio/digger/bag;->x:I

    iput v0, p0, Lcom/b2bstudio/digger/bag;->x:I

    .line 9
    iget v0, p1, Lcom/b2bstudio/digger/bag;->y:I

    iput v0, p0, Lcom/b2bstudio/digger/bag;->y:I

    .line 10
    iget v0, p1, Lcom/b2bstudio/digger/bag;->h:I

    iput v0, p0, Lcom/b2bstudio/digger/bag;->h:I

    .line 11
    iget v0, p1, Lcom/b2bstudio/digger/bag;->v:I

    iput v0, p0, Lcom/b2bstudio/digger/bag;->v:I

    .line 12
    iget v0, p1, Lcom/b2bstudio/digger/bag;->xr:I

    iput v0, p0, Lcom/b2bstudio/digger/bag;->xr:I

    .line 13
    iget v0, p1, Lcom/b2bstudio/digger/bag;->yr:I

    iput v0, p0, Lcom/b2bstudio/digger/bag;->yr:I

    .line 14
    iget v0, p1, Lcom/b2bstudio/digger/bag;->dir:I

    iput v0, p0, Lcom/b2bstudio/digger/bag;->dir:I

    .line 15
    iget v0, p1, Lcom/b2bstudio/digger/bag;->wt:I

    iput v0, p0, Lcom/b2bstudio/digger/bag;->wt:I

    .line 16
    iget v0, p1, Lcom/b2bstudio/digger/bag;->gt:I

    iput v0, p0, Lcom/b2bstudio/digger/bag;->gt:I

    .line 17
    iget v0, p1, Lcom/b2bstudio/digger/bag;->fallh:I

    iput v0, p0, Lcom/b2bstudio/digger/bag;->fallh:I

    .line 18
    iget-boolean v0, p1, Lcom/b2bstudio/digger/bag;->wobbling:Z

    iput-boolean v0, p0, Lcom/b2bstudio/digger/bag;->wobbling:Z

    .line 19
    iget-boolean v0, p1, Lcom/b2bstudio/digger/bag;->unfallen:Z

    iput-boolean v0, p0, Lcom/b2bstudio/digger/bag;->unfallen:Z

    .line 20
    iget-boolean v0, p1, Lcom/b2bstudio/digger/bag;->exist:Z

    iput-boolean v0, p0, Lcom/b2bstudio/digger/bag;->exist:Z

    .line 21
    return-void
.end method
