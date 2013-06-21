.class public Lcom/thinkyeah/common/thinklist/ThinkList;
.super Landroid/widget/LinearLayout;


# instance fields
.field private a:Lcom/thinkyeah/common/thinklist/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/thinkyeah/common/thinklist/ThinkList;->setOrientation(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/thinkyeah/common/thinklist/ThinkList;->setOrientation(I)V

    return-void
.end method

.method private b()V
    .locals 4

    invoke-virtual {p0}, Lcom/thinkyeah/common/thinklist/ThinkList;->removeAllViewsInLayout()V

    iget-object v0, p0, Lcom/thinkyeah/common/thinklist/ThinkList;->a:Lcom/thinkyeah/common/thinklist/b;

    invoke-virtual {v0}, Lcom/thinkyeah/common/thinklist/b;->a()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lcom/thinkyeah/common/thinklist/ThinkList;->a:Lcom/thinkyeah/common/thinklist/b;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3, p0}, Lcom/thinkyeah/common/thinklist/b;->a(ILandroid/view/View;Landroid/view/ViewGroup;)Lcom/thinkyeah/common/thinklist/c;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/thinkyeah/common/thinklist/c;->setPosition(I)V

    invoke-virtual {p0, v2, v0}, Lcom/thinkyeah/common/thinklist/ThinkList;->addView(Landroid/view/View;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method final a()V
    .locals 0

    invoke-direct {p0}, Lcom/thinkyeah/common/thinklist/ThinkList;->b()V

    return-void
.end method

.method public getAdapter()Lcom/thinkyeah/common/thinklist/b;
    .locals 1

    iget-object v0, p0, Lcom/thinkyeah/common/thinklist/ThinkList;->a:Lcom/thinkyeah/common/thinklist/b;

    return-object v0
.end method

.method protected onMeasure(II)V
    .locals 1

    const/4 v0, 0x0

    invoke-super {p0, p1, v0}, Landroid/widget/LinearLayout;->onMeasure(II)V

    return-void
.end method

.method public setAdapter(Lcom/thinkyeah/common/thinklist/b;)V
    .locals 1

    iput-object p1, p0, Lcom/thinkyeah/common/thinklist/ThinkList;->a:Lcom/thinkyeah/common/thinklist/b;

    iget-object v0, p0, Lcom/thinkyeah/common/thinklist/ThinkList;->a:Lcom/thinkyeah/common/thinklist/b;

    iput-object p0, v0, Lcom/thinkyeah/common/thinklist/b;->a:Lcom/thinkyeah/common/thinklist/ThinkList;

    invoke-direct {p0}, Lcom/thinkyeah/common/thinklist/ThinkList;->b()V

    return-void
.end method
