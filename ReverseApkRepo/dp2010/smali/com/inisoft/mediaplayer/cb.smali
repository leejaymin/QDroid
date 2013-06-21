.class final Lcom/inisoft/mediaplayer/cb;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/inisoft/mediaplayer/by;


# direct methods
.method constructor <init>(Lcom/inisoft/mediaplayer/by;)V
    .locals 0

    iput-object p1, p0, Lcom/inisoft/mediaplayer/cb;->a:Lcom/inisoft/mediaplayer/by;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/cb;->a:Lcom/inisoft/mediaplayer/by;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/by;->f(Lcom/inisoft/mediaplayer/by;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/cb;->a:Lcom/inisoft/mediaplayer/by;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/by;->f(Lcom/inisoft/mediaplayer/by;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :cond_0
    return-void
.end method
