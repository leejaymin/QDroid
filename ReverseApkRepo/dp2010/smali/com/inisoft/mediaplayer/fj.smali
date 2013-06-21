.class final Lcom/inisoft/mediaplayer/fj;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/inisoft/mediaplayer/fq;


# instance fields
.field final synthetic a:Lcom/inisoft/mediaplayer/PlayerActivity;


# direct methods
.method constructor <init>(Lcom/inisoft/mediaplayer/PlayerActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/inisoft/mediaplayer/fj;->a:Lcom/inisoft/mediaplayer/PlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/fj;->a:Lcom/inisoft/mediaplayer/PlayerActivity;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/PlayerActivity;->a(Lcom/inisoft/mediaplayer/PlayerActivity;)Lcom/inisoft/mediaplayer/fs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/fs;->L()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/inisoft/mediaplayer/fj;->a(Z)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/inisoft/mediaplayer/fj;->a(Z)V

    goto :goto_0
.end method

.method public final a(I)V
    .locals 2

    iget-object v0, p0, Lcom/inisoft/mediaplayer/fj;->a:Lcom/inisoft/mediaplayer/PlayerActivity;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/PlayerActivity;->d(Lcom/inisoft/mediaplayer/PlayerActivity;)Lcom/inisoft/mediaplayer/fn;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/fj;->a:Lcom/inisoft/mediaplayer/PlayerActivity;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/PlayerActivity;->d(Lcom/inisoft/mediaplayer/PlayerActivity;)Lcom/inisoft/mediaplayer/fn;

    move-result-object v0

    sget-object v1, Lcom/inisoft/mediaplayer/fr;->e:Lcom/inisoft/mediaplayer/fr;

    invoke-virtual {v0, v1, p1}, Lcom/inisoft/mediaplayer/fn;->a(Lcom/inisoft/mediaplayer/fr;I)V

    :cond_0
    return-void
.end method

.method public final a(Z)V
    .locals 2

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/fj;->a:Lcom/inisoft/mediaplayer/PlayerActivity;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/PlayerActivity;->d(Lcom/inisoft/mediaplayer/PlayerActivity;)Lcom/inisoft/mediaplayer/fn;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/fj;->a:Lcom/inisoft/mediaplayer/PlayerActivity;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/PlayerActivity;->d(Lcom/inisoft/mediaplayer/PlayerActivity;)Lcom/inisoft/mediaplayer/fn;

    move-result-object v0

    sget-object v1, Lcom/inisoft/mediaplayer/fr;->b:Lcom/inisoft/mediaplayer/fr;

    invoke-virtual {v0, v1}, Lcom/inisoft/mediaplayer/fn;->a(Lcom/inisoft/mediaplayer/fr;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/inisoft/mediaplayer/fj;->a:Lcom/inisoft/mediaplayer/PlayerActivity;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/PlayerActivity;->d(Lcom/inisoft/mediaplayer/PlayerActivity;)Lcom/inisoft/mediaplayer/fn;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/fj;->a:Lcom/inisoft/mediaplayer/PlayerActivity;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/PlayerActivity;->d(Lcom/inisoft/mediaplayer/PlayerActivity;)Lcom/inisoft/mediaplayer/fn;

    move-result-object v0

    sget-object v1, Lcom/inisoft/mediaplayer/fr;->a:Lcom/inisoft/mediaplayer/fr;

    invoke-virtual {v0, v1}, Lcom/inisoft/mediaplayer/fn;->a(Lcom/inisoft/mediaplayer/fr;)V

    goto :goto_0
.end method

.method public final a(ZI)V
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/fj;->a:Lcom/inisoft/mediaplayer/PlayerActivity;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/PlayerActivity;->d(Lcom/inisoft/mediaplayer/PlayerActivity;)Lcom/inisoft/mediaplayer/fn;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/fj;->a:Lcom/inisoft/mediaplayer/PlayerActivity;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/PlayerActivity;->d(Lcom/inisoft/mediaplayer/PlayerActivity;)Lcom/inisoft/mediaplayer/fn;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/inisoft/mediaplayer/fn;->a(ZI)V

    :cond_0
    return-void
.end method

.method public final b(Z)Z
    .locals 5

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/fj;->a:Lcom/inisoft/mediaplayer/PlayerActivity;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/PlayerActivity;->c(Lcom/inisoft/mediaplayer/PlayerActivity;)Lcom/inisoft/mediaplayer/gt;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/fj;->a:Lcom/inisoft/mediaplayer/PlayerActivity;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/PlayerActivity;->c(Lcom/inisoft/mediaplayer/PlayerActivity;)Lcom/inisoft/mediaplayer/gt;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/inisoft/mediaplayer/gt;->a(Z)F

    move-result v0

    iget-object v1, p0, Lcom/inisoft/mediaplayer/fj;->a:Lcom/inisoft/mediaplayer/PlayerActivity;

    invoke-static {v1}, Lcom/inisoft/mediaplayer/PlayerActivity;->b(Lcom/inisoft/mediaplayer/PlayerActivity;)Lcom/inisoft/mediaplayer/VideoView;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v1, "%02.1f sec"

    new-array v2, v4, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/inisoft/mediaplayer/fj;->a:Lcom/inisoft/mediaplayer/PlayerActivity;

    invoke-static {v1}, Lcom/inisoft/mediaplayer/PlayerActivity;->b(Lcom/inisoft/mediaplayer/PlayerActivity;)Lcom/inisoft/mediaplayer/VideoView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/inisoft/mediaplayer/VideoView;->b(Ljava/lang/String;)V

    :cond_0
    return v4
.end method

.method public final c(Z)Z
    .locals 5

    const/4 v0, 0x5

    iget-object v1, p0, Lcom/inisoft/mediaplayer/fj;->a:Lcom/inisoft/mediaplayer/PlayerActivity;

    invoke-static {v1}, Lcom/inisoft/mediaplayer/PlayerActivity;->a(Lcom/inisoft/mediaplayer/PlayerActivity;)Lcom/inisoft/mediaplayer/fs;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/fs;->W()I

    move-result v1

    if-eqz p1, :cond_2

    add-int/lit8 v0, v1, 0xa

    iget-object v1, p0, Lcom/inisoft/mediaplayer/fj;->a:Lcom/inisoft/mediaplayer/PlayerActivity;

    invoke-static {v1}, Lcom/inisoft/mediaplayer/PlayerActivity;->a(Lcom/inisoft/mediaplayer/PlayerActivity;)Lcom/inisoft/mediaplayer/fs;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/fs;->V()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/fj;->a:Lcom/inisoft/mediaplayer/PlayerActivity;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/PlayerActivity;->a(Lcom/inisoft/mediaplayer/PlayerActivity;)Lcom/inisoft/mediaplayer/fs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/fs;->V()I

    move-result v0

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/inisoft/mediaplayer/fj;->a:Lcom/inisoft/mediaplayer/PlayerActivity;

    invoke-static {v1}, Lcom/inisoft/mediaplayer/PlayerActivity;->a(Lcom/inisoft/mediaplayer/PlayerActivity;)Lcom/inisoft/mediaplayer/fs;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/inisoft/mediaplayer/fs;->r(I)V

    :try_start_0
    iget-object v1, p0, Lcom/inisoft/mediaplayer/fj;->a:Lcom/inisoft/mediaplayer/PlayerActivity;

    invoke-static {v1}, Lcom/inisoft/mediaplayer/PlayerActivity;->e(Lcom/inisoft/mediaplayer/PlayerActivity;)Lcom/inisoft/mediaplayer/hm;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/inisoft/mediaplayer/hm;->setPadding(IIII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v0, p0, Lcom/inisoft/mediaplayer/fj;->a:Lcom/inisoft/mediaplayer/PlayerActivity;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/PlayerActivity;->b(Lcom/inisoft/mediaplayer/PlayerActivity;)Lcom/inisoft/mediaplayer/VideoView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/fj;->a:Lcom/inisoft/mediaplayer/PlayerActivity;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/PlayerActivity;->b(Lcom/inisoft/mediaplayer/PlayerActivity;)Lcom/inisoft/mediaplayer/VideoView;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/inisoft/mediaplayer/VideoView;->b(Ljava/lang/String;)V

    :cond_1
    const/4 v0, 0x1

    return v0

    :cond_2
    add-int/lit8 v1, v1, -0xa

    if-lt v1, v0, :cond_0

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public final d(Z)V
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/fj;->a:Lcom/inisoft/mediaplayer/PlayerActivity;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/PlayerActivity;->k(Lcom/inisoft/mediaplayer/PlayerActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/fj;->a:Lcom/inisoft/mediaplayer/PlayerActivity;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/PlayerActivity;->b(Lcom/inisoft/mediaplayer/PlayerActivity;)Lcom/inisoft/mediaplayer/VideoView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/fj;->a:Lcom/inisoft/mediaplayer/PlayerActivity;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/PlayerActivity;->b(Lcom/inisoft/mediaplayer/PlayerActivity;)Lcom/inisoft/mediaplayer/VideoView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/VideoView;->q()V

    :cond_0
    iget-object v0, p0, Lcom/inisoft/mediaplayer/fj;->a:Lcom/inisoft/mediaplayer/PlayerActivity;

    invoke-static {v0, p1}, Lcom/inisoft/mediaplayer/PlayerActivity;->b(Lcom/inisoft/mediaplayer/PlayerActivity;Z)V

    return-void
.end method
