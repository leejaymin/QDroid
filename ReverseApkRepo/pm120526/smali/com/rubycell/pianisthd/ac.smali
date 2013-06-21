.class final Lcom/rubycell/pianisthd/ac;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:Lcom/rubycell/pianisthd/OptionActivity;


# direct methods
.method constructor <init>(Lcom/rubycell/pianisthd/OptionActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/rubycell/pianisthd/ac;->a:Lcom/rubycell/pianisthd/OptionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 10

    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    new-array v0, v9, [I

    fill-array-data v0, :array_0

    iget-object v1, p0, Lcom/rubycell/pianisthd/ac;->a:Lcom/rubycell/pianisthd/OptionActivity;

    iget-object v1, v1, Lcom/rubycell/pianisthd/OptionActivity;->g:Lcom/rubycell/pianisthd/ui/VolumeView;

    invoke-virtual {v1, v0}, Lcom/rubycell/pianisthd/ui/VolumeView;->getLocationOnScreen([I)V

    iget-object v1, p0, Lcom/rubycell/pianisthd/ac;->a:Lcom/rubycell/pianisthd/OptionActivity;

    iget-object v1, v1, Lcom/rubycell/pianisthd/OptionActivity;->g:Lcom/rubycell/pianisthd/ui/VolumeView;

    invoke-virtual {v1}, Lcom/rubycell/pianisthd/ui/VolumeView;->getWidth()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    div-int/lit8 v1, v1, 0xa

    aget v2, v0, v8

    add-int/2addr v2, v1

    aget v3, v0, v7

    iget-object v4, p0, Lcom/rubycell/pianisthd/ac;->a:Lcom/rubycell/pianisthd/OptionActivity;

    iget-object v4, v4, Lcom/rubycell/pianisthd/OptionActivity;->g:Lcom/rubycell/pianisthd/ui/VolumeView;

    invoke-virtual {v4}, Lcom/rubycell/pianisthd/ui/VolumeView;->getWidth()I

    move-result v4

    add-int/2addr v3, v4

    sub-int v1, v3, v1

    aget v3, v0, v7

    aget v0, v0, v8

    iget-object v4, p0, Lcom/rubycell/pianisthd/ac;->a:Lcom/rubycell/pianisthd/OptionActivity;

    iget-object v4, v4, Lcom/rubycell/pianisthd/OptionActivity;->g:Lcom/rubycell/pianisthd/ui/VolumeView;

    invoke-virtual {v4}, Lcom/rubycell/pianisthd/ui/VolumeView;->getWidth()I

    move-result v4

    add-int/2addr v0, v4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    if-nez v6, :cond_1

    int-to-float v2, v2

    cmpl-float v2, v4, v2

    if-lez v2, :cond_0

    int-to-float v1, v1

    cmpg-float v1, v4, v1

    if-gez v1, :cond_0

    int-to-float v1, v3

    cmpl-float v1, v5, v1

    if-lez v1, :cond_0

    int-to-float v0, v0

    cmpg-float v0, v5, v0

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/rubycell/pianisthd/ac;->a:Lcom/rubycell/pianisthd/OptionActivity;

    iget-object v0, v0, Lcom/rubycell/pianisthd/OptionActivity;->h:Landroid/widget/ScrollView;

    invoke-virtual {v0, v7}, Landroid/widget/ScrollView;->requestDisallowInterceptTouchEvent(Z)V

    iget-object v0, p0, Lcom/rubycell/pianisthd/ac;->a:Lcom/rubycell/pianisthd/OptionActivity;

    iget-object v0, v0, Lcom/rubycell/pianisthd/OptionActivity;->g:Lcom/rubycell/pianisthd/ui/VolumeView;

    invoke-virtual {v0}, Lcom/rubycell/pianisthd/ui/VolumeView;->requestFocus()Z

    move v0, v7

    :goto_0
    return v0

    :cond_0
    move v0, v8

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    if-ne v6, v9, :cond_3

    int-to-float v2, v2

    cmpl-float v2, v4, v2

    if-lez v2, :cond_2

    int-to-float v1, v1

    cmpg-float v1, v4, v1

    if-gez v1, :cond_2

    int-to-float v1, v3

    cmpl-float v1, v5, v1

    if-lez v1, :cond_2

    int-to-float v0, v0

    cmpg-float v0, v5, v0

    if-gez v0, :cond_2

    iget-object v0, p0, Lcom/rubycell/pianisthd/ac;->a:Lcom/rubycell/pianisthd/OptionActivity;

    iget-object v0, v0, Lcom/rubycell/pianisthd/OptionActivity;->h:Landroid/widget/ScrollView;

    invoke-virtual {v0, v7}, Landroid/widget/ScrollView;->requestDisallowInterceptTouchEvent(Z)V

    iget-object v0, p0, Lcom/rubycell/pianisthd/ac;->a:Lcom/rubycell/pianisthd/OptionActivity;

    iget-object v0, v0, Lcom/rubycell/pianisthd/OptionActivity;->g:Lcom/rubycell/pianisthd/ui/VolumeView;

    invoke-virtual {v0}, Lcom/rubycell/pianisthd/ui/VolumeView;->requestFocus()Z

    move v0, v7

    goto :goto_0

    :cond_2
    move v0, v8

    goto :goto_0

    :cond_3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v7, :cond_4

    iget-object v0, p0, Lcom/rubycell/pianisthd/ac;->a:Lcom/rubycell/pianisthd/OptionActivity;

    iget-object v0, v0, Lcom/rubycell/pianisthd/OptionActivity;->h:Landroid/widget/ScrollView;

    invoke-virtual {v0, v7}, Landroid/widget/ScrollView;->requestDisallowInterceptTouchEvent(Z)V

    iget-object v0, p0, Lcom/rubycell/pianisthd/ac;->a:Lcom/rubycell/pianisthd/OptionActivity;

    iget-object v0, v0, Lcom/rubycell/pianisthd/OptionActivity;->g:Lcom/rubycell/pianisthd/ui/VolumeView;

    invoke-virtual {v0}, Lcom/rubycell/pianisthd/ui/VolumeView;->requestFocus()Z

    move v0, v7

    goto :goto_0

    :cond_4
    move v0, v8

    goto :goto_0

    :array_0
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data
.end method
