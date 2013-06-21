.class final Lcom/inisoft/mediaplayer/ce;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/inisoft/mediaplayer/by;


# direct methods
.method constructor <init>(Lcom/inisoft/mediaplayer/by;)V
    .locals 0

    iput-object p1, p0, Lcom/inisoft/mediaplayer/ce;->a:Lcom/inisoft/mediaplayer/by;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/inisoft/mediaplayer/ce;->a:Lcom/inisoft/mediaplayer/by;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/by;->g(Lcom/inisoft/mediaplayer/by;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/ce;->a:Lcom/inisoft/mediaplayer/by;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/by;->a(Lcom/inisoft/mediaplayer/by;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0a00b0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/inisoft/mediaplayer/ce;->a:Lcom/inisoft/mediaplayer/by;

    invoke-static {v1}, Lcom/inisoft/mediaplayer/by;->e(Lcom/inisoft/mediaplayer/by;)Lcom/inisoft/mediaplayer/ci;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/inisoft/mediaplayer/ce;->a:Lcom/inisoft/mediaplayer/by;

    invoke-static {v1}, Lcom/inisoft/mediaplayer/by;->e(Lcom/inisoft/mediaplayer/by;)Lcom/inisoft/mediaplayer/ci;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/inisoft/mediaplayer/ci;->a(Ljava/lang/String;)V

    goto :goto_0
.end method
