.class final Lcom/inisoft/mediaplayer/cy;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:Lcom/inisoft/mediaplayer/cx;


# direct methods
.method constructor <init>(Lcom/inisoft/mediaplayer/cx;)V
    .locals 0

    iput-object p1, p0, Lcom/inisoft/mediaplayer/cy;->a:Lcom/inisoft/mediaplayer/cx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/cy;->a:Lcom/inisoft/mediaplayer/cx;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/cx;->a(Lcom/inisoft/mediaplayer/cx;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/cy;->a:Lcom/inisoft/mediaplayer/cx;

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/cx;->c()V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
