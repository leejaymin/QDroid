.class final Lcom/inisoft/mediaplayer/gh;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:Lcom/inisoft/mediaplayer/gb;

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:F

.field private g:F

.field private h:I


# direct methods
.method constructor <init>(Lcom/inisoft/mediaplayer/gb;)V
    .locals 2

    const/high16 v1, 0x3f80

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/inisoft/mediaplayer/gh;->a:Lcom/inisoft/mediaplayer/gb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/inisoft/mediaplayer/gh;->b:I

    iput v0, p0, Lcom/inisoft/mediaplayer/gh;->c:I

    iput v0, p0, Lcom/inisoft/mediaplayer/gh;->d:I

    iput v0, p0, Lcom/inisoft/mediaplayer/gh;->e:I

    iput v1, p0, Lcom/inisoft/mediaplayer/gh;->f:F

    iput v1, p0, Lcom/inisoft/mediaplayer/gh;->g:F

    iput v0, p0, Lcom/inisoft/mediaplayer/gh;->h:I

    return-void
.end method

.method private static a(Landroid/view/MotionEvent;)F
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    invoke-virtual {p0, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    sub-float/2addr v0, v1

    invoke-virtual {p0, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    invoke-virtual {p0, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    sub-float/2addr v1, v2

    mul-float/2addr v0, v0

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    invoke-static {v0}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v0

    return v0
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    const/4 v3, 0x2

    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gh;->a:Lcom/inisoft/mediaplayer/gb;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/gb;->e(Lcom/inisoft/mediaplayer/gb;)Lcom/inisoft/mediaplayer/fx;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gh;->a:Lcom/inisoft/mediaplayer/gb;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/gb;->e(Lcom/inisoft/mediaplayer/gb;)Lcom/inisoft/mediaplayer/fx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/fx;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/inisoft/mediaplayer/gh;->a:Lcom/inisoft/mediaplayer/gb;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/gb;->p(Lcom/inisoft/mediaplayer/gb;)Landroid/view/GestureDetector;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    :pswitch_1
    :try_start_1
    iget-object v1, p0, Lcom/inisoft/mediaplayer/gh;->a:Lcom/inisoft/mediaplayer/gb;

    invoke-static {v1}, Lcom/inisoft/mediaplayer/gb;->m(Lcom/inisoft/mediaplayer/gb;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    iput v1, p0, Lcom/inisoft/mediaplayer/gh;->d:I

    iget-object v1, p0, Lcom/inisoft/mediaplayer/gh;->a:Lcom/inisoft/mediaplayer/gb;

    invoke-static {v1}, Lcom/inisoft/mediaplayer/gb;->m(Lcom/inisoft/mediaplayer/gb;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    iput v1, p0, Lcom/inisoft/mediaplayer/gh;->e:I

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/inisoft/mediaplayer/gh;->b:I

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/inisoft/mediaplayer/gh;->c:I

    const/4 v1, 0x1

    iput v1, p0, Lcom/inisoft/mediaplayer/gh;->h:I

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :pswitch_2
    iget v2, p0, Lcom/inisoft/mediaplayer/gh;->h:I

    if-ne v2, v1, :cond_4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    float-to-int v2, v2

    iget v3, p0, Lcom/inisoft/mediaplayer/gh;->b:I

    sub-int/2addr v0, v3

    iget v3, p0, Lcom/inisoft/mediaplayer/gh;->c:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/inisoft/mediaplayer/gh;->a:Lcom/inisoft/mediaplayer/gb;

    invoke-static {v3}, Lcom/inisoft/mediaplayer/gb;->m(Lcom/inisoft/mediaplayer/gb;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v4, p0, Lcom/inisoft/mediaplayer/gh;->d:I

    add-int/2addr v0, v4

    iput v0, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gh;->a:Lcom/inisoft/mediaplayer/gb;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/gb;->m(Lcom/inisoft/mediaplayer/gb;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v3, p0, Lcom/inisoft/mediaplayer/gh;->e:I

    add-int/2addr v2, v3

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gh;->a:Lcom/inisoft/mediaplayer/gb;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/gb;->n(Lcom/inisoft/mediaplayer/gb;)Landroid/view/WindowManager;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gh;->a:Lcom/inisoft/mediaplayer/gb;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/gb;->o(Lcom/inisoft/mediaplayer/gb;)Landroid/widget/LinearLayout;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gh;->a:Lcom/inisoft/mediaplayer/gb;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/gb;->m(Lcom/inisoft/mediaplayer/gb;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gh;->a:Lcom/inisoft/mediaplayer/gb;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/gb;->n(Lcom/inisoft/mediaplayer/gb;)Landroid/view/WindowManager;

    move-result-object v0

    iget-object v2, p0, Lcom/inisoft/mediaplayer/gh;->a:Lcom/inisoft/mediaplayer/gb;

    invoke-static {v2}, Lcom/inisoft/mediaplayer/gb;->o(Lcom/inisoft/mediaplayer/gb;)Landroid/widget/LinearLayout;

    move-result-object v2

    iget-object v3, p0, Lcom/inisoft/mediaplayer/gh;->a:Lcom/inisoft/mediaplayer/gb;

    invoke-static {v3}, Lcom/inisoft/mediaplayer/gb;->m(Lcom/inisoft/mediaplayer/gb;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    iget-object v0, p0, Lcom/inisoft/mediaplayer/gh;->a:Lcom/inisoft/mediaplayer/gb;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/gb;->e(Lcom/inisoft/mediaplayer/gb;)Lcom/inisoft/mediaplayer/fx;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gh;->a:Lcom/inisoft/mediaplayer/gb;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/gb;->e(Lcom/inisoft/mediaplayer/gb;)Lcom/inisoft/mediaplayer/fx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/fx;->c()V

    :cond_3
    move v0, v1

    goto/16 :goto_0

    :cond_4
    iget v2, p0, Lcom/inisoft/mediaplayer/gh;->h:I

    if-ne v2, v3, :cond_0

    invoke-static {p2}, Lcom/inisoft/mediaplayer/gh;->a(Landroid/view/MotionEvent;)F

    move-result v0

    iput v0, p0, Lcom/inisoft/mediaplayer/gh;->g:F

    const-string v0, "PopupPlayActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ZOOM ACTION_MOVE : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/inisoft/mediaplayer/gh;->g:F

    iget v4, p0, Lcom/inisoft/mediaplayer/gh;->f:F

    sub-float/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gh;->a:Lcom/inisoft/mediaplayer/gb;

    iget v2, p0, Lcom/inisoft/mediaplayer/gh;->g:F

    iget v3, p0, Lcom/inisoft/mediaplayer/gh;->f:F

    sub-float/2addr v2, v3

    invoke-static {v0, v2}, Lcom/inisoft/mediaplayer/gb;->a(Lcom/inisoft/mediaplayer/gb;F)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gh;->a:Lcom/inisoft/mediaplayer/gb;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/gb;->e(Lcom/inisoft/mediaplayer/gb;)Lcom/inisoft/mediaplayer/fx;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/inisoft/mediaplayer/gh;->a:Lcom/inisoft/mediaplayer/gb;

    invoke-static {v0}, Lcom/inisoft/mediaplayer/gb;->e(Lcom/inisoft/mediaplayer/gb;)Lcom/inisoft/mediaplayer/fx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inisoft/mediaplayer/fx;->c()V

    :cond_5
    move v0, v1

    goto/16 :goto_0

    :pswitch_3
    const/4 v1, 0x0

    iput v1, p0, Lcom/inisoft/mediaplayer/gh;->h:I

    goto/16 :goto_0

    :pswitch_4
    const/4 v1, 0x2

    iput v1, p0, Lcom/inisoft/mediaplayer/gh;->h:I

    invoke-static {p2}, Lcom/inisoft/mediaplayer/gh;->a(Landroid/view/MotionEvent;)F

    move-result v1

    iput v1, p0, Lcom/inisoft/mediaplayer/gh;->g:F

    invoke-static {p2}, Lcom/inisoft/mediaplayer/gh;->a(Landroid/view/MotionEvent;)F

    move-result v1

    iput v1, p0, Lcom/inisoft/mediaplayer/gh;->f:F
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method
