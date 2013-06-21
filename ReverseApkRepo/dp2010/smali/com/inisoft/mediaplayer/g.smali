.class final Lcom/inisoft/mediaplayer/g;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# instance fields
.field final synthetic a:Lcom/inisoft/mediaplayer/f;


# direct methods
.method constructor <init>(Lcom/inisoft/mediaplayer/f;)V
    .locals 0

    iput-object p1, p0, Lcom/inisoft/mediaplayer/g;->a:Lcom/inisoft/mediaplayer/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/g;->a:Lcom/inisoft/mediaplayer/f;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/f;->a(Lcom/inisoft/mediaplayer/f;)Lcom/inisoft/mediaplayer/e;

    move-result-object v0

    invoke-static {v0}, Lcom/inisoft/mediaplayer/e;->c(Lcom/inisoft/mediaplayer/e;)Ljava/lang/Thread;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/g;->a:Lcom/inisoft/mediaplayer/f;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/f;->a(Lcom/inisoft/mediaplayer/f;)Lcom/inisoft/mediaplayer/e;

    move-result-object v0

    invoke-static {v0}, Lcom/inisoft/mediaplayer/e;->c(Lcom/inisoft/mediaplayer/e;)Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/g;->a:Lcom/inisoft/mediaplayer/f;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/f;->a(Lcom/inisoft/mediaplayer/f;)Lcom/inisoft/mediaplayer/e;

    move-result-object v0

    invoke-static {v0}, Lcom/inisoft/mediaplayer/e;->d(Lcom/inisoft/mediaplayer/e;)V

    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    const/4 v0, 0x0

    return v0
.end method
