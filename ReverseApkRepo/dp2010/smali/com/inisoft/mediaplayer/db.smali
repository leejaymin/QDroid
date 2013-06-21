.class final Lcom/inisoft/mediaplayer/db;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field final synthetic a:Lcom/inisoft/mediaplayer/cx;


# direct methods
.method constructor <init>(Lcom/inisoft/mediaplayer/cx;)V
    .locals 0

    iput-object p1, p0, Lcom/inisoft/mediaplayer/db;->a:Lcom/inisoft/mediaplayer/cx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 4

    if-nez p3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/inisoft/mediaplayer/db;->a:Lcom/inisoft/mediaplayer/cx;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/cx;->b(Lcom/inisoft/mediaplayer/cx;)Lcom/inisoft/mediaplayer/df;

    move-result-object v0

    invoke-interface {v0}, Lcom/inisoft/mediaplayer/df;->c()I

    move-result v0

    int-to-long v0, v0

    int-to-long v2, p2

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iget-object v2, p0, Lcom/inisoft/mediaplayer/db;->a:Lcom/inisoft/mediaplayer/cx;

    invoke-static {v2}, Lcom/inisoft/mediaplayer/cx;->b(Lcom/inisoft/mediaplayer/cx;)Lcom/inisoft/mediaplayer/df;

    move-result-object v2

    long-to-int v3, v0

    invoke-interface {v2, v3}, Lcom/inisoft/mediaplayer/df;->a(I)V

    iget-object v2, p0, Lcom/inisoft/mediaplayer/db;->a:Lcom/inisoft/mediaplayer/cx;

    invoke-static {v2}, Lcom/inisoft/mediaplayer/cx;->d(Lcom/inisoft/mediaplayer/cx;)Landroid/widget/TextView;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/inisoft/mediaplayer/db;->a:Lcom/inisoft/mediaplayer/cx;

    invoke-static {v2}, Lcom/inisoft/mediaplayer/cx;->d(Lcom/inisoft/mediaplayer/cx;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lcom/inisoft/mediaplayer/db;->a:Lcom/inisoft/mediaplayer/cx;

    long-to-int v0, v0

    invoke-static {v3, v0}, Lcom/inisoft/mediaplayer/cx;->a(Lcom/inisoft/mediaplayer/cx;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public final onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/db;->a:Lcom/inisoft/mediaplayer/cx;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/cx;->c(Lcom/inisoft/mediaplayer/cx;)Lcom/inisoft/mediaplayer/fq;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/db;->a:Lcom/inisoft/mediaplayer/cx;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/cx;->c(Lcom/inisoft/mediaplayer/cx;)Lcom/inisoft/mediaplayer/fq;

    move-result-object v0

    invoke-interface {v0}, Lcom/inisoft/mediaplayer/fq;->a()V

    :cond_0
    iget-object v0, p0, Lcom/inisoft/mediaplayer/db;->a:Lcom/inisoft/mediaplayer/cx;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/inisoft/mediaplayer/cx;->a(Lcom/inisoft/mediaplayer/cx;Z)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/db;->a:Lcom/inisoft/mediaplayer/cx;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/cx;->c(Lcom/inisoft/mediaplayer/cx;)Lcom/inisoft/mediaplayer/fq;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/db;->a:Lcom/inisoft/mediaplayer/cx;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/cx;->c(Lcom/inisoft/mediaplayer/cx;)Lcom/inisoft/mediaplayer/fq;

    move-result-object v0

    invoke-interface {v0, v2, v2}, Lcom/inisoft/mediaplayer/fq;->a(ZI)V

    :cond_1
    return-void
.end method

.method public final onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/db;->a:Lcom/inisoft/mediaplayer/cx;

    invoke-static {v0, v2}, Lcom/inisoft/mediaplayer/cx;->a(Lcom/inisoft/mediaplayer/cx;Z)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/db;->a:Lcom/inisoft/mediaplayer/cx;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/cx;->e(Lcom/inisoft/mediaplayer/cx;)I

    iget-object v0, p0, Lcom/inisoft/mediaplayer/db;->a:Lcom/inisoft/mediaplayer/cx;

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/cx;->h()V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/db;->a:Lcom/inisoft/mediaplayer/cx;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/cx;->c(Lcom/inisoft/mediaplayer/cx;)Lcom/inisoft/mediaplayer/fq;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/db;->a:Lcom/inisoft/mediaplayer/cx;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/cx;->c(Lcom/inisoft/mediaplayer/cx;)Lcom/inisoft/mediaplayer/fq;

    move-result-object v0

    invoke-interface {v0}, Lcom/inisoft/mediaplayer/fq;->a()V

    :cond_0
    iget-object v0, p0, Lcom/inisoft/mediaplayer/db;->a:Lcom/inisoft/mediaplayer/cx;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/cx;->c(Lcom/inisoft/mediaplayer/cx;)Lcom/inisoft/mediaplayer/fq;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/db;->a:Lcom/inisoft/mediaplayer/cx;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/cx;->c(Lcom/inisoft/mediaplayer/cx;)Lcom/inisoft/mediaplayer/fq;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1, v2}, Lcom/inisoft/mediaplayer/fq;->a(ZI)V

    :cond_1
    return-void
.end method
