.class public final Lcom/inisoft/mediaplayer/gq;
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

.field private g:Ljava/lang/String;

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:Ljava/lang/String;

.field private m:Lcom/inisoft/mediaplayer/ck;

.field private n:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/inisoft/mediaplayer/ck;Landroid/content/Context;)V
    .locals 3

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/inisoft/mediaplayer/gq;->a:Landroid/content/Context;

    const-string v0, ""

    iput-object v0, p0, Lcom/inisoft/mediaplayer/gq;->l:Ljava/lang/String;

    iput-object p3, p0, Lcom/inisoft/mediaplayer/gq;->a:Landroid/content/Context;

    iput-object p1, p0, Lcom/inisoft/mediaplayer/gq;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/inisoft/mediaplayer/gq;->m:Lcom/inisoft/mediaplayer/ck;

    invoke-virtual {p0}, Lcom/inisoft/mediaplayer/gq;->r()V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gq;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    iput-object v1, p0, Lcom/inisoft/mediaplayer/gq;->c:Ljava/lang/String;

    :goto_0
    const-string v0, "0"

    iput-object v0, p0, Lcom/inisoft/mediaplayer/gq;->l:Ljava/lang/String;

    return-void

    :cond_0
    iget-object v0, p0, Lcom/inisoft/mediaplayer/gq;->b:Ljava/lang/String;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gq;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/inisoft/mediaplayer/gq;->c:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/inisoft/mediaplayer/gq;->b:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x1

    iget-object v2, p0, Lcom/inisoft/mediaplayer/gq;->b:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inisoft/mediaplayer/gq;->c:Ljava/lang/String;

    goto :goto_0
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
    iget-object v0, p0, Lcom/inisoft/mediaplayer/gq;->a:Landroid/content/Context;

    const-string v1, "DICE_SETTINGS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/inisoft/mediaplayer/gq;->b:Ljava/lang/String;

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

    iput p1, p0, Lcom/inisoft/mediaplayer/gq;->h:I

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/inisoft/mediaplayer/gq;->n()V

    :cond_0
    return-void
.end method

.method public final a(JZ)V
    .locals 0

    iput-wide p1, p0, Lcom/inisoft/mediaplayer/gq;->e:J

    if-eqz p3, :cond_0

    invoke-virtual {p0}, Lcom/inisoft/mediaplayer/gq;->n()V

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;Z)V
    .locals 0

    iput-object p1, p0, Lcom/inisoft/mediaplayer/gq;->g:Ljava/lang/String;

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/inisoft/mediaplayer/gq;->n()V

    :cond_0
    return-void
.end method

.method public final a(Z)V
    .locals 0

    return-void
.end method

.method public final b(IZ)V
    .locals 0

    iput p1, p0, Lcom/inisoft/mediaplayer/gq;->i:I

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/inisoft/mediaplayer/gq;->n()V

    :cond_0
    return-void
.end method

.method public final b(JZ)V
    .locals 0

    iput-wide p1, p0, Lcom/inisoft/mediaplayer/gq;->d:J

    if-eqz p3, :cond_0

    invoke-virtual {p0}, Lcom/inisoft/mediaplayer/gq;->n()V

    :cond_0
    return-void
.end method

.method public final b()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gq;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final c(IZ)V
    .locals 0

    iput p1, p0, Lcom/inisoft/mediaplayer/gq;->j:I

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/inisoft/mediaplayer/gq;->n()V

    :cond_0
    return-void
.end method

.method public final c(JZ)V
    .locals 0

    iput-wide p1, p0, Lcom/inisoft/mediaplayer/gq;->f:J

    if-eqz p3, :cond_0

    invoke-virtual {p0}, Lcom/inisoft/mediaplayer/gq;->n()V

    :cond_0
    return-void
.end method

.method public final d()J
    .locals 2

    iget-wide v0, p0, Lcom/inisoft/mediaplayer/gq;->f:J

    return-wide v0
.end method

.method public final d(IZ)V
    .locals 0

    iput p1, p0, Lcom/inisoft/mediaplayer/gq;->k:I

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/inisoft/mediaplayer/gq;->n()V

    :cond_0
    return-void
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gq;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final e(IZ)V
    .locals 0

    iput p1, p0, Lcom/inisoft/mediaplayer/gq;->n:I

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/inisoft/mediaplayer/gq;->n()V

    :cond_0
    return-void
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gq;->l:Ljava/lang/String;

    return-object v0
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    const-string v0, "0"

    return-object v0
.end method

.method public final h()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final i()J
    .locals 2

    iget-wide v0, p0, Lcom/inisoft/mediaplayer/gq;->d:J

    return-wide v0
.end method

.method public final j()J
    .locals 2

    iget-wide v0, p0, Lcom/inisoft/mediaplayer/gq;->e:J

    return-wide v0
.end method

.method public final k()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gq;->g:Ljava/lang/String;

    return-object v0
.end method

.method public final l()I
    .locals 1

    iget v0, p0, Lcom/inisoft/mediaplayer/gq;->h:I

    return v0
.end method

.method public final m()I
    .locals 1

    iget v0, p0, Lcom/inisoft/mediaplayer/gq;->k:I

    return v0
.end method

.method public final n()V
    .locals 4

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gq;->a:Landroid/content/Context;

    const-string v1, "DICE_SETTINGS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/inisoft/mediaplayer/gq;->d:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " | "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/inisoft/mediaplayer/gq;->e:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " | "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/inisoft/mediaplayer/gq;->f:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " | "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/inisoft/mediaplayer/gq;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " | "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/inisoft/mediaplayer/gq;->h:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " | "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/inisoft/mediaplayer/gq;->i:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " | "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/inisoft/mediaplayer/gq;->j:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " | "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/inisoft/mediaplayer/gq;->k:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " | "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/inisoft/mediaplayer/gq;->n:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/inisoft/mediaplayer/gq;->b:Ljava/lang/String;

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

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gq;->a:Landroid/content/Context;

    const-string v1, "DICE_SETTINGS"

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/inisoft/mediaplayer/gq;->b:Ljava/lang/String;

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-wide v4, p0, Lcom/inisoft/mediaplayer/gq;->d:J

    iput-wide v4, p0, Lcom/inisoft/mediaplayer/gq;->e:J

    iput-wide v4, p0, Lcom/inisoft/mediaplayer/gq;->f:J

    const-string v1, ""

    iput-object v1, p0, Lcom/inisoft/mediaplayer/gq;->g:Ljava/lang/String;

    iput v3, p0, Lcom/inisoft/mediaplayer/gq;->h:I

    iput v3, p0, Lcom/inisoft/mediaplayer/gq;->i:I

    iput v3, p0, Lcom/inisoft/mediaplayer/gq;->j:I

    iput v3, p0, Lcom/inisoft/mediaplayer/gq;->k:I

    iput v3, p0, Lcom/inisoft/mediaplayer/gq;->n:I

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

    iput-wide v2, p0, Lcom/inisoft/mediaplayer/gq;->d:J

    const-string v2, " | "

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v2, v2, 0x3

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/inisoft/mediaplayer/gq;->e:J

    const-string v1, " | "

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v1, v1, 0x3

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/inisoft/mediaplayer/gq;->f:J

    const-string v2, " | "

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v2, v2, 0x3

    iput-object v1, p0, Lcom/inisoft/mediaplayer/gq;->g:Ljava/lang/String;

    const-string v1, " | "

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v1, v1, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/inisoft/mediaplayer/gq;->h:I

    const-string v2, " | "

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v2, v2, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/inisoft/mediaplayer/gq;->i:I

    const-string v1, " | "

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v1, v1, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/inisoft/mediaplayer/gq;->j:I

    const-string v2, " | "

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/inisoft/mediaplayer/gq;->k:I

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v2, v2, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/inisoft/mediaplayer/gq;->k:I

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/inisoft/mediaplayer/gq;->n:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final s()I
    .locals 1

    iget v0, p0, Lcom/inisoft/mediaplayer/gq;->n:I

    return v0
.end method

.method public final t()I
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/inisoft/mediaplayer/gq;->a:Landroid/content/Context;

    const-string v2, "DICE_SETTINGS"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/inisoft/mediaplayer/gq;->b:Ljava/lang/String;

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

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final v()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method
