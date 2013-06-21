.class final Lcom/inisoft/mediaplayer/fb;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic a:Lcom/inisoft/mediaplayer/PlayerActivity;

.field private final synthetic b:Z


# direct methods
.method constructor <init>(Lcom/inisoft/mediaplayer/PlayerActivity;Z)V
    .locals 0

    iput-object p1, p0, Lcom/inisoft/mediaplayer/fb;->a:Lcom/inisoft/mediaplayer/PlayerActivity;

    iput-boolean p2, p0, Lcom/inisoft/mediaplayer/fb;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/fb;->a:Lcom/inisoft/mediaplayer/PlayerActivity;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/PlayerActivity;->b(Lcom/inisoft/mediaplayer/PlayerActivity;)Lcom/inisoft/mediaplayer/VideoView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/inisoft/mediaplayer/fb;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/fb;->a:Lcom/inisoft/mediaplayer/PlayerActivity;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/PlayerActivity;->b(Lcom/inisoft/mediaplayer/PlayerActivity;)Lcom/inisoft/mediaplayer/VideoView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/VideoView;->a()V

    :cond_0
    return-void
.end method
