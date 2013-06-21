.class public final Lcom/inisoft/mediaplayer/cj;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/inisoft/mediaplayer/cl;


# instance fields
.field private a:Lcom/inisoft/mediaplayer/cl;

.field private b:Lcom/inisoft/mediaplayer/ck;


# direct methods
.method public constructor <init>(La/d/az;Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/inisoft/mediaplayer/cj;->a:Lcom/inisoft/mediaplayer/cl;

    sget-object v0, Lcom/inisoft/mediaplayer/ck;->a:Lcom/inisoft/mediaplayer/ck;

    iput-object v0, p0, Lcom/inisoft/mediaplayer/cj;->b:Lcom/inisoft/mediaplayer/ck;

    sget-object v0, Lcom/inisoft/mediaplayer/ck;->c:Lcom/inisoft/mediaplayer/ck;

    iput-object v0, p0, Lcom/inisoft/mediaplayer/cj;->b:Lcom/inisoft/mediaplayer/ck;

    new-instance v0, Lcom/inisoft/mediaplayer/gl;

    iget-object v1, p0, Lcom/inisoft/mediaplayer/cj;->b:Lcom/inisoft/mediaplayer/ck;

    invoke-direct {v0, p1, v1, p2}, Lcom/inisoft/mediaplayer/gl;-><init>(La/d/az;Lcom/inisoft/mediaplayer/ck;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/inisoft/mediaplayer/cj;->a:Lcom/inisoft/mediaplayer/cl;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/inisoft/mediaplayer/cj;->a:Lcom/inisoft/mediaplayer/cl;

    sget-object v0, Lcom/inisoft/mediaplayer/ck;->a:Lcom/inisoft/mediaplayer/ck;

    iput-object v0, p0, Lcom/inisoft/mediaplayer/cj;->b:Lcom/inisoft/mediaplayer/ck;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "file"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    new-instance v0, Lcom/inisoft/mediaplayer/dq;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1, p2}, Lcom/inisoft/mediaplayer/dq;-><init>(Ljava/io/File;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/inisoft/mediaplayer/cj;->a:Lcom/inisoft/mediaplayer/cl;

    sget-object v0, Lcom/inisoft/mediaplayer/ck;->a:Lcom/inisoft/mediaplayer/ck;

    iput-object v0, p0, Lcom/inisoft/mediaplayer/cj;->b:Lcom/inisoft/mediaplayer/ck;

    :goto_0
    return-void

    :cond_1
    const-string v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v0, Lcom/inisoft/mediaplayer/ck;->b:Lcom/inisoft/mediaplayer/ck;

    iput-object v0, p0, Lcom/inisoft/mediaplayer/cj;->b:Lcom/inisoft/mediaplayer/ck;

    new-instance v0, Lcom/inisoft/mediaplayer/gq;

    iget-object v1, p0, Lcom/inisoft/mediaplayer/cj;->b:Lcom/inisoft/mediaplayer/ck;

    invoke-direct {v0, p1, v1, p2}, Lcom/inisoft/mediaplayer/gq;-><init>(Ljava/lang/String;Lcom/inisoft/mediaplayer/ck;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/inisoft/mediaplayer/cj;->a:Lcom/inisoft/mediaplayer/cl;

    goto :goto_0

    :cond_2
    const-string v1, "smb"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    :try_start_0
    sget-object v0, Lcom/inisoft/mediaplayer/ck;->c:Lcom/inisoft/mediaplayer/ck;

    iput-object v0, p0, Lcom/inisoft/mediaplayer/cj;->b:Lcom/inisoft/mediaplayer/ck;

    new-instance v0, Lcom/inisoft/mediaplayer/gl;

    invoke-static {p2, p1}, Lcom/inisoft/mediaplayer/hw;->d(Landroid/content/Context;Ljava/lang/String;)La/d/az;

    move-result-object v1

    iget-object v2, p0, Lcom/inisoft/mediaplayer/cj;->b:Lcom/inisoft/mediaplayer/ck;

    invoke-direct {v0, v1, v2, p2}, Lcom/inisoft/mediaplayer/gl;-><init>(La/d/az;Lcom/inisoft/mediaplayer/ck;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/inisoft/mediaplayer/cj;->a:Lcom/inisoft/mediaplayer/cl;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v0, Lcom/inisoft/mediaplayer/gq;

    iget-object v1, p0, Lcom/inisoft/mediaplayer/cj;->b:Lcom/inisoft/mediaplayer/ck;

    invoke-direct {v0, p1, v1, p2}, Lcom/inisoft/mediaplayer/gq;-><init>(Ljava/lang/String;Lcom/inisoft/mediaplayer/ck;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/inisoft/mediaplayer/cj;->a:Lcom/inisoft/mediaplayer/cl;

    goto :goto_0

    :cond_3
    const-string v1, "ftp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    :try_start_1
    sget-object v0, Lcom/inisoft/mediaplayer/ck;->d:Lcom/inisoft/mediaplayer/ck;

    iput-object v0, p0, Lcom/inisoft/mediaplayer/cj;->b:Lcom/inisoft/mediaplayer/ck;

    new-instance v0, Lcom/inisoft/mediaplayer/cm;

    invoke-direct {v0, p2, p1}, Lcom/inisoft/mediaplayer/cm;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/inisoft/mediaplayer/cj;->a:Lcom/inisoft/mediaplayer/cl;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    new-instance v0, Lcom/inisoft/mediaplayer/gq;

    iget-object v1, p0, Lcom/inisoft/mediaplayer/cj;->b:Lcom/inisoft/mediaplayer/ck;

    invoke-direct {v0, p1, v1, p2}, Lcom/inisoft/mediaplayer/gq;-><init>(Ljava/lang/String;Lcom/inisoft/mediaplayer/ck;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/inisoft/mediaplayer/cj;->a:Lcom/inisoft/mediaplayer/cl;

    goto :goto_0

    :cond_4
    const-string v1, "dice_custom"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lcom/inisoft/mediaplayer/ck;->e:Lcom/inisoft/mediaplayer/ck;

    iput-object v0, p0, Lcom/inisoft/mediaplayer/cj;->b:Lcom/inisoft/mediaplayer/ck;

    new-instance v0, Lcom/inisoft/mediaplayer/gq;

    iget-object v1, p0, Lcom/inisoft/mediaplayer/cj;->b:Lcom/inisoft/mediaplayer/ck;

    invoke-direct {v0, p1, v1, p2}, Lcom/inisoft/mediaplayer/gq;-><init>(Ljava/lang/String;Lcom/inisoft/mediaplayer/ck;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/inisoft/mediaplayer/cj;->a:Lcom/inisoft/mediaplayer/cl;

    goto :goto_0

    :cond_5
    sget-object v0, Lcom/inisoft/mediaplayer/ck;->g:Lcom/inisoft/mediaplayer/ck;

    iput-object v0, p0, Lcom/inisoft/mediaplayer/cj;->b:Lcom/inisoft/mediaplayer/ck;

    new-instance v0, Lcom/inisoft/mediaplayer/gq;

    iget-object v1, p0, Lcom/inisoft/mediaplayer/cj;->b:Lcom/inisoft/mediaplayer/ck;

    invoke-direct {v0, p1, v1, p2}, Lcom/inisoft/mediaplayer/gq;-><init>(Ljava/lang/String;Lcom/inisoft/mediaplayer/ck;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/inisoft/mediaplayer/cj;->a:Lcom/inisoft/mediaplayer/cl;

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Lb/a/a/a/a/h;Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/inisoft/mediaplayer/cj;->a:Lcom/inisoft/mediaplayer/cl;

    sget-object v0, Lcom/inisoft/mediaplayer/ck;->a:Lcom/inisoft/mediaplayer/ck;

    iput-object v0, p0, Lcom/inisoft/mediaplayer/cj;->b:Lcom/inisoft/mediaplayer/ck;

    sget-object v0, Lcom/inisoft/mediaplayer/ck;->d:Lcom/inisoft/mediaplayer/ck;

    iput-object v0, p0, Lcom/inisoft/mediaplayer/cj;->b:Lcom/inisoft/mediaplayer/ck;

    new-instance v0, Lcom/inisoft/mediaplayer/cm;

    invoke-direct {v0, p1, p2, p3}, Lcom/inisoft/mediaplayer/cm;-><init>(Ljava/lang/String;Lb/a/a/a/a/h;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/inisoft/mediaplayer/cj;->a:Lcom/inisoft/mediaplayer/cl;

    return-void
.end method


# virtual methods
.method public final a()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/cj;->a:Lcom/inisoft/mediaplayer/cl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/cj;->a:Lcom/inisoft/mediaplayer/cl;

    invoke-interface {v0}, Lcom/inisoft/mediaplayer/cl;->a()Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(I)V
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/cj;->a:Lcom/inisoft/mediaplayer/cl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/cj;->a:Lcom/inisoft/mediaplayer/cl;

    invoke-interface {v0, p1}, Lcom/inisoft/mediaplayer/cl;->a(I)V

    :cond_0
    return-void
.end method

.method public final a(IZ)V
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/cj;->a:Lcom/inisoft/mediaplayer/cl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/cj;->a:Lcom/inisoft/mediaplayer/cl;

    invoke-interface {v0, p1, p2}, Lcom/inisoft/mediaplayer/cl;->a(IZ)V

    :cond_0
    return-void
.end method

.method public final a(JZ)V
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/cj;->a:Lcom/inisoft/mediaplayer/cl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/cj;->a:Lcom/inisoft/mediaplayer/cl;

    invoke-interface {v0, p1, p2, p3}, Lcom/inisoft/mediaplayer/cl;->a(JZ)V

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;Z)V
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/cj;->a:Lcom/inisoft/mediaplayer/cl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/cj;->a:Lcom/inisoft/mediaplayer/cl;

    invoke-interface {v0, p1, p2}, Lcom/inisoft/mediaplayer/cl;->a(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public final a(Z)V
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/cj;->a:Lcom/inisoft/mediaplayer/cl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/cj;->a:Lcom/inisoft/mediaplayer/cl;

    invoke-interface {v0, p1}, Lcom/inisoft/mediaplayer/cl;->a(Z)V

    :cond_0
    return-void
.end method

.method public final b(IZ)V
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/cj;->a:Lcom/inisoft/mediaplayer/cl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/cj;->a:Lcom/inisoft/mediaplayer/cl;

    invoke-interface {v0, p1, p2}, Lcom/inisoft/mediaplayer/cl;->b(IZ)V

    :cond_0
    return-void
.end method

.method public final b(JZ)V
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/cj;->a:Lcom/inisoft/mediaplayer/cl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/cj;->a:Lcom/inisoft/mediaplayer/cl;

    invoke-interface {v0, p1, p2, p3}, Lcom/inisoft/mediaplayer/cl;->b(JZ)V

    :cond_0
    return-void
.end method

.method public final b()Z
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/cj;->a:Lcom/inisoft/mediaplayer/cl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/cj;->a:Lcom/inisoft/mediaplayer/cl;

    invoke-interface {v0}, Lcom/inisoft/mediaplayer/cl;->b()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/cj;->a:Lcom/inisoft/mediaplayer/cl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/cj;->a:Lcom/inisoft/mediaplayer/cl;

    invoke-interface {v0}, Lcom/inisoft/mediaplayer/cl;->c()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c(IZ)V
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/cj;->a:Lcom/inisoft/mediaplayer/cl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/cj;->a:Lcom/inisoft/mediaplayer/cl;

    invoke-interface {v0, p1, p2}, Lcom/inisoft/mediaplayer/cl;->c(IZ)V

    :cond_0
    return-void
.end method

.method public final c(JZ)V
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/cj;->a:Lcom/inisoft/mediaplayer/cl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/cj;->a:Lcom/inisoft/mediaplayer/cl;

    invoke-interface {v0, p1, p2, p3}, Lcom/inisoft/mediaplayer/cl;->c(JZ)V

    :cond_0
    return-void
.end method

.method public final d()J
    .locals 2

    iget-object v0, p0, Lcom/inisoft/mediaplayer/cj;->a:Lcom/inisoft/mediaplayer/cl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/cj;->a:Lcom/inisoft/mediaplayer/cl;

    invoke-interface {v0}, Lcom/inisoft/mediaplayer/cl;->d()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public final d(IZ)V
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/cj;->a:Lcom/inisoft/mediaplayer/cl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/cj;->a:Lcom/inisoft/mediaplayer/cl;

    invoke-interface {v0, p1, p2}, Lcom/inisoft/mediaplayer/cl;->d(IZ)V

    :cond_0
    return-void
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/cj;->a:Lcom/inisoft/mediaplayer/cl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/cj;->a:Lcom/inisoft/mediaplayer/cl;

    invoke-interface {v0}, Lcom/inisoft/mediaplayer/cl;->e()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final e(IZ)V
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/cj;->a:Lcom/inisoft/mediaplayer/cl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/cj;->a:Lcom/inisoft/mediaplayer/cl;

    invoke-interface {v0, p1, p2}, Lcom/inisoft/mediaplayer/cl;->e(IZ)V

    :cond_0
    return-void
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/cj;->a:Lcom/inisoft/mediaplayer/cl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/cj;->a:Lcom/inisoft/mediaplayer/cl;

    invoke-interface {v0}, Lcom/inisoft/mediaplayer/cl;->f()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/cj;->a:Lcom/inisoft/mediaplayer/cl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/cj;->a:Lcom/inisoft/mediaplayer/cl;

    invoke-interface {v0}, Lcom/inisoft/mediaplayer/cl;->g()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final h()Z
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/cj;->a:Lcom/inisoft/mediaplayer/cl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/cj;->a:Lcom/inisoft/mediaplayer/cl;

    invoke-interface {v0}, Lcom/inisoft/mediaplayer/cl;->h()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final i()J
    .locals 2

    iget-object v0, p0, Lcom/inisoft/mediaplayer/cj;->a:Lcom/inisoft/mediaplayer/cl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/cj;->a:Lcom/inisoft/mediaplayer/cl;

    invoke-interface {v0}, Lcom/inisoft/mediaplayer/cl;->i()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public final j()J
    .locals 2

    iget-object v0, p0, Lcom/inisoft/mediaplayer/cj;->a:Lcom/inisoft/mediaplayer/cl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/cj;->a:Lcom/inisoft/mediaplayer/cl;

    invoke-interface {v0}, Lcom/inisoft/mediaplayer/cl;->j()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public final k()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/cj;->a:Lcom/inisoft/mediaplayer/cl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/cj;->a:Lcom/inisoft/mediaplayer/cl;

    invoke-interface {v0}, Lcom/inisoft/mediaplayer/cl;->k()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final l()I
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/cj;->a:Lcom/inisoft/mediaplayer/cl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/cj;->a:Lcom/inisoft/mediaplayer/cl;

    invoke-interface {v0}, Lcom/inisoft/mediaplayer/cl;->l()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final m()I
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/cj;->a:Lcom/inisoft/mediaplayer/cl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/cj;->a:Lcom/inisoft/mediaplayer/cl;

    invoke-interface {v0}, Lcom/inisoft/mediaplayer/cl;->m()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final n()V
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/cj;->a:Lcom/inisoft/mediaplayer/cl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/cj;->a:Lcom/inisoft/mediaplayer/cl;

    invoke-interface {v0}, Lcom/inisoft/mediaplayer/cl;->n()V

    :cond_0
    return-void
.end method

.method public final o()Z
    .locals 2

    iget-object v0, p0, Lcom/inisoft/mediaplayer/cj;->b:Lcom/inisoft/mediaplayer/ck;

    sget-object v1, Lcom/inisoft/mediaplayer/ck;->a:Lcom/inisoft/mediaplayer/ck;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final p()Lcom/inisoft/mediaplayer/ck;
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/cj;->b:Lcom/inisoft/mediaplayer/ck;

    return-object v0
.end method

.method public final q()V
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/cj;->a:Lcom/inisoft/mediaplayer/cl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/cj;->a:Lcom/inisoft/mediaplayer/cl;

    invoke-interface {v0}, Lcom/inisoft/mediaplayer/cl;->q()V

    :cond_0
    return-void
.end method

.method public final r()V
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/cj;->a:Lcom/inisoft/mediaplayer/cl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/cj;->a:Lcom/inisoft/mediaplayer/cl;

    invoke-interface {v0}, Lcom/inisoft/mediaplayer/cl;->r()V

    :cond_0
    return-void
.end method

.method public final s()I
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/cj;->a:Lcom/inisoft/mediaplayer/cl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/cj;->a:Lcom/inisoft/mediaplayer/cl;

    invoke-interface {v0}, Lcom/inisoft/mediaplayer/cl;->s()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final t()I
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/cj;->a:Lcom/inisoft/mediaplayer/cl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/cj;->a:Lcom/inisoft/mediaplayer/cl;

    invoke-interface {v0}, Lcom/inisoft/mediaplayer/cl;->t()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final u()J
    .locals 2

    iget-object v0, p0, Lcom/inisoft/mediaplayer/cj;->a:Lcom/inisoft/mediaplayer/cl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/cj;->a:Lcom/inisoft/mediaplayer/cl;

    invoke-interface {v0}, Lcom/inisoft/mediaplayer/cl;->u()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public final v()J
    .locals 2

    iget-object v0, p0, Lcom/inisoft/mediaplayer/cj;->a:Lcom/inisoft/mediaplayer/cl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/cj;->a:Lcom/inisoft/mediaplayer/cl;

    invoke-interface {v0}, Lcom/inisoft/mediaplayer/cl;->v()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method
