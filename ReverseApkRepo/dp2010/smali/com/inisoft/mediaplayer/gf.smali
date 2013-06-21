.class final Lcom/inisoft/mediaplayer/gf;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/inisoft/mediaplayer/en;


# instance fields
.field final synthetic a:Lcom/inisoft/mediaplayer/gb;


# direct methods
.method constructor <init>(Lcom/inisoft/mediaplayer/gb;)V
    .locals 0

    iput-object p1, p0, Lcom/inisoft/mediaplayer/gf;->a:Lcom/inisoft/mediaplayer/gb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gf;->a:Lcom/inisoft/mediaplayer/gb;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/gb;->i(Lcom/inisoft/mediaplayer/gb;)Lcom/inisoft/mediaplayer/gt;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gf;->a:Lcom/inisoft/mediaplayer/gb;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/gb;->i(Lcom/inisoft/mediaplayer/gb;)Lcom/inisoft/mediaplayer/gt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/gt;->c()V

    :cond_0
    return-void
.end method

.method public final a(I)V
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gf;->a:Lcom/inisoft/mediaplayer/gb;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/gb;->i(Lcom/inisoft/mediaplayer/gb;)Lcom/inisoft/mediaplayer/gt;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gf;->a:Lcom/inisoft/mediaplayer/gb;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/gb;->i(Lcom/inisoft/mediaplayer/gb;)Lcom/inisoft/mediaplayer/gt;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/inisoft/mediaplayer/gt;->b(I)V

    :cond_0
    return-void
.end method

.method public final a([B)V
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gf;->a:Lcom/inisoft/mediaplayer/gb;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/gb;->a(Lcom/inisoft/mediaplayer/gb;)Lcom/inisoft/mediaplayer/fs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/fs;->z()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gf;->a:Lcom/inisoft/mediaplayer/gb;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/gb;->i(Lcom/inisoft/mediaplayer/gb;)Lcom/inisoft/mediaplayer/gt;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gf;->a:Lcom/inisoft/mediaplayer/gb;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/gb;->i(Lcom/inisoft/mediaplayer/gb;)Lcom/inisoft/mediaplayer/gt;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/inisoft/mediaplayer/gt;->a([B)V

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 0

    return-void
.end method

.method public final c()V
    .locals 0

    return-void
.end method

.method public final d()V
    .locals 0

    return-void
.end method
