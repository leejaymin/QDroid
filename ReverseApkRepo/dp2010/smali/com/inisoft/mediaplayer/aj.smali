.class final Lcom/inisoft/mediaplayer/aj;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/inisoft/mediaplayer/v;

.field private final synthetic b:Lcom/inisoft/mediaplayer/cj;

.field private final synthetic c:Lcom/inisoft/mediaplayer/e;


# direct methods
.method constructor <init>(Lcom/inisoft/mediaplayer/v;Lcom/inisoft/mediaplayer/cj;Lcom/inisoft/mediaplayer/e;)V
    .locals 0

    iput-object p1, p0, Lcom/inisoft/mediaplayer/aj;->a:Lcom/inisoft/mediaplayer/v;

    iput-object p2, p0, Lcom/inisoft/mediaplayer/aj;->b:Lcom/inisoft/mediaplayer/cj;

    iput-object p3, p0, Lcom/inisoft/mediaplayer/aj;->c:Lcom/inisoft/mediaplayer/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/inisoft/mediaplayer/aj;->b:Lcom/inisoft/mediaplayer/cj;

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/cj;->c()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/aj;->b:Lcom/inisoft/mediaplayer/cj;

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/cj;->q()V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/aj;->c:Lcom/inisoft/mediaplayer/e;

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/e;->d()V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
