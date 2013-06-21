.class public final Lcom/thinkyeah/common/thinklist/a;
.super Lcom/thinkyeah/common/thinklist/b;


# instance fields
.field private c:I


# direct methods
.method public constructor <init>(Ljava/util/List;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/thinkyeah/common/thinklist/b;-><init>(Ljava/util/List;)V

    iput p2, p0, Lcom/thinkyeah/common/thinklist/a;->c:I

    return-void
.end method


# virtual methods
.method public final a(ILandroid/view/View;Landroid/view/ViewGroup;)Lcom/thinkyeah/common/thinklist/c;
    .locals 2

    invoke-super {p0, p1, p2, p3}, Lcom/thinkyeah/common/thinklist/b;->a(ILandroid/view/View;Landroid/view/ViewGroup;)Lcom/thinkyeah/common/thinklist/c;

    move-result-object v0

    check-cast v0, Lcom/thinkyeah/common/thinklist/g;

    iget v1, p0, Lcom/thinkyeah/common/thinklist/a;->c:I

    if-ne p1, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Lcom/thinkyeah/common/thinklist/g;->setChecked(Z)V

    return-object v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final a(I)V
    .locals 0

    iput p1, p0, Lcom/thinkyeah/common/thinklist/a;->c:I

    invoke-virtual {p0}, Lcom/thinkyeah/common/thinklist/a;->b()V

    return-void
.end method
