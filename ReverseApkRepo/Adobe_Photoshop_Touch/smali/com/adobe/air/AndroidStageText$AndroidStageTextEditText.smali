.class public Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;
.super Landroid/widget/EditText;
.source "AndroidStageText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adobe/air/AndroidStageText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AndroidStageTextEditText"
.end annotation


# instance fields
.field private mLastFocusDirection:I

.field private m_focusedChildView:Landroid/view/View;

.field private m_hasFocus:Z

.field private m_inRequestChildFocus:Z

.field final synthetic this$0:Lcom/adobe/air/AndroidStageText;


# direct methods
.method public constructor <init>(Lcom/adobe/air/AndroidStageText;Landroid/content/Context;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 239
    iput-object p1, p0, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->this$0:Lcom/adobe/air/AndroidStageText;

    .line 240
    invoke-direct {p0, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 234
    iput-boolean v0, p0, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->m_inRequestChildFocus:Z

    .line 235
    iput-object v1, p0, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->m_focusedChildView:Landroid/view/View;

    .line 236
    iput-boolean v0, p0, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->m_hasFocus:Z

    .line 237
    iput v0, p0, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->mLastFocusDirection:I

    .line 243
    invoke-virtual {p0, v1}, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 244
    invoke-virtual {p0, v0}, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->setCompoundDrawablePadding(I)V

    .line 245
    invoke-virtual {p0, v0, v0, v0, v0}, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->setPadding(IIII)V

    .line 248
    return-void
.end method

.method public constructor <init>(Lcom/adobe/air/AndroidStageText;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 250
    iput-object p1, p0, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->this$0:Lcom/adobe/air/AndroidStageText;

    .line 251
    invoke-direct {p0, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 234
    iput-boolean v1, p0, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->m_inRequestChildFocus:Z

    .line 235
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->m_focusedChildView:Landroid/view/View;

    .line 236
    iput-boolean v1, p0, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->m_hasFocus:Z

    .line 237
    iput v1, p0, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->mLastFocusDirection:I

    .line 253
    return-void
.end method

.method public constructor <init>(Lcom/adobe/air/AndroidStageText;Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 255
    iput-object p1, p0, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->this$0:Lcom/adobe/air/AndroidStageText;

    .line 256
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 234
    iput-boolean v1, p0, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->m_inRequestChildFocus:Z

    .line 235
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->m_focusedChildView:Landroid/view/View;

    .line 236
    iput-boolean v1, p0, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->m_hasFocus:Z

    .line 237
    iput v1, p0, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->mLastFocusDirection:I

    .line 258
    return-void
.end method

.method private dispatchFocusEvent(ZI)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 321
    iget-boolean v0, p0, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->m_hasFocus:Z

    if-ne v0, p1, :cond_1

    .line 346
    :cond_0
    :goto_0
    return-void

    .line 324
    :cond_1
    iput-boolean p1, p0, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->m_hasFocus:Z

    .line 326
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->this$0:Lcom/adobe/air/AndroidStageText;

    .line 328
    #getter for: Lcom/adobe/air/AndroidStageText;->mInternalReference:J
    invoke-static {v0}, Lcom/adobe/air/AndroidStageText;->access$100(Lcom/adobe/air/AndroidStageText;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 335
    #getter for: Lcom/adobe/air/AndroidStageText;->mAIRSurface:Lcom/adobe/air/AIRWindowSurfaceView;
    invoke-static {v0}, Lcom/adobe/air/AndroidStageText;->access$500(Lcom/adobe/air/AndroidStageText;)Lcom/adobe/air/AIRWindowSurfaceView;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 336
    #getter for: Lcom/adobe/air/AndroidStageText;->mAIRSurface:Lcom/adobe/air/AIRWindowSurfaceView;
    invoke-static {v0}, Lcom/adobe/air/AndroidStageText;->access$500(Lcom/adobe/air/AndroidStageText;)Lcom/adobe/air/AIRWindowSurfaceView;

    move-result-object v1

    iget-boolean v2, p0, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->m_hasFocus:Z

    invoke-virtual {v1, v0, v2}, Lcom/adobe/air/AIRWindowSurfaceView;->updateFocusedStageText(Lcom/adobe/air/AndroidStageText;Z)V

    .line 341
    :cond_2
    if-eqz p1, :cond_0

    .line 342
    #getter for: Lcom/adobe/air/AndroidStageText;->mInternalReference:J
    invoke-static {v0}, Lcom/adobe/air/AndroidStageText;->access$100(Lcom/adobe/air/AndroidStageText;)J

    move-result-wide v1

    #calls: Lcom/adobe/air/AndroidStageText;->dispatchFocusIn(JI)V
    invoke-static {v0, v1, v2, p2}, Lcom/adobe/air/AndroidStageText;->access$600(Lcom/adobe/air/AndroidStageText;JI)V

    goto :goto_0
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter

    .prologue
    .line 284
    iget-boolean v0, p0, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->m_hasFocus:Z

    if-nez v0, :cond_0

    .line 287
    invoke-virtual {p0}, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->requestFocus()Z

    .line 290
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/EditText;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;)V
    .locals 2
    .parameter

    .prologue
    .line 424
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->this$0:Lcom/adobe/air/AndroidStageText;

    const/4 v1, 0x1

    #setter for: Lcom/adobe/air/AndroidStageText;->mMenuInvoked:Z
    invoke-static {v0, v1}, Lcom/adobe/air/AndroidStageText;->access$802(Lcom/adobe/air/AndroidStageText;Z)Z

    .line 425
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->this$0:Lcom/adobe/air/AndroidStageText;

    const/4 v1, 0x0

    #setter for: Lcom/adobe/air/AndroidStageText;->mSelectionChanged:Z
    invoke-static {v0, v1}, Lcom/adobe/air/AndroidStageText;->access$1002(Lcom/adobe/air/AndroidStageText;Z)Z

    .line 427
    invoke-super {p0, p1}, Landroid/widget/EditText;->onCreateContextMenu(Landroid/view/ContextMenu;)V

    .line 429
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .parameter

    .prologue
    .line 263
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->this$0:Lcom/adobe/air/AndroidStageText;

    #getter for: Lcom/adobe/air/AndroidStageText;->mClipBounds:Landroid/graphics/Rect;
    invoke-static {v0}, Lcom/adobe/air/AndroidStageText;->access$300(Lcom/adobe/air/AndroidStageText;)Landroid/graphics/Rect;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 265
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 266
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->this$0:Lcom/adobe/air/AndroidStageText;

    #getter for: Lcom/adobe/air/AndroidStageText;->mViewBounds:Landroid/graphics/Rect;
    invoke-static {v0}, Lcom/adobe/air/AndroidStageText;->access$400(Lcom/adobe/air/AndroidStageText;)Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->left:I

    neg-int v0, v0

    .line 267
    iget-object v1, p0, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->this$0:Lcom/adobe/air/AndroidStageText;

    #getter for: Lcom/adobe/air/AndroidStageText;->mViewBounds:Landroid/graphics/Rect;
    invoke-static {v1}, Lcom/adobe/air/AndroidStageText;->access$400(Lcom/adobe/air/AndroidStageText;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    neg-int v1, v1

    .line 268
    new-instance v2, Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->this$0:Lcom/adobe/air/AndroidStageText;

    #getter for: Lcom/adobe/air/AndroidStageText;->mClipBounds:Landroid/graphics/Rect;
    invoke-static {v3}, Lcom/adobe/air/AndroidStageText;->access$300(Lcom/adobe/air/AndroidStageText;)Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v0

    iget-object v4, p0, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->this$0:Lcom/adobe/air/AndroidStageText;

    #getter for: Lcom/adobe/air/AndroidStageText;->mClipBounds:Landroid/graphics/Rect;
    invoke-static {v4}, Lcom/adobe/air/AndroidStageText;->access$300(Lcom/adobe/air/AndroidStageText;)Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v1

    iget-object v5, p0, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->this$0:Lcom/adobe/air/AndroidStageText;

    #getter for: Lcom/adobe/air/AndroidStageText;->mClipBounds:Landroid/graphics/Rect;
    invoke-static {v5}, Lcom/adobe/air/AndroidStageText;->access$300(Lcom/adobe/air/AndroidStageText;)Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v5

    iget-object v5, p0, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->this$0:Lcom/adobe/air/AndroidStageText;

    #getter for: Lcom/adobe/air/AndroidStageText;->mClipBounds:Landroid/graphics/Rect;
    invoke-static {v5}, Lcom/adobe/air/AndroidStageText;->access$300(Lcom/adobe/air/AndroidStageText;)Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v5

    invoke-direct {v2, v3, v4, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 269
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 270
    invoke-super {p0, p1}, Landroid/widget/EditText;->onDraw(Landroid/graphics/Canvas;)V

    .line 271
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 277
    :goto_0
    return-void

    .line 275
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/EditText;->onDraw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 354
    invoke-super {p0, p1, p2, p3}, Landroid/widget/EditText;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 356
    if-nez p2, :cond_0

    .line 357
    iget p2, p0, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->mLastFocusDirection:I

    .line 359
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->mLastFocusDirection:I

    .line 361
    invoke-direct {p0, p1, p2}, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->dispatchFocusEvent(ZI)V

    .line 362
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 462
    const/4 v0, 0x0

    .line 463
    sparse-switch p1, :sswitch_data_0

    .line 478
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 479
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 481
    :cond_1
    return v0

    .line 469
    :sswitch_0
    iget-object v1, p0, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->this$0:Lcom/adobe/air/AndroidStageText;

    #getter for: Lcom/adobe/air/AndroidStageText;->enterKeyDispatched:Z
    invoke-static {v1}, Lcom/adobe/air/AndroidStageText;->access$1300(Lcom/adobe/air/AndroidStageText;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 470
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->this$0:Lcom/adobe/air/AndroidStageText;

    iget-object v1, p0, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->this$0:Lcom/adobe/air/AndroidStageText;

    #getter for: Lcom/adobe/air/AndroidStageText;->mInternalReference:J
    invoke-static {v1}, Lcom/adobe/air/AndroidStageText;->access$100(Lcom/adobe/air/AndroidStageText;)J

    move-result-wide v1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    #calls: Lcom/adobe/air/AndroidStageText;->handleKeyEvent(JII)Z
    invoke-static {v0, v1, v2, v3, p1}, Lcom/adobe/air/AndroidStageText;->access$1400(Lcom/adobe/air/AndroidStageText;JII)Z

    move-result v0

    goto :goto_0

    .line 463
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x42 -> :sswitch_0
        0x52 -> :sswitch_0
    .end sparse-switch
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 515
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->this$0:Lcom/adobe/air/AndroidStageText;

    #getter for: Lcom/adobe/air/AndroidStageText;->mAIRSurface:Lcom/adobe/air/AIRWindowSurfaceView;
    invoke-static {v0}, Lcom/adobe/air/AndroidStageText;->access$500(Lcom/adobe/air/AndroidStageText;)Lcom/adobe/air/AIRWindowSurfaceView;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 517
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->this$0:Lcom/adobe/air/AndroidStageText;

    #getter for: Lcom/adobe/air/AndroidStageText;->mAIRSurface:Lcom/adobe/air/AIRWindowSurfaceView;
    invoke-static {v0}, Lcom/adobe/air/AndroidStageText;->access$500(Lcom/adobe/air/AndroidStageText;)Lcom/adobe/air/AIRWindowSurfaceView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/air/AIRWindowSurfaceView;->DispatchSoftKeyboardEventOnBackKey()V

    .line 519
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onKeyPreIme(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 488
    .line 490
    sparse-switch p1, :sswitch_data_0

    .line 505
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 508
    iget-object v1, p0, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->this$0:Lcom/adobe/air/AndroidStageText;

    const/4 v2, 0x0

    #setter for: Lcom/adobe/air/AndroidStageText;->enterKeyDispatched:Z
    invoke-static {v1, v2}, Lcom/adobe/air/AndroidStageText;->access$1302(Lcom/adobe/air/AndroidStageText;Z)Z

    .line 509
    return v0

    .line 497
    :sswitch_0
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->this$0:Lcom/adobe/air/AndroidStageText;

    #getter for: Lcom/adobe/air/AndroidStageText;->enterKeyDispatched:Z
    invoke-static {v0}, Lcom/adobe/air/AndroidStageText;->access$1300(Lcom/adobe/air/AndroidStageText;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 498
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->this$0:Lcom/adobe/air/AndroidStageText;

    iget-object v1, p0, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->this$0:Lcom/adobe/air/AndroidStageText;

    #getter for: Lcom/adobe/air/AndroidStageText;->mInternalReference:J
    invoke-static {v1}, Lcom/adobe/air/AndroidStageText;->access$100(Lcom/adobe/air/AndroidStageText;)J

    move-result-wide v1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    #calls: Lcom/adobe/air/AndroidStageText;->handleKeyEvent(JII)Z
    invoke-static {v0, v1, v2, v3, p1}, Lcom/adobe/air/AndroidStageText;->access$1400(Lcom/adobe/air/AndroidStageText;JII)Z

    goto :goto_0

    .line 490
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x42 -> :sswitch_0
        0x52 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 306
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->this$0:Lcom/adobe/air/AndroidStageText;

    .line 309
    invoke-super/range {p0 .. p5}, Landroid/widget/EditText;->onLayout(ZIIII)V

    .line 311
    #getter for: Lcom/adobe/air/AndroidStageText;->mNotifyLayoutComplete:Z
    invoke-static {v0}, Lcom/adobe/air/AndroidStageText;->access$000(Lcom/adobe/air/AndroidStageText;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 313
    const/4 v1, 0x0

    #setter for: Lcom/adobe/air/AndroidStageText;->mNotifyLayoutComplete:Z
    invoke-static {v0, v1}, Lcom/adobe/air/AndroidStageText;->access$002(Lcom/adobe/air/AndroidStageText;Z)Z

    .line 314
    #getter for: Lcom/adobe/air/AndroidStageText;->mInternalReference:J
    invoke-static {v0}, Lcom/adobe/air/AndroidStageText;->access$100(Lcom/adobe/air/AndroidStageText;)J

    move-result-wide v1

    #calls: Lcom/adobe/air/AndroidStageText;->dispatchCompleteEvent(J)V
    invoke-static {v0, v1, v2}, Lcom/adobe/air/AndroidStageText;->access$200(Lcom/adobe/air/AndroidStageText;J)V

    .line 316
    :cond_0
    return-void
.end method

.method public onSelectionChanged(II)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 447
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onSelectionChanged(II)V

    .line 448
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->this$0:Lcom/adobe/air/AndroidStageText;

    #setter for: Lcom/adobe/air/AndroidStageText;->mSelectionChanged:Z
    invoke-static {v0, v2}, Lcom/adobe/air/AndroidStageText;->access$1002(Lcom/adobe/air/AndroidStageText;Z)Z

    .line 450
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->this$0:Lcom/adobe/air/AndroidStageText;

    #getter for: Lcom/adobe/air/AndroidStageText;->mAIRSurface:Lcom/adobe/air/AIRWindowSurfaceView;
    invoke-static {v0}, Lcom/adobe/air/AndroidStageText;->access$500(Lcom/adobe/air/AndroidStageText;)Lcom/adobe/air/AIRWindowSurfaceView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->this$0:Lcom/adobe/air/AndroidStageText;

    #getter for: Lcom/adobe/air/AndroidStageText;->mInContentMenu:Z
    invoke-static {v0}, Lcom/adobe/air/AndroidStageText;->access$1100(Lcom/adobe/air/AndroidStageText;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 452
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->this$0:Lcom/adobe/air/AndroidStageText;

    #getter for: Lcom/adobe/air/AndroidStageText;->mAIRSurface:Lcom/adobe/air/AIRWindowSurfaceView;
    invoke-static {v0}, Lcom/adobe/air/AndroidStageText;->access$500(Lcom/adobe/air/AndroidStageText;)Lcom/adobe/air/AIRWindowSurfaceView;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->this$0:Lcom/adobe/air/AndroidStageText;

    #getter for: Lcom/adobe/air/AndroidStageText;->mTextView:Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;
    invoke-static {v1}, Lcom/adobe/air/AndroidStageText;->access$1200(Lcom/adobe/air/AndroidStageText;)Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/adobe/air/AIRWindowSurfaceView;->showSoftKeyboard(ZLandroid/view/View;)V

    .line 453
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->this$0:Lcom/adobe/air/AndroidStageText;

    iget-object v1, p0, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->this$0:Lcom/adobe/air/AndroidStageText;

    #getter for: Lcom/adobe/air/AndroidStageText;->mInternalReference:J
    invoke-static {v1}, Lcom/adobe/air/AndroidStageText;->access$100(Lcom/adobe/air/AndroidStageText;)J

    move-result-wide v1

    #calls: Lcom/adobe/air/AndroidStageText;->invokeSoftKeyboard(J)V
    invoke-static {v0, v1, v2}, Lcom/adobe/air/AndroidStageText;->access$900(Lcom/adobe/air/AndroidStageText;J)V

    .line 455
    :cond_0
    return-void
.end method

.method protected onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 366
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/EditText;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 368
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->this$0:Lcom/adobe/air/AndroidStageText;

    .line 369
    #getter for: Lcom/adobe/air/AndroidStageText;->mInternalReference:J
    invoke-static {v0}, Lcom/adobe/air/AndroidStageText;->access$100(Lcom/adobe/air/AndroidStageText;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 373
    :goto_0
    return-void

    .line 372
    :cond_0
    #getter for: Lcom/adobe/air/AndroidStageText;->mInternalReference:J
    invoke-static {v0}, Lcom/adobe/air/AndroidStageText;->access$100(Lcom/adobe/air/AndroidStageText;)J

    move-result-wide v1

    #calls: Lcom/adobe/air/AndroidStageText;->dispatchChangeEvent(J)V
    invoke-static {v0, v1, v2}, Lcom/adobe/air/AndroidStageText;->access$700(Lcom/adobe/air/AndroidStageText;J)V

    goto :goto_0
.end method

.method public onTextContextMenuItem(I)Z
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 435
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->this$0:Lcom/adobe/air/AndroidStageText;

    const/4 v1, 0x1

    #setter for: Lcom/adobe/air/AndroidStageText;->mInContentMenu:Z
    invoke-static {v0, v1}, Lcom/adobe/air/AndroidStageText;->access$1102(Lcom/adobe/air/AndroidStageText;Z)Z

    .line 436
    invoke-super {p0, p1}, Landroid/widget/EditText;->onTextContextMenuItem(I)Z

    move-result v0

    .line 438
    iget-object v1, p0, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->this$0:Lcom/adobe/air/AndroidStageText;

    #setter for: Lcom/adobe/air/AndroidStageText;->mInContentMenu:Z
    invoke-static {v1, v2}, Lcom/adobe/air/AndroidStageText;->access$1102(Lcom/adobe/air/AndroidStageText;Z)Z

    .line 439
    iget-object v1, p0, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->this$0:Lcom/adobe/air/AndroidStageText;

    #setter for: Lcom/adobe/air/AndroidStageText;->mMenuInvoked:Z
    invoke-static {v1, v2}, Lcom/adobe/air/AndroidStageText;->access$802(Lcom/adobe/air/AndroidStageText;Z)Z

    .line 440
    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 381
    move v0, v1

    .line 382
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v3

    if-ge v0, v3, :cond_5

    .line 384
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    .line 385
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 389
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v4

    if-eq v4, v2, :cond_0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    const v5, 0xff00

    and-int/2addr v5, v3

    shr-int/lit8 v5, v5, 0x8

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    if-ne v4, v5, :cond_4

    .line 391
    :cond_0
    and-int/lit16 v3, v3, 0xff

    .line 392
    const/4 v4, 0x6

    if-eq v3, v4, :cond_4

    if-eq v3, v2, :cond_4

    move v0, v1

    .line 400
    :goto_1
    if-eqz v0, :cond_3

    .line 404
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-ge v0, v2, :cond_1

    iget-object v0, p0, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->this$0:Lcom/adobe/air/AndroidStageText;

    #getter for: Lcom/adobe/air/AndroidStageText;->mMenuInvoked:Z
    invoke-static {v0}, Lcom/adobe/air/AndroidStageText;->access$800(Lcom/adobe/air/AndroidStageText;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 407
    :cond_1
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->this$0:Lcom/adobe/air/AndroidStageText;

    iget-object v2, p0, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->this$0:Lcom/adobe/air/AndroidStageText;

    #getter for: Lcom/adobe/air/AndroidStageText;->mInternalReference:J
    invoke-static {v2}, Lcom/adobe/air/AndroidStageText;->access$100(Lcom/adobe/air/AndroidStageText;)J

    move-result-wide v2

    #calls: Lcom/adobe/air/AndroidStageText;->invokeSoftKeyboard(J)V
    invoke-static {v0, v2, v3}, Lcom/adobe/air/AndroidStageText;->access$900(Lcom/adobe/air/AndroidStageText;J)V

    .line 411
    :cond_2
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->this$0:Lcom/adobe/air/AndroidStageText;

    #setter for: Lcom/adobe/air/AndroidStageText;->mMenuInvoked:Z
    invoke-static {v0, v1}, Lcom/adobe/air/AndroidStageText;->access$802(Lcom/adobe/air/AndroidStageText;Z)Z

    .line 415
    :cond_3
    invoke-super {p0, p1}, Landroid/widget/EditText;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 417
    return v0

    .line 382
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    move v0, v2

    goto :goto_1
.end method

.method public startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 3
    .parameter

    .prologue
    .line 527
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->this$0:Lcom/adobe/air/AndroidStageText;

    #getter for: Lcom/adobe/air/AndroidStageText;->mAIRSurface:Lcom/adobe/air/AIRWindowSurfaceView;
    invoke-static {v0}, Lcom/adobe/air/AndroidStageText;->access$500(Lcom/adobe/air/AndroidStageText;)Lcom/adobe/air/AIRWindowSurfaceView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->this$0:Lcom/adobe/air/AndroidStageText;

    #getter for: Lcom/adobe/air/AndroidStageText;->mSelectionChanged:Z
    invoke-static {v0}, Lcom/adobe/air/AndroidStageText;->access$1000(Lcom/adobe/air/AndroidStageText;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 529
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->this$0:Lcom/adobe/air/AndroidStageText;

    #getter for: Lcom/adobe/air/AndroidStageText;->mAIRSurface:Lcom/adobe/air/AIRWindowSurfaceView;
    invoke-static {v0}, Lcom/adobe/air/AndroidStageText;->access$500(Lcom/adobe/air/AndroidStageText;)Lcom/adobe/air/AIRWindowSurfaceView;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->this$0:Lcom/adobe/air/AndroidStageText;

    #getter for: Lcom/adobe/air/AndroidStageText;->mTextView:Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;
    invoke-static {v2}, Lcom/adobe/air/AndroidStageText;->access$1200(Lcom/adobe/air/AndroidStageText;)Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/adobe/air/AIRWindowSurfaceView;->showSoftKeyboard(ZLandroid/view/View;)V

    .line 530
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->this$0:Lcom/adobe/air/AndroidStageText;

    iget-object v1, p0, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->this$0:Lcom/adobe/air/AndroidStageText;

    #getter for: Lcom/adobe/air/AndroidStageText;->mInternalReference:J
    invoke-static {v1}, Lcom/adobe/air/AndroidStageText;->access$100(Lcom/adobe/air/AndroidStageText;)J

    move-result-wide v1

    #calls: Lcom/adobe/air/AndroidStageText;->invokeSoftKeyboard(J)V
    invoke-static {v0, v1, v2}, Lcom/adobe/air/AndroidStageText;->access$900(Lcom/adobe/air/AndroidStageText;J)V

    .line 531
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->this$0:Lcom/adobe/air/AndroidStageText;

    const/4 v1, 0x0

    #setter for: Lcom/adobe/air/AndroidStageText;->mSelectionChanged:Z
    invoke-static {v0, v1}, Lcom/adobe/air/AndroidStageText;->access$1002(Lcom/adobe/air/AndroidStageText;Z)Z

    .line 533
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/EditText;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    return-object v0
.end method
