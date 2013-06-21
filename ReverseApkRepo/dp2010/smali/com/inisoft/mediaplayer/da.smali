.class final Lcom/inisoft/mediaplayer/da;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/inisoft/mediaplayer/cx;


# direct methods
.method constructor <init>(Lcom/inisoft/mediaplayer/cx;)V
    .locals 0

    iput-object p1, p0, Lcom/inisoft/mediaplayer/da;->a:Lcom/inisoft/mediaplayer/cx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/da;->a:Lcom/inisoft/mediaplayer/cx;

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/cx;->i()V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/da;->a:Lcom/inisoft/mediaplayer/cx;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/cx;->c(Lcom/inisoft/mediaplayer/cx;)Lcom/inisoft/mediaplayer/fq;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/da;->a:Lcom/inisoft/mediaplayer/cx;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/cx;->c(Lcom/inisoft/mediaplayer/cx;)Lcom/inisoft/mediaplayer/fq;

    move-result-object v0

    invoke-interface {v0}, Lcom/inisoft/mediaplayer/fq;->a()V

    :cond_0
    return-void
.end method
