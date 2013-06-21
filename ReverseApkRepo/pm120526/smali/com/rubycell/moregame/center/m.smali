.class final Lcom/rubycell/moregame/center/m;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;


# instance fields
.field final synthetic a:Lcom/rubycell/moregame/center/MoreGameView;


# direct methods
.method private constructor <init>(Lcom/rubycell/moregame/center/MoreGameView;)V
    .locals 0

    iput-object p1, p0, Lcom/rubycell/moregame/center/m;->a:Lcom/rubycell/moregame/center/MoreGameView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/rubycell/moregame/center/MoreGameView;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/rubycell/moregame/center/m;-><init>(Lcom/rubycell/moregame/center/MoreGameView;)V

    return-void
.end method


# virtual methods
.method public final onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 6

    const/4 v3, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v2, 0x41f0

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_3

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v2, 0x4396

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_3

    cmpl-float v1, v0, v3

    if-lez v1, :cond_1

    iget-object v0, p0, Lcom/rubycell/moregame/center/m;->a:Lcom/rubycell/moregame/center/MoreGameView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/rubycell/moregame/center/MoreGameView;->a(Lcom/rubycell/moregame/center/MoreGameView;I)V

    iget-object v0, p0, Lcom/rubycell/moregame/center/m;->a:Lcom/rubycell/moregame/center/MoreGameView;

    invoke-virtual {v0}, Lcom/rubycell/moregame/center/MoreGameView;->getMeasuredWidth()I

    move-result v0

    iget-object v1, p0, Lcom/rubycell/moregame/center/m;->a:Lcom/rubycell/moregame/center/MoreGameView;

    iget-object v2, p0, Lcom/rubycell/moregame/center/m;->a:Lcom/rubycell/moregame/center/MoreGameView;

    invoke-static {v2}, Lcom/rubycell/moregame/center/MoreGameView;->a(Lcom/rubycell/moregame/center/MoreGameView;)I

    move-result v2

    iget-object v3, p0, Lcom/rubycell/moregame/center/m;->a:Lcom/rubycell/moregame/center/MoreGameView;

    invoke-static {v3}, Lcom/rubycell/moregame/center/MoreGameView;->b(Lcom/rubycell/moregame/center/MoreGameView;)I

    move-result v3

    sub-int/2addr v3, v5

    if-ge v2, v3, :cond_0

    iget-object v2, p0, Lcom/rubycell/moregame/center/m;->a:Lcom/rubycell/moregame/center/MoreGameView;

    invoke-static {v2}, Lcom/rubycell/moregame/center/MoreGameView;->a(Lcom/rubycell/moregame/center/MoreGameView;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    :goto_0
    invoke-static {v1, v2}, Lcom/rubycell/moregame/center/MoreGameView;->b(Lcom/rubycell/moregame/center/MoreGameView;I)V

    iget-object v1, p0, Lcom/rubycell/moregame/center/m;->a:Lcom/rubycell/moregame/center/MoreGameView;

    invoke-static {v1}, Lcom/rubycell/moregame/center/MoreGameView;->a(Lcom/rubycell/moregame/center/MoreGameView;)I

    move-result v1

    mul-int/2addr v0, v1

    iget-object v1, p0, Lcom/rubycell/moregame/center/m;->a:Lcom/rubycell/moregame/center/MoreGameView;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/rubycell/moregame/center/MoreGameView;->smoothScrollTo(II)V

    iget-object v1, p0, Lcom/rubycell/moregame/center/m;->a:Lcom/rubycell/moregame/center/MoreGameView;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/rubycell/moregame/center/MoreGameView;->scrollTo(II)V

    iget-object v0, p0, Lcom/rubycell/moregame/center/m;->a:Lcom/rubycell/moregame/center/MoreGameView;

    iget-object v1, p0, Lcom/rubycell/moregame/center/m;->a:Lcom/rubycell/moregame/center/MoreGameView;

    invoke-static {v1}, Lcom/rubycell/moregame/center/MoreGameView;->a(Lcom/rubycell/moregame/center/MoreGameView;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/rubycell/moregame/center/MoreGameView;->setImageForPage(I)V

    move v0, v5

    :goto_1
    return v0

    :cond_0
    iget-object v2, p0, Lcom/rubycell/moregame/center/m;->a:Lcom/rubycell/moregame/center/MoreGameView;

    invoke-static {v2}, Lcom/rubycell/moregame/center/MoreGameView;->b(Lcom/rubycell/moregame/center/MoreGameView;)I

    move-result v2

    sub-int/2addr v2, v5

    goto :goto_0

    :cond_1
    cmpg-float v0, v0, v3

    if-gez v0, :cond_3

    iget-object v0, p0, Lcom/rubycell/moregame/center/m;->a:Lcom/rubycell/moregame/center/MoreGameView;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/rubycell/moregame/center/MoreGameView;->a(Lcom/rubycell/moregame/center/MoreGameView;I)V

    iget-object v0, p0, Lcom/rubycell/moregame/center/m;->a:Lcom/rubycell/moregame/center/MoreGameView;

    invoke-virtual {v0}, Lcom/rubycell/moregame/center/MoreGameView;->getMeasuredWidth()I

    move-result v0

    iget-object v1, p0, Lcom/rubycell/moregame/center/m;->a:Lcom/rubycell/moregame/center/MoreGameView;

    iget-object v2, p0, Lcom/rubycell/moregame/center/m;->a:Lcom/rubycell/moregame/center/MoreGameView;

    invoke-static {v2}, Lcom/rubycell/moregame/center/MoreGameView;->a(Lcom/rubycell/moregame/center/MoreGameView;)I

    move-result v2

    if-lez v2, :cond_2

    iget-object v2, p0, Lcom/rubycell/moregame/center/m;->a:Lcom/rubycell/moregame/center/MoreGameView;

    invoke-static {v2}, Lcom/rubycell/moregame/center/MoreGameView;->a(Lcom/rubycell/moregame/center/MoreGameView;)I

    move-result v2

    sub-int/2addr v2, v5

    :goto_2
    invoke-static {v1, v2}, Lcom/rubycell/moregame/center/MoreGameView;->b(Lcom/rubycell/moregame/center/MoreGameView;I)V

    iget-object v1, p0, Lcom/rubycell/moregame/center/m;->a:Lcom/rubycell/moregame/center/MoreGameView;

    invoke-static {v1}, Lcom/rubycell/moregame/center/MoreGameView;->a(Lcom/rubycell/moregame/center/MoreGameView;)I

    move-result v1

    mul-int/2addr v0, v1

    iget-object v1, p0, Lcom/rubycell/moregame/center/m;->a:Lcom/rubycell/moregame/center/MoreGameView;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/rubycell/moregame/center/MoreGameView;->smoothScrollTo(II)V

    iget-object v1, p0, Lcom/rubycell/moregame/center/m;->a:Lcom/rubycell/moregame/center/MoreGameView;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/rubycell/moregame/center/MoreGameView;->scrollTo(II)V

    iget-object v0, p0, Lcom/rubycell/moregame/center/m;->a:Lcom/rubycell/moregame/center/MoreGameView;

    iget-object v1, p0, Lcom/rubycell/moregame/center/m;->a:Lcom/rubycell/moregame/center/MoreGameView;

    invoke-static {v1}, Lcom/rubycell/moregame/center/MoreGameView;->a(Lcom/rubycell/moregame/center/MoreGameView;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/rubycell/moregame/center/MoreGameView;->setImageForPage(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v5

    goto :goto_1

    :cond_2
    move v2, v4

    goto :goto_2

    :catch_0
    move-exception v0

    const-string v1, "Fling"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "There was an error processing the Fling event:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    move v0, v4

    goto :goto_1
.end method
