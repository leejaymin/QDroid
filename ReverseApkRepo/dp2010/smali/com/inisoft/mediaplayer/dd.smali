.class final Lcom/inisoft/mediaplayer/dd;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/inisoft/mediaplayer/cx;


# direct methods
.method constructor <init>(Lcom/inisoft/mediaplayer/cx;)V
    .locals 0

    iput-object p1, p0, Lcom/inisoft/mediaplayer/dd;->a:Lcom/inisoft/mediaplayer/cx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/inisoft/mediaplayer/dd;->a:Lcom/inisoft/mediaplayer/cx;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/cx;->f(Lcom/inisoft/mediaplayer/cx;)Lcom/inisoft/mediaplayer/fs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/fs;->af()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/inisoft/mediaplayer/dd;->a:Lcom/inisoft/mediaplayer/cx;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/cx;->b(Lcom/inisoft/mediaplayer/cx;)Lcom/inisoft/mediaplayer/df;

    move-result-object v0

    invoke-interface {v0}, Lcom/inisoft/mediaplayer/df;->d()I

    move-result v0

    iget-object v1, p0, Lcom/inisoft/mediaplayer/dd;->a:Lcom/inisoft/mediaplayer/cx;

    invoke-static {v1}, Lcom/inisoft/mediaplayer/cx;->f(Lcom/inisoft/mediaplayer/cx;)Lcom/inisoft/mediaplayer/fs;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/fs;->ad()I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/inisoft/mediaplayer/dd;->a:Lcom/inisoft/mediaplayer/cx;

    invoke-static {v1}, Lcom/inisoft/mediaplayer/cx;->b(Lcom/inisoft/mediaplayer/cx;)Lcom/inisoft/mediaplayer/df;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/inisoft/mediaplayer/df;->a(I)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/dd;->a:Lcom/inisoft/mediaplayer/cx;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/cx;->e(Lcom/inisoft/mediaplayer/cx;)I

    iget-object v0, p0, Lcom/inisoft/mediaplayer/dd;->a:Lcom/inisoft/mediaplayer/cx;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/cx;->c(Lcom/inisoft/mediaplayer/cx;)Lcom/inisoft/mediaplayer/fq;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/dd;->a:Lcom/inisoft/mediaplayer/cx;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/cx;->c(Lcom/inisoft/mediaplayer/cx;)Lcom/inisoft/mediaplayer/fq;

    move-result-object v0

    invoke-interface {v0}, Lcom/inisoft/mediaplayer/fq;->a()V

    goto :goto_0
.end method
