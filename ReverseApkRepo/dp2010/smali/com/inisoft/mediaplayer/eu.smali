.class final Lcom/inisoft/mediaplayer/eu;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# instance fields
.field private final synthetic a:Lcom/inisoft/mediaplayer/PlayerActivity;


# direct methods
.method constructor <init>(Lcom/inisoft/mediaplayer/PlayerActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/inisoft/mediaplayer/eu;->a:Lcom/inisoft/mediaplayer/PlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/eu;->a:Lcom/inisoft/mediaplayer/PlayerActivity;

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/PlayerActivity;->finish()V

    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
