.class final Lcom/inisoft/mediaplayer/hr;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/inisoft/mediaplayer/hq;


# direct methods
.method constructor <init>(Lcom/inisoft/mediaplayer/hq;)V
    .locals 0

    iput-object p1, p0, Lcom/inisoft/mediaplayer/hr;->a:Lcom/inisoft/mediaplayer/hq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/inisoft/mediaplayer/hr;->a:Lcom/inisoft/mediaplayer/hq;

    iget-object v0, v0, Lcom/inisoft/mediaplayer/hq;->a:Lcom/inisoft/mediaplayer/hp;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/hp;->a(Lcom/inisoft/mediaplayer/hp;)Lcom/inisoft/mediaplayer/hn;

    move-result-object v0

    invoke-static {v0}, Lcom/inisoft/mediaplayer/hn;->a(Lcom/inisoft/mediaplayer/hn;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/inisoft/mediaplayer/hr;->a:Lcom/inisoft/mediaplayer/hq;

    iget-object v1, v1, Lcom/inisoft/mediaplayer/hq;->a:Lcom/inisoft/mediaplayer/hp;

    iget v1, v1, Lcom/inisoft/mediaplayer/hp;->d:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inisoft/mediaplayer/cj;

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/cj;->f()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    iget-object v1, p0, Lcom/inisoft/mediaplayer/hr;->a:Lcom/inisoft/mediaplayer/hq;

    iget-object v1, v1, Lcom/inisoft/mediaplayer/hq;->a:Lcom/inisoft/mediaplayer/hp;

    iget-object v1, v1, Lcom/inisoft/mediaplayer/hp;->c:Landroid/widget/TextView;

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    sget-object v2, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v1, v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
