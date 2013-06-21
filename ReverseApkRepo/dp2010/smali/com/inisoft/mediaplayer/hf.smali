.class final Lcom/inisoft/mediaplayer/hf;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/inisoft/mediaplayer/hd;


# direct methods
.method constructor <init>(Lcom/inisoft/mediaplayer/hd;)V
    .locals 0

    iput-object p1, p0, Lcom/inisoft/mediaplayer/hf;->a:Lcom/inisoft/mediaplayer/hd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    const/4 v3, -0x1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/hf;->a:Lcom/inisoft/mediaplayer/hd;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/hd;->g(Lcom/inisoft/mediaplayer/hd;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inisoft/mediaplayer/hj;

    invoke-interface {v0}, Lcom/inisoft/mediaplayer/hj;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    check-cast v0, Lcom/inisoft/mediaplayer/hi;

    iget-object v1, p0, Lcom/inisoft/mediaplayer/hf;->a:Lcom/inisoft/mediaplayer/hd;

    invoke-static {v1}, Lcom/inisoft/mediaplayer/hd;->e(Lcom/inisoft/mediaplayer/hd;)Lcom/inisoft/mediaplayer/hk;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-boolean v1, v0, Lcom/inisoft/mediaplayer/hi;->a:Z

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/inisoft/mediaplayer/hf;->a:Lcom/inisoft/mediaplayer/hd;

    invoke-static {v0, v3}, Lcom/inisoft/mediaplayer/hd;->a(Lcom/inisoft/mediaplayer/hd;I)V

    :goto_1
    iget-object v0, p0, Lcom/inisoft/mediaplayer/hf;->a:Lcom/inisoft/mediaplayer/hd;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/hd;->c(Lcom/inisoft/mediaplayer/hd;)Lcom/inisoft/mediaplayer/fs;

    move-result-object v0

    iget-object v1, p0, Lcom/inisoft/mediaplayer/hf;->a:Lcom/inisoft/mediaplayer/hd;

    iget-boolean v1, v1, Lcom/inisoft/mediaplayer/hd;->a:Z

    iget-object v2, p0, Lcom/inisoft/mediaplayer/hf;->a:Lcom/inisoft/mediaplayer/hd;

    invoke-static {v2}, Lcom/inisoft/mediaplayer/hd;->b(Lcom/inisoft/mediaplayer/hd;)I

    move-result v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/inisoft/mediaplayer/fs;->a(ZII)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/hf;->a:Lcom/inisoft/mediaplayer/hd;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/hd;->e(Lcom/inisoft/mediaplayer/hd;)Lcom/inisoft/mediaplayer/hk;

    move-result-object v0

    iget-object v1, p0, Lcom/inisoft/mediaplayer/hf;->a:Lcom/inisoft/mediaplayer/hd;

    invoke-static {v1}, Lcom/inisoft/mediaplayer/hd;->f(Lcom/inisoft/mediaplayer/hd;)Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/inisoft/mediaplayer/hk;->a(Z)V

    :cond_1
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/inisoft/mediaplayer/hf;->a:Lcom/inisoft/mediaplayer/hd;

    iget v2, v0, Lcom/inisoft/mediaplayer/hi;->b:I

    invoke-static {v1, v2}, Lcom/inisoft/mediaplayer/hd;->a(Lcom/inisoft/mediaplayer/hd;I)V

    iget-object v1, p0, Lcom/inisoft/mediaplayer/hf;->a:Lcom/inisoft/mediaplayer/hd;

    iget-object v0, v0, Lcom/inisoft/mediaplayer/hi;->c:Lcom/inisoft/mediaplayer/hu;

    iget-boolean v0, v0, Lcom/inisoft/mediaplayer/hu;->a:Z

    iput-boolean v0, v1, Lcom/inisoft/mediaplayer/hd;->a:Z

    goto :goto_1
.end method
