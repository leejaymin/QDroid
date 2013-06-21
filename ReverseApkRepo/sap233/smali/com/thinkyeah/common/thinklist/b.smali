.class public Lcom/thinkyeah/common/thinklist/b;
.super Ljava/lang/Object;


# instance fields
.field a:Lcom/thinkyeah/common/thinklist/ThinkList;

.field protected b:Ljava/util/List;

.field private c:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/thinkyeah/common/thinklist/b;->a:Lcom/thinkyeah/common/thinklist/ThinkList;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/thinkyeah/common/thinklist/b;->c:Z

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/thinkyeah/common/thinklist/b;->b:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/thinkyeah/common/thinklist/b;->a:Lcom/thinkyeah/common/thinklist/ThinkList;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/thinkyeah/common/thinklist/b;->c:Z

    iput-object p1, p0, Lcom/thinkyeah/common/thinklist/b;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget-object v0, p0, Lcom/thinkyeah/common/thinklist/b;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public a(ILandroid/view/View;Landroid/view/ViewGroup;)Lcom/thinkyeah/common/thinklist/c;
    .locals 2

    iget-object v0, p0, Lcom/thinkyeah/common/thinklist/b;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/thinkyeah/common/thinklist/c;

    invoke-virtual {v0}, Lcom/thinkyeah/common/thinklist/c;->a()V

    iget-object v1, p0, Lcom/thinkyeah/common/thinklist/b;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge p1, v1, :cond_0

    iget-boolean v1, p0, Lcom/thinkyeah/common/thinklist/b;->c:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/thinkyeah/common/thinklist/c;->setDividerVisible(Z)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/thinkyeah/common/thinklist/c;->setDividerVisible(Z)V

    goto :goto_0
.end method

.method public final b(I)Lcom/thinkyeah/common/thinklist/c;
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/thinkyeah/common/thinklist/b;->b:Ljava/util/List;

    if-nez v0, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/thinkyeah/common/thinklist/b;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    move-object v0, v1

    goto :goto_0

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/thinkyeah/common/thinklist/c;

    invoke-virtual {v0}, Lcom/thinkyeah/common/thinklist/c;->getId()I

    move-result v3

    if-ne v3, p1, :cond_1

    goto :goto_0
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Lcom/thinkyeah/common/thinklist/b;->a:Lcom/thinkyeah/common/thinklist/ThinkList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/thinkyeah/common/thinklist/b;->a:Lcom/thinkyeah/common/thinklist/ThinkList;

    invoke-virtual {v0}, Lcom/thinkyeah/common/thinklist/ThinkList;->a()V

    :cond_0
    return-void
.end method
