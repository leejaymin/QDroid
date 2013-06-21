.class final Lcom/tequnique/camerax/bk;
.super Landroid/view/ViewGroup;

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# instance fields
.field private a:Landroid/view/SurfaceView;

.field private b:Landroid/view/SurfaceHolder;

.field private c:Landroid/hardware/Camera;

.field private d:Ljava/util/List;

.field private e:Landroid/hardware/Camera$Size;

.field private f:Z

.field private g:I


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/view/SurfaceView;ZI)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/tequnique/camerax/bk;->a:Landroid/view/SurfaceView;

    iput-object v1, p0, Lcom/tequnique/camerax/bk;->b:Landroid/view/SurfaceHolder;

    iput-object v1, p0, Lcom/tequnique/camerax/bk;->c:Landroid/hardware/Camera;

    iput-object v1, p0, Lcom/tequnique/camerax/bk;->d:Ljava/util/List;

    iput-object v1, p0, Lcom/tequnique/camerax/bk;->e:Landroid/hardware/Camera$Size;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tequnique/camerax/bk;->f:Z

    const/4 v0, 0x1

    iput v0, p0, Lcom/tequnique/camerax/bk;->g:I

    iput-object v1, p0, Lcom/tequnique/camerax/bk;->c:Landroid/hardware/Camera;

    iput-boolean p3, p0, Lcom/tequnique/camerax/bk;->f:Z

    iput-object p2, p0, Lcom/tequnique/camerax/bk;->a:Landroid/view/SurfaceView;

    iput p4, p0, Lcom/tequnique/camerax/bk;->g:I

    iget-object v0, p0, Lcom/tequnique/camerax/bk;->a:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/tequnique/camerax/bk;->b:Landroid/view/SurfaceHolder;

    iget-object v0, p0, Lcom/tequnique/camerax/bk;->b:Landroid/view/SurfaceHolder;

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    iget-object v0, p0, Lcom/tequnique/camerax/bk;->b:Landroid/view/SurfaceHolder;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setType(I)V

    return-void
.end method

.method private static a(Ljava/util/List;II)Landroid/hardware/Camera$Size;
    .locals 13

    const/4 v0, 0x0

    const-wide v3, 0x7fefffffffffffffL

    int-to-double v1, p1

    int-to-double v5, p2

    div-double v6, v1, v5

    if-nez p0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move-wide v1, v3

    move-object v5, v0

    :cond_1
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4

    if-nez v5, :cond_3

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_5

    :cond_3
    move-object v0, v5

    goto :goto_0

    :cond_4
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Size;

    iget v9, v0, Landroid/hardware/Camera$Size;->width:I

    int-to-double v9, v9

    iget v11, v0, Landroid/hardware/Camera$Size;->height:I

    int-to-double v11, v11

    div-double/2addr v9, v11

    sub-double/2addr v9, v6

    invoke-static {v9, v10}, Ljava/lang/Math;->abs(D)D

    move-result-wide v9

    const-wide v11, 0x3fb999999999999aL

    cmpl-double v9, v9, v11

    if-gtz v9, :cond_1

    iget v9, v0, Landroid/hardware/Camera$Size;->height:I

    sub-int/2addr v9, p2

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    int-to-double v9, v9

    cmpg-double v9, v9, v1

    if-gez v9, :cond_1

    iget v1, v0, Landroid/hardware/Camera$Size;->height:I

    sub-int/2addr v1, p2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-double v1, v1

    move-object v5, v0

    goto :goto_1

    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Size;

    iget v2, v0, Landroid/hardware/Camera$Size;->height:I

    sub-int/2addr v2, p2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-double v6, v2

    cmpg-double v2, v6, v3

    if-gez v2, :cond_2

    iget v2, v0, Landroid/hardware/Camera$Size;->height:I

    sub-int/2addr v2, p2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-double v3, v2

    move-object v5, v0

    goto :goto_2
.end method


# virtual methods
.method public final a()Landroid/hardware/Camera$Size;
    .locals 1

    iget-object v0, p0, Lcom/tequnique/camerax/bk;->e:Landroid/hardware/Camera$Size;

    return-object v0
.end method

.method public final a(Landroid/hardware/Camera;)V
    .locals 1

    iput-object p1, p0, Lcom/tequnique/camerax/bk;->c:Landroid/hardware/Camera;

    iget-object v0, p0, Lcom/tequnique/camerax/bk;->c:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tequnique/camerax/bk;->c:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/tequnique/camerax/bk;->d:Ljava/util/List;

    :cond_0
    return-void
.end method

.method protected final onLayout(ZIIII)V
    .locals 8

    const/4 v7, 0x0

    if-eqz p1, :cond_0

    iget-object v4, p0, Lcom/tequnique/camerax/bk;->a:Landroid/view/SurfaceView;

    sub-int v3, p4, p2

    sub-int v1, p5, p3

    iget-object v0, p0, Lcom/tequnique/camerax/bk;->e:Landroid/hardware/Camera$Size;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tequnique/camerax/bk;->e:Landroid/hardware/Camera$Size;

    iget v2, v0, Landroid/hardware/Camera$Size;->width:I

    iget-object v0, p0, Lcom/tequnique/camerax/bk;->e:Landroid/hardware/Camera$Size;

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    :goto_0
    mul-int v5, v3, v0

    mul-int v6, v1, v2

    if-le v5, v6, :cond_1

    mul-int/2addr v2, v1

    div-int v0, v2, v0

    sub-int v2, v3, v0

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v3

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {v4, v2, v7, v0, v1}, Landroid/view/View;->layout(IIII)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    mul-int/2addr v0, v3

    div-int/2addr v0, v2

    sub-int v2, v1, v0

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {v4, v7, v2, v3, v0}, Landroid/view/View;->layout(IIII)V

    goto :goto_1

    :cond_2
    move v0, v1

    move v2, v3

    goto :goto_0
.end method

.method protected final onMeasure(II)V
    .locals 3

    invoke-virtual {p0}, Lcom/tequnique/camerax/bk;->getSuggestedMinimumWidth()I

    move-result v0

    invoke-static {v0, p1}, Lcom/tequnique/camerax/bk;->resolveSize(II)I

    move-result v0

    invoke-virtual {p0}, Lcom/tequnique/camerax/bk;->getSuggestedMinimumHeight()I

    move-result v1

    invoke-static {v1, p2}, Lcom/tequnique/camerax/bk;->resolveSize(II)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/tequnique/camerax/bk;->setMeasuredDimension(II)V

    iget-object v2, p0, Lcom/tequnique/camerax/bk;->c:Landroid/hardware/Camera;

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/tequnique/camerax/bk;->g:I

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/tequnique/camerax/bk;->d:Ljava/util/List;

    invoke-static {v2, v0, v1}, Lcom/tequnique/camerax/bk;->a(Ljava/util/List;II)Landroid/hardware/Camera$Size;

    move-result-object v0

    iput-object v0, p0, Lcom/tequnique/camerax/bk;->e:Landroid/hardware/Camera$Size;

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/tequnique/camerax/bk;->d:Ljava/util/List;

    iget v1, p0, Lcom/tequnique/camerax/bk;->g:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Size;

    iput-object v0, p0, Lcom/tequnique/camerax/bk;->e:Landroid/hardware/Camera$Size;

    goto :goto_0
.end method

.method public final surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 4

    iget-boolean v0, p0, Lcom/tequnique/camerax/bk;->f:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tequnique/camerax/bk;->c:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tequnique/camerax/bk;->c:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/tequnique/camerax/bk;->d:Ljava/util/List;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/tequnique/camerax/bk;->g:I

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/tequnique/camerax/bk;->d:Ljava/util/List;

    invoke-static {v0, p3, p4}, Lcom/tequnique/camerax/bk;->a(Ljava/util/List;II)Landroid/hardware/Camera$Size;

    move-result-object v0

    iput-object v0, p0, Lcom/tequnique/camerax/bk;->e:Landroid/hardware/Camera$Size;

    iget-object v0, p0, Lcom/tequnique/camerax/bk;->a:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tequnique/camerax/bo;->a(Landroid/content/Context;)Lcom/tequnique/camerax/bo;

    move-result-object v0

    iget-boolean v0, v0, Lcom/tequnique/camerax/bo;->n:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/tequnique/camerax/bk;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    :goto_1
    iget-object v0, p0, Lcom/tequnique/camerax/bk;->a:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/tequnique/camerax/bk;->e:Landroid/hardware/Camera$Size;

    iget v1, v1, Landroid/hardware/Camera$Size;->width:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v0, p0, Lcom/tequnique/camerax/bk;->a:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/tequnique/camerax/bk;->e:Landroid/hardware/Camera$Size;

    iget v1, v1, Landroid/hardware/Camera$Size;->height:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    :goto_2
    iget-object v0, p0, Lcom/tequnique/camerax/bk;->c:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tequnique/camerax/bk;->c:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iget-object v1, p0, Lcom/tequnique/camerax/bk;->e:Landroid/hardware/Camera$Size;

    iget v1, v1, Landroid/hardware/Camera$Size;->width:I

    iget-object v2, p0, Lcom/tequnique/camerax/bk;->e:Landroid/hardware/Camera$Size;

    iget v2, v2, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    invoke-virtual {p0}, Lcom/tequnique/camerax/bk;->requestLayout()V

    iget-object v1, p0, Lcom/tequnique/camerax/bk;->c:Landroid/hardware/Camera;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    iget-object v0, p0, Lcom/tequnique/camerax/bk;->c:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V

    goto :goto_0

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Size;

    iget v2, v0, Landroid/hardware/Camera$Size;->width:I

    const/16 v3, 0x280

    if-ne v2, v3, :cond_2

    iget v2, v0, Landroid/hardware/Camera$Size;->height:I

    const/16 v3, 0x1e0

    if-ne v2, v3, :cond_2

    iput-object v0, p0, Lcom/tequnique/camerax/bk;->e:Landroid/hardware/Camera$Size;

    goto :goto_1

    :cond_4
    const-string v0, "Size:XXXX"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "yyyy "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tequnique/camerax/bk;->e:Landroid/hardware/Camera$Size;

    iget v2, v2, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tequnique/camerax/bk;->e:Landroid/hardware/Camera$Size;

    iget v2, v2, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/tequnique/camerax/bk;->a:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/tequnique/camerax/bk;->e:Landroid/hardware/Camera$Size;

    iget v1, v1, Landroid/hardware/Camera$Size;->width:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v0, p0, Lcom/tequnique/camerax/bk;->a:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/tequnique/camerax/bk;->e:Landroid/hardware/Camera$Size;

    iget v1, v1, Landroid/hardware/Camera$Size;->height:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto/16 :goto_2

    :cond_5
    iget-object v0, p0, Lcom/tequnique/camerax/bk;->d:Ljava/util/List;

    iget v1, p0, Lcom/tequnique/camerax/bk;->g:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Size;

    iput-object v0, p0, Lcom/tequnique/camerax/bk;->e:Landroid/hardware/Camera$Size;

    iget-object v0, p0, Lcom/tequnique/camerax/bk;->a:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/tequnique/camerax/bk;->e:Landroid/hardware/Camera$Size;

    iget v1, v1, Landroid/hardware/Camera$Size;->width:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v0, p0, Lcom/tequnique/camerax/bk;->a:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/tequnique/camerax/bk;->e:Landroid/hardware/Camera$Size;

    iget v1, v1, Landroid/hardware/Camera$Size;->height:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto/16 :goto_2
.end method

.method public final surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/tequnique/camerax/bk;->c:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tequnique/camerax/bk;->c:Landroid/hardware/Camera;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1

    iget-object v0, p0, Lcom/tequnique/camerax/bk;->c:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tequnique/camerax/bk;->c:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    :cond_0
    return-void
.end method
