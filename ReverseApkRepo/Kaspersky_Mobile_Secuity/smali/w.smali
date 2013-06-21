.class final Lw;
.super Ljava/lang/Object;


# instance fields
.field final a:Ljava/lang/String;

.field final b:Ljava/lang/String;

.field final c:Ljava/lang/String;

.field final d:Ljava/lang/String;

.field final e:I

.field final f:I

.field final g:I

.field private h:J

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:Z

.field private q:Z

.field private r:Lt;

.field private s:LP;

.field private t:LE;


# direct methods
.method constructor <init>(JLjava/lang/String;IIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lw;->h:J

    iput-object p3, p0, Lw;->a:Ljava/lang/String;

    iput p4, p0, Lw;->i:I

    iput p5, p0, Lw;->k:I

    iput p6, p0, Lw;->l:I

    iput p7, p0, Lw;->m:I

    iput p8, p0, Lw;->n:I

    iput-object p9, p0, Lw;->b:Ljava/lang/String;

    iput-object p10, p0, Lw;->c:Ljava/lang/String;

    iput-object p11, p0, Lw;->d:Ljava/lang/String;

    iput p12, p0, Lw;->e:I

    iput p14, p0, Lw;->g:I

    iput p13, p0, Lw;->f:I

    const/4 v0, -0x1

    iput v0, p0, Lw;->o:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lw;->q:Z

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V
    .locals 15

    const-wide/16 v1, -0x1

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v8, -0x1

    move-object v0, p0

    move-object/from16 v3, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    move/from16 v12, p5

    move/from16 v13, p6

    move/from16 v14, p7

    invoke-direct/range {v0 .. v14}, Lw;-><init>(JLjava/lang/String;IIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V

    return-void
.end method

.method constructor <init>(Lw;Ljava/lang/String;)V
    .locals 16

    move-object/from16 v0, p1

    iget-wide v2, v0, Lw;->h:J

    move-object/from16 v0, p1

    iget v5, v0, Lw;->i:I

    move-object/from16 v0, p1

    iget v6, v0, Lw;->k:I

    move-object/from16 v0, p1

    iget v7, v0, Lw;->l:I

    move-object/from16 v0, p1

    iget v8, v0, Lw;->m:I

    move-object/from16 v0, p1

    iget v9, v0, Lw;->n:I

    move-object/from16 v0, p1

    iget-object v10, v0, Lw;->b:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v11, v0, Lw;->c:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v12, v0, Lw;->d:Ljava/lang/String;

    move-object/from16 v0, p1

    iget v13, v0, Lw;->e:I

    move-object/from16 v0, p1

    iget v14, v0, Lw;->f:I

    move-object/from16 v0, p1

    iget v15, v0, Lw;->g:I

    move-object/from16 v1, p0

    move-object/from16 v4, p2

    invoke-direct/range {v1 .. v15}, Lw;-><init>(JLjava/lang/String;IIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V

    move-object/from16 v0, p1

    iget v1, v0, Lw;->j:I

    move-object/from16 v0, p0

    iput v1, v0, Lw;->j:I

    move-object/from16 v0, p1

    iget v1, v0, Lw;->o:I

    move-object/from16 v0, p0

    iput v1, v0, Lw;->o:I

    move-object/from16 v0, p1

    iget-boolean v1, v0, Lw;->p:Z

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lw;->p:Z

    move-object/from16 v0, p1

    iget-boolean v1, v0, Lw;->q:Z

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lw;->q:Z

    move-object/from16 v0, p1

    iget-object v1, v0, Lw;->r:Lt;

    move-object/from16 v0, p0

    iput-object v1, v0, Lw;->r:Lt;

    move-object/from16 v0, p1

    iget-object v1, v0, Lw;->s:LP;

    move-object/from16 v0, p0

    iput-object v1, v0, Lw;->s:LP;

    move-object/from16 v0, p1

    iget-object v1, v0, Lw;->t:LE;

    move-object/from16 v0, p0

    iput-object v1, v0, Lw;->t:LE;

    return-void
.end method


# virtual methods
.method final a()I
    .locals 1

    iget v0, p0, Lw;->i:I

    return v0
.end method

.method final a(I)V
    .locals 0

    iput p1, p0, Lw;->i:I

    return-void
.end method

.method public final a(LE;)V
    .locals 3

    iget-object v0, p0, Lw;->b:Ljava/lang/String;

    const-string v1, "__##GOOGLEITEM##__"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempted to add an item to an event of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lw;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lw;->t:LE;

    return-void
.end method

.method public final a(LP;)V
    .locals 3

    iget-object v0, p0, Lw;->b:Ljava/lang/String;

    const-string v1, "__##GOOGLETRANSACTION##__"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempted to add a transction to an event of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lw;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lw;->s:LP;

    return-void
.end method

.method public final a(Lt;)V
    .locals 0

    iput-object p1, p0, Lw;->r:Lt;

    return-void
.end method

.method final a(Z)V
    .locals 0

    iput-boolean p1, p0, Lw;->p:Z

    return-void
.end method

.method final b()I
    .locals 1

    iget v0, p0, Lw;->j:I

    return v0
.end method

.method final b(I)V
    .locals 0

    iput p1, p0, Lw;->j:I

    return-void
.end method

.method final b(Z)V
    .locals 0

    iput-boolean p1, p0, Lw;->q:Z

    return-void
.end method

.method final c()I
    .locals 1

    iget v0, p0, Lw;->k:I

    return v0
.end method

.method final c(I)V
    .locals 0

    iput p1, p0, Lw;->k:I

    return-void
.end method

.method final d()I
    .locals 1

    iget v0, p0, Lw;->l:I

    return v0
.end method

.method final d(I)V
    .locals 0

    iput p1, p0, Lw;->l:I

    return-void
.end method

.method final e()I
    .locals 1

    iget v0, p0, Lw;->m:I

    return v0
.end method

.method final e(I)V
    .locals 0

    iput p1, p0, Lw;->m:I

    return-void
.end method

.method final f()I
    .locals 1

    iget v0, p0, Lw;->n:I

    return v0
.end method

.method final f(I)V
    .locals 0

    iput p1, p0, Lw;->n:I

    return-void
.end method

.method final g()I
    .locals 1

    iget v0, p0, Lw;->o:I

    return v0
.end method

.method final g(I)V
    .locals 0

    iput p1, p0, Lw;->o:I

    return-void
.end method

.method final h()Z
    .locals 1

    iget-boolean v0, p0, Lw;->p:Z

    return v0
.end method

.method final i()Z
    .locals 1

    iget-boolean v0, p0, Lw;->q:Z

    return v0
.end method

.method public final j()Lt;
    .locals 1

    iget-object v0, p0, Lw;->r:Lt;

    return-object v0
.end method

.method public final k()LP;
    .locals 1

    iget-object v0, p0, Lw;->s:LP;

    return-object v0
.end method

.method public final l()LE;
    .locals 1

    iget-object v0, p0, Lw;->t:LE;

    return-object v0
.end method

.method public final m()Z
    .locals 2

    iget v0, p0, Lw;->k:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lw;->h:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "random:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lw;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "timestampCurrent:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lw;->m:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "timestampPrevious:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lw;->l:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "timestampFirst:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lw;->k:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "visits:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lw;->n:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "value:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lw;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "category:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lw;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "action:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lw;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "label:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lw;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "width:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lw;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "height:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lw;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
