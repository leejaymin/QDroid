.class final Lcom/inisoft/mediaplayer/hg;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic a:Lcom/inisoft/mediaplayer/hd;


# direct methods
.method constructor <init>(Lcom/inisoft/mediaplayer/hd;)V
    .locals 0

    iput-object p1, p0, Lcom/inisoft/mediaplayer/hg;->a:Lcom/inisoft/mediaplayer/hd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object v0, p0, Lcom/inisoft/mediaplayer/hg;->a:Lcom/inisoft/mediaplayer/hd;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/hd;->e(Lcom/inisoft/mediaplayer/hd;)Lcom/inisoft/mediaplayer/hk;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/hg;->a:Lcom/inisoft/mediaplayer/hd;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/hd;->e(Lcom/inisoft/mediaplayer/hd;)Lcom/inisoft/mediaplayer/hk;

    move-result-object v0

    iget-object v1, p0, Lcom/inisoft/mediaplayer/hg;->a:Lcom/inisoft/mediaplayer/hd;

    invoke-static {v1}, Lcom/inisoft/mediaplayer/hd;->f(Lcom/inisoft/mediaplayer/hd;)Z

    invoke-interface {v0}, Lcom/inisoft/mediaplayer/hk;->a()V

    :cond_0
    return-void
.end method
