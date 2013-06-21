.class final Lcom/inisoft/mediaplayer/he;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/inisoft/mediaplayer/hd;


# direct methods
.method constructor <init>(Lcom/inisoft/mediaplayer/hd;)V
    .locals 0

    iput-object p1, p0, Lcom/inisoft/mediaplayer/he;->a:Lcom/inisoft/mediaplayer/hd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    iget-object v0, p0, Lcom/inisoft/mediaplayer/he;->a:Lcom/inisoft/mediaplayer/hd;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/hd;->e(Lcom/inisoft/mediaplayer/hd;)Lcom/inisoft/mediaplayer/hk;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/he;->a:Lcom/inisoft/mediaplayer/hd;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/hd;->c(Lcom/inisoft/mediaplayer/hd;)Lcom/inisoft/mediaplayer/fs;

    move-result-object v0

    iget-object v1, p0, Lcom/inisoft/mediaplayer/he;->a:Lcom/inisoft/mediaplayer/hd;

    iget-boolean v1, v1, Lcom/inisoft/mediaplayer/hd;->a:Z

    iget-object v2, p0, Lcom/inisoft/mediaplayer/he;->a:Lcom/inisoft/mediaplayer/hd;

    invoke-static {v2}, Lcom/inisoft/mediaplayer/hd;->b(Lcom/inisoft/mediaplayer/hd;)I

    move-result v2

    iget-object v3, p0, Lcom/inisoft/mediaplayer/he;->a:Lcom/inisoft/mediaplayer/hd;

    invoke-static {v3}, Lcom/inisoft/mediaplayer/hd;->d(Lcom/inisoft/mediaplayer/hd;)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/inisoft/mediaplayer/fs;->a(ZII)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/he;->a:Lcom/inisoft/mediaplayer/hd;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/hd;->e(Lcom/inisoft/mediaplayer/hd;)Lcom/inisoft/mediaplayer/hk;

    move-result-object v0

    iget-object v1, p0, Lcom/inisoft/mediaplayer/he;->a:Lcom/inisoft/mediaplayer/hd;

    invoke-static {v1}, Lcom/inisoft/mediaplayer/hd;->f(Lcom/inisoft/mediaplayer/hd;)Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/inisoft/mediaplayer/hk;->a(Z)V

    :cond_0
    return-void
.end method
