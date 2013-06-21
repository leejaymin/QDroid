.class final Lcom/inisoft/mediaplayer/bn;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic a:Lcom/inisoft/mediaplayer/bj;


# direct methods
.method constructor <init>(Lcom/inisoft/mediaplayer/bj;)V
    .locals 0

    iput-object p1, p0, Lcom/inisoft/mediaplayer/bn;->a:Lcom/inisoft/mediaplayer/bj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/bn;->a:Lcom/inisoft/mediaplayer/bj;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/bj;->b(Lcom/inisoft/mediaplayer/bj;)Lcom/inisoft/mediaplayer/bo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/bn;->a:Lcom/inisoft/mediaplayer/bj;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/bj;->b(Lcom/inisoft/mediaplayer/bj;)Lcom/inisoft/mediaplayer/bo;

    move-result-object v0

    invoke-interface {v0}, Lcom/inisoft/mediaplayer/bo;->a()V

    :cond_0
    return-void
.end method
