.class final Lcom/inisoft/mediaplayer/cd;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic a:Lcom/inisoft/mediaplayer/by;


# direct methods
.method constructor <init>(Lcom/inisoft/mediaplayer/by;)V
    .locals 0

    iput-object p1, p0, Lcom/inisoft/mediaplayer/cd;->a:Lcom/inisoft/mediaplayer/by;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/cd;->a:Lcom/inisoft/mediaplayer/by;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/by;->e(Lcom/inisoft/mediaplayer/by;)Lcom/inisoft/mediaplayer/ci;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/cd;->a:Lcom/inisoft/mediaplayer/by;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/by;->e(Lcom/inisoft/mediaplayer/by;)Lcom/inisoft/mediaplayer/ci;

    move-result-object v0

    invoke-interface {v0}, Lcom/inisoft/mediaplayer/ci;->a()V

    :cond_0
    return-void
.end method
