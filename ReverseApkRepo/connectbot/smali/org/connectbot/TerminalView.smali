.class public Lorg/connectbot/TerminalView;
.super Landroid/view/View;
.source "TerminalView.java"

# interfaces
.implements Lorg/connectbot/service/FontSizeChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/connectbot/TerminalView$AccessibilityEventSender;,
        Lorg/connectbot/TerminalView$AccessibilityStateTester;
    }
.end annotation


# static fields
.field private static final scaleType:Landroid/graphics/Matrix$ScaleToFit;


# instance fields
.field private altCursor:Landroid/graphics/Path;

.field public final bridge:Lorg/connectbot/service/TerminalBridge;

.field private final context:Landroid/content/Context;

.field private ctrlCursor:Landroid/graphics/Path;

.field private final cursorPaint:Landroid/graphics/Paint;

.field private final cursorStrokePaint:Landroid/graphics/Paint;

.field private lastNotification:Ljava/lang/String;

.field private mAccessibilityActive:Z

.field private mAccessibilityBuffer:Ljava/lang/StringBuffer;

.field private mAccessibilityInitialized:Z

.field private mAccessibilityLock:[Ljava/lang/Object;

.field private mCodeMatcher:Ljava/util/regex/Matcher;

.field private mControlCodes:Ljava/util/regex/Pattern;

.field private mEventSender:Lorg/connectbot/TerminalView$AccessibilityEventSender;

.field private notification:Landroid/widget/Toast;

.field private volatile notifications:Z

.field private final paint:Landroid/graphics/Paint;

.field private scaleMatrix:Landroid/graphics/Matrix;

.field private shiftCursor:Landroid/graphics/Path;

.field private tempDst:Landroid/graphics/RectF;

.field private tempSrc:Landroid/graphics/RectF;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 73
    sget-object v0, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    sput-object v0, Lorg/connectbot/TerminalView;->scaleType:Landroid/graphics/Matrix$ScaleToFit;

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/connectbot/service/TerminalBridge;)V
    .locals 9
    .parameter "context"
    .parameter "bridge"

    .prologue
    const/high16 v8, 0x3f00

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/high16 v4, 0x3f80

    .line 96
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 75
    iput-object v5, p0, Lorg/connectbot/TerminalView;->notification:Landroid/widget/Toast;

    .line 76
    iput-object v5, p0, Lorg/connectbot/TerminalView;->lastNotification:Ljava/lang/String;

    .line 77
    iput-boolean v7, p0, Lorg/connectbot/TerminalView;->notifications:Z

    .line 80
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/connectbot/TerminalView;->mAccessibilityInitialized:Z

    .line 81
    iput-boolean v7, p0, Lorg/connectbot/TerminalView;->mAccessibilityActive:Z

    .line 82
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lorg/connectbot/TerminalView;->mAccessibilityLock:[Ljava/lang/Object;

    .line 84
    iput-object v5, p0, Lorg/connectbot/TerminalView;->mControlCodes:Ljava/util/regex/Pattern;

    .line 85
    iput-object v5, p0, Lorg/connectbot/TerminalView;->mCodeMatcher:Ljava/util/regex/Matcher;

    .line 86
    iput-object v5, p0, Lorg/connectbot/TerminalView;->mEventSender:Lorg/connectbot/TerminalView$AccessibilityEventSender;

    .line 98
    iput-object p1, p0, Lorg/connectbot/TerminalView;->context:Landroid/content/Context;

    .line 99
    iput-object p2, p0, Lorg/connectbot/TerminalView;->bridge:Lorg/connectbot/service/TerminalBridge;

    .line 100
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/connectbot/TerminalView;->paint:Landroid/graphics/Paint;

    .line 102
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Lorg/connectbot/TerminalView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 103
    invoke-virtual {p0, v7}, Lorg/connectbot/TerminalView;->setFocusable(Z)V

    .line 104
    invoke-virtual {p0, v7}, Lorg/connectbot/TerminalView;->setFocusableInTouchMode(Z)V

    .line 106
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/connectbot/TerminalView;->cursorPaint:Landroid/graphics/Paint;

    .line 107
    iget-object v0, p0, Lorg/connectbot/TerminalView;->cursorPaint:Landroid/graphics/Paint;

    iget-object v1, p2, Lorg/connectbot/service/TerminalBridge;->color:[Ljava/lang/Integer;

    iget v2, p2, Lorg/connectbot/service/TerminalBridge;->defaultFg:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 108
    iget-object v0, p0, Lorg/connectbot/TerminalView;->cursorPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PixelXorXfermode;

    iget-object v2, p2, Lorg/connectbot/service/TerminalBridge;->color:[Ljava/lang/Integer;

    iget v3, p2, Lorg/connectbot/service/TerminalBridge;->defaultBg:I

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/graphics/PixelXorXfermode;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 109
    iget-object v0, p0, Lorg/connectbot/TerminalView;->cursorPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 111
    new-instance v0, Landroid/graphics/Paint;

    iget-object v1, p0, Lorg/connectbot/TerminalView;->cursorPaint:Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v0, p0, Lorg/connectbot/TerminalView;->cursorStrokePaint:Landroid/graphics/Paint;

    .line 112
    iget-object v0, p0, Lorg/connectbot/TerminalView;->cursorStrokePaint:Landroid/graphics/Paint;

    const v1, 0x3dcccccd

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 113
    iget-object v0, p0, Lorg/connectbot/TerminalView;->cursorStrokePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 120
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lorg/connectbot/TerminalView;->shiftCursor:Landroid/graphics/Path;

    .line 121
    iget-object v0, p0, Lorg/connectbot/TerminalView;->shiftCursor:Landroid/graphics/Path;

    const v1, 0x3ea8f5c3

    invoke-virtual {v0, v8, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 122
    iget-object v0, p0, Lorg/connectbot/TerminalView;->shiftCursor:Landroid/graphics/Path;

    invoke-virtual {v0, v4, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 124
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lorg/connectbot/TerminalView;->altCursor:Landroid/graphics/Path;

    .line 125
    iget-object v0, p0, Lorg/connectbot/TerminalView;->altCursor:Landroid/graphics/Path;

    invoke-virtual {v0, v6, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 126
    iget-object v0, p0, Lorg/connectbot/TerminalView;->altCursor:Landroid/graphics/Path;

    const v1, 0x3f28f5c3

    invoke-virtual {v0, v8, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 127
    iget-object v0, p0, Lorg/connectbot/TerminalView;->altCursor:Landroid/graphics/Path;

    invoke-virtual {v0, v4, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 129
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lorg/connectbot/TerminalView;->ctrlCursor:Landroid/graphics/Path;

    .line 130
    iget-object v0, p0, Lorg/connectbot/TerminalView;->ctrlCursor:Landroid/graphics/Path;

    const/high16 v1, 0x3e80

    invoke-virtual {v0, v6, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 131
    iget-object v0, p0, Lorg/connectbot/TerminalView;->ctrlCursor:Landroid/graphics/Path;

    invoke-virtual {v0, v4, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 132
    iget-object v0, p0, Lorg/connectbot/TerminalView;->ctrlCursor:Landroid/graphics/Path;

    const/high16 v1, 0x3f40

    invoke-virtual {v0, v6, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 135
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/connectbot/TerminalView;->tempSrc:Landroid/graphics/RectF;

    .line 136
    iget-object v0, p0, Lorg/connectbot/TerminalView;->tempSrc:Landroid/graphics/RectF;

    invoke-virtual {v0, v6, v6, v4, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 137
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/connectbot/TerminalView;->tempDst:Landroid/graphics/RectF;

    .line 138
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lorg/connectbot/TerminalView;->scaleMatrix:Landroid/graphics/Matrix;

    .line 140
    invoke-virtual {p2, p0}, Lorg/connectbot/service/TerminalBridge;->addFontSizeChangedListener(Lorg/connectbot/service/FontSizeChangedListener;)V

    .line 143
    invoke-virtual {p2}, Lorg/connectbot/service/TerminalBridge;->getKeyHandler()Lorg/connectbot/service/TerminalKeyListener;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/connectbot/TerminalView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 145
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/connectbot/TerminalView;->mAccessibilityBuffer:Ljava/lang/StringBuffer;

    .line 148
    new-instance v0, Lorg/connectbot/TerminalView$AccessibilityStateTester;

    invoke-direct {v0, p0, v5}, Lorg/connectbot/TerminalView$AccessibilityStateTester;-><init>(Lorg/connectbot/TerminalView;Lorg/connectbot/TerminalView$AccessibilityStateTester;)V

    new-array v1, v7, [Ljava/lang/Void;

    const/4 v2, 0x0

    aput-object v5, v1, v2

    invoke-virtual {v0, v1}, Lorg/connectbot/TerminalView$AccessibilityStateTester;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 149
    return-void
.end method

.method static synthetic access$0(Lorg/connectbot/TerminalView;)[Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 82
    iget-object v0, p0, Lorg/connectbot/TerminalView;->mAccessibilityLock:[Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1(Lorg/connectbot/TerminalView;)Ljava/util/regex/Matcher;
    .locals 1
    .parameter

    .prologue
    .line 85
    iget-object v0, p0, Lorg/connectbot/TerminalView;->mCodeMatcher:Ljava/util/regex/Matcher;

    return-object v0
.end method

.method static synthetic access$10(Lorg/connectbot/TerminalView;Lorg/connectbot/TerminalView$AccessibilityEventSender;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 86
    iput-object p1, p0, Lorg/connectbot/TerminalView;->mEventSender:Lorg/connectbot/TerminalView$AccessibilityEventSender;

    return-void
.end method

.method static synthetic access$11(Lorg/connectbot/TerminalView;)Lorg/connectbot/TerminalView$AccessibilityEventSender;
    .locals 1
    .parameter

    .prologue
    .line 86
    iget-object v0, p0, Lorg/connectbot/TerminalView;->mEventSender:Lorg/connectbot/TerminalView$AccessibilityEventSender;

    return-object v0
.end method

.method static synthetic access$2(Lorg/connectbot/TerminalView;)Ljava/util/regex/Pattern;
    .locals 1
    .parameter

    .prologue
    .line 84
    iget-object v0, p0, Lorg/connectbot/TerminalView;->mControlCodes:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method static synthetic access$3(Lorg/connectbot/TerminalView;)Ljava/lang/StringBuffer;
    .locals 1
    .parameter

    .prologue
    .line 83
    iget-object v0, p0, Lorg/connectbot/TerminalView;->mAccessibilityBuffer:Ljava/lang/StringBuffer;

    return-object v0
.end method

.method static synthetic access$4(Lorg/connectbot/TerminalView;Ljava/util/regex/Matcher;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 85
    iput-object p1, p0, Lorg/connectbot/TerminalView;->mCodeMatcher:Ljava/util/regex/Matcher;

    return-void
.end method

.method static synthetic access$5(Lorg/connectbot/TerminalView;Ljava/lang/StringBuffer;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 83
    iput-object p1, p0, Lorg/connectbot/TerminalView;->mAccessibilityBuffer:Ljava/lang/StringBuffer;

    return-void
.end method

.method static synthetic access$6(Lorg/connectbot/TerminalView;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 63
    iget-object v0, p0, Lorg/connectbot/TerminalView;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$7(Lorg/connectbot/TerminalView;Ljava/util/regex/Pattern;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 84
    iput-object p1, p0, Lorg/connectbot/TerminalView;->mControlCodes:Ljava/util/regex/Pattern;

    return-void
.end method

.method static synthetic access$8(Lorg/connectbot/TerminalView;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 81
    iput-boolean p1, p0, Lorg/connectbot/TerminalView;->mAccessibilityActive:Z

    return-void
.end method

.method static synthetic access$9(Lorg/connectbot/TerminalView;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 80
    iput-boolean p1, p0, Lorg/connectbot/TerminalView;->mAccessibilityInitialized:Z

    return-void
.end method

.method private scaleCursors()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 171
    iget-object v0, p0, Lorg/connectbot/TerminalView;->tempDst:Landroid/graphics/RectF;

    iget-object v1, p0, Lorg/connectbot/TerminalView;->bridge:Lorg/connectbot/service/TerminalBridge;

    iget v1, v1, Lorg/connectbot/service/TerminalBridge;->charWidth:I

    int-to-float v1, v1

    iget-object v2, p0, Lorg/connectbot/TerminalView;->bridge:Lorg/connectbot/service/TerminalBridge;

    iget v2, v2, Lorg/connectbot/service/TerminalBridge;->charHeight:I

    int-to-float v2, v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 172
    iget-object v0, p0, Lorg/connectbot/TerminalView;->scaleMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lorg/connectbot/TerminalView;->tempSrc:Landroid/graphics/RectF;

    iget-object v2, p0, Lorg/connectbot/TerminalView;->tempDst:Landroid/graphics/RectF;

    sget-object v3, Lorg/connectbot/TerminalView;->scaleType:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 173
    return-void
.end method


# virtual methods
.method public forceSize(II)V
    .locals 3
    .parameter "width"
    .parameter "height"

    .prologue
    .line 285
    iget-object v0, p0, Lorg/connectbot/TerminalView;->bridge:Lorg/connectbot/service/TerminalBridge;

    invoke-virtual {p0}, Lorg/connectbot/TerminalView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lorg/connectbot/TerminalView;->getHeight()I

    move-result v2

    invoke-virtual {v0, p1, p2, v1, v2}, Lorg/connectbot/service/TerminalBridge;->resizeComputed(IIII)V

    .line 286
    return-void
.end method

.method public notifyUser(Ljava/lang/String;)V
    .locals 2
    .parameter "message"

    .prologue
    .line 261
    iget-boolean v0, p0, Lorg/connectbot/TerminalView;->notifications:Z

    if-nez v0, :cond_1

    .line 277
    :cond_0
    :goto_0
    return-void

    .line 264
    :cond_1
    iget-object v0, p0, Lorg/connectbot/TerminalView;->notification:Landroid/widget/Toast;

    if-eqz v0, :cond_3

    .line 266
    iget-object v0, p0, Lorg/connectbot/TerminalView;->lastNotification:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/connectbot/TerminalView;->lastNotification:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 269
    :cond_2
    iget-object v0, p0, Lorg/connectbot/TerminalView;->notification:Landroid/widget/Toast;

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 270
    iget-object v0, p0, Lorg/connectbot/TerminalView;->notification:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 276
    :goto_1
    iput-object p1, p0, Lorg/connectbot/TerminalView;->lastNotification:Ljava/lang/String;

    goto :goto_0

    .line 272
    :cond_3
    iget-object v0, p0, Lorg/connectbot/TerminalView;->context:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lorg/connectbot/TerminalView;->notification:Landroid/widget/Toast;

    .line 273
    iget-object v0, p0, Lorg/connectbot/TerminalView;->notification:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method

.method public onCheckIsTextEditor()Z
    .locals 1

    .prologue
    .line 298
    const/4 v0, 0x1

    return v0
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 3
    .parameter "outAttrs"

    .prologue
    const/4 v2, 0x0

    iget v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 304
    const v1, 0x50000001

    or-int/2addr v0, v1

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 307
    iput v2, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 308
    new-instance v0, Lorg/connectbot/TerminalView$1;

    invoke-direct {v0, p0, p0, v2}, Lorg/connectbot/TerminalView$1;-><init>(Lorg/connectbot/TerminalView;Landroid/view/View;Z)V

    return-object v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 18
    .parameter "canvas"

    .prologue
    .line 177
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/connectbot/TerminalView;->bridge:Lorg/connectbot/service/TerminalBridge;

    iget-object v1, v1, Lorg/connectbot/service/TerminalBridge;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    .line 179
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/connectbot/TerminalView;->bridge:Lorg/connectbot/service/TerminalBridge;

    invoke-virtual {v1}, Lorg/connectbot/service/TerminalBridge;->onDraw()V

    .line 182
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/connectbot/TerminalView;->bridge:Lorg/connectbot/service/TerminalBridge;

    iget-object v1, v1, Lorg/connectbot/service/TerminalBridge;->bitmap:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/connectbot/TerminalView;->paint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 185
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/connectbot/TerminalView;->bridge:Lorg/connectbot/service/TerminalBridge;

    iget-object v1, v1, Lorg/connectbot/service/TerminalBridge;->buffer:Lde/mud/terminal/VDUBuffer;

    invoke-virtual {v1}, Lde/mud/terminal/VDUBuffer;->isCursorVisible()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 186
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/connectbot/TerminalView;->bridge:Lorg/connectbot/service/TerminalBridge;

    iget-object v1, v1, Lorg/connectbot/service/TerminalBridge;->buffer:Lde/mud/terminal/VDUBuffer;

    invoke-virtual {v1}, Lde/mud/terminal/VDUBuffer;->getCursorColumn()I

    move-result v11

    .line 187
    .local v11, cursorColumn:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/connectbot/TerminalView;->bridge:Lorg/connectbot/service/TerminalBridge;

    iget-object v1, v1, Lorg/connectbot/service/TerminalBridge;->buffer:Lde/mud/terminal/VDUBuffer;

    invoke-virtual {v1}, Lde/mud/terminal/VDUBuffer;->getCursorRow()I

    move-result v12

    .line 189
    .local v12, cursorRow:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/connectbot/TerminalView;->bridge:Lorg/connectbot/service/TerminalBridge;

    iget-object v1, v1, Lorg/connectbot/service/TerminalBridge;->buffer:Lde/mud/terminal/VDUBuffer;

    invoke-virtual {v1}, Lde/mud/terminal/VDUBuffer;->getColumns()I

    move-result v9

    .line 191
    .local v9, columns:I
    if-ne v11, v9, :cond_0

    .line 192
    add-int/lit8 v11, v9, -0x1

    .line 194
    :cond_0
    if-ltz v11, :cond_1

    if-gez v12, :cond_2

    .line 258
    .end local v9           #columns:I
    .end local v11           #cursorColumn:I
    .end local v12           #cursorRow:I
    :cond_1
    :goto_0
    return-void

    .line 197
    .restart local v9       #columns:I
    .restart local v11       #cursorColumn:I
    .restart local v12       #cursorRow:I
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/connectbot/TerminalView;->bridge:Lorg/connectbot/service/TerminalBridge;

    iget-object v1, v1, Lorg/connectbot/service/TerminalBridge;->buffer:Lde/mud/terminal/VDUBuffer;

    invoke-virtual {v1, v11, v12}, Lde/mud/terminal/VDUBuffer;->getAttributes(II)I

    move-result v10

    .line 199
    .local v10, currentAttribute:I
    const/high16 v1, 0x800

    and-int/2addr v1, v10

    if-eqz v1, :cond_8

    const/4 v15, 0x1

    .line 201
    .local v15, onWideCharacter:Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/connectbot/TerminalView;->bridge:Lorg/connectbot/service/TerminalBridge;

    iget v1, v1, Lorg/connectbot/service/TerminalBridge;->charWidth:I

    mul-int v16, v11, v1

    .line 202
    .local v16, x:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/connectbot/TerminalView;->bridge:Lorg/connectbot/service/TerminalBridge;

    iget-object v1, v1, Lorg/connectbot/service/TerminalBridge;->buffer:Lde/mud/terminal/VDUBuffer;

    invoke-virtual {v1}, Lde/mud/terminal/VDUBuffer;->getCursorRow()I

    move-result v1

    .line 203
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/connectbot/TerminalView;->bridge:Lorg/connectbot/service/TerminalBridge;

    iget-object v2, v2, Lorg/connectbot/service/TerminalBridge;->buffer:Lde/mud/terminal/VDUBuffer;

    iget v2, v2, Lde/mud/terminal/VDUBuffer;->screenBase:I

    .line 202
    add-int/2addr v1, v2

    .line 203
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/connectbot/TerminalView;->bridge:Lorg/connectbot/service/TerminalBridge;

    iget-object v2, v2, Lorg/connectbot/service/TerminalBridge;->buffer:Lde/mud/terminal/VDUBuffer;

    iget v2, v2, Lde/mud/terminal/VDUBuffer;->windowBase:I

    .line 202
    sub-int/2addr v1, v2

    .line 204
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/connectbot/TerminalView;->bridge:Lorg/connectbot/service/TerminalBridge;

    iget v2, v2, Lorg/connectbot/service/TerminalBridge;->charHeight:I

    .line 202
    mul-int v17, v1, v2

    .line 207
    .local v17, y:I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 209
    move/from16 v0, v16

    int-to-float v1, v0

    move/from16 v0, v17

    int-to-float v2, v0

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 210
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 211
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/connectbot/TerminalView;->bridge:Lorg/connectbot/service/TerminalBridge;

    iget v4, v1, Lorg/connectbot/service/TerminalBridge;->charWidth:I

    if-eqz v15, :cond_9

    const/4 v1, 0x2

    :goto_2
    mul-int/2addr v1, v4

    .line 212
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/connectbot/TerminalView;->bridge:Lorg/connectbot/service/TerminalBridge;

    iget v4, v4, Lorg/connectbot/service/TerminalBridge;->charHeight:I

    .line 210
    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v1, v4}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 213
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/connectbot/TerminalView;->cursorPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->drawPaint(Landroid/graphics/Paint;)V

    .line 215
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/connectbot/TerminalView;->bridge:Lorg/connectbot/service/TerminalBridge;

    invoke-virtual {v1}, Lorg/connectbot/service/TerminalBridge;->getKeyHandler()Lorg/connectbot/service/TerminalKeyListener;

    move-result-object v1

    invoke-virtual {v1}, Lorg/connectbot/service/TerminalKeyListener;->getDeadKey()I

    move-result v13

    .line 216
    .local v13, deadKey:I
    if-eqz v13, :cond_3

    .line 217
    const/4 v1, 0x1

    new-array v2, v1, [C

    const/4 v1, 0x0

    int-to-char v3, v13

    aput-char v3, v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/connectbot/TerminalView;->cursorStrokePaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->drawText([CIIFFLandroid/graphics/Paint;)V

    .line 221
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/connectbot/TerminalView;->scaleMatrix:Landroid/graphics/Matrix;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 223
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/connectbot/TerminalView;->bridge:Lorg/connectbot/service/TerminalBridge;

    invoke-virtual {v1}, Lorg/connectbot/service/TerminalBridge;->getKeyHandler()Lorg/connectbot/service/TerminalKeyListener;

    move-result-object v1

    invoke-virtual {v1}, Lorg/connectbot/service/TerminalKeyListener;->getMetaState()I

    move-result v14

    .line 225
    .local v14, metaState:I
    and-int/lit8 v1, v14, 0x10

    if-eqz v1, :cond_a

    .line 226
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/connectbot/TerminalView;->shiftCursor:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/connectbot/TerminalView;->cursorStrokePaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 230
    :cond_4
    :goto_3
    and-int/lit8 v1, v14, 0x4

    if-eqz v1, :cond_b

    .line 231
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/connectbot/TerminalView;->altCursor:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/connectbot/TerminalView;->cursorStrokePaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 235
    :cond_5
    :goto_4
    and-int/lit8 v1, v14, 0x1

    if-eqz v1, :cond_c

    .line 236
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/connectbot/TerminalView;->ctrlCursor:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/connectbot/TerminalView;->cursorStrokePaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 241
    :cond_6
    :goto_5
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 245
    .end local v9           #columns:I
    .end local v10           #currentAttribute:I
    .end local v11           #cursorColumn:I
    .end local v12           #cursorRow:I
    .end local v13           #deadKey:I
    .end local v14           #metaState:I
    .end local v15           #onWideCharacter:Z
    .end local v16           #x:I
    .end local v17           #y:I
    :cond_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/connectbot/TerminalView;->bridge:Lorg/connectbot/service/TerminalBridge;

    invoke-virtual {v1}, Lorg/connectbot/service/TerminalBridge;->isSelectingForCopy()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 246
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/connectbot/TerminalView;->bridge:Lorg/connectbot/service/TerminalBridge;

    invoke-virtual {v1}, Lorg/connectbot/service/TerminalBridge;->getSelectionArea()Lorg/connectbot/bean/SelectionArea;

    move-result-object v8

    .line 247
    .local v8, area:Lorg/connectbot/bean/SelectionArea;
    const/4 v1, 0x2

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->save(I)I

    .line 249
    invoke-virtual {v8}, Lorg/connectbot/bean/SelectionArea;->getLeft()I

    move-result v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/connectbot/TerminalView;->bridge:Lorg/connectbot/service/TerminalBridge;

    iget v2, v2, Lorg/connectbot/service/TerminalBridge;->charWidth:I

    mul-int/2addr v1, v2

    .line 250
    invoke-virtual {v8}, Lorg/connectbot/bean/SelectionArea;->getTop()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/connectbot/TerminalView;->bridge:Lorg/connectbot/service/TerminalBridge;

    iget v3, v3, Lorg/connectbot/service/TerminalBridge;->charHeight:I

    mul-int/2addr v2, v3

    .line 251
    invoke-virtual {v8}, Lorg/connectbot/bean/SelectionArea;->getRight()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/connectbot/TerminalView;->bridge:Lorg/connectbot/service/TerminalBridge;

    iget v4, v4, Lorg/connectbot/service/TerminalBridge;->charWidth:I

    mul-int/2addr v3, v4

    .line 252
    invoke-virtual {v8}, Lorg/connectbot/bean/SelectionArea;->getBottom()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/connectbot/TerminalView;->bridge:Lorg/connectbot/service/TerminalBridge;

    iget v5, v5, Lorg/connectbot/service/TerminalBridge;->charHeight:I

    mul-int/2addr v4, v5

    .line 248
    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 254
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/connectbot/TerminalView;->cursorPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->drawPaint(Landroid/graphics/Paint;)V

    .line 255
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_0

    .line 199
    .end local v8           #area:Lorg/connectbot/bean/SelectionArea;
    .restart local v9       #columns:I
    .restart local v10       #currentAttribute:I
    .restart local v11       #cursorColumn:I
    .restart local v12       #cursorRow:I
    :cond_8
    const/4 v15, 0x0

    goto/16 :goto_1

    .line 211
    .restart local v15       #onWideCharacter:Z
    .restart local v16       #x:I
    .restart local v17       #y:I
    :cond_9
    const/4 v1, 0x1

    goto/16 :goto_2

    .line 227
    .restart local v13       #deadKey:I
    .restart local v14       #metaState:I
    :cond_a
    and-int/lit8 v1, v14, 0x20

    if-eqz v1, :cond_4

    .line 228
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/connectbot/TerminalView;->shiftCursor:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/connectbot/TerminalView;->cursorPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto/16 :goto_3

    .line 232
    :cond_b
    and-int/lit8 v1, v14, 0x8

    if-eqz v1, :cond_5

    .line 233
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/connectbot/TerminalView;->altCursor:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/connectbot/TerminalView;->cursorPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto/16 :goto_4

    .line 237
    :cond_c
    and-int/lit8 v1, v14, 0x2

    if-eqz v1, :cond_6

    .line 238
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/connectbot/TerminalView;->ctrlCursor:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/connectbot/TerminalView;->cursorPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto/16 :goto_5
.end method

.method public onFontSizeChanged(F)V
    .locals 0
    .parameter "size"

    .prologue
    .line 166
    invoke-direct {p0}, Lorg/connectbot/TerminalView;->scaleCursors()V

    .line 167
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 158
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 160
    iget-object v0, p0, Lorg/connectbot/TerminalView;->bridge:Lorg/connectbot/service/TerminalBridge;

    invoke-virtual {v0, p0}, Lorg/connectbot/service/TerminalBridge;->parentChanged(Lorg/connectbot/TerminalView;)V

    .line 162
    invoke-direct {p0}, Lorg/connectbot/TerminalView;->scaleCursors()V

    .line 163
    return-void
.end method

.method public propagateConsoleText([CI)V
    .locals 3
    .parameter "rawText"
    .parameter "length"

    .prologue
    .line 324
    iget-boolean v0, p0, Lorg/connectbot/TerminalView;->mAccessibilityActive:Z

    if-eqz v0, :cond_0

    .line 325
    iget-object v1, p0, Lorg/connectbot/TerminalView;->mAccessibilityLock:[Ljava/lang/Object;

    monitor-enter v1

    .line 326
    :try_start_0
    iget-object v0, p0, Lorg/connectbot/TerminalView;->mAccessibilityBuffer:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, p2}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 325
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 329
    iget-boolean v0, p0, Lorg/connectbot/TerminalView;->mAccessibilityInitialized:Z

    if-eqz v0, :cond_0

    .line 330
    iget-object v0, p0, Lorg/connectbot/TerminalView;->mEventSender:Lorg/connectbot/TerminalView$AccessibilityEventSender;

    if-eqz v0, :cond_1

    .line 331
    iget-object v0, p0, Lorg/connectbot/TerminalView;->mEventSender:Lorg/connectbot/TerminalView$AccessibilityEventSender;

    invoke-virtual {p0, v0}, Lorg/connectbot/TerminalView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 336
    :goto_0
    iget-object v0, p0, Lorg/connectbot/TerminalView;->mEventSender:Lorg/connectbot/TerminalView$AccessibilityEventSender;

    const-wide/16 v1, 0x3e8

    invoke-virtual {p0, v0, v1, v2}, Lorg/connectbot/TerminalView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 339
    :cond_0
    return-void

    .line 325
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 333
    :cond_1
    new-instance v0, Lorg/connectbot/TerminalView$AccessibilityEventSender;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/connectbot/TerminalView$AccessibilityEventSender;-><init>(Lorg/connectbot/TerminalView;Lorg/connectbot/TerminalView$AccessibilityEventSender;)V

    iput-object v0, p0, Lorg/connectbot/TerminalView;->mEventSender:Lorg/connectbot/TerminalView$AccessibilityEventSender;

    goto :goto_0
.end method
