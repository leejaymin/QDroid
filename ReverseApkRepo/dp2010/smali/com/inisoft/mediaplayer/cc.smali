.class final Lcom/inisoft/mediaplayer/cc;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/inisoft/mediaplayer/by;


# direct methods
.method constructor <init>(Lcom/inisoft/mediaplayer/by;)V
    .locals 0

    iput-object p1, p0, Lcom/inisoft/mediaplayer/cc;->a:Lcom/inisoft/mediaplayer/by;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/inisoft/mediaplayer/cc;->a:Lcom/inisoft/mediaplayer/by;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/by;->e(Lcom/inisoft/mediaplayer/by;)Lcom/inisoft/mediaplayer/ci;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/cc;->a:Lcom/inisoft/mediaplayer/by;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/by;->e(Lcom/inisoft/mediaplayer/by;)Lcom/inisoft/mediaplayer/ci;

    move-result-object v0

    iget-object v1, p0, Lcom/inisoft/mediaplayer/cc;->a:Lcom/inisoft/mediaplayer/by;

    invoke-static {v1}, Lcom/inisoft/mediaplayer/by;->d(Lcom/inisoft/mediaplayer/by;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/inisoft/mediaplayer/ci;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
