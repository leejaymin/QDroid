.class public Lcom/wolfram/android/alpha/view/QueryInputView;
.super Landroid/widget/AutoCompleteTextView;
.source "QueryInputView.java"

# interfaces
.implements Lcom/wolfram/android/alpha/PreferenceChangeListener;
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnFocusChangeListener;


# static fields
.field private static logger:Ljava/util/logging/Logger;


# instance fields
.field private current_query_text:Ljava/lang/String;

.field private imm:Landroid/view/inputmethod/InputMethodManager;

.field instantmath_view:Landroid/widget/TextView;

.field private isShowingComputeIcon:Z

.field query_text_view_top_gap:Landroid/view/View;

.field private waActivity:Lcom/wolfram/android/alpha/activity/WolframAlpha;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const-string v0, "com.wolfram.android.alpha.view.QueryInputView"

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/wolfram/android/alpha/view/QueryInputView;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Landroid/widget/AutoCompleteTextView;-><init>(Landroid/content/Context;)V

    .line 39
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/wolfram/android/alpha/view/QueryInputView;->isShowingComputeIcon:Z

    .line 51
    invoke-direct {p0}, Lcom/wolfram/android/alpha/view/QueryInputView;->Init()V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Landroid/widget/AutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/wolfram/android/alpha/view/QueryInputView;->isShowingComputeIcon:Z

    .line 56
    invoke-direct {p0}, Lcom/wolfram/android/alpha/view/QueryInputView;->Init()V

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 60
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/AutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/wolfram/android/alpha/view/QueryInputView;->isShowingComputeIcon:Z

    .line 61
    invoke-direct {p0}, Lcom/wolfram/android/alpha/view/QueryInputView;->Init()V

    .line 62
    return-void
.end method

.method private Init()V
    .locals 2

    .prologue
    .line 278
    invoke-virtual {p0}, Lcom/wolfram/android/alpha/view/QueryInputView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/wolfram/android/alpha/view/QueryInputView;->imm:Landroid/view/inputmethod/InputMethodManager;

    .line 279
    invoke-static {}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getApplication()Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->useDockedInputField()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 282
    invoke-virtual {p0, p0}, Lcom/wolfram/android/alpha/view/QueryInputView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 283
    invoke-virtual {p0, p0}, Lcom/wolfram/android/alpha/view/QueryInputView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 284
    invoke-virtual {p0, p0}, Lcom/wolfram/android/alpha/view/QueryInputView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 288
    :cond_0
    return-void
.end method

.method private InstantMath(Ljava/lang/String;)V
    .locals 7
    .parameter "input"

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 180
    :try_start_0
    invoke-static {p1}, Lcom/wolfram/nblite/mcore/InstantMath;->getResult(Ljava/lang/String;)Lcom/wolfram/nblite/mcore/InstantMathResult;

    move-result-object v1

    .line 182
    .local v1, res:Lcom/wolfram/nblite/mcore/InstantMathResult;
    invoke-virtual {v1}, Lcom/wolfram/nblite/mcore/InstantMathResult;->getExactResult()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v1}, Lcom/wolfram/nblite/mcore/InstantMathResult;->getExactResult()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_4

    invoke-virtual {v1}, Lcom/wolfram/nblite/mcore/InstantMathResult;->getExactResult()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 184
    iget-object v2, p0, Lcom/wolfram/android/alpha/view/QueryInputView;->instantmath_view:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 185
    invoke-static {}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getApplication()Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->useDockedInputField()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/wolfram/android/alpha/view/QueryInputView;->query_text_view_top_gap:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 187
    :cond_0
    invoke-virtual {v1}, Lcom/wolfram/nblite/mcore/InstantMathResult;->getApproximateResult()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lcom/wolfram/nblite/mcore/InstantMathResult;->getApproximateResult()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    .line 189
    iget-object v2, p0, Lcom/wolfram/android/alpha/view/QueryInputView;->instantmath_view:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/wolfram/nblite/mcore/InstantMathResult;->getExactResult()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/wolfram/nblite/mcore/InstantMathResult;->getApproximateResult()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 219
    .end local v1           #res:Lcom/wolfram/nblite/mcore/InstantMathResult;
    :cond_1
    :goto_0
    return-void

    .line 194
    .restart local v1       #res:Lcom/wolfram/nblite/mcore/InstantMathResult;
    :cond_2
    iget-object v2, p0, Lcom/wolfram/android/alpha/view/QueryInputView;->instantmath_view:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/wolfram/nblite/mcore/InstantMathResult;->getExactResult()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 213
    .end local v1           #res:Lcom/wolfram/nblite/mcore/InstantMathResult;
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 214
    .local v0, e:Ljava/lang/Exception;
    iget-object v2, p0, Lcom/wolfram/android/alpha/view/QueryInputView;->instantmath_view:Landroid/widget/TextView;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/wolfram/android/alpha/view/QueryInputView;->instantmath_view:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 215
    :cond_3
    invoke-static {}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getApplication()Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->useDockedInputField()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/wolfram/android/alpha/view/QueryInputView;->query_text_view_top_gap:Landroid/view/View;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/wolfram/android/alpha/view/QueryInputView;->query_text_view_top_gap:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 197
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v1       #res:Lcom/wolfram/nblite/mcore/InstantMathResult;
    :cond_4
    :try_start_1
    invoke-virtual {v1}, Lcom/wolfram/nblite/mcore/InstantMathResult;->getApproximateResult()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {v1}, Lcom/wolfram/nblite/mcore/InstantMathResult;->getApproximateResult()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_6

    .line 199
    iget-object v2, p0, Lcom/wolfram/android/alpha/view/QueryInputView;->instantmath_view:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 200
    invoke-static {}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getApplication()Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->useDockedInputField()Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/wolfram/android/alpha/view/QueryInputView;->query_text_view_top_gap:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 203
    :cond_5
    iget-object v2, p0, Lcom/wolfram/android/alpha/view/QueryInputView;->instantmath_view:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/wolfram/nblite/mcore/InstantMathResult;->getApproximateResult()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 207
    :cond_6
    iget-object v2, p0, Lcom/wolfram/android/alpha/view/QueryInputView;->instantmath_view:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 208
    invoke-static {}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getApplication()Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->useDockedInputField()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/wolfram/android/alpha/view/QueryInputView;->query_text_view_top_gap:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method static synthetic access$000(Lcom/wolfram/android/alpha/view/QueryInputView;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/wolfram/android/alpha/view/QueryInputView;->current_query_text:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/wolfram/android/alpha/view/QueryInputView;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/wolfram/android/alpha/view/QueryInputView;->InstantMath(Ljava/lang/String;)V

    return-void
.end method

.method private makeActive(Landroid/view/View;)Z
    .locals 6
    .parameter "v"

    .prologue
    const/4 v5, 0x0

    .line 317
    invoke-static {}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getApplication()Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->isUseCustomKeyboard()Z

    move-result v3

    if-nez v3, :cond_0

    move v3, v5

    .line 326
    :goto_0
    return v3

    .line 320
    :cond_0
    iget-object v3, p0, Lcom/wolfram/android/alpha/view/QueryInputView;->imm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v3, v4, v5}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 321
    move-object v0, p1

    check-cast v0, Landroid/widget/EditText;

    move-object v1, v0

    .line 322
    .local v1, e:Landroid/widget/EditText;
    invoke-virtual {v1}, Landroid/widget/EditText;->getInputType()I

    move-result v2

    .line 323
    .local v2, iType:I
    invoke-virtual {v1, v5}, Landroid/widget/EditText;->setInputType(I)V

    .line 324
    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 325
    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setInputType(I)V

    .line 326
    const/4 v3, 0x1

    goto :goto_0
.end method

.method private setClearIcon()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 124
    iget-boolean v0, p0, Lcom/wolfram/android/alpha/view/QueryInputView;->isShowingComputeIcon:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/wolfram/android/alpha/view/QueryInputView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/wolfram/android/alpha/view/QueryInputView;->isShowingComputeIcon:Z

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/wolfram/android/alpha/view/QueryInputView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 125
    :cond_1
    invoke-virtual {p0}, Lcom/wolfram/android/alpha/view/QueryInputView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_3

    const v0, 0x7f02006f

    :goto_0
    invoke-virtual {p0, v1, v1, v0, v1}, Lcom/wolfram/android/alpha/view/QueryInputView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 126
    invoke-virtual {p0}, Lcom/wolfram/android/alpha/view/QueryInputView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/wolfram/android/alpha/view/QueryInputView;->isShowingComputeIcon:Z

    .line 128
    :cond_2
    return-void

    .line 125
    :cond_3
    const v0, 0x7f0200ce

    goto :goto_0

    :cond_4
    move v0, v1

    .line 126
    goto :goto_1
.end method


# virtual methods
.method public onCheckIsTextEditor()Z
    .locals 1

    .prologue
    .line 223
    invoke-static {}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getApplication()Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->isHoneycombDeviceandAbove()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 224
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 336
    invoke-direct {p0, p1}, Lcom/wolfram/android/alpha/view/QueryInputView;->makeActive(Landroid/view/View;)Z

    .line 337
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10
    .parameter "canvas"

    .prologue
    .line 98
    invoke-super {p0, p1}, Landroid/widget/AutoCompleteTextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 100
    invoke-static {}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getApplication()Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-result-object v4

    invoke-virtual {v4}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->isKindleFire()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 101
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 102
    .local v0, border_rect:Landroid/graphics/Rect;
    invoke-virtual {p0, v0}, Lcom/wolfram/android/alpha/view/QueryInputView;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 104
    new-instance v1, Landroid/graphics/Paint;

    const/4 v4, 0x1

    invoke-direct {v1, v4}, Landroid/graphics/Paint;-><init>(I)V

    .line 105
    .local v1, mPaint:Landroid/graphics/Paint;
    const/16 v4, 0xff

    const/16 v5, 0x90

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 106
    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 107
    const/high16 v4, 0x4080

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 108
    const/high16 v2, 0x4000

    .line 109
    .local v2, offsetX:F
    const/high16 v3, 0x40a0

    .line 114
    .local v3, offsetY:F
    new-instance v4, Landroid/graphics/RectF;

    iget v5, v0, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    add-float/2addr v5, v2

    iget v6, v0, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    add-float/2addr v6, v3

    iget v7, v0, Landroid/graphics/Rect;->right:I

    int-to-float v7, v7

    sub-float/2addr v7, v2

    iget v8, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v8, v8

    sub-float/2addr v8, v3

    const/high16 v9, 0x3f80

    sub-float/2addr v8, v9

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/high16 v5, 0x40a0

    const/high16 v6, 0x4040

    invoke-virtual {p1, v4, v5, v6, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 117
    .end local v0           #border_rect:Landroid/graphics/Rect;
    .end local v1           #mPaint:Landroid/graphics/Paint;
    .end local v2           #offsetX:F
    .end local v3           #offsetY:F
    :cond_0
    return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2
    .parameter "v"
    .parameter "hasFocus"

    .prologue
    .line 330
    invoke-static {}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getApplication()Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->isUseCustomKeyboard()Z

    move-result v0

    if-nez v0, :cond_0

    .line 331
    iget-object v0, p0, Lcom/wolfram/android/alpha/view/QueryInputView;->imm:Landroid/view/inputmethod/InputMethodManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 332
    :cond_0
    invoke-direct {p0, p1}, Lcom/wolfram/android/alpha/view/QueryInputView;->makeActive(Landroid/view/View;)Z

    .line 333
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 4
    .parameter "focused"
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 262
    iget-object v2, p0, Lcom/wolfram/android/alpha/view/QueryInputView;->waActivity:Lcom/wolfram/android/alpha/activity/WolframAlpha;

    if-nez v2, :cond_0

    .line 273
    :goto_0
    return-void

    .line 264
    :cond_0
    iget-object v2, p0, Lcom/wolfram/android/alpha/view/QueryInputView;->waActivity:Lcom/wolfram/android/alpha/activity/WolframAlpha;

    const v3, 0x7f0e007f

    invoke-virtual {v2, v3}, Lcom/wolfram/android/alpha/activity/WolframAlpha;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 265
    .local v1, queryInputView:Landroid/widget/TextView;
    if-eqz v1, :cond_1

    .line 266
    invoke-virtual {v1}, Landroid/widget/TextView;->getMovementMethod()Landroid/text/method/MovementMethod;

    move-result-object v0

    .line 267
    .local v0, mm:Landroid/text/method/MovementMethod;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 268
    invoke-super {p0, p1, p2, p3}, Landroid/widget/AutoCompleteTextView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 269
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    goto :goto_0

    .line 271
    .end local v0           #mm:Landroid/text/method/MovementMethod;
    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroid/widget/AutoCompleteTextView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    goto :goto_0
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v2, 0x0

    .line 151
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 152
    iget-object v0, p0, Lcom/wolfram/android/alpha/view/QueryInputView;->instantmath_view:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 153
    iget-object v0, p0, Lcom/wolfram/android/alpha/view/QueryInputView;->query_text_view_top_gap:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wolfram/android/alpha/view/QueryInputView;->query_text_view_top_gap:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 154
    :cond_0
    iget-object v0, p0, Lcom/wolfram/android/alpha/view/QueryInputView;->instantmath_view:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 157
    :cond_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x43

    if-ne v0, v1, :cond_2

    move v0, v2

    .line 158
    :goto_0
    return v0

    :cond_2
    invoke-super {p0, p2}, Landroid/widget/AutoCompleteTextView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .parameter "text"
    .parameter "start"
    .parameter "before"
    .parameter "after"

    .prologue
    .line 166
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/AutoCompleteTextView;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 168
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wolfram/android/alpha/view/QueryInputView;->current_query_text:Ljava/lang/String;

    .line 170
    invoke-direct {p0}, Lcom/wolfram/android/alpha/view/QueryInputView;->setClearIcon()V

    .line 173
    invoke-static {}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getApplication()Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getPerformingQuery()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/wolfram/android/alpha/view/QueryInputView;->current_query_text:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/wolfram/android/alpha/view/QueryInputView;->InstantMath(Ljava/lang/String;)V

    .line 174
    :cond_0
    return-void
.end method

.method public onTextContextMenuItem(I)Z
    .locals 1
    .parameter "id"

    .prologue
    .line 291
    invoke-super {p0, p1}, Landroid/widget/AutoCompleteTextView;->onTextContextMenuItem(I)Z

    .line 292
    iget-object v0, p0, Lcom/wolfram/android/alpha/view/QueryInputView;->waActivity:Lcom/wolfram/android/alpha/activity/WolframAlpha;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wolfram/android/alpha/view/QueryInputView;->waActivity:Lcom/wolfram/android/alpha/activity/WolframAlpha;

    invoke-virtual {v0}, Lcom/wolfram/android/alpha/activity/WolframAlpha;->showWAKeyboard()V

    .line 293
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v5, 0x0

    .line 297
    invoke-static {}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getApplication()Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->isUseCustomKeyboard()Z

    move-result v3

    if-nez v3, :cond_0

    .line 298
    invoke-virtual {p0, p2}, Lcom/wolfram/android/alpha/view/QueryInputView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    .line 312
    :goto_0
    return v3

    .line 300
    :cond_0
    iget-object v3, p0, Lcom/wolfram/android/alpha/view/QueryInputView;->imm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v3, v4, v5}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 301
    move-object v0, p1

    check-cast v0, Landroid/widget/EditText;

    move-object v1, v0

    .line 303
    .local v1, e:Landroid/widget/EditText;
    invoke-virtual {p0}, Lcom/wolfram/android/alpha/view/QueryInputView;->getInputType()I

    move-result v2

    .line 305
    .local v2, inType:I
    invoke-virtual {p0, v5}, Lcom/wolfram/android/alpha/view/QueryInputView;->setInputType(I)V

    .line 306
    invoke-virtual {p0, p2}, Lcom/wolfram/android/alpha/view/QueryInputView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 307
    invoke-virtual {p0, v2}, Lcom/wolfram/android/alpha/view/QueryInputView;->setInputType(I)V

    .line 308
    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 312
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "event"

    .prologue
    const/4 v3, 0x1

    .line 232
    invoke-static {}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getApplication()Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->isHoneycombDeviceandAbove()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/AutoCompleteTextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 234
    :cond_0
    invoke-direct {p0}, Lcom/wolfram/android/alpha/view/QueryInputView;->setClearIcon()V

    .line 235
    iget-object v0, p0, Lcom/wolfram/android/alpha/view/QueryInputView;->waActivity:Lcom/wolfram/android/alpha/activity/WolframAlpha;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/wolfram/android/alpha/view/QueryInputView;->waActivity:Lcom/wolfram/android/alpha/activity/WolframAlpha;

    invoke-virtual {v0}, Lcom/wolfram/android/alpha/activity/WolframAlpha;->showWAKeyboard()V

    .line 237
    :cond_1
    invoke-static {}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getApplication()Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getPerformingQuery()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/wolfram/android/alpha/view/QueryInputView;->current_query_text:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/wolfram/android/alpha/view/QueryInputView;->InstantMath(Ljava/lang/String;)V

    .line 242
    :cond_2
    iget-boolean v0, p0, Lcom/wolfram/android/alpha/view/QueryInputView;->isShowingComputeIcon:Z

    if-nez v0, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v3, :cond_3

    invoke-virtual {p0}, Lcom/wolfram/android/alpha/view/QueryInputView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p0}, Lcom/wolfram/android/alpha/view/QueryInputView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/wolfram/android/alpha/view/QueryInputView;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x8

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    .line 243
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/wolfram/android/alpha/view/QueryInputView;->setText(Ljava/lang/CharSequence;)V

    .line 246
    :cond_3
    invoke-static {}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getApplication()Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->isHoneycombDeviceandAbove()Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v3

    .line 247
    :goto_0
    return v0

    :cond_4
    invoke-super {p0, p1}, Landroid/widget/AutoCompleteTextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public preferenceChanged()V
    .locals 1

    .prologue
    .line 144
    invoke-static {}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getApplication()Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->useDockedInputField()Z

    move-result v0

    if-nez v0, :cond_0

    .line 145
    new-instance v0, Lcom/wolfram/android/alpha/keyboard/WAKeyListener;

    invoke-direct {v0}, Lcom/wolfram/android/alpha/keyboard/WAKeyListener;-><init>()V

    invoke-virtual {p0, v0}, Lcom/wolfram/android/alpha/view/QueryInputView;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 146
    :cond_0
    return-void
.end method

.method public setComputeIcon()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 131
    const v0, 0x7f0200ce

    invoke-virtual {p0, v1, v1, v0, v1}, Lcom/wolfram/android/alpha/view/QueryInputView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 132
    iput-boolean v2, p0, Lcom/wolfram/android/alpha/view/QueryInputView;->isShowingComputeIcon:Z

    .line 134
    invoke-virtual {p0, v2}, Lcom/wolfram/android/alpha/view/QueryInputView;->setCursorVisible(Z)V

    .line 135
    invoke-virtual {p0}, Lcom/wolfram/android/alpha/view/QueryInputView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/wolfram/android/alpha/view/QueryInputView;->setSelection(I)V

    .line 136
    return-void
.end method

.method public setWAActivity(Lcom/wolfram/android/alpha/activity/WolframAlpha;Landroid/view/View;)V
    .locals 2
    .parameter "wolframAlphaActivity"
    .parameter "query_input"

    .prologue
    .line 66
    iput-object p1, p0, Lcom/wolfram/android/alpha/view/QueryInputView;->waActivity:Lcom/wolfram/android/alpha/activity/WolframAlpha;

    .line 69
    :try_start_0
    const-string v0, "InstantMath"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    :goto_0
    invoke-static {}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getApplication()Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getInstantmath_view()Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/wolfram/android/alpha/view/QueryInputView;->instantmath_view:Landroid/widget/TextView;

    .line 73
    invoke-static {}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getApplication()Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->useDockedInputField()Z

    move-result v0

    if-nez v0, :cond_0

    .line 74
    const v0, 0x7f0e007e

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/wolfram/android/alpha/view/QueryInputView;->query_text_view_top_gap:Landroid/view/View;

    .line 75
    invoke-static {}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getApplication()Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-result-object v0

    iget-object v1, p0, Lcom/wolfram/android/alpha/view/QueryInputView;->query_text_view_top_gap:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->setQuery_text_view_top_gap(Landroid/view/View;)V

    .line 78
    :cond_0
    invoke-virtual {p0, p1}, Lcom/wolfram/android/alpha/view/QueryInputView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 80
    invoke-static {}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getApplication()Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->useDockedInputField()Z

    move-result v0

    if-nez v0, :cond_1

    .line 81
    new-instance v0, Lcom/wolfram/android/alpha/keyboard/WAKeyListener;

    invoke-direct {v0}, Lcom/wolfram/android/alpha/keyboard/WAKeyListener;-><init>()V

    invoke-virtual {p0, v0}, Lcom/wolfram/android/alpha/view/QueryInputView;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 83
    :cond_1
    invoke-static {}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getApplication()Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->addPreferenceChangeListener(Lcom/wolfram/android/alpha/PreferenceChangeListener;)V

    .line 86
    new-instance v0, Lcom/wolfram/android/alpha/view/QueryInputView$1;

    invoke-direct {v0, p0}, Lcom/wolfram/android/alpha/view/QueryInputView$1;-><init>(Lcom/wolfram/android/alpha/view/QueryInputView;)V

    invoke-virtual {p0, v0}, Lcom/wolfram/android/alpha/view/QueryInputView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    return-void

    .line 70
    :catch_0
    move-exception v0

    goto :goto_0
.end method
