.class final Lcom/inisoft/mediaplayer/fe;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field a:F

.field final synthetic b:Lcom/inisoft/mediaplayer/PlayerActivity;


# direct methods
.method constructor <init>(Lcom/inisoft/mediaplayer/PlayerActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/inisoft/mediaplayer/fe;->b:Lcom/inisoft/mediaplayer/PlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    const/4 v1, 0x0

    const/high16 v4, 0x4120

    const/4 v0, 0x1

    iget-object v2, p0, Lcom/inisoft/mediaplayer/fe;->b:Lcom/inisoft/mediaplayer/PlayerActivity;

    invoke-static {v2}, Lcom/inisoft/mediaplayer/PlayerActivity;->a(Lcom/inisoft/mediaplayer/PlayerActivity;)Lcom/inisoft/mediaplayer/fs;

    move-result-object v2

    invoke-virtual {v2}, Lcom/inisoft/mediaplayer/fs;->L()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/inisoft/mediaplayer/fe;->b:Lcom/inisoft/mediaplayer/PlayerActivity;

    invoke-static {v2}, Lcom/inisoft/mediaplayer/PlayerActivity;->a(Lcom/inisoft/mediaplayer/PlayerActivity;)Lcom/inisoft/mediaplayer/fs;

    move-result-object v2

    invoke-virtual {v2}, Lcom/inisoft/mediaplayer/fs;->D()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iput v2, p0, Lcom/inisoft/mediaplayer/fe;->a:F

    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/inisoft/mediaplayer/fe;->b:Lcom/inisoft/mediaplayer/PlayerActivity;

    iget-object v2, v2, Lcom/inisoft/mediaplayer/PlayerActivity;->f:Lcom/inisoft/mediaplayer/fq;

    if-eqz v2, :cond_3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget v3, p0, Lcom/inisoft/mediaplayer/fe;->a:F

    cmpg-float v3, v3, v2

    if-gez v3, :cond_8

    iget v3, p0, Lcom/inisoft/mediaplayer/fe;->a:F

    sub-float/2addr v2, v3

    cmpl-float v2, v2, v4

    if-lez v2, :cond_3

    iget-object v2, p0, Lcom/inisoft/mediaplayer/fe;->b:Lcom/inisoft/mediaplayer/PlayerActivity;

    iget-object v2, v2, Lcom/inisoft/mediaplayer/PlayerActivity;->f:Lcom/inisoft/mediaplayer/fq;

    invoke-interface {v2, v1}, Lcom/inisoft/mediaplayer/fq;->c(Z)Z

    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/inisoft/mediaplayer/fe;->b:Lcom/inisoft/mediaplayer/PlayerActivity;

    invoke-static {v1}, Lcom/inisoft/mediaplayer/PlayerActivity;->w(Lcom/inisoft/mediaplayer/PlayerActivity;)Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/inisoft/mediaplayer/fe;->b:Lcom/inisoft/mediaplayer/PlayerActivity;

    invoke-static {v1}, Lcom/inisoft/mediaplayer/PlayerActivity;->d(Lcom/inisoft/mediaplayer/PlayerActivity;)Lcom/inisoft/mediaplayer/fn;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/inisoft/mediaplayer/fe;->b:Lcom/inisoft/mediaplayer/PlayerActivity;

    invoke-static {v1}, Lcom/inisoft/mediaplayer/PlayerActivity;->d(Lcom/inisoft/mediaplayer/PlayerActivity;)Lcom/inisoft/mediaplayer/fn;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/inisoft/mediaplayer/fn;->c(Z)V

    iget-object v1, p0, Lcom/inisoft/mediaplayer/fe;->b:Lcom/inisoft/mediaplayer/PlayerActivity;

    invoke-static {v1}, Lcom/inisoft/mediaplayer/PlayerActivity;->d(Lcom/inisoft/mediaplayer/PlayerActivity;)Lcom/inisoft/mediaplayer/fn;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/fn;->e()V

    :cond_4
    iget-object v1, p0, Lcom/inisoft/mediaplayer/fe;->b:Lcom/inisoft/mediaplayer/PlayerActivity;

    invoke-static {v1}, Lcom/inisoft/mediaplayer/PlayerActivity;->e(Lcom/inisoft/mediaplayer/PlayerActivity;)Lcom/inisoft/mediaplayer/hm;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/inisoft/mediaplayer/fe;->b:Lcom/inisoft/mediaplayer/PlayerActivity;

    invoke-static {v1}, Lcom/inisoft/mediaplayer/PlayerActivity;->e(Lcom/inisoft/mediaplayer/PlayerActivity;)Lcom/inisoft/mediaplayer/hm;

    move-result-object v1

    const/16 v2, -0x100

    invoke-virtual {v1, v2}, Lcom/inisoft/mediaplayer/hm;->c(I)V

    :cond_5
    iget-object v1, p0, Lcom/inisoft/mediaplayer/fe;->b:Lcom/inisoft/mediaplayer/PlayerActivity;

    invoke-static {v1}, Lcom/inisoft/mediaplayer/PlayerActivity;->b(Lcom/inisoft/mediaplayer/PlayerActivity;)Lcom/inisoft/mediaplayer/VideoView;

    move-result-object v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/inisoft/mediaplayer/fe;->b:Lcom/inisoft/mediaplayer/PlayerActivity;

    invoke-static {v1}, Lcom/inisoft/mediaplayer/PlayerActivity;->b(Lcom/inisoft/mediaplayer/PlayerActivity;)Lcom/inisoft/mediaplayer/VideoView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/VideoView;->e()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/inisoft/mediaplayer/fe;->b:Lcom/inisoft/mediaplayer/PlayerActivity;

    invoke-static {v1, v0}, Lcom/inisoft/mediaplayer/PlayerActivity;->c(Lcom/inisoft/mediaplayer/PlayerActivity;Z)V

    iget-object v1, p0, Lcom/inisoft/mediaplayer/fe;->b:Lcom/inisoft/mediaplayer/PlayerActivity;

    invoke-static {v1}, Lcom/inisoft/mediaplayer/PlayerActivity;->b(Lcom/inisoft/mediaplayer/PlayerActivity;)Lcom/inisoft/mediaplayer/VideoView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/VideoView;->b()V

    :cond_6
    iget-object v1, p0, Lcom/inisoft/mediaplayer/fe;->b:Lcom/inisoft/mediaplayer/PlayerActivity;

    invoke-static {v1, v0}, Lcom/inisoft/mediaplayer/PlayerActivity;->d(Lcom/inisoft/mediaplayer/PlayerActivity;Z)V

    :cond_7
    iget-object v1, p0, Lcom/inisoft/mediaplayer/fe;->b:Lcom/inisoft/mediaplayer/PlayerActivity;

    invoke-static {v1}, Lcom/inisoft/mediaplayer/PlayerActivity;->m(Lcom/inisoft/mediaplayer/PlayerActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lcom/inisoft/mediaplayer/fe;->b:Lcom/inisoft/mediaplayer/PlayerActivity;

    invoke-static {v2}, Lcom/inisoft/mediaplayer/PlayerActivity;->m(Lcom/inisoft/mediaplayer/PlayerActivity;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v2, p0, Lcom/inisoft/mediaplayer/fe;->b:Lcom/inisoft/mediaplayer/PlayerActivity;

    invoke-static {v2}, Lcom/inisoft/mediaplayer/PlayerActivity;->m(Lcom/inisoft/mediaplayer/PlayerActivity;)Landroid/os/Handler;

    move-result-object v2

    const-wide/16 v3, 0x1f4

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    :cond_8
    iget v1, p0, Lcom/inisoft/mediaplayer/fe;->a:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_3

    iget v1, p0, Lcom/inisoft/mediaplayer/fe;->a:F

    sub-float/2addr v1, v2

    cmpl-float v1, v1, v4

    if-lez v1, :cond_3

    iget-object v1, p0, Lcom/inisoft/mediaplayer/fe;->b:Lcom/inisoft/mediaplayer/PlayerActivity;

    iget-object v1, v1, Lcom/inisoft/mediaplayer/PlayerActivity;->f:Lcom/inisoft/mediaplayer/fq;

    invoke-interface {v1, v0}, Lcom/inisoft/mediaplayer/fq;->c(Z)Z

    goto/16 :goto_1
.end method
