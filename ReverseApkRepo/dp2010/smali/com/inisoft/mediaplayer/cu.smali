.class final Lcom/inisoft/mediaplayer/cu;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/inisoft/mediaplayer/cs;


# direct methods
.method constructor <init>(Lcom/inisoft/mediaplayer/cs;)V
    .locals 0

    iput-object p1, p0, Lcom/inisoft/mediaplayer/cu;->a:Lcom/inisoft/mediaplayer/cs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/inisoft/mediaplayer/cu;->a:Lcom/inisoft/mediaplayer/cs;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/cs;->a(Lcom/inisoft/mediaplayer/cs;)Lcom/inisoft/mediaplayer/fq;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/cu;->a:Lcom/inisoft/mediaplayer/cs;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/cs;->a(Lcom/inisoft/mediaplayer/cs;)Lcom/inisoft/mediaplayer/fq;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/inisoft/mediaplayer/fq;->b(Z)Z

    :cond_0
    iget-object v0, p0, Lcom/inisoft/mediaplayer/cu;->a:Lcom/inisoft/mediaplayer/cs;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/cs;->a(Lcom/inisoft/mediaplayer/cs;)Lcom/inisoft/mediaplayer/fq;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/cu;->a:Lcom/inisoft/mediaplayer/cs;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/cs;->a(Lcom/inisoft/mediaplayer/cs;)Lcom/inisoft/mediaplayer/fq;

    move-result-object v0

    const/16 v1, 0xbb8

    invoke-interface {v0, v1}, Lcom/inisoft/mediaplayer/fq;->a(I)V

    :cond_1
    return-void
.end method
