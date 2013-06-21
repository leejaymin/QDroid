.class public final Lcom/inisoft/mediaplayer/gl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/inisoft/mediaplayer/cl;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:J

.field private e:J

.field private f:J

.field private g:Z

.field private h:Ljava/lang/String;

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:Z

.field private n:Ljava/lang/String;

.field private o:Lcom/inisoft/mediaplayer/ck;

.field private p:Ljava/lang/String;

.field private q:Z

.field private r:Landroid/graphics/Bitmap;

.field private s:I

.field private t:J

.field private u:J

.field private v:La/d/az;


# direct methods
.method public constructor <init>(La/d/az;Lcom/inisoft/mediaplayer/ck;Landroid/content/Context;)V
    .locals 9

    const/4 v1, 0x0

    const-wide/16 v7, 0x400

    const-wide/16 v5, 0x0

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/inisoft/mediaplayer/gl;->a:Landroid/content/Context;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/inisoft/mediaplayer/gl;->g:Z

    iput-boolean v4, p0, Lcom/inisoft/mediaplayer/gl;->m:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/inisoft/mediaplayer/gl;->n:Ljava/lang/String;

    iput-boolean v4, p0, Lcom/inisoft/mediaplayer/gl;->q:Z

    iput-object v1, p0, Lcom/inisoft/mediaplayer/gl;->r:Landroid/graphics/Bitmap;

    iput-object p1, p0, Lcom/inisoft/mediaplayer/gl;->v:La/d/az;

    iput-object p3, p0, Lcom/inisoft/mediaplayer/gl;->a:Landroid/content/Context;

    invoke-virtual {p1}, La/d/az;->f()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inisoft/mediaplayer/gl;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/inisoft/mediaplayer/gl;->o:Lcom/inisoft/mediaplayer/ck;

    :try_start_0
    iget-object v0, p0, Lcom/inisoft/mediaplayer/gl;->v:La/d/az;

    invoke-virtual {v0}, La/d/az;->g()Z

    move-result v0

    iput-boolean v0, p0, Lcom/inisoft/mediaplayer/gl;->m:Z
    :try_end_0
    .catch La/d/ay; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/inisoft/mediaplayer/gl;->v:La/d/az;

    invoke-virtual {v0}, La/d/az;->getLastModified()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/inisoft/mediaplayer/gl;->u:J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    invoke-virtual {p0}, Lcom/inisoft/mediaplayer/gl;->r()V

    invoke-virtual {p1}, La/d/az;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inisoft/mediaplayer/gl;->c:Ljava/lang/String;

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gl;->c:Ljava/lang/String;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gl;->c:Ljava/lang/String;

    iget-object v1, p0, Lcom/inisoft/mediaplayer/gl;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inisoft/mediaplayer/gl;->c:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/inisoft/mediaplayer/gl;->v:La/d/az;

    invoke-virtual {v0}, La/d/az;->getContentLength()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/inisoft/mediaplayer/gl;->t:J

    cmp-long v2, v0, v5

    if-lez v2, :cond_1

    const-wide/32 v2, 0x100000

    cmp-long v2, v0, v2

    if-gez v2, :cond_1

    div-long/2addr v0, v7

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "KB"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inisoft/mediaplayer/gl;->p:Ljava/lang/String;

    :goto_2
    iget-object v0, p0, Lcom/inisoft/mediaplayer/gl;->p:Ljava/lang/String;

    iput-object v0, p0, Lcom/inisoft/mediaplayer/gl;->n:Ljava/lang/String;

    return-void

    :catch_0
    move-exception v0

    iput-boolean v4, p0, Lcom/inisoft/mediaplayer/gl;->m:Z

    goto :goto_0

    :catch_1
    move-exception v0

    iput-wide v5, p0, Lcom/inisoft/mediaplayer/gl;->u:J

    goto :goto_1

    :cond_1
    cmp-long v2, v0, v5

    if-gtz v2, :cond_3

    iget-boolean v0, p0, Lcom/inisoft/mediaplayer/gl;->m:Z

    if-nez v0, :cond_2

    iput-boolean v4, p0, Lcom/inisoft/mediaplayer/gl;->g:Z

    :cond_2
    const-string v0, ""

    iput-object v0, p0, Lcom/inisoft/mediaplayer/gl;->p:Ljava/lang/String;

    goto :goto_2

    :cond_3
    div-long/2addr v0, v7

    div-long/2addr v0, v7

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "MB"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inisoft/mediaplayer/gl;->p:Ljava/lang/String;

    goto :goto_2
.end method


# virtual methods
.method public final a()Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final a(I)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/inisoft/mediaplayer/gl;->a:Landroid/content/Context;

    const-string v1, "DICE_SETTINGS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/inisoft/mediaplayer/gl;->b:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "@AudioTrackIndex"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final a(IZ)V
    .locals 0

    iput p1, p0, Lcom/inisoft/mediaplayer/gl;->i:I

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/inisoft/mediaplayer/gl;->n()V

    :cond_0
    return-void
.end method

.method public final a(JZ)V
    .locals 0

    iput-wide p1, p0, Lcom/inisoft/mediaplayer/gl;->e:J

    if-eqz p3, :cond_0

    invoke-virtual {p0}, Lcom/inisoft/mediaplayer/gl;->n()V

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;Z)V
    .locals 0

    iput-object p1, p0, Lcom/inisoft/mediaplayer/gl;->h:Ljava/lang/String;

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/inisoft/mediaplayer/gl;->n()V

    :cond_0
    return-void
.end method

.method public final a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/inisoft/mediaplayer/gl;->q:Z

    return-void
.end method

.method public final b(IZ)V
    .locals 0

    iput p1, p0, Lcom/inisoft/mediaplayer/gl;->j:I

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/inisoft/mediaplayer/gl;->n()V

    :cond_0
    return-void
.end method

.method public final b(JZ)V
    .locals 0

    iput-wide p1, p0, Lcom/inisoft/mediaplayer/gl;->d:J

    if-eqz p3, :cond_0

    invoke-virtual {p0}, Lcom/inisoft/mediaplayer/gl;->n()V

    :cond_0
    return-void
.end method

.method public final b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/inisoft/mediaplayer/gl;->m:Z

    return v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gl;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final c(IZ)V
    .locals 0

    iput p1, p0, Lcom/inisoft/mediaplayer/gl;->k:I

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/inisoft/mediaplayer/gl;->n()V

    :cond_0
    return-void
.end method

.method public final c(JZ)V
    .locals 0

    iput-wide p1, p0, Lcom/inisoft/mediaplayer/gl;->f:J

    if-eqz p3, :cond_0

    invoke-virtual {p0}, Lcom/inisoft/mediaplayer/gl;->n()V

    :cond_0
    return-void
.end method

.method public final d()J
    .locals 2

    iget-wide v0, p0, Lcom/inisoft/mediaplayer/gl;->f:J

    return-wide v0
.end method

.method public final d(IZ)V
    .locals 0

    iput p1, p0, Lcom/inisoft/mediaplayer/gl;->l:I

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/inisoft/mediaplayer/gl;->n()V

    :cond_0
    return-void
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gl;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final e(IZ)V
    .locals 0

    iput p1, p0, Lcom/inisoft/mediaplayer/gl;->s:I

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/inisoft/mediaplayer/gl;->n()V

    :cond_0
    return-void
.end method

.method public final f()Ljava/lang/String;
    .locals 4

    iget-boolean v0, p0, Lcom/inisoft/mediaplayer/gl;->m:Z

    if-eqz v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/inisoft/mediaplayer/gl;->r()V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gl;->p:Ljava/lang/String;

    iput-object v0, p0, Lcom/inisoft/mediaplayer/gl;->n:Ljava/lang/String;

    iget-wide v0, p0, Lcom/inisoft/mediaplayer/gl;->e:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    iget-wide v0, p0, Lcom/inisoft/mediaplayer/gl;->f:J

    const-wide/16 v2, 0x2710

    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gl;->n:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, ", "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/inisoft/mediaplayer/gl;->f:J

    invoke-static {v1, v2}, Lcom/inisoft/mediaplayer/hw;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inisoft/mediaplayer/gl;->n:Ljava/lang/String;

    :goto_1
    iget-object v0, p0, Lcom/inisoft/mediaplayer/gl;->n:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "&#47;"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/inisoft/mediaplayer/gl;->e:J

    invoke-static {v1, v2}, Lcom/inisoft/mediaplayer/hw;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inisoft/mediaplayer/gl;->n:Ljava/lang/String;

    :cond_1
    iget-boolean v0, p0, Lcom/inisoft/mediaplayer/gl;->q:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gl;->n:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, ", <font color=0xF4A460>SUB</font>"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inisoft/mediaplayer/gl;->n:Ljava/lang/String;

    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/inisoft/mediaplayer/gl;->n:Ljava/lang/String;

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/inisoft/mediaplayer/gl;->n:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, ", 00:00"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inisoft/mediaplayer/gl;->n:Ljava/lang/String;

    goto :goto_1

    :cond_4
    iget v0, p0, Lcom/inisoft/mediaplayer/gl;->k:I

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gl;->n:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, ", <font color=0x77BB3D>SUB</font>"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inisoft/mediaplayer/gl;->n:Ljava/lang/String;

    goto :goto_2
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gl;->p:Ljava/lang/String;

    return-object v0
.end method

.method public final h()Z
    .locals 1

    iget-boolean v0, p0, Lcom/inisoft/mediaplayer/gl;->g:Z

    return v0
.end method

.method public final i()J
    .locals 2

    iget-wide v0, p0, Lcom/inisoft/mediaplayer/gl;->d:J

    return-wide v0
.end method

.method public final j()J
    .locals 2

    iget-wide v0, p0, Lcom/inisoft/mediaplayer/gl;->e:J

    return-wide v0
.end method

.method public final k()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gl;->h:Ljava/lang/String;

    return-object v0
.end method

.method public final l()I
    .locals 1

    iget v0, p0, Lcom/inisoft/mediaplayer/gl;->i:I

    return v0
.end method

.method public final m()I
    .locals 1

    iget v0, p0, Lcom/inisoft/mediaplayer/gl;->l:I

    return v0
.end method

.method public final n()V
    .locals 4

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gl;->a:Landroid/content/Context;

    const-string v1, "DICE_SETTINGS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/inisoft/mediaplayer/gl;->d:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " | "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/inisoft/mediaplayer/gl;->e:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " | "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/inisoft/mediaplayer/gl;->f:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " | "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/inisoft/mediaplayer/gl;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " | "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/inisoft/mediaplayer/gl;->i:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " | "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/inisoft/mediaplayer/gl;->j:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " | "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/inisoft/mediaplayer/gl;->k:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " | "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/inisoft/mediaplayer/gl;->l:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " | "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/inisoft/mediaplayer/gl;->s:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/inisoft/mediaplayer/gl;->b:Ljava/lang/String;

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final q()V
    .locals 0

    return-void
.end method

.method public final r()V
    .locals 6

    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gl;->a:Landroid/content/Context;

    const-string v1, "DICE_SETTINGS"

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/inisoft/mediaplayer/gl;->b:Ljava/lang/String;

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-wide v4, p0, Lcom/inisoft/mediaplayer/gl;->d:J

    iput-wide v4, p0, Lcom/inisoft/mediaplayer/gl;->e:J

    iput-wide v4, p0, Lcom/inisoft/mediaplayer/gl;->f:J

    const-string v1, ""

    iput-object v1, p0, Lcom/inisoft/mediaplayer/gl;->h:Ljava/lang/String;

    iput v3, p0, Lcom/inisoft/mediaplayer/gl;->i:I

    iput v3, p0, Lcom/inisoft/mediaplayer/gl;->j:I

    iput v3, p0, Lcom/inisoft/mediaplayer/gl;->k:I

    iput v3, p0, Lcom/inisoft/mediaplayer/gl;->l:I

    iput v3, p0, Lcom/inisoft/mediaplayer/gl;->s:I

    if-eqz v0, :cond_0

    :try_start_0
    const-string v1, " | "

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v1, v1, 0x3

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/inisoft/mediaplayer/gl;->d:J

    const-string v2, " | "

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v2, v2, 0x3

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/inisoft/mediaplayer/gl;->e:J

    const-string v1, " | "

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v1, v1, 0x3

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/inisoft/mediaplayer/gl;->f:J

    const-string v2, " | "

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v2, v2, 0x3

    iput-object v1, p0, Lcom/inisoft/mediaplayer/gl;->h:Ljava/lang/String;

    const-string v1, " | "

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v1, v1, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/inisoft/mediaplayer/gl;->i:I

    const-string v2, " | "

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v2, v2, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/inisoft/mediaplayer/gl;->j:I

    const-string v1, " | "

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v1, v1, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/inisoft/mediaplayer/gl;->k:I

    const-string v2, " | "

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/inisoft/mediaplayer/gl;->l:I

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v2, v2, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/inisoft/mediaplayer/gl;->l:I

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/inisoft/mediaplayer/gl;->s:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final s()I
    .locals 1

    iget v0, p0, Lcom/inisoft/mediaplayer/gl;->s:I

    return v0
.end method

.method public final t()I
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/inisoft/mediaplayer/gl;->a:Landroid/content/Context;

    const-string v2, "DICE_SETTINGS"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/inisoft/mediaplayer/gl;->b:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "@AudioTrackIndex"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public final u()J
    .locals 2

    iget-wide v0, p0, Lcom/inisoft/mediaplayer/gl;->t:J

    return-wide v0
.end method

.method public final v()J
    .locals 2

    iget-wide v0, p0, Lcom/inisoft/mediaplayer/gl;->u:J

    return-wide v0
.end method
