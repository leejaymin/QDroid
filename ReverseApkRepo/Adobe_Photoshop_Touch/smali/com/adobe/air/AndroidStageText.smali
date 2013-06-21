.class public Lcom/adobe/air/AndroidStageText;
.super Ljava/lang/Object;
.source "AndroidStageText.java"

# interfaces
.implements Lcom/adobe/air/AndroidActivityWrapper$StateChangeCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/adobe/air/AndroidStageText$RestrictFilter;,
        Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;,
        Lcom/adobe/air/AndroidStageText$AndroidStageTextImpl;,
        Lcom/adobe/air/AndroidStageText$BackgroundBorderDrawable;
    }
.end annotation


# static fields
.field private static final ALIGN_Center:I = 0x2

.field private static final ALIGN_End:I = 0x5

.field private static final ALIGN_Justify:I = 0x3

.field private static final ALIGN_Left:I = 0x0

.field private static final ALIGN_Right:I = 0x1

.field private static final ALIGN_Start:I = 0x4

.field private static final AUTO_CAP_All:I = 0x3

.field private static final AUTO_CAP_None:I = 0x0

.field private static final AUTO_CAP_Sentence:I = 0x2

.field private static final AUTO_CAP_Word:I = 0x1

.field private static final FOCUS_DOWN:I = 0x3

.field private static final FOCUS_NONE:I = 0x1

.field private static final FOCUS_UP:I = 0x2

.field private static final KEYBOARDTYPE_Contact:I = 0x4

.field private static final KEYBOARDTYPE_Default:I = 0x0

.field private static final KEYBOARDTYPE_Email:I = 0x5

.field private static final KEYBOARDTYPE_Number:I = 0x3

.field private static final KEYBOARDTYPE_Punctuation:I = 0x1

.field private static final KEYBOARDTYPE_Url:I = 0x2

.field private static final LOG_TAG:Ljava/lang/String; = "AndroidStageText"

.field private static final RETURN_KEY_Default:I = 0x0

.field private static final RETURN_KEY_Done:I = 0x1

.field private static final RETURN_KEY_Go:I = 0x2

.field private static final RETURN_KEY_Next:I = 0x3

.field private static final RETURN_KEY_Search:I = 0x4


# instance fields
.field private enterKeyDispatched:Z

.field private mAIRSurface:Lcom/adobe/air/AIRWindowSurfaceView;

.field private mAlign:I

.field private mAutoCapitalize:I

.field private mAutoCorrect:Z

.field private mBBDrawable:Lcom/adobe/air/AndroidStageText$BackgroundBorderDrawable;

.field private mBackgroundColor:I

.field private mBold:Z

.field private mBorderColor:I

.field private mBounds:Landroid/graphics/Rect;

.field private mClip:Landroid/view/ViewGroup;

.field private mClipBounds:Landroid/graphics/Rect;

.field private mContext:Landroid/content/Context;

.field private mDisableInteraction:Z

.field private mDisplayAsPassword:Z

.field private mEditable:Z

.field private mFont:Ljava/lang/String;

.field private mFontSize:I

.field private mGlobalBounds:Landroid/graphics/Rect;

.field private mInContentMenu:Z

.field private mInternalReference:J

.field private mItalic:Z

.field private mKeyboardType:I

.field private mLayout:Landroid/widget/RelativeLayout;

.field private mLocale:Ljava/lang/String;

.field private mMaxChars:I

.field private mMenuInvoked:Z

.field private mMultiline:Z

.field private mNotifyLayoutComplete:Z

.field private mRestrict:Ljava/lang/String;

.field private mReturnKeyLabel:I

.field private mSavedKeyListener:Landroid/text/method/KeyListener;

.field private mScaleFactor:D

.field private mSelectionChanged:Z

.field private mTextColor:I

.field private mTextView:Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;

.field private mView:Lcom/adobe/air/AndroidStageText$AndroidStageTextImpl;

.field private mViewBounds:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Z)V
    .locals 8
    .parameter

    .prologue
    const/4 v7, -0x1

    const/high16 v1, -0x100

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 539
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    iput-boolean v4, p0, Lcom/adobe/air/AndroidStageText;->enterKeyDispatched:Z

    .line 1560
    iput-object v5, p0, Lcom/adobe/air/AndroidStageText;->mClip:Landroid/view/ViewGroup;

    .line 1562
    iput v4, p0, Lcom/adobe/air/AndroidStageText;->mKeyboardType:I

    .line 1563
    iput-boolean v4, p0, Lcom/adobe/air/AndroidStageText;->mDisplayAsPassword:Z

    .line 1564
    iput-boolean v4, p0, Lcom/adobe/air/AndroidStageText;->mMultiline:Z

    .line 1565
    iput v4, p0, Lcom/adobe/air/AndroidStageText;->mAutoCapitalize:I

    .line 1566
    iput v4, p0, Lcom/adobe/air/AndroidStageText;->mReturnKeyLabel:I

    .line 1567
    iput-boolean v4, p0, Lcom/adobe/air/AndroidStageText;->mAutoCorrect:Z

    .line 1568
    iput-boolean v4, p0, Lcom/adobe/air/AndroidStageText;->mBold:Z

    .line 1569
    iput-boolean v4, p0, Lcom/adobe/air/AndroidStageText;->mItalic:Z

    .line 1570
    iput-boolean v6, p0, Lcom/adobe/air/AndroidStageText;->mEditable:Z

    .line 1571
    iput-boolean v4, p0, Lcom/adobe/air/AndroidStageText;->mDisableInteraction:Z

    .line 1574
    const/4 v0, 0x4

    iput v0, p0, Lcom/adobe/air/AndroidStageText;->mAlign:I

    .line 1575
    iput v1, p0, Lcom/adobe/air/AndroidStageText;->mTextColor:I

    .line 1576
    iput v7, p0, Lcom/adobe/air/AndroidStageText;->mBackgroundColor:I

    .line 1577
    iput v1, p0, Lcom/adobe/air/AndroidStageText;->mBorderColor:I

    .line 1579
    iput v4, p0, Lcom/adobe/air/AndroidStageText;->mMaxChars:I

    .line 1580
    iput-object v5, p0, Lcom/adobe/air/AndroidStageText;->mRestrict:Ljava/lang/String;

    .line 1581
    iput-object v5, p0, Lcom/adobe/air/AndroidStageText;->mLocale:Ljava/lang/String;

    .line 1582
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/adobe/air/AndroidStageText;->mBounds:Landroid/graphics/Rect;

    .line 1583
    iput-object v5, p0, Lcom/adobe/air/AndroidStageText;->mViewBounds:Landroid/graphics/Rect;

    .line 1584
    iput-object v5, p0, Lcom/adobe/air/AndroidStageText;->mClipBounds:Landroid/graphics/Rect;

    .line 1585
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/adobe/air/AndroidStageText;->mGlobalBounds:Landroid/graphics/Rect;

    .line 1586
    iput-object v5, p0, Lcom/adobe/air/AndroidStageText;->mSavedKeyListener:Landroid/text/method/KeyListener;

    .line 1587
    iput-boolean v4, p0, Lcom/adobe/air/AndroidStageText;->mMenuInvoked:Z

    .line 1588
    iput-boolean v4, p0, Lcom/adobe/air/AndroidStageText;->mSelectionChanged:Z

    .line 1589
    iput-boolean v4, p0, Lcom/adobe/air/AndroidStageText;->mInContentMenu:Z

    .line 1590
    iput-boolean v4, p0, Lcom/adobe/air/AndroidStageText;->mNotifyLayoutComplete:Z

    .line 1591
    const-wide/high16 v0, 0x3ff0

    iput-wide v0, p0, Lcom/adobe/air/AndroidStageText;->mScaleFactor:D

    .line 541
    iput-boolean p1, p0, Lcom/adobe/air/AndroidStageText;->mMultiline:Z

    .line 542
    iput-boolean v4, p0, Lcom/adobe/air/AndroidStageText;->mDisplayAsPassword:Z

    .line 543
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/adobe/air/AndroidStageText;->mInternalReference:J

    .line 544
    invoke-static {}, Lcom/adobe/air/AndroidActivityWrapper;->GetAndroidActivityWrapper()Lcom/adobe/air/AndroidActivityWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/air/AndroidActivityWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/air/AndroidStageText;->mContext:Landroid/content/Context;

    .line 545
    new-instance v0, Lcom/adobe/air/AndroidStageText$AndroidStageTextImpl;

    iget-object v1, p0, Lcom/adobe/air/AndroidStageText;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/adobe/air/AndroidStageText$AndroidStageTextImpl;-><init>(Lcom/adobe/air/AndroidStageText;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/adobe/air/AndroidStageText;->mView:Lcom/adobe/air/AndroidStageText$AndroidStageTextImpl;

    .line 546
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mView:Lcom/adobe/air/AndroidStageText$AndroidStageTextImpl;

    invoke-virtual {v0, v6}, Lcom/adobe/air/AndroidStageText$AndroidStageTextImpl;->setFillViewport(Z)V

    .line 551
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 553
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mView:Lcom/adobe/air/AndroidStageText$AndroidStageTextImpl;

    invoke-virtual {v0, v6, v5}, Lcom/adobe/air/AndroidStageText$AndroidStageTextImpl;->setLayerType(ILandroid/graphics/Paint;)V

    .line 555
    :cond_0
    new-instance v0, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;

    iget-object v1, p0, Lcom/adobe/air/AndroidStageText;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;-><init>(Lcom/adobe/air/AndroidStageText;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/adobe/air/AndroidStageText;->mTextView:Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;

    .line 556
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mTextView:Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;

    invoke-virtual {v0}, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->getKeyListener()Landroid/text/method/KeyListener;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/air/AndroidStageText;->mSavedKeyListener:Landroid/text/method/KeyListener;

    .line 557
    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lcom/adobe/air/AndroidStageText;->setFontSize(I)V

    .line 558
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mView:Lcom/adobe/air/AndroidStageText$AndroidStageTextImpl;

    iget-object v1, p0, Lcom/adobe/air/AndroidStageText;->mTextView:Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v7, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Lcom/adobe/air/AndroidStageText$AndroidStageTextImpl;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 559
    if-nez p1, :cond_1

    .line 561
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mTextView:Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;

    invoke-virtual {v0, v6}, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->setSingleLine(Z)V

    .line 568
    :goto_0
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mTextView:Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->setGravity(I)V

    .line 569
    return-void

    .line 565
    :cond_1
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mTextView:Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;

    invoke-virtual {v0, v5}, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 566
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mTextView:Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;

    invoke-virtual {v0, v4}, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->setHorizontallyScrolling(Z)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/adobe/air/AndroidStageText;)Z
    .locals 1
    .parameter

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/adobe/air/AndroidStageText;->mNotifyLayoutComplete:Z

    return v0
.end method

.method static synthetic access$002(Lcom/adobe/air/AndroidStageText;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 71
    iput-boolean p1, p0, Lcom/adobe/air/AndroidStageText;->mNotifyLayoutComplete:Z

    return p1
.end method

.method static synthetic access$100(Lcom/adobe/air/AndroidStageText;)J
    .locals 2
    .parameter

    .prologue
    .line 71
    iget-wide v0, p0, Lcom/adobe/air/AndroidStageText;->mInternalReference:J

    return-wide v0
.end method

.method static synthetic access$1000(Lcom/adobe/air/AndroidStageText;)Z
    .locals 1
    .parameter

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/adobe/air/AndroidStageText;->mSelectionChanged:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/adobe/air/AndroidStageText;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 71
    iput-boolean p1, p0, Lcom/adobe/air/AndroidStageText;->mSelectionChanged:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/adobe/air/AndroidStageText;)Z
    .locals 1
    .parameter

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/adobe/air/AndroidStageText;->mInContentMenu:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/adobe/air/AndroidStageText;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 71
    iput-boolean p1, p0, Lcom/adobe/air/AndroidStageText;->mInContentMenu:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/adobe/air/AndroidStageText;)Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;
    .locals 1
    .parameter

    .prologue
    .line 71
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mTextView:Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/adobe/air/AndroidStageText;)Z
    .locals 1
    .parameter

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/adobe/air/AndroidStageText;->enterKeyDispatched:Z

    return v0
.end method

.method static synthetic access$1302(Lcom/adobe/air/AndroidStageText;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 71
    iput-boolean p1, p0, Lcom/adobe/air/AndroidStageText;->enterKeyDispatched:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/adobe/air/AndroidStageText;JII)Z
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 71
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/adobe/air/AndroidStageText;->handleKeyEvent(JII)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/adobe/air/AndroidStageText;)Lcom/adobe/air/AndroidStageText$AndroidStageTextImpl;
    .locals 1
    .parameter

    .prologue
    .line 71
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mView:Lcom/adobe/air/AndroidStageText$AndroidStageTextImpl;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/adobe/air/AndroidStageText;)Landroid/graphics/Rect;
    .locals 1
    .parameter

    .prologue
    .line 71
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mGlobalBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$200(Lcom/adobe/air/AndroidStageText;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 71
    invoke-direct {p0, p1, p2}, Lcom/adobe/air/AndroidStageText;->dispatchCompleteEvent(J)V

    return-void
.end method

.method static synthetic access$300(Lcom/adobe/air/AndroidStageText;)Landroid/graphics/Rect;
    .locals 1
    .parameter

    .prologue
    .line 71
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mClipBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$400(Lcom/adobe/air/AndroidStageText;)Landroid/graphics/Rect;
    .locals 1
    .parameter

    .prologue
    .line 71
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mViewBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$500(Lcom/adobe/air/AndroidStageText;)Lcom/adobe/air/AIRWindowSurfaceView;
    .locals 1
    .parameter

    .prologue
    .line 71
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mAIRSurface:Lcom/adobe/air/AIRWindowSurfaceView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/adobe/air/AndroidStageText;JI)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 71
    invoke-direct {p0, p1, p2, p3}, Lcom/adobe/air/AndroidStageText;->dispatchFocusIn(JI)V

    return-void
.end method

.method static synthetic access$700(Lcom/adobe/air/AndroidStageText;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 71
    invoke-direct {p0, p1, p2}, Lcom/adobe/air/AndroidStageText;->dispatchChangeEvent(J)V

    return-void
.end method

.method static synthetic access$800(Lcom/adobe/air/AndroidStageText;)Z
    .locals 1
    .parameter

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/adobe/air/AndroidStageText;->mMenuInvoked:Z

    return v0
.end method

.method static synthetic access$802(Lcom/adobe/air/AndroidStageText;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 71
    iput-boolean p1, p0, Lcom/adobe/air/AndroidStageText;->mMenuInvoked:Z

    return p1
.end method

.method static synthetic access$900(Lcom/adobe/air/AndroidStageText;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 71
    invoke-direct {p0, p1, p2}, Lcom/adobe/air/AndroidStageText;->invokeSoftKeyboard(J)V

    return-void
.end method

.method private applyFilters()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1276
    .line 1278
    iget v0, p0, Lcom/adobe/air/AndroidStageText;->mMaxChars:I

    if-eqz v0, :cond_3

    move v0, v1

    .line 1279
    :goto_0
    iget-object v3, p0, Lcom/adobe/air/AndroidStageText;->mRestrict:Ljava/lang/String;

    if-eqz v3, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 1281
    :cond_0
    new-array v0, v0, [Landroid/text/InputFilter;

    .line 1285
    iget v3, p0, Lcom/adobe/air/AndroidStageText;->mMaxChars:I

    if-eqz v3, :cond_2

    .line 1287
    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    iget v4, p0, Lcom/adobe/air/AndroidStageText;->mMaxChars:I

    invoke-direct {v3, v4}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v3, v0, v2

    .line 1290
    :goto_1
    iget-object v2, p0, Lcom/adobe/air/AndroidStageText;->mRestrict:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 1292
    new-instance v2, Lcom/adobe/air/AndroidStageText$RestrictFilter;

    iget-object v3, p0, Lcom/adobe/air/AndroidStageText;->mRestrict:Ljava/lang/String;

    invoke-direct {v2, p0, v3}, Lcom/adobe/air/AndroidStageText$RestrictFilter;-><init>(Lcom/adobe/air/AndroidStageText;Ljava/lang/String;)V

    aput-object v2, v0, v1

    .line 1293
    add-int/lit8 v1, v1, 0x1

    .line 1295
    :cond_1
    iget-object v1, p0, Lcom/adobe/air/AndroidStageText;->mTextView:Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;

    invoke-virtual {v1, v0}, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->setFilters([Landroid/text/InputFilter;)V

    .line 1296
    return-void

    :cond_2
    move v1, v2

    goto :goto_1

    :cond_3
    move v0, v2

    goto :goto_0
.end method

.method private native dispatchChangeEvent(J)V
.end method

.method private native dispatchCompleteEvent(J)V
.end method

.method private native dispatchFocusIn(JI)V
.end method

.method private native dispatchFocusOut(JI)V
.end method

.method private getShapeForBounds(Landroid/graphics/Rect;)Landroid/graphics/drawable/shapes/RectShape;
    .locals 3
    .parameter

    .prologue
    .line 1000
    new-instance v0, Landroid/graphics/drawable/shapes/RectShape;

    invoke-direct {v0}, Landroid/graphics/drawable/shapes/RectShape;-><init>()V

    .line 1001
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/shapes/RectShape;->resize(FF)V

    .line 1003
    return-object v0
.end method

.method private native handleKeyEvent(JII)Z
.end method

.method private native invokeSoftKeyboard(J)V
.end method

.method private refreshGlobalBounds(Z)V
    .locals 2
    .parameter

    .prologue
    .line 761
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mView:Lcom/adobe/air/AndroidStageText$AndroidStageTextImpl;

    if-nez v0, :cond_0

    .line 790
    :goto_0
    return-void

    .line 765
    :cond_0
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mView:Lcom/adobe/air/AndroidStageText$AndroidStageTextImpl;

    new-instance v1, Lcom/adobe/air/AndroidStageText$2;

    invoke-direct {v1, p0, p1}, Lcom/adobe/air/AndroidStageText$2;-><init>(Lcom/adobe/air/AndroidStageText;Z)V

    invoke-virtual {v0, v1}, Lcom/adobe/air/AndroidStageText$AndroidStageTextImpl;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private setInputType()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 894
    .line 895
    iget-boolean v0, p0, Lcom/adobe/air/AndroidStageText;->mDisplayAsPassword:Z

    if-eqz v0, :cond_4

    .line 897
    iget v0, p0, Lcom/adobe/air/AndroidStageText;->mKeyboardType:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_3

    .line 899
    const/16 v0, 0x12

    .line 924
    :goto_0
    and-int/lit8 v2, v0, 0xf

    if-ne v2, v1, :cond_1

    .line 926
    iget-boolean v1, p0, Lcom/adobe/air/AndroidStageText;->mAutoCorrect:Z

    if-eqz v1, :cond_0

    .line 928
    const v1, 0x8000

    or-int/2addr v0, v1

    .line 930
    :cond_0
    iget v1, p0, Lcom/adobe/air/AndroidStageText;->mAutoCapitalize:I

    if-eqz v1, :cond_1

    .line 932
    iget v1, p0, Lcom/adobe/air/AndroidStageText;->mAutoCapitalize:I

    packed-switch v1, :pswitch_data_0

    .line 945
    :cond_1
    :goto_1
    iget-boolean v1, p0, Lcom/adobe/air/AndroidStageText;->mMultiline:Z

    if-eqz v1, :cond_2

    .line 946
    const/high16 v1, 0x2

    or-int/2addr v0, v1

    .line 947
    :cond_2
    iget-object v1, p0, Lcom/adobe/air/AndroidStageText;->mTextView:Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;

    invoke-virtual {v1, v0}, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->setRawInputType(I)V

    .line 948
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mTextView:Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;

    invoke-virtual {v0}, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->invalidate()V

    .line 949
    return-void

    .line 903
    :cond_3
    const/16 v0, 0x91

    goto :goto_0

    .line 908
    :cond_4
    iget v0, p0, Lcom/adobe/air/AndroidStageText;->mKeyboardType:I

    packed-switch v0, :pswitch_data_1

    move v0, v1

    goto :goto_0

    :pswitch_0
    move v0, v1

    .line 912
    goto :goto_0

    .line 914
    :pswitch_1
    const/4 v0, 0x2

    .line 915
    goto :goto_0

    .line 917
    :pswitch_2
    const/16 v0, 0x21

    .line 918
    goto :goto_0

    .line 920
    :pswitch_3
    const/16 v0, 0x11

    goto :goto_0

    .line 934
    :pswitch_4
    or-int/lit16 v0, v0, 0x2000

    .line 935
    goto :goto_1

    .line 937
    :pswitch_5
    or-int/lit16 v0, v0, 0x4000

    .line 938
    goto :goto_1

    .line 940
    :pswitch_6
    or-int/lit16 v0, v0, 0x1000

    goto :goto_1

    .line 932
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch

    .line 908
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public addToStage(Lcom/adobe/air/AIRWindowSurfaceView;)V
    .locals 5
    .parameter

    .prologue
    .line 611
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mLayout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 612
    invoke-virtual {p0}, Lcom/adobe/air/AndroidStageText;->removeFromStage()V

    .line 614
    :cond_0
    iput-object p1, p0, Lcom/adobe/air/AndroidStageText;->mAIRSurface:Lcom/adobe/air/AIRWindowSurfaceView;

    .line 616
    invoke-virtual {p1}, Lcom/adobe/air/AIRWindowSurfaceView;->getActivityWrapper()Lcom/adobe/air/AndroidActivityWrapper;

    move-result-object v0

    .line 617
    invoke-virtual {v0, p0}, Lcom/adobe/air/AndroidActivityWrapper;->addActivityStateChangeListner(Lcom/adobe/air/AndroidActivityWrapper$StateChangeCallback;)V

    .line 618
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/adobe/air/AndroidActivityWrapper;->getOverlaysLayout(Z)Landroid/widget/RelativeLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/air/AndroidStageText;->mLayout:Landroid/widget/RelativeLayout;

    .line 619
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mLayout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/adobe/air/AndroidStageText;->mView:Lcom/adobe/air/AndroidStageText$AndroidStageTextImpl;

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v3, p0, Lcom/adobe/air/AndroidStageText;->mGlobalBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    iget-object v4, p0, Lcom/adobe/air/AndroidStageText;->mGlobalBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 620
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mTextView:Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;

    new-instance v1, Lcom/adobe/air/AndroidStageText$1;

    invoke-direct {v1, p0}, Lcom/adobe/air/AndroidStageText$1;-><init>(Lcom/adobe/air/AndroidStageText;)V

    invoke-virtual {v0, v1}, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 659
    return-void
.end method

.method public adjustViewBounds(DDDDD)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 796
    new-instance v0, Landroid/graphics/Rect;

    double-to-int v1, p1

    double-to-int v2, p3

    add-double v3, p1, p5

    double-to-int v3, v3

    add-double v4, p3, p7

    double-to-int v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/adobe/air/AndroidStageText;->mViewBounds:Landroid/graphics/Rect;

    .line 797
    iget-wide v0, p0, Lcom/adobe/air/AndroidStageText;->mScaleFactor:D

    cmpl-double v0, p9, v0

    if-eqz v0, :cond_0

    .line 799
    iput-wide p9, p0, Lcom/adobe/air/AndroidStageText;->mScaleFactor:D

    .line 800
    iget v0, p0, Lcom/adobe/air/AndroidStageText;->mFontSize:I

    invoke-virtual {p0, v0}, Lcom/adobe/air/AndroidStageText;->setFontSize(I)V

    .line 803
    :cond_0
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mViewBounds:Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/adobe/air/AndroidStageText;->mBounds:Landroid/graphics/Rect;

    .line 804
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mClip:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 806
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mBounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/adobe/air/AndroidStageText;->mClipBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    .line 808
    :cond_1
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mBounds:Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/adobe/air/AndroidStageText;->mGlobalBounds:Landroid/graphics/Rect;

    .line 811
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/adobe/air/AndroidStageText;->refreshGlobalBounds(Z)V

    .line 814
    return-void
.end method

.method public assignFocus()V
    .locals 3

    .prologue
    .line 1441
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mTextView:Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;

    invoke-virtual {v0}, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->requestFocus()Z

    .line 1444
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mAIRSurface:Lcom/adobe/air/AIRWindowSurfaceView;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/adobe/air/AndroidStageText;->mTextView:Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;

    invoke-virtual {v0, v1, v2}, Lcom/adobe/air/AIRWindowSurfaceView;->showSoftKeyboard(ZLandroid/view/View;)V

    .line 1445
    iget-wide v0, p0, Lcom/adobe/air/AndroidStageText;->mInternalReference:J

    invoke-direct {p0, v0, v1}, Lcom/adobe/air/AndroidStageText;->invokeSoftKeyboard(J)V

    .line 1448
    return-void
.end method

.method public captureSnapshot(II)Landroid/graphics/Bitmap;
    .locals 10
    .parameter
    .parameter

    .prologue
    const/4 v9, 0x0

    const-wide/high16 v7, 0x3ff0

    const/4 v1, 0x0

    .line 1504
    if-ltz p1, :cond_0

    if-gez p2, :cond_1

    .line 1542
    :cond_0
    :goto_0
    return-object v1

    .line 1507
    :cond_1
    if-nez p1, :cond_2

    if-eqz p2, :cond_0

    .line 1511
    :cond_2
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 1512
    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1513
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1516
    iget-object v3, p0, Lcom/adobe/air/AndroidStageText;->mView:Lcom/adobe/air/AndroidStageText$AndroidStageTextImpl;

    invoke-virtual {v3}, Lcom/adobe/air/AndroidStageText$AndroidStageTextImpl;->getScrollX()I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/adobe/air/AndroidStageText;->mView:Lcom/adobe/air/AndroidStageText$AndroidStageTextImpl;

    invoke-virtual {v4}, Lcom/adobe/air/AndroidStageText$AndroidStageTextImpl;->getScrollY()I

    move-result v4

    neg-int v4, v4

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1517
    iget-wide v3, p0, Lcom/adobe/air/AndroidStageText;->mScaleFactor:D

    const-wide/16 v5, 0x0

    cmpl-double v3, v3, v5

    if-eqz v3, :cond_3

    .line 1518
    iget-wide v3, p0, Lcom/adobe/air/AndroidStageText;->mScaleFactor:D

    div-double v3, v7, v3

    double-to-float v3, v3

    iget-wide v4, p0, Lcom/adobe/air/AndroidStageText;->mScaleFactor:D

    div-double v4, v7, v4

    double-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Canvas;->scale(FF)V

    .line 1521
    :cond_3
    iget-object v3, p0, Lcom/adobe/air/AndroidStageText;->mView:Lcom/adobe/air/AndroidStageText$AndroidStageTextImpl;

    invoke-virtual {v3}, Lcom/adobe/air/AndroidStageText$AndroidStageTextImpl;->isHorizontalScrollBarEnabled()Z

    move-result v3

    .line 1522
    iget-object v4, p0, Lcom/adobe/air/AndroidStageText;->mView:Lcom/adobe/air/AndroidStageText$AndroidStageTextImpl;

    invoke-virtual {v4}, Lcom/adobe/air/AndroidStageText$AndroidStageTextImpl;->isVerticalScrollBarEnabled()Z

    move-result v4

    .line 1525
    iget-object v5, p0, Lcom/adobe/air/AndroidStageText;->mView:Lcom/adobe/air/AndroidStageText$AndroidStageTextImpl;

    invoke-virtual {v5, v9}, Lcom/adobe/air/AndroidStageText$AndroidStageTextImpl;->setHorizontalScrollBarEnabled(Z)V

    .line 1526
    iget-object v5, p0, Lcom/adobe/air/AndroidStageText;->mView:Lcom/adobe/air/AndroidStageText$AndroidStageTextImpl;

    invoke-virtual {v5, v9}, Lcom/adobe/air/AndroidStageText$AndroidStageTextImpl;->setVerticalScrollBarEnabled(Z)V

    .line 1531
    :try_start_0
    iget-object v5, p0, Lcom/adobe/air/AndroidStageText;->mView:Lcom/adobe/air/AndroidStageText$AndroidStageTextImpl;

    invoke-virtual {v5, v2}, Lcom/adobe/air/AndroidStageText$AndroidStageTextImpl;->draw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1537
    :goto_1
    iget-object v1, p0, Lcom/adobe/air/AndroidStageText;->mView:Lcom/adobe/air/AndroidStageText$AndroidStageTextImpl;

    invoke-virtual {v1, v3}, Lcom/adobe/air/AndroidStageText$AndroidStageTextImpl;->setHorizontalScrollBarEnabled(Z)V

    .line 1538
    iget-object v1, p0, Lcom/adobe/air/AndroidStageText;->mView:Lcom/adobe/air/AndroidStageText$AndroidStageTextImpl;

    invoke-virtual {v1, v4}, Lcom/adobe/air/AndroidStageText$AndroidStageTextImpl;->setVerticalScrollBarEnabled(Z)V

    move-object v1, v0

    .line 1542
    goto :goto_0

    .line 1532
    :catch_0
    move-exception v0

    move-object v0, v1

    .line 1533
    goto :goto_1
.end method

.method public clearFocus()V
    .locals 3

    .prologue
    .line 1453
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mTextView:Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;

    invoke-virtual {v0}, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1455
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mTextView:Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;

    invoke-virtual {v0}, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->clearFocus()V

    .line 1456
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mAIRSurface:Lcom/adobe/air/AIRWindowSurfaceView;

    invoke-virtual {v0}, Lcom/adobe/air/AIRWindowSurfaceView;->requestFocus()Z

    .line 1467
    :cond_0
    iget-boolean v0, p0, Lcom/adobe/air/AndroidStageText;->mMenuInvoked:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/adobe/air/AndroidStageText;->mDisableInteraction:Z

    if-eqz v0, :cond_1

    .line 1468
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mAIRSurface:Lcom/adobe/air/AIRWindowSurfaceView;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/adobe/air/AndroidStageText;->mTextView:Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;

    invoke-virtual {v0, v1, v2}, Lcom/adobe/air/AIRWindowSurfaceView;->showSoftKeyboard(ZLandroid/view/View;)V

    .line 1471
    :cond_1
    return-void
.end method

.method public clearRestrict()V
    .locals 1

    .prologue
    .line 1306
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/air/AndroidStageText;->mRestrict:Ljava/lang/String;

    .line 1307
    invoke-direct {p0}, Lcom/adobe/air/AndroidStageText;->applyFilters()V

    .line 1308
    return-void
.end method

.method public destroyInternals()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 598
    invoke-virtual {p0}, Lcom/adobe/air/AndroidStageText;->removeFromStage()V

    .line 600
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/adobe/air/AndroidStageText;->mInternalReference:J

    .line 601
    iput-object v2, p0, Lcom/adobe/air/AndroidStageText;->mView:Lcom/adobe/air/AndroidStageText$AndroidStageTextImpl;

    .line 602
    iput-object v2, p0, Lcom/adobe/air/AndroidStageText;->mClipBounds:Landroid/graphics/Rect;

    .line 603
    iput-object v2, p0, Lcom/adobe/air/AndroidStageText;->mTextView:Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;

    .line 604
    return-void
.end method

.method public getAlign()I
    .locals 1

    .prologue
    .line 1343
    iget v0, p0, Lcom/adobe/air/AndroidStageText;->mAlign:I

    return v0
.end method

.method public getAutoCapitalize()I
    .locals 1

    .prologue
    .line 1065
    iget v0, p0, Lcom/adobe/air/AndroidStageText;->mAutoCapitalize:I

    return v0
.end method

.method public getBackgroundColor()I
    .locals 1

    .prologue
    .line 1015
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mBBDrawable:Lcom/adobe/air/AndroidStageText$BackgroundBorderDrawable;

    iget v0, v0, Lcom/adobe/air/AndroidStageText$BackgroundBorderDrawable;->mBkgColor:I

    return v0
.end method

.method public getBorderColor()I
    .locals 1

    .prologue
    .line 1039
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mBBDrawable:Lcom/adobe/air/AndroidStageText$BackgroundBorderDrawable;

    iget v0, v0, Lcom/adobe/air/AndroidStageText$BackgroundBorderDrawable;->mBorderColor:I

    return v0
.end method

.method public getFontSize()I
    .locals 1

    .prologue
    .line 1382
    iget v0, p0, Lcom/adobe/air/AndroidStageText;->mFontSize:I

    return v0
.end method

.method public getKeyboardType()I
    .locals 1

    .prologue
    .line 865
    iget v0, p0, Lcom/adobe/air/AndroidStageText;->mKeyboardType:I

    return v0
.end method

.method public getLocale()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1332
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mLocale:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxChars()I
    .locals 1

    .prologue
    .line 1318
    iget v0, p0, Lcom/adobe/air/AndroidStageText;->mMaxChars:I

    return v0
.end method

.method public getRestrict()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1300
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mRestrict:Ljava/lang/String;

    return-object v0
.end method

.method public getReturnKeyLabel()I
    .locals 1

    .prologue
    .line 1082
    iget v0, p0, Lcom/adobe/air/AndroidStageText;->mReturnKeyLabel:I

    return v0
.end method

.method public getSelectionActiveIndex()I
    .locals 1

    .prologue
    .line 1497
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mTextView:Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;

    invoke-virtual {v0}, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->getSelectionEnd()I

    move-result v0

    return v0
.end method

.method public getSelectionAnchorIndex()I
    .locals 1

    .prologue
    .line 1491
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mTextView:Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;

    invoke-virtual {v0}, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->getSelectionStart()I

    move-result v0

    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 850
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mTextView:Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;

    invoke-virtual {v0}, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 852
    return-object v0
.end method

.method public getTextColor()I
    .locals 1

    .prologue
    .line 994
    iget v0, p0, Lcom/adobe/air/AndroidStageText;->mTextColor:I

    return v0
.end method

.method public onActivityStateChanged(Lcom/adobe/air/AndroidActivityWrapper$ActivityState;)V
    .locals 0
    .parameter

    .prologue
    .line 582
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter

    .prologue
    .line 587
    return-void
.end method

.method public removeClip()V
    .locals 1

    .prologue
    .line 830
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mAIRSurface:Lcom/adobe/air/AIRWindowSurfaceView;

    .line 831
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mViewBounds:Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/adobe/air/AndroidStageText;->mBounds:Landroid/graphics/Rect;

    .line 832
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/air/AndroidStageText;->mClipBounds:Landroid/graphics/Rect;

    .line 833
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mTextView:Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;

    invoke-virtual {v0}, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->invalidate()V

    .line 834
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/adobe/air/AndroidStageText;->refreshGlobalBounds(Z)V

    .line 835
    return-void
.end method

.method public removeFromStage()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 664
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mLayout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 666
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mLayout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/adobe/air/AndroidStageText;->mView:Lcom/adobe/air/AndroidStageText$AndroidStageTextImpl;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 667
    iput-object v2, p0, Lcom/adobe/air/AndroidStageText;->mLayout:Landroid/widget/RelativeLayout;

    .line 669
    :cond_0
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mAIRSurface:Lcom/adobe/air/AIRWindowSurfaceView;

    if-eqz v0, :cond_1

    .line 673
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mAIRSurface:Lcom/adobe/air/AIRWindowSurfaceView;

    invoke-virtual {v0}, Lcom/adobe/air/AIRWindowSurfaceView;->getActivityWrapper()Lcom/adobe/air/AndroidActivityWrapper;

    move-result-object v0

    .line 674
    invoke-virtual {v0}, Lcom/adobe/air/AndroidActivityWrapper;->didRemoveOverlay()V

    .line 675
    invoke-virtual {v0, p0}, Lcom/adobe/air/AndroidActivityWrapper;->removeActivityStateChangeListner(Lcom/adobe/air/AndroidActivityWrapper$StateChangeCallback;)V

    .line 677
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mAIRSurface:Lcom/adobe/air/AIRWindowSurfaceView;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/adobe/air/AIRWindowSurfaceView;->updateFocusedStageText(Lcom/adobe/air/AndroidStageText;Z)V

    .line 679
    :cond_1
    iput-object v2, p0, Lcom/adobe/air/AndroidStageText;->mAIRSurface:Lcom/adobe/air/AIRWindowSurfaceView;

    .line 680
    return-void
.end method

.method public resetGlobalBounds()V
    .locals 1

    .prologue
    .line 756
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mBounds:Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/adobe/air/AndroidStageText;->mGlobalBounds:Landroid/graphics/Rect;

    .line 757
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/adobe/air/AndroidStageText;->refreshGlobalBounds(Z)V

    .line 758
    return-void
.end method

.method public selectRange(II)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1475
    iget-object v1, p0, Lcom/adobe/air/AndroidStageText;->mTextView:Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;

    invoke-virtual {v1}, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->length()I

    move-result v1

    .line 1476
    if-gez p1, :cond_2

    move p1, v0

    .line 1480
    :cond_0
    :goto_0
    if-gez p2, :cond_3

    move p2, v0

    .line 1484
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mTextView:Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;

    invoke-virtual {v0, p1, p2}, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->setSelection(II)V

    .line 1485
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mTextView:Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;

    invoke-virtual {v0}, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->invalidate()V

    .line 1486
    return-void

    .line 1478
    :cond_2
    if-le p1, v1, :cond_0

    move p1, v1

    .line 1479
    goto :goto_0

    .line 1482
    :cond_3
    if-le p2, v1, :cond_1

    move p2, v1

    .line 1483
    goto :goto_1
.end method

.method public setAlign(I)V
    .locals 2
    .parameter

    .prologue
    .line 1349
    iput p1, p0, Lcom/adobe/air/AndroidStageText;->mAlign:I

    .line 1350
    packed-switch p1, :pswitch_data_0

    .line 1365
    :goto_0
    :pswitch_0
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mTextView:Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;

    invoke-virtual {v0}, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->invalidate()V

    .line 1366
    return-void

    .line 1353
    :pswitch_1
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mTextView:Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->setGravity(I)V

    goto :goto_0

    .line 1357
    :pswitch_2
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mTextView:Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->setGravity(I)V

    goto :goto_0

    .line 1360
    :pswitch_3
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mTextView:Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->setGravity(I)V

    goto :goto_0

    .line 1350
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setAutoCapitalize(I)V
    .locals 1
    .parameter

    .prologue
    .line 1055
    iget v0, p0, Lcom/adobe/air/AndroidStageText;->mAutoCapitalize:I

    if-eq v0, p1, :cond_0

    .line 1057
    iput p1, p0, Lcom/adobe/air/AndroidStageText;->mAutoCapitalize:I

    .line 1058
    invoke-direct {p0}, Lcom/adobe/air/AndroidStageText;->setInputType()V

    .line 1061
    :cond_0
    return-void
.end method

.method public setAutoCorrect(Z)V
    .locals 1
    .parameter

    .prologue
    .line 1071
    iget-boolean v0, p0, Lcom/adobe/air/AndroidStageText;->mAutoCorrect:Z

    if-eq v0, p1, :cond_0

    .line 1073
    iput-boolean p1, p0, Lcom/adobe/air/AndroidStageText;->mAutoCorrect:Z

    .line 1074
    invoke-direct {p0}, Lcom/adobe/air/AndroidStageText;->setInputType()V

    .line 1077
    :cond_0
    return-void
.end method

.method public setBackground(Z)V
    .locals 1
    .parameter

    .prologue
    .line 1021
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mBBDrawable:Lcom/adobe/air/AndroidStageText$BackgroundBorderDrawable;

    iget-boolean v0, v0, Lcom/adobe/air/AndroidStageText$BackgroundBorderDrawable;->mHaveBkg:Z

    if-eq v0, p1, :cond_0

    .line 1023
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mBBDrawable:Lcom/adobe/air/AndroidStageText$BackgroundBorderDrawable;

    iput-boolean p1, v0, Lcom/adobe/air/AndroidStageText$BackgroundBorderDrawable;->mHaveBkg:Z

    .line 1024
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mTextView:Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;

    invoke-virtual {v0}, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->invalidate()V

    .line 1026
    :cond_0
    return-void
.end method

.method public setBackgroundColor(IIII)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1008
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mBBDrawable:Lcom/adobe/air/AndroidStageText$BackgroundBorderDrawable;

    invoke-static {p4, p1, p2, p3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/adobe/air/AndroidStageText$BackgroundBorderDrawable;->setBkgColor(I)V

    .line 1009
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mTextView:Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;

    invoke-virtual {v0}, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->invalidate()V

    .line 1011
    return-void
.end method

.method public setBold(Z)V
    .locals 0
    .parameter

    .prologue
    .line 1389
    iput-boolean p1, p0, Lcom/adobe/air/AndroidStageText;->mBold:Z

    .line 1390
    invoke-virtual {p0}, Lcom/adobe/air/AndroidStageText;->updateTypeface()V

    .line 1391
    return-void
.end method

.method public setBorder(Z)V
    .locals 1
    .parameter

    .prologue
    .line 1045
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mBBDrawable:Lcom/adobe/air/AndroidStageText$BackgroundBorderDrawable;

    iget-boolean v0, v0, Lcom/adobe/air/AndroidStageText$BackgroundBorderDrawable;->mHaveBorder:Z

    if-eq v0, p1, :cond_0

    .line 1047
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mBBDrawable:Lcom/adobe/air/AndroidStageText$BackgroundBorderDrawable;

    iput-boolean p1, v0, Lcom/adobe/air/AndroidStageText$BackgroundBorderDrawable;->mHaveBorder:Z

    .line 1048
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mTextView:Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;

    invoke-virtual {v0}, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->invalidate()V

    .line 1050
    :cond_0
    return-void
.end method

.method public setBorderColor(IIII)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1031
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mBBDrawable:Lcom/adobe/air/AndroidStageText$BackgroundBorderDrawable;

    invoke-static {p4, p1, p2, p3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/adobe/air/AndroidStageText$BackgroundBorderDrawable;->setBorderColor(I)V

    .line 1032
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mTextView:Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;

    invoke-virtual {v0}, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->invalidate()V

    .line 1034
    return-void
.end method

.method public setClipBounds(DDDD)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 820
    new-instance v0, Landroid/graphics/Rect;

    double-to-int v1, p1

    double-to-int v2, p3

    add-double v3, p1, p5

    double-to-int v3, v3

    add-double v4, p3, p7

    double-to-int v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/adobe/air/AndroidStageText;->mClipBounds:Landroid/graphics/Rect;

    .line 821
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mViewBounds:Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/adobe/air/AndroidStageText;->mBounds:Landroid/graphics/Rect;

    .line 822
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mTextView:Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;

    invoke-virtual {v0}, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->invalidate()V

    .line 823
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/adobe/air/AndroidStageText;->refreshGlobalBounds(Z)V

    .line 824
    return-void
.end method

.method public setDisableInteraction(Z)V
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 968
    iput-boolean p1, p0, Lcom/adobe/air/AndroidStageText;->mDisableInteraction:Z

    .line 969
    if-eqz p1, :cond_0

    .line 971
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mTextView:Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;

    iget-object v2, p0, Lcom/adobe/air/AndroidStageText;->mTextView:Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;

    invoke-virtual {v2}, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    sget-object v3, Landroid/widget/TextView$BufferType;->NORMAL:Landroid/widget/TextView$BufferType;

    invoke-virtual {v0, v2, v3}, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 972
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mTextView:Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;

    invoke-virtual {v0, v1}, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 982
    :goto_0
    return-void

    .line 976
    :cond_0
    iget-object v2, p0, Lcom/adobe/air/AndroidStageText;->mTextView:Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;

    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mTextView:Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;

    invoke-virtual {v0}, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->getText()Landroid/text/Editable;

    move-result-object v3

    iget-boolean v0, p0, Lcom/adobe/air/AndroidStageText;->mEditable:Z

    if-eqz v0, :cond_1

    sget-object v0, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    :goto_1
    invoke-virtual {v2, v3, v0}, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 977
    iget-object v2, p0, Lcom/adobe/air/AndroidStageText;->mTextView:Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;

    iget-boolean v0, p0, Lcom/adobe/air/AndroidStageText;->mEditable:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mSavedKeyListener:Landroid/text/method/KeyListener;

    :goto_2
    invoke-virtual {v2, v0}, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    goto :goto_0

    .line 976
    :cond_1
    sget-object v0, Landroid/widget/TextView$BufferType;->NORMAL:Landroid/widget/TextView$BufferType;

    goto :goto_1

    :cond_2
    move-object v0, v1

    .line 977
    goto :goto_2
.end method

.method public setDisplayAsPassword(Z)V
    .locals 2
    .parameter

    .prologue
    .line 873
    iput-boolean p1, p0, Lcom/adobe/air/AndroidStageText;->mDisplayAsPassword:Z

    .line 874
    if-eqz p1, :cond_0

    .line 876
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mTextView:Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 888
    :goto_0
    invoke-direct {p0}, Lcom/adobe/air/AndroidStageText;->setInputType()V

    .line 889
    return-void

    .line 878
    :cond_0
    iget-boolean v0, p0, Lcom/adobe/air/AndroidStageText;->mMultiline:Z

    if-nez v0, :cond_1

    .line 880
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mTextView:Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;

    invoke-static {}, Landroid/text/method/SingleLineTransformationMethod;->getInstance()Landroid/text/method/SingleLineTransformationMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    goto :goto_0

    .line 884
    :cond_1
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mTextView:Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    goto :goto_0
.end method

.method public setEditable(Z)V
    .locals 3
    .parameter

    .prologue
    .line 954
    iget-boolean v0, p0, Lcom/adobe/air/AndroidStageText;->mEditable:Z

    if-eq p1, v0, :cond_0

    .line 956
    iput-boolean p1, p0, Lcom/adobe/air/AndroidStageText;->mEditable:Z

    .line 957
    iget-boolean v0, p0, Lcom/adobe/air/AndroidStageText;->mDisableInteraction:Z

    if-nez v0, :cond_0

    .line 959
    iget-object v1, p0, Lcom/adobe/air/AndroidStageText;->mTextView:Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;

    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mTextView:Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;

    invoke-virtual {v0}, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    iget-boolean v0, p0, Lcom/adobe/air/AndroidStageText;->mEditable:Z

    if-eqz v0, :cond_1

    sget-object v0, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    :goto_0
    invoke-virtual {v1, v2, v0}, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 960
    iget-object v1, p0, Lcom/adobe/air/AndroidStageText;->mTextView:Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;

    iget-boolean v0, p0, Lcom/adobe/air/AndroidStageText;->mEditable:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mSavedKeyListener:Landroid/text/method/KeyListener;

    :goto_1
    invoke-virtual {v1, v0}, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 964
    :cond_0
    return-void

    .line 959
    :cond_1
    sget-object v0, Landroid/widget/TextView$BufferType;->NORMAL:Landroid/widget/TextView$BufferType;

    goto :goto_0

    .line 960
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public setFontFamily(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 1404
    iput-object p1, p0, Lcom/adobe/air/AndroidStageText;->mFont:Ljava/lang/String;

    .line 1406
    invoke-virtual {p0}, Lcom/adobe/air/AndroidStageText;->updateTypeface()V

    .line 1407
    return-void
.end method

.method public setFontSize(I)V
    .locals 4
    .parameter

    .prologue
    .line 1372
    iput p1, p0, Lcom/adobe/air/AndroidStageText;->mFontSize:I

    .line 1373
    int-to-double v0, p1

    iget-wide v2, p0, Lcom/adobe/air/AndroidStageText;->mScaleFactor:D

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x3fe0

    add-double/2addr v0, v2

    double-to-int v0, v0

    .line 1375
    iget-object v1, p0, Lcom/adobe/air/AndroidStageText;->mTextView:Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;

    const/4 v2, 0x0

    int-to-float v0, v0

    invoke-virtual {v1, v2, v0}, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->setTextSize(IF)V

    .line 1376
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mTextView:Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;

    invoke-virtual {v0}, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->invalidate()V

    .line 1377
    return-void
.end method

.method public setInternalReference(J)V
    .locals 0
    .parameter

    .prologue
    .line 591
    iput-wide p1, p0, Lcom/adobe/air/AndroidStageText;->mInternalReference:J

    .line 593
    return-void
.end method

.method public setItalic(Z)V
    .locals 0
    .parameter

    .prologue
    .line 1397
    iput-boolean p1, p0, Lcom/adobe/air/AndroidStageText;->mItalic:Z

    .line 1398
    invoke-virtual {p0}, Lcom/adobe/air/AndroidStageText;->updateTypeface()V

    .line 1399
    return-void
.end method

.method public setKeyboardType(I)V
    .locals 0
    .parameter

    .prologue
    .line 859
    iput p1, p0, Lcom/adobe/air/AndroidStageText;->mKeyboardType:I

    .line 860
    invoke-direct {p0}, Lcom/adobe/air/AndroidStageText;->setInputType()V

    .line 861
    return-void
.end method

.method public setLocale(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 1338
    iput-object p1, p0, Lcom/adobe/air/AndroidStageText;->mLocale:Ljava/lang/String;

    .line 1339
    return-void
.end method

.method public setMaxChars(I)V
    .locals 1
    .parameter

    .prologue
    .line 1323
    iget v0, p0, Lcom/adobe/air/AndroidStageText;->mMaxChars:I

    if-eq p1, v0, :cond_0

    .line 1325
    iput p1, p0, Lcom/adobe/air/AndroidStageText;->mMaxChars:I

    .line 1326
    invoke-direct {p0}, Lcom/adobe/air/AndroidStageText;->applyFilters()V

    .line 1328
    :cond_0
    return-void
.end method

.method public setRestrict(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 1312
    iput-object p1, p0, Lcom/adobe/air/AndroidStageText;->mRestrict:Ljava/lang/String;

    .line 1313
    invoke-direct {p0}, Lcom/adobe/air/AndroidStageText;->applyFilters()V

    .line 1314
    return-void
.end method

.method public setReturnKeyLabel(I)V
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1090
    .line 1092
    iput p1, p0, Lcom/adobe/air/AndroidStageText;->mReturnKeyLabel:I

    .line 1093
    packed-switch p1, :pswitch_data_0

    .line 1110
    :goto_0
    :pswitch_0
    iget-object v1, p0, Lcom/adobe/air/AndroidStageText;->mTextView:Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;

    invoke-virtual {v1, v0}, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->setImeOptions(I)V

    .line 1111
    return-void

    .line 1098
    :pswitch_1
    const/4 v0, 0x6

    .line 1099
    goto :goto_0

    .line 1101
    :pswitch_2
    const/4 v0, 0x2

    .line 1102
    goto :goto_0

    .line 1104
    :pswitch_3
    const/4 v0, 0x5

    .line 1105
    goto :goto_0

    .line 1107
    :pswitch_4
    const/4 v0, 0x3

    goto :goto_0

    .line 1093
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public setText(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 842
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mTextView:Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;

    invoke-virtual {v0}, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->getFilters()[Landroid/text/InputFilter;

    move-result-object v1

    .line 843
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mTextView:Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;

    const/4 v2, 0x0

    new-array v2, v2, [Landroid/text/InputFilter;

    invoke-virtual {v0, v2}, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->setFilters([Landroid/text/InputFilter;)V

    .line 844
    iget-object v2, p0, Lcom/adobe/air/AndroidStageText;->mTextView:Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;

    iget-boolean v0, p0, Lcom/adobe/air/AndroidStageText;->mEditable:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/adobe/air/AndroidStageText;->mDisableInteraction:Z

    if-nez v0, :cond_0

    sget-object v0, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    :goto_0
    invoke-virtual {v2, p1, v0}, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 845
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mTextView:Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;

    invoke-virtual {v0, v1}, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->setFilters([Landroid/text/InputFilter;)V

    .line 846
    return-void

    .line 844
    :cond_0
    sget-object v0, Landroid/widget/TextView$BufferType;->NORMAL:Landroid/widget/TextView$BufferType;

    goto :goto_0
.end method

.method public setTextColor(IIII)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 986
    invoke-static {p4, p1, p2, p3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/adobe/air/AndroidStageText;->mTextColor:I

    .line 987
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mTextView:Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;

    iget v1, p0, Lcom/adobe/air/AndroidStageText;->mTextColor:I

    invoke-virtual {v0, v1}, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->setTextColor(I)V

    .line 989
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mTextView:Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;

    invoke-virtual {v0}, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->invalidate()V

    .line 990
    return-void
.end method

.method public setVisibility(Z)V
    .locals 2
    .parameter

    .prologue
    .line 684
    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 686
    :goto_0
    iget-object v1, p0, Lcom/adobe/air/AndroidStageText;->mView:Lcom/adobe/air/AndroidStageText$AndroidStageTextImpl;

    invoke-virtual {v1}, Lcom/adobe/air/AndroidStageText$AndroidStageTextImpl;->getVisibility()I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 689
    iget-object v1, p0, Lcom/adobe/air/AndroidStageText;->mView:Lcom/adobe/air/AndroidStageText$AndroidStageTextImpl;

    invoke-virtual {v1, v0}, Lcom/adobe/air/AndroidStageText$AndroidStageTextImpl;->setVisibility(I)V

    .line 690
    if-eqz p1, :cond_0

    .line 691
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mTextView:Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;

    invoke-virtual {v0}, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->invalidate()V

    .line 693
    :cond_0
    return-void

    .line 684
    :cond_1
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public updateTypeface()V
    .locals 3

    .prologue
    .line 1412
    const/4 v0, 0x0

    .line 1413
    iget-boolean v1, p0, Lcom/adobe/air/AndroidStageText;->mBold:Z

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 1414
    :cond_0
    iget-boolean v1, p0, Lcom/adobe/air/AndroidStageText;->mItalic:Z

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x2

    .line 1415
    :cond_1
    iget-object v1, p0, Lcom/adobe/air/AndroidStageText;->mFont:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    .line 1416
    if-eqz v1, :cond_2

    .line 1418
    iget-object v2, p0, Lcom/adobe/air/AndroidStageText;->mTextView:Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;

    invoke-virtual {v2, v1, v0}, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 1434
    :goto_0
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mTextView:Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;

    invoke-virtual {v0}, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->invalidate()V

    .line 1435
    return-void

    .line 1423
    :cond_2
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1425
    :pswitch_0
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mTextView:Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_0

    .line 1428
    :pswitch_1
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mTextView:Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_0

    .line 1423
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public updateViewBoundsWithKeyboard(I)J
    .locals 7
    .parameter

    .prologue
    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    .line 698
    .line 699
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mBounds:Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/adobe/air/AndroidStageText;->mGlobalBounds:Landroid/graphics/Rect;

    .line 701
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mAIRSurface:Lcom/adobe/air/AIRWindowSurfaceView;

    if-eqz v0, :cond_3

    .line 704
    new-instance v5, Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mAIRSurface:Lcom/adobe/air/AIRWindowSurfaceView;

    invoke-virtual {v0}, Lcom/adobe/air/AIRWindowSurfaceView;->getVisibleBoundWidth()I

    move-result v0

    iget-object v1, p0, Lcom/adobe/air/AndroidStageText;->mAIRSurface:Lcom/adobe/air/AIRWindowSurfaceView;

    invoke-virtual {v1}, Lcom/adobe/air/AIRWindowSurfaceView;->getVisibleBoundHeight()I

    move-result v1

    invoke-direct {v5, v2, v2, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 706
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v5, v0}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 711
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 712
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 713
    if-ne v1, v0, :cond_0

    move-wide v0, v3

    .line 751
    :goto_0
    return-wide v0

    .line 721
    :cond_0
    iget v6, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v6

    .line 722
    if-gtz v0, :cond_1

    move-wide v0, v3

    .line 726
    goto :goto_0

    .line 729
    :cond_1
    if-gt v0, v1, :cond_2

    .line 749
    :goto_1
    invoke-direct {p0, v2}, Lcom/adobe/air/AndroidStageText;->refreshGlobalBounds(Z)V

    .line 751
    int-to-long v0, v0

    goto :goto_0

    .line 742
    :cond_2
    new-instance v0, Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/adobe/air/AndroidStageText;->mBounds:Landroid/graphics/Rect;

    invoke-direct {v0, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/adobe/air/AndroidStageText;->mGlobalBounds:Landroid/graphics/Rect;

    .line 743
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mGlobalBounds:Landroid/graphics/Rect;

    iget v3, v5, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v3, v1

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    move v0, v1

    goto :goto_1

    :cond_3
    move v0, v2

    goto :goto_1
.end method
