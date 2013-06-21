.class public Lcom/mxtech/widget/ListRow;
.super Landroid/widget/RelativeLayout;

# interfaces
.implements Landroid/widget/Checkable;


# static fields
.field private static final 꾨뱾:[I


# instance fields
.field private ㅼ꽑嫄:Landroid/graphics/drawable/Drawable;

.field private 弱밧:I

.field private 洹:I

.field private 癤욱븳援:Z

.field private 궗:Z

.field private 대쫫:I

.field private 먯껜蹂대떎:I

.field private 먯꽌:I

.field private 몃Ъ:I

.field private 쇰뒗:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100a0

    aput v2, v0, v1

    sput-object v0, Lcom/mxtech/widget/ListRow;->꾨뱾:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/mxtech/widget/ListRow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/mxtech/widget/ListRow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    const/16 v1, 0x10

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput v1, p0, Lcom/mxtech/widget/ListRow;->弱밧:I

    invoke-virtual {p0, v0}, Lcom/mxtech/widget/ListRow;->setWillNotDraw(Z)V

    sget-object v1, Lhc;->ListRow:[I

    invoke-virtual {p1, p2, v1, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    :try_start_0
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->getIndexCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    :goto_0
    if-lt v0, v2, :cond_0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :pswitch_0
    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Lcom/mxtech/widget/ListRow;->먯꽌:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    throw v0

    :pswitch_1
    const/16 v4, 0x10

    :try_start_2
    invoke-virtual {v1, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Lcom/mxtech/widget/ListRow;->弱밧:I

    goto :goto_1

    :pswitch_2
    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/mxtech/widget/ListRow;->먯껜蹂대떎:I

    iput v3, p0, Lcom/mxtech/widget/ListRow;->洹:I

    iput v3, p0, Lcom/mxtech/widget/ListRow;->몃Ъ:I

    iput v3, p0, Lcom/mxtech/widget/ListRow;->대쫫:I

    goto :goto_1

    :pswitch_3
    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/mxtech/widget/ListRow;->대쫫:I

    goto :goto_1

    :pswitch_4
    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/mxtech/widget/ListRow;->몃Ъ:I

    goto :goto_1

    :pswitch_5
    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/mxtech/widget/ListRow;->洹:I

    goto :goto_1

    :pswitch_6
    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/mxtech/widget/ListRow;->먯껜蹂대떎:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 2

    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v1, p0, Lcom/mxtech/widget/ListRow;->궗:Z

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setChecked(Z)V

    :cond_0
    return v0
.end method

.method protected drawableStateChanged()V
    .locals 2

    invoke-super {p0}, Landroid/widget/RelativeLayout;->drawableStateChanged()V

    iget-object v0, p0, Lcom/mxtech/widget/ListRow;->ㅼ꽑嫄:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mxtech/widget/ListRow;->ㅼ꽑嫄:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/mxtech/widget/ListRow;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    invoke-virtual {p0}, Lcom/mxtech/widget/ListRow;->invalidate()V

    :cond_0
    return-void
.end method

.method public isChecked()Z
    .locals 1

    iget-boolean v0, p0, Lcom/mxtech/widget/ListRow;->궗:Z

    return v0
.end method

.method protected onCreateDrawableState(I)[I
    .locals 2

    add-int/lit8 v0, p1, 0x1

    invoke-super {p0, v0}, Landroid/widget/RelativeLayout;->onCreateDrawableState(I)[I

    move-result-object v0

    invoke-virtual {p0}, Lcom/mxtech/widget/ListRow;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/mxtech/widget/ListRow;->꾨뱾:[I

    invoke-static {v0, v1}, Lcom/mxtech/widget/ListRow;->mergeDrawableStates([I[I)[I

    :cond_0
    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v1, p0, Lcom/mxtech/widget/ListRow;->ㅼ꽑嫄:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    iget v4, p0, Lcom/mxtech/widget/ListRow;->대쫫:I

    iget v0, p0, Lcom/mxtech/widget/ListRow;->弱밧:I

    and-int/lit8 v0, v0, 0x70

    sparse-switch v0, :sswitch_data_0

    iget v0, p0, Lcom/mxtech/widget/ListRow;->洹:I

    :goto_0
    add-int/2addr v2, v4

    add-int/2addr v3, v0

    invoke-virtual {v1, v4, v0, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    return-void

    :sswitch_0
    invoke-virtual {p0}, Lcom/mxtech/widget/ListRow;->getHeight()I

    move-result v0

    sub-int/2addr v0, v3

    div-int/lit8 v0, v0, 0x2

    goto :goto_0

    :sswitch_1
    invoke-virtual {p0}, Lcom/mxtech/widget/ListRow;->getHeight()I

    move-result v0

    sub-int/2addr v0, v3

    iget v5, p0, Lcom/mxtech/widget/ListRow;->먯껜蹂대떎:I

    sub-int/2addr v0, v5

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_0
        0x50 -> :sswitch_1
    .end sparse-switch
.end method

.method public setCheckMarkDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/mxtech/widget/ListRow;->ㅼ꽑嫄:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mxtech/widget/ListRow;->ㅼ꽑嫄:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    iget-object v0, p0, Lcom/mxtech/widget/ListRow;->ㅼ꽑嫄:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/mxtech/widget/ListRow;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    iget v2, p0, Lcom/mxtech/widget/ListRow;->쇰뒗:I

    if-eqz p1, :cond_2

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    invoke-virtual {p0}, Lcom/mxtech/widget/ListRow;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    sget-object v0, Lcom/mxtech/widget/ListRow;->꾨뱾:[I

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    invoke-virtual {p0}, Lcom/mxtech/widget/ListRow;->getDrawableState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    iget v0, p0, Lcom/mxtech/widget/ListRow;->대쫫:I

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/mxtech/widget/ListRow;->몃Ъ:I

    add-int/2addr v0, v1

    add-int/2addr v0, v2

    :goto_1
    invoke-virtual {p0}, Lcom/mxtech/widget/ListRow;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Lcom/mxtech/widget/ListRow;->getPaddingRight()I

    move-result v2

    invoke-virtual {p0}, Lcom/mxtech/widget/ListRow;->getPaddingBottom()I

    move-result v3

    invoke-super {p0, v0, v1, v2, v3}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    iput-object p1, p0, Lcom/mxtech/widget/ListRow;->ㅼ꽑嫄:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/mxtech/widget/ListRow;->requestLayout()V

    return-void

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1
.end method

.method public setCheckMarkPadding(IIII)V
    .locals 0

    iput p1, p0, Lcom/mxtech/widget/ListRow;->대쫫:I

    iput p2, p0, Lcom/mxtech/widget/ListRow;->洹:I

    iput p3, p0, Lcom/mxtech/widget/ListRow;->몃Ъ:I

    iput p4, p0, Lcom/mxtech/widget/ListRow;->먯껜蹂대떎:I

    return-void
.end method

.method public setChecked(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/mxtech/widget/ListRow;->궗:Z

    if-eq p1, v0, :cond_0

    iput-boolean p1, p0, Lcom/mxtech/widget/ListRow;->궗:Z

    invoke-virtual {p0}, Lcom/mxtech/widget/ListRow;->refreshDrawableState()V

    :cond_0
    return-void
.end method

.method public setPadding(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    iput p1, p0, Lcom/mxtech/widget/ListRow;->쇰뒗:I

    return-void
.end method

.method public toggle()V
    .locals 1

    iget-boolean v0, p0, Lcom/mxtech/widget/ListRow;->궗:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/mxtech/widget/ListRow;->setChecked(Z)V

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public 癤욱븳援()V
    .locals 2

    iget-boolean v0, p0, Lcom/mxtech/widget/ListRow;->癤욱븳援:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mxtech/widget/ListRow;->癤욱븳援:Z

    iget v0, p0, Lcom/mxtech/widget/ListRow;->먯꽌:I

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/mxtech/widget/ListRow;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/mxtech/widget/ListRow;->먯꽌:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/mxtech/widget/ListRow;->setCheckMarkDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public 궗()V
    .locals 1

    iget-boolean v0, p0, Lcom/mxtech/widget/ListRow;->癤욱븳援:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mxtech/widget/ListRow;->癤욱븳援:Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mxtech/widget/ListRow;->setCheckMarkDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method
