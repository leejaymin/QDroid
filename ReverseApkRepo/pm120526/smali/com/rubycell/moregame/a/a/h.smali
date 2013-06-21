.class public final Lcom/rubycell/moregame/a/a/h;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/util/Stack;


# direct methods
.method protected constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/rubycell/moregame/a/a/h;->a:Ljava/util/Stack;

    return-void
.end method

.method static synthetic a(Lcom/rubycell/moregame/a/a/h;)Ljava/util/Stack;
    .locals 1

    iget-object v0, p0, Lcom/rubycell/moregame/a/a/h;->a:Ljava/util/Stack;

    return-object v0
.end method

.method static synthetic b(Lcom/rubycell/moregame/a/a/h;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/rubycell/moregame/a/a/h;->a:Ljava/util/Stack;

    return-void
.end method


# virtual methods
.method public final a(Landroid/widget/ImageView;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/rubycell/moregame/a/a/h;->a:Ljava/util/Stack;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/rubycell/moregame/a/a/h;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/rubycell/moregame/a/a/h;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v1

    move v2, v3

    :goto_1
    if-lt v2, v1, :cond_2

    move v0, v3

    move v1, v3

    :goto_2
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/rubycell/moregame/a/a/h;->a:Ljava/util/Stack;

    invoke-virtual {v0, v1}, Ljava/util/Stack;->remove(I)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/rubycell/moregame/a/a/h;->a:Ljava/util/Stack;

    invoke-virtual {v0, v2}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rubycell/moregame/a/a/g;

    invoke-static {v0}, Lcom/rubycell/moregame/a/a/g;->b(Lcom/rubycell/moregame/a/a/g;)Landroid/widget/ImageView;

    move-result-object v0

    if-ne v0, p1, :cond_3

    const/4 v0, 0x1

    move v1, v2

    goto :goto_2

    :cond_3
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1
.end method
