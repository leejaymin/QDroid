.class final Lcom/inisoft/mediaplayer/de;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/inisoft/mediaplayer/cx;


# direct methods
.method constructor <init>(Lcom/inisoft/mediaplayer/cx;)V
    .locals 0

    iput-object p1, p0, Lcom/inisoft/mediaplayer/de;->a:Lcom/inisoft/mediaplayer/cx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    const/4 v4, 0x4

    const/4 v3, 0x3

    const/4 v2, 0x2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/de;->a:Lcom/inisoft/mediaplayer/cx;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/cx;->f(Lcom/inisoft/mediaplayer/cx;)Lcom/inisoft/mediaplayer/fs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/fs;->ac()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/de;->a:Lcom/inisoft/mediaplayer/cx;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/cx;->f(Lcom/inisoft/mediaplayer/cx;)Lcom/inisoft/mediaplayer/fs;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/inisoft/mediaplayer/fs;->u(I)V

    :goto_0
    iget-object v0, p0, Lcom/inisoft/mediaplayer/de;->a:Lcom/inisoft/mediaplayer/cx;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/cx;->g(Lcom/inisoft/mediaplayer/cx;)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/de;->a:Lcom/inisoft/mediaplayer/cx;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/cx;->b(Lcom/inisoft/mediaplayer/cx;)Lcom/inisoft/mediaplayer/df;

    move-result-object v0

    iget-object v1, p0, Lcom/inisoft/mediaplayer/de;->a:Lcom/inisoft/mediaplayer/cx;

    invoke-static {v1}, Lcom/inisoft/mediaplayer/cx;->f(Lcom/inisoft/mediaplayer/cx;)Lcom/inisoft/mediaplayer/fs;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/fs;->ac()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/inisoft/mediaplayer/df;->b(I)V

    return-void

    :cond_0
    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/de;->a:Lcom/inisoft/mediaplayer/cx;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/cx;->f(Lcom/inisoft/mediaplayer/cx;)Lcom/inisoft/mediaplayer/fs;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/inisoft/mediaplayer/fs;->u(I)V

    goto :goto_0

    :cond_1
    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/inisoft/mediaplayer/de;->a:Lcom/inisoft/mediaplayer/cx;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/cx;->f(Lcom/inisoft/mediaplayer/cx;)Lcom/inisoft/mediaplayer/fs;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/inisoft/mediaplayer/fs;->u(I)V

    goto :goto_0

    :cond_2
    if-ne v0, v3, :cond_3

    iget-object v0, p0, Lcom/inisoft/mediaplayer/de;->a:Lcom/inisoft/mediaplayer/cx;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/cx;->f(Lcom/inisoft/mediaplayer/cx;)Lcom/inisoft/mediaplayer/fs;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/inisoft/mediaplayer/fs;->u(I)V

    goto :goto_0

    :cond_3
    if-ne v0, v4, :cond_4

    iget-object v0, p0, Lcom/inisoft/mediaplayer/de;->a:Lcom/inisoft/mediaplayer/cx;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/cx;->f(Lcom/inisoft/mediaplayer/cx;)Lcom/inisoft/mediaplayer/fs;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/inisoft/mediaplayer/fs;->u(I)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/inisoft/mediaplayer/de;->a:Lcom/inisoft/mediaplayer/cx;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/cx;->f(Lcom/inisoft/mediaplayer/cx;)Lcom/inisoft/mediaplayer/fs;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/inisoft/mediaplayer/fs;->u(I)V

    goto :goto_0
.end method
