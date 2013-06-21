.class public final Lcom/mosaicture/d/a;
.super Ljava/lang/Object;


# instance fields
.field public A:I

.field public B:I

.field public C:I

.field public D:I

.field public E:J

.field private final F:I

.field public a:J

.field public b:Ljava/lang/String;

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field public j:I

.field public k:I

.field public l:I

.field public m:I

.field public n:I

.field public o:I

.field public p:I

.field public q:I

.field public r:I

.field public s:I

.field public t:I

.field public u:I

.field public v:I

.field public w:I

.field public x:I

.field public y:I

.field public z:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x9

    iput v0, p0, Lcom/mosaicture/d/a;->F:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x9

    iput v0, p0, Lcom/mosaicture/d/a;->F:I

    iput-object p1, p0, Lcom/mosaicture/d/a;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/Bitmap;)V
    .locals 12

    const/4 v11, 0x4

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_0

    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "Bitmap cannot be null."

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    mul-int v0, v6, v7

    new-array v1, v0, [I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    move-object v0, p1

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    invoke-static {v1, v6, v7}, Lcom/mosaicture/g/k;->a([III)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v3, 0x9

    if-ne v0, v3, :cond_1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mosaicture/d/b;

    iget v0, v0, Lcom/mosaicture/d/b;->a:I

    iput v0, p0, Lcom/mosaicture/d/a;->d:I

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mosaicture/d/b;

    iget v0, v0, Lcom/mosaicture/d/b;->a:I

    iput v0, p0, Lcom/mosaicture/d/a;->e:I

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mosaicture/d/b;

    iget v0, v0, Lcom/mosaicture/d/b;->a:I

    iput v0, p0, Lcom/mosaicture/d/a;->f:I

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mosaicture/d/b;

    iget v0, v0, Lcom/mosaicture/d/b;->a:I

    iput v0, p0, Lcom/mosaicture/d/a;->g:I

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mosaicture/d/b;

    iget v0, v0, Lcom/mosaicture/d/b;->a:I

    iput v0, p0, Lcom/mosaicture/d/a;->h:I

    const/4 v0, 0x5

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mosaicture/d/b;

    iget v0, v0, Lcom/mosaicture/d/b;->a:I

    iput v0, p0, Lcom/mosaicture/d/a;->i:I

    const/4 v0, 0x6

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mosaicture/d/b;

    iget v0, v0, Lcom/mosaicture/d/b;->a:I

    iput v0, p0, Lcom/mosaicture/d/a;->j:I

    const/4 v0, 0x7

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mosaicture/d/b;

    iget v0, v0, Lcom/mosaicture/d/b;->a:I

    iput v0, p0, Lcom/mosaicture/d/a;->k:I

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mosaicture/d/b;

    iget v0, v0, Lcom/mosaicture/d/b;->a:I

    iput v0, p0, Lcom/mosaicture/d/a;->l:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mosaicture/d/b;

    iget v0, v0, Lcom/mosaicture/d/b;->b:I

    iput v0, p0, Lcom/mosaicture/d/a;->m:I

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mosaicture/d/b;

    iget v0, v0, Lcom/mosaicture/d/b;->b:I

    iput v0, p0, Lcom/mosaicture/d/a;->n:I

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mosaicture/d/b;

    iget v0, v0, Lcom/mosaicture/d/b;->b:I

    iput v0, p0, Lcom/mosaicture/d/a;->o:I

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mosaicture/d/b;

    iget v0, v0, Lcom/mosaicture/d/b;->b:I

    iput v0, p0, Lcom/mosaicture/d/a;->p:I

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mosaicture/d/b;

    iget v0, v0, Lcom/mosaicture/d/b;->b:I

    iput v0, p0, Lcom/mosaicture/d/a;->q:I

    const/4 v0, 0x5

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mosaicture/d/b;

    iget v0, v0, Lcom/mosaicture/d/b;->b:I

    iput v0, p0, Lcom/mosaicture/d/a;->r:I

    const/4 v0, 0x6

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mosaicture/d/b;

    iget v0, v0, Lcom/mosaicture/d/b;->b:I

    iput v0, p0, Lcom/mosaicture/d/a;->s:I

    const/4 v0, 0x7

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mosaicture/d/b;

    iget v0, v0, Lcom/mosaicture/d/b;->b:I

    iput v0, p0, Lcom/mosaicture/d/a;->t:I

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mosaicture/d/b;

    iget v0, v0, Lcom/mosaicture/d/b;->b:I

    iput v0, p0, Lcom/mosaicture/d/a;->u:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mosaicture/d/b;

    iget v0, v0, Lcom/mosaicture/d/b;->c:I

    iput v0, p0, Lcom/mosaicture/d/a;->v:I

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mosaicture/d/b;

    iget v0, v0, Lcom/mosaicture/d/b;->c:I

    iput v0, p0, Lcom/mosaicture/d/a;->w:I

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mosaicture/d/b;

    iget v0, v0, Lcom/mosaicture/d/b;->c:I

    iput v0, p0, Lcom/mosaicture/d/a;->x:I

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mosaicture/d/b;

    iget v0, v0, Lcom/mosaicture/d/b;->c:I

    iput v0, p0, Lcom/mosaicture/d/a;->y:I

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mosaicture/d/b;

    iget v0, v0, Lcom/mosaicture/d/b;->c:I

    iput v0, p0, Lcom/mosaicture/d/a;->z:I

    const/4 v0, 0x5

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mosaicture/d/b;

    iget v0, v0, Lcom/mosaicture/d/b;->c:I

    iput v0, p0, Lcom/mosaicture/d/a;->A:I

    const/4 v0, 0x6

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mosaicture/d/b;

    iget v0, v0, Lcom/mosaicture/d/b;->c:I

    iput v0, p0, Lcom/mosaicture/d/a;->B:I

    const/4 v0, 0x7

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mosaicture/d/b;

    iget v0, v0, Lcom/mosaicture/d/b;->c:I

    iput v0, p0, Lcom/mosaicture/d/a;->C:I

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mosaicture/d/b;

    iget v0, v0, Lcom/mosaicture/d/b;->c:I

    iput v0, p0, Lcom/mosaicture/d/a;->D:I

    :cond_1
    return-void
.end method
