.class final Lcom/inisoft/mediaplayer/b/al;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic a:Lcom/inisoft/mediaplayer/b/ak;


# direct methods
.method constructor <init>(Lcom/inisoft/mediaplayer/b/ak;)V
    .locals 0

    iput-object p1, p0, Lcom/inisoft/mediaplayer/b/al;->a:Lcom/inisoft/mediaplayer/b/ak;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/b/al;->a:Lcom/inisoft/mediaplayer/b/ak;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/b/ak;->a(Lcom/inisoft/mediaplayer/b/ak;)Lcom/inisoft/mediaplayer/b/aj;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/b/al;->a:Lcom/inisoft/mediaplayer/b/ak;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/b/ak;->a(Lcom/inisoft/mediaplayer/b/ak;)Lcom/inisoft/mediaplayer/b/aj;

    move-result-object v0

    invoke-interface {v0}, Lcom/inisoft/mediaplayer/b/aj;->a()V

    :cond_0
    return-void
.end method
