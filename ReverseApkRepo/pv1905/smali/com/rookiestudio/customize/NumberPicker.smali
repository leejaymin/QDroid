.class public Lcom/rookiestudio/customize/NumberPicker;
.super Landroid/widget/LinearLayout;
.source "NumberPicker.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnFocusChangeListener;
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rookiestudio/customize/NumberPicker$Formatter;,
        Lcom/rookiestudio/customize/NumberPicker$NumberPickerInputFilter;,
        Lcom/rookiestudio/customize/NumberPicker$NumberRangeKeyListener;,
        Lcom/rookiestudio/customize/NumberPicker$OnChangedListener;
    }
.end annotation


# static fields
.field private static final DEFAULT_MAX:I = 0x63

.field private static final DEFAULT_MIN:I = 0x0

.field private static final DEFAULT_STEP:I = 0x0

.field private static final DIGIT_CHARACTERS:[C = null

.field private static final TAG:Ljava/lang/String; = "NumberPicker"

.field public static final THREE_DIGIT_FORMATTER:Lcom/rookiestudio/customize/NumberPicker$Formatter;

.field public static final TWO_DIGIT_FORMATTER:Lcom/rookiestudio/customize/NumberPicker$Formatter;


# instance fields
.field protected mCurrent:I

.field private mDecrement:Z

.field private mDecrementButton:Lcom/rookiestudio/customize/NumberPickerButton;

.field private mDisplayedValues:[Ljava/lang/String;

.field protected mEnd:I

.field private mFormatter:Lcom/rookiestudio/customize/NumberPicker$Formatter;

.field private final mHandler:Landroid/os/Handler;

.field private mIncrement:Z

.field private mIncrementButton:Lcom/rookiestudio/customize/NumberPickerButton;

.field private mListener:Lcom/rookiestudio/customize/NumberPicker$OnChangedListener;

.field private final mNumberInputFilter:Landroid/text/InputFilter;

.field protected mPrevious:I

.field private final mRunnable:Ljava/lang/Runnable;

.field private mSpeed:J

.field protected mStart:I

.field protected mStep:I

.field private final mText:Landroid/widget/EditText;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    new-instance v0, Lcom/rookiestudio/customize/NumberPicker$1;

    invoke-direct {v0}, Lcom/rookiestudio/customize/NumberPicker$1;-><init>()V

    .line 52
    sput-object v0, Lcom/rookiestudio/customize/NumberPicker;->TWO_DIGIT_FORMATTER:Lcom/rookiestudio/customize/NumberPicker$Formatter;

    .line 66
    new-instance v0, Lcom/rookiestudio/customize/NumberPicker$2;

    invoke-direct {v0}, Lcom/rookiestudio/customize/NumberPicker$2;-><init>()V

    .line 65
    sput-object v0, Lcom/rookiestudio/customize/NumberPicker;->THREE_DIGIT_FORMATTER:Lcom/rookiestudio/customize/NumberPicker$Formatter;

    .line 336
    const/16 v0, 0xa

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/rookiestudio/customize/NumberPicker;->DIGIT_CHARACTERS:[C

    .line 30
    return-void

    .line 336
    :array_0
    .array-data 0x2
        0x30t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 108
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/rookiestudio/customize/NumberPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 109
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 112
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/rookiestudio/customize/NumberPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 113
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 117
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 79
    new-instance v2, Lcom/rookiestudio/customize/NumberPicker$3;

    invoke-direct {v2, p0}, Lcom/rookiestudio/customize/NumberPicker$3;-><init>(Lcom/rookiestudio/customize/NumberPicker;)V

    iput-object v2, p0, Lcom/rookiestudio/customize/NumberPicker;->mRunnable:Ljava/lang/Runnable;

    .line 102
    const-wide/16 v2, 0x64

    iput-wide v2, p0, Lcom/rookiestudio/customize/NumberPicker;->mSpeed:J

    .line 118
    invoke-virtual {p0, v5}, Lcom/rookiestudio/customize/NumberPicker;->setOrientation(I)V

    .line 119
    const-string v2, "layout_inflater"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 120
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v2, 0x7f030022

    invoke-virtual {v0, v2, p0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 121
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/rookiestudio/customize/NumberPicker;->mHandler:Landroid/os/Handler;

    .line 122
    new-instance v1, Lcom/rookiestudio/customize/NumberPicker$NumberPickerInputFilter;

    invoke-direct {v1, p0, v6}, Lcom/rookiestudio/customize/NumberPicker$NumberPickerInputFilter;-><init>(Lcom/rookiestudio/customize/NumberPicker;Lcom/rookiestudio/customize/NumberPicker$NumberPickerInputFilter;)V

    .line 123
    .local v1, inputFilter:Landroid/text/InputFilter;
    new-instance v2, Lcom/rookiestudio/customize/NumberPicker$NumberRangeKeyListener;

    invoke-direct {v2, p0, v6}, Lcom/rookiestudio/customize/NumberPicker$NumberRangeKeyListener;-><init>(Lcom/rookiestudio/customize/NumberPicker;Lcom/rookiestudio/customize/NumberPicker$NumberRangeKeyListener;)V

    iput-object v2, p0, Lcom/rookiestudio/customize/NumberPicker;->mNumberInputFilter:Landroid/text/InputFilter;

    .line 124
    const v2, 0x7f0c0076

    invoke-virtual {p0, v2}, Lcom/rookiestudio/customize/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/rookiestudio/customize/NumberPickerButton;

    iput-object v2, p0, Lcom/rookiestudio/customize/NumberPicker;->mIncrementButton:Lcom/rookiestudio/customize/NumberPickerButton;

    .line 125
    iget-object v2, p0, Lcom/rookiestudio/customize/NumberPicker;->mIncrementButton:Lcom/rookiestudio/customize/NumberPickerButton;

    invoke-virtual {v2, p0}, Lcom/rookiestudio/customize/NumberPickerButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    iget-object v2, p0, Lcom/rookiestudio/customize/NumberPicker;->mIncrementButton:Lcom/rookiestudio/customize/NumberPickerButton;

    invoke-virtual {v2, p0}, Lcom/rookiestudio/customize/NumberPickerButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 127
    iget-object v2, p0, Lcom/rookiestudio/customize/NumberPicker;->mIncrementButton:Lcom/rookiestudio/customize/NumberPickerButton;

    invoke-virtual {v2, p0}, Lcom/rookiestudio/customize/NumberPickerButton;->setNumberPicker(Lcom/rookiestudio/customize/NumberPicker;)V

    .line 128
    const v2, 0x7f0c0078

    invoke-virtual {p0, v2}, Lcom/rookiestudio/customize/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/rookiestudio/customize/NumberPickerButton;

    iput-object v2, p0, Lcom/rookiestudio/customize/NumberPicker;->mDecrementButton:Lcom/rookiestudio/customize/NumberPickerButton;

    .line 129
    iget-object v2, p0, Lcom/rookiestudio/customize/NumberPicker;->mDecrementButton:Lcom/rookiestudio/customize/NumberPickerButton;

    invoke-virtual {v2, p0}, Lcom/rookiestudio/customize/NumberPickerButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    iget-object v2, p0, Lcom/rookiestudio/customize/NumberPicker;->mDecrementButton:Lcom/rookiestudio/customize/NumberPickerButton;

    invoke-virtual {v2, p0}, Lcom/rookiestudio/customize/NumberPickerButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 131
    iget-object v2, p0, Lcom/rookiestudio/customize/NumberPicker;->mDecrementButton:Lcom/rookiestudio/customize/NumberPickerButton;

    invoke-virtual {v2, p0}, Lcom/rookiestudio/customize/NumberPickerButton;->setNumberPicker(Lcom/rookiestudio/customize/NumberPicker;)V

    .line 133
    const v2, 0x7f0c0077

    invoke-virtual {p0, v2}, Lcom/rookiestudio/customize/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/rookiestudio/customize/NumberPicker;->mText:Landroid/widget/EditText;

    .line 134
    iget-object v2, p0, Lcom/rookiestudio/customize/NumberPicker;->mText:Landroid/widget/EditText;

    invoke-virtual {v2, p0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 135
    iget-object v2, p0, Lcom/rookiestudio/customize/NumberPicker;->mText:Landroid/widget/EditText;

    new-array v3, v5, [Landroid/text/InputFilter;

    aput-object v1, v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 136
    iget-object v2, p0, Lcom/rookiestudio/customize/NumberPicker;->mText:Landroid/widget/EditText;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setRawInputType(I)V

    .line 138
    invoke-virtual {p0}, Lcom/rookiestudio/customize/NumberPicker;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 139
    invoke-virtual {p0, v4}, Lcom/rookiestudio/customize/NumberPicker;->setEnabled(Z)V

    .line 142
    :cond_0
    iput v4, p0, Lcom/rookiestudio/customize/NumberPicker;->mStart:I

    .line 143
    const/16 v2, 0x63

    iput v2, p0, Lcom/rookiestudio/customize/NumberPicker;->mEnd:I

    .line 144
    iput v4, p0, Lcom/rookiestudio/customize/NumberPicker;->mStep:I

    .line 145
    return-void
.end method

.method static synthetic access$0(Lcom/rookiestudio/customize/NumberPicker;)Z
    .locals 1
    .parameter

    .prologue
    .line 104
    iget-boolean v0, p0, Lcom/rookiestudio/customize/NumberPicker;->mIncrement:Z

    return v0
.end method

.method static synthetic access$1(Lcom/rookiestudio/customize/NumberPicker;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 78
    iget-object v0, p0, Lcom/rookiestudio/customize/NumberPicker;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2(Lcom/rookiestudio/customize/NumberPicker;)J
    .locals 2
    .parameter

    .prologue
    .line 102
    iget-wide v0, p0, Lcom/rookiestudio/customize/NumberPicker;->mSpeed:J

    return-wide v0
.end method

.method static synthetic access$3(Lcom/rookiestudio/customize/NumberPicker;)Z
    .locals 1
    .parameter

    .prologue
    .line 105
    iget-boolean v0, p0, Lcom/rookiestudio/customize/NumberPicker;->mDecrement:Z

    return v0
.end method

.method static synthetic access$4(Lcom/rookiestudio/customize/NumberPicker;)[Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 94
    iget-object v0, p0, Lcom/rookiestudio/customize/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5(Lcom/rookiestudio/customize/NumberPicker;)Landroid/text/InputFilter;
    .locals 1
    .parameter

    .prologue
    .line 92
    iget-object v0, p0, Lcom/rookiestudio/customize/NumberPicker;->mNumberInputFilter:Landroid/text/InputFilter;

    return-object v0
.end method

.method static synthetic access$6()[C
    .locals 1

    .prologue
    .line 336
    sget-object v0, Lcom/rookiestudio/customize/NumberPicker;->DIGIT_CHARACTERS:[C

    return-object v0
.end method

.method static synthetic access$7(Lcom/rookiestudio/customize/NumberPicker;Ljava/lang/String;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 408
    invoke-direct {p0, p1}, Lcom/rookiestudio/customize/NumberPicker;->getSelectedPos(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private formatNumber(I)Ljava/lang/String;
    .locals 1
    .parameter "value"

    .prologue
    .line 227
    iget-object v0, p0, Lcom/rookiestudio/customize/NumberPicker;->mFormatter:Lcom/rookiestudio/customize/NumberPicker$Formatter;

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/rookiestudio/customize/NumberPicker;->mFormatter:Lcom/rookiestudio/customize/NumberPicker$Formatter;

    invoke-interface {v0, p1}, Lcom/rookiestudio/customize/NumberPicker$Formatter;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 227
    :goto_0
    return-object v0

    .line 229
    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getSelectedPos(Ljava/lang/String;)I
    .locals 2
    .parameter "str"

    .prologue
    .line 409
    iget-object v1, p0, Lcom/rookiestudio/customize/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-nez v1, :cond_0

    .line 410
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 431
    :goto_0
    return v1

    .line 412
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v1, p0, Lcom/rookiestudio/customize/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    array-length v1, v1

    if-lt v0, v1, :cond_1

    .line 425
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 415
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 416
    iget-object v1, p0, Lcom/rookiestudio/customize/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 417
    iget v1, p0, Lcom/rookiestudio/customize/NumberPicker;->mStart:I

    add-int/2addr v1, v0

    goto :goto_0

    .line 412
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 426
    :catch_0
    move-exception v1

    .line 431
    iget v1, p0, Lcom/rookiestudio/customize/NumberPicker;->mStart:I

    goto :goto_0
.end method

.method private validateCurrentView(Ljava/lang/CharSequence;)V
    .locals 2
    .parameter "str"

    .prologue
    .line 268
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/rookiestudio/customize/NumberPicker;->getSelectedPos(Ljava/lang/String;)I

    move-result v0

    .line 269
    .local v0, val:I
    iget v1, p0, Lcom/rookiestudio/customize/NumberPicker;->mStart:I

    if-lt v0, v1, :cond_0

    iget v1, p0, Lcom/rookiestudio/customize/NumberPicker;->mEnd:I

    if-gt v0, v1, :cond_0

    .line 270
    iget v1, p0, Lcom/rookiestudio/customize/NumberPicker;->mCurrent:I

    if-eq v1, v0, :cond_0

    .line 271
    iget v1, p0, Lcom/rookiestudio/customize/NumberPicker;->mCurrent:I

    iput v1, p0, Lcom/rookiestudio/customize/NumberPicker;->mPrevious:I

    .line 272
    iput v0, p0, Lcom/rookiestudio/customize/NumberPicker;->mCurrent:I

    .line 273
    invoke-virtual {p0}, Lcom/rookiestudio/customize/NumberPicker;->notifyChange()V

    .line 276
    :cond_0
    invoke-virtual {p0}, Lcom/rookiestudio/customize/NumberPicker;->updateView()V

    .line 277
    return-void
.end method

.method private validateInput(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 290
    check-cast p1, Landroid/widget/TextView;

    .end local p1
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 291
    .local v0, str:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/rookiestudio/customize/NumberPicker;->mFormatter:Lcom/rookiestudio/customize/NumberPicker$Formatter;

    sget-object v2, Lcom/rookiestudio/customize/NumberPicker;->THREE_DIGIT_FORMATTER:Lcom/rookiestudio/customize/NumberPicker$Formatter;

    if-ne v1, v2, :cond_1

    .line 292
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 296
    :cond_0
    :goto_0
    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 299
    invoke-virtual {p0}, Lcom/rookiestudio/customize/NumberPicker;->updateView()V

    .line 305
    :goto_1
    return-void

    .line 293
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/rookiestudio/customize/NumberPicker;->mFormatter:Lcom/rookiestudio/customize/NumberPicker$Formatter;

    sget-object v2, Lcom/rookiestudio/customize/NumberPicker;->THREE_DIGIT_FORMATTER:Lcom/rookiestudio/customize/NumberPicker$Formatter;

    if-ne v1, v2, :cond_0

    .line 294
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "00"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 303
    :cond_2
    invoke-direct {p0, v0}, Lcom/rookiestudio/customize/NumberPicker;->validateCurrentView(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method


# virtual methods
.method public cancelDecrement()V
    .locals 1

    .prologue
    .line 333
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/rookiestudio/customize/NumberPicker;->mDecrement:Z

    .line 334
    return-void
.end method

.method public cancelIncrement()V
    .locals 1

    .prologue
    .line 329
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/rookiestudio/customize/NumberPicker;->mIncrement:Z

    .line 330
    return-void
.end method

.method protected changeCurrent(I)V
    .locals 1
    .parameter "current"

    .prologue
    .line 235
    iget v0, p0, Lcom/rookiestudio/customize/NumberPicker;->mEnd:I

    if-le p1, v0, :cond_1

    .line 236
    iget p1, p0, Lcom/rookiestudio/customize/NumberPicker;->mStart:I

    .line 240
    :cond_0
    :goto_0
    iget v0, p0, Lcom/rookiestudio/customize/NumberPicker;->mCurrent:I

    iput v0, p0, Lcom/rookiestudio/customize/NumberPicker;->mPrevious:I

    .line 241
    iput p1, p0, Lcom/rookiestudio/customize/NumberPicker;->mCurrent:I

    .line 243
    invoke-virtual {p0}, Lcom/rookiestudio/customize/NumberPicker;->notifyChange()V

    .line 244
    invoke-virtual {p0}, Lcom/rookiestudio/customize/NumberPicker;->updateView()V

    .line 245
    return-void

    .line 237
    :cond_1
    iget v0, p0, Lcom/rookiestudio/customize/NumberPicker;->mStart:I

    if-ge p1, v0, :cond_0

    .line 238
    iget p1, p0, Lcom/rookiestudio/customize/NumberPicker;->mEnd:I

    goto :goto_0
.end method

.method public getCurrent()I
    .locals 3

    .prologue
    .line 438
    iget v1, p0, Lcom/rookiestudio/customize/NumberPicker;->mCurrent:I

    .line 440
    .local v1, value:I
    :try_start_0
    iget-object v2, p0, Lcom/rookiestudio/customize/NumberPicker;->mText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 441
    .local v0, str:Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 444
    .end local v0           #str:Ljava/lang/String;
    :goto_0
    return v1

    .line 442
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public getCurrentFormatted()Ljava/lang/String;
    .locals 1

    .prologue
    .line 448
    iget v0, p0, Lcom/rookiestudio/customize/NumberPicker;->mCurrent:I

    invoke-direct {p0, v0}, Lcom/rookiestudio/customize/NumberPicker;->formatNumber(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected notifyChange()V
    .locals 3

    .prologue
    .line 248
    iget-object v0, p0, Lcom/rookiestudio/customize/NumberPicker;->mListener:Lcom/rookiestudio/customize/NumberPicker$OnChangedListener;

    if-eqz v0, :cond_0

    .line 249
    iget-object v0, p0, Lcom/rookiestudio/customize/NumberPicker;->mListener:Lcom/rookiestudio/customize/NumberPicker$OnChangedListener;

    iget v1, p0, Lcom/rookiestudio/customize/NumberPicker;->mPrevious:I

    iget v2, p0, Lcom/rookiestudio/customize/NumberPicker;->mCurrent:I

    invoke-interface {v0, p0, v1, v2}, Lcom/rookiestudio/customize/NumberPicker$OnChangedListener;->onChanged(Lcom/rookiestudio/customize/NumberPicker;II)V

    .line 251
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 212
    iget-object v0, p0, Lcom/rookiestudio/customize/NumberPicker;->mText:Landroid/widget/EditText;

    invoke-direct {p0, v0}, Lcom/rookiestudio/customize/NumberPicker;->validateInput(Landroid/view/View;)V

    .line 213
    iget-object v0, p0, Lcom/rookiestudio/customize/NumberPicker;->mText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/rookiestudio/customize/NumberPicker;->mText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 215
    :cond_0
    if-eqz p1, :cond_1

    .line 218
    const v0, 0x7f0c0076

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 219
    iget v0, p0, Lcom/rookiestudio/customize/NumberPicker;->mCurrent:I

    iget v1, p0, Lcom/rookiestudio/customize/NumberPicker;->mStep:I

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/rookiestudio/customize/NumberPicker;->changeCurrent(I)V

    .line 224
    :cond_1
    :goto_0
    return-void

    .line 220
    :cond_2
    const v0, 0x7f0c0078

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 221
    iget v0, p0, Lcom/rookiestudio/customize/NumberPicker;->mCurrent:I

    iget v1, p0, Lcom/rookiestudio/customize/NumberPicker;->mStep:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/rookiestudio/customize/NumberPicker;->changeCurrent(I)V

    goto :goto_0
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 0
    .parameter "v"
    .parameter "hasFocus"

    .prologue
    .line 284
    if-nez p2, :cond_0

    .line 285
    invoke-direct {p0, p1}, Lcom/rookiestudio/customize/NumberPicker;->validateInput(Landroid/view/View;)V

    .line 287
    :cond_0
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 3
    .parameter "v"

    .prologue
    const/4 v2, 0x1

    .line 316
    iget-object v0, p0, Lcom/rookiestudio/customize/NumberPicker;->mText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 318
    const v0, 0x7f0c0076

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 319
    iput-boolean v2, p0, Lcom/rookiestudio/customize/NumberPicker;->mIncrement:Z

    .line 320
    iget-object v0, p0, Lcom/rookiestudio/customize/NumberPicker;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/rookiestudio/customize/NumberPicker;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 325
    :cond_0
    :goto_0
    return v2

    .line 321
    :cond_1
    const v0, 0x7f0c0078

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 322
    iput-boolean v2, p0, Lcom/rookiestudio/customize/NumberPicker;->mDecrement:Z

    .line 323
    iget-object v0, p0, Lcom/rookiestudio/customize/NumberPicker;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/rookiestudio/customize/NumberPicker;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public setCurrent(I)V
    .locals 0
    .parameter "current"

    .prologue
    .line 195
    iput p1, p0, Lcom/rookiestudio/customize/NumberPicker;->mCurrent:I

    .line 196
    invoke-virtual {p0}, Lcom/rookiestudio/customize/NumberPicker;->updateView()V

    .line 197
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 149
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 150
    iget-object v0, p0, Lcom/rookiestudio/customize/NumberPicker;->mIncrementButton:Lcom/rookiestudio/customize/NumberPickerButton;

    invoke-virtual {v0, p1}, Lcom/rookiestudio/customize/NumberPickerButton;->setEnabled(Z)V

    .line 151
    iget-object v0, p0, Lcom/rookiestudio/customize/NumberPicker;->mDecrementButton:Lcom/rookiestudio/customize/NumberPickerButton;

    invoke-virtual {v0, p1}, Lcom/rookiestudio/customize/NumberPickerButton;->setEnabled(Z)V

    .line 152
    iget-object v0, p0, Lcom/rookiestudio/customize/NumberPicker;->mText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 153
    return-void
.end method

.method public setFormatter(Lcom/rookiestudio/customize/NumberPicker$Formatter;)V
    .locals 0
    .parameter "formatter"

    .prologue
    .line 160
    iput-object p1, p0, Lcom/rookiestudio/customize/NumberPicker;->mFormatter:Lcom/rookiestudio/customize/NumberPicker$Formatter;

    .line 161
    return-void
.end method

.method public setOnChangeListener(Lcom/rookiestudio/customize/NumberPicker$OnChangedListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 156
    iput-object p1, p0, Lcom/rookiestudio/customize/NumberPicker;->mListener:Lcom/rookiestudio/customize/NumberPicker$OnChangedListener;

    .line 157
    return-void
.end method

.method public setRange(II)V
    .locals 0
    .parameter "start"
    .parameter "end"

    .prologue
    .line 171
    iput p1, p0, Lcom/rookiestudio/customize/NumberPicker;->mStart:I

    .line 172
    iput p2, p0, Lcom/rookiestudio/customize/NumberPicker;->mEnd:I

    .line 173
    iput p1, p0, Lcom/rookiestudio/customize/NumberPicker;->mCurrent:I

    .line 174
    invoke-virtual {p0}, Lcom/rookiestudio/customize/NumberPicker;->updateView()V

    .line 175
    return-void
.end method

.method public setRange(II[Ljava/lang/String;)V
    .locals 0
    .parameter "start"
    .parameter "end"
    .parameter "displayedValues"

    .prologue
    .line 187
    iput-object p3, p0, Lcom/rookiestudio/customize/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    .line 188
    iput p1, p0, Lcom/rookiestudio/customize/NumberPicker;->mStart:I

    .line 189
    iput p2, p0, Lcom/rookiestudio/customize/NumberPicker;->mEnd:I

    .line 190
    iput p1, p0, Lcom/rookiestudio/customize/NumberPicker;->mCurrent:I

    .line 191
    invoke-virtual {p0}, Lcom/rookiestudio/customize/NumberPicker;->updateView()V

    .line 192
    return-void
.end method

.method public setSpeed(J)V
    .locals 0
    .parameter "speed"

    .prologue
    .line 208
    iput-wide p1, p0, Lcom/rookiestudio/customize/NumberPicker;->mSpeed:J

    .line 209
    return-void
.end method

.method public setStep(I)V
    .locals 0
    .parameter "value"

    .prologue
    .line 200
    iput p1, p0, Lcom/rookiestudio/customize/NumberPicker;->mStep:I

    .line 201
    return-void
.end method

.method protected updateView()V
    .locals 4

    .prologue
    .line 259
    iget-object v0, p0, Lcom/rookiestudio/customize/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-nez v0, :cond_0

    .line 260
    iget-object v0, p0, Lcom/rookiestudio/customize/NumberPicker;->mText:Landroid/widget/EditText;

    iget v1, p0, Lcom/rookiestudio/customize/NumberPicker;->mCurrent:I

    invoke-direct {p0, v1}, Lcom/rookiestudio/customize/NumberPicker;->formatNumber(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 264
    :goto_0
    iget-object v0, p0, Lcom/rookiestudio/customize/NumberPicker;->mText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/rookiestudio/customize/NumberPicker;->mText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 265
    return-void

    .line 262
    :cond_0
    iget-object v0, p0, Lcom/rookiestudio/customize/NumberPicker;->mText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/rookiestudio/customize/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    iget v2, p0, Lcom/rookiestudio/customize/NumberPicker;->mCurrent:I

    iget v3, p0, Lcom/rookiestudio/customize/NumberPicker;->mStart:I

    sub-int/2addr v2, v3

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
