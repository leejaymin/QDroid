.class public Lcom/rookiestudio/customize/NumberPickerPreference;
.super Landroid/preference/DialogPreference;
.source "NumberPickerPreference.java"


# static fields
.field private static final androidns:Ljava/lang/String; = "http://schemas.android.com/apk/res/android"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDefault:I

.field private mDialogMessage:Ljava/lang/String;

.field private mMax:I

.field private mMin:I

.field private mPickInteger:Lcom/rookiestudio/customize/NumberPicker;

.field private mSplashText:Landroid/widget/TextView;

.field private mStep:I

.field private mSuffix:Ljava/lang/String;

.field private mValue:I

.field private mValueText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 31
    invoke-direct {p0, p1, p2}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    iput v5, p0, Lcom/rookiestudio/customize/NumberPickerPreference;->mValue:I

    .line 32
    iput-object p1, p0, Lcom/rookiestudio/customize/NumberPickerPreference;->mContext:Landroid/content/Context;

    .line 34
    const-string v2, "http://schemas.android.com/apk/res/android"

    const-string v3, "dialogMessage"

    invoke-interface {p2, v2, v3}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/rookiestudio/customize/NumberPickerPreference;->mDialogMessage:Ljava/lang/String;

    .line 35
    const-string v2, "http://schemas.android.com/apk/res/android"

    const-string v3, "text"

    invoke-interface {p2, v2, v3}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/rookiestudio/customize/NumberPickerPreference;->mSuffix:Ljava/lang/String;

    .line 36
    iget-object v2, p0, Lcom/rookiestudio/customize/NumberPickerPreference;->mSuffix:Ljava/lang/String;

    const-string v3, "@"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 38
    :try_start_0
    iget-object v2, p0, Lcom/rookiestudio/customize/NumberPickerPreference;->mSuffix:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 39
    .local v0, PP:I
    sget-object v2, Lcom/rookiestudio/perfectviewer/Global;->ApplicationRes:Landroid/content/res/Resources;

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/rookiestudio/customize/NumberPickerPreference;->mSuffix:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    .end local v0           #PP:I
    :cond_0
    :goto_0
    const-string v2, "http://schemas.android.com/apk/res/android"

    const-string v3, "defaultValue"

    invoke-interface {p2, v2, v3, v5}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/rookiestudio/customize/NumberPickerPreference;->mDefault:I

    .line 44
    const-string v2, "http://schemas.android.com/apk/res/android"

    const-string v3, "max"

    const/16 v4, 0x64

    invoke-interface {p2, v2, v3, v4}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/rookiestudio/customize/NumberPickerPreference;->mMax:I

    .line 46
    sget-object v2, Lcom/rookiestudio/perfectviewer/R$styleable;->CustomSeekBar:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 47
    .local v1, a:Landroid/content/res/TypedArray;
    invoke-virtual {v1, v5, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lcom/rookiestudio/customize/NumberPickerPreference;->mMin:I

    .line 48
    invoke-virtual {v1, v6, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lcom/rookiestudio/customize/NumberPickerPreference;->mStep:I

    .line 49
    return-void

    .line 40
    .end local v1           #a:Landroid/content/res/TypedArray;
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private bindData()V
    .locals 2

    .prologue
    .line 101
    :try_start_0
    iget-object v0, p0, Lcom/rookiestudio/customize/NumberPickerPreference;->mPickInteger:Lcom/rookiestudio/customize/NumberPicker;

    iget v1, p0, Lcom/rookiestudio/customize/NumberPickerPreference;->mValue:I

    invoke-virtual {v0, v1}, Lcom/rookiestudio/customize/NumberPicker;->setCurrent(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    :goto_0
    return-void

    .line 103
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method protected onBindDialogView(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 112
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onBindDialogView(Landroid/view/View;)V

    .line 113
    invoke-direct {p0}, Lcom/rookiestudio/customize/NumberPickerPreference;->bindData()V

    .line 114
    return-void
.end method

.method protected onCreateDialogView()Landroid/view/View;
    .locals 9

    .prologue
    const/4 v7, 0x6

    .line 55
    new-instance v0, Landroid/widget/TableLayout;

    iget-object v6, p0, Lcom/rookiestudio/customize/NumberPickerPreference;->mContext:Landroid/content/Context;

    invoke-direct {v0, v6}, Landroid/widget/TableLayout;-><init>(Landroid/content/Context;)V

    .line 56
    .local v0, layout:Landroid/widget/TableLayout;
    invoke-virtual {v0, v7, v7, v7, v7}, Landroid/widget/TableLayout;->setPadding(IIII)V

    .line 58
    new-instance v6, Landroid/widget/TextView;

    iget-object v7, p0, Lcom/rookiestudio/customize/NumberPickerPreference;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/rookiestudio/customize/NumberPickerPreference;->mSplashText:Landroid/widget/TextView;

    .line 59
    iget-object v6, p0, Lcom/rookiestudio/customize/NumberPickerPreference;->mDialogMessage:Ljava/lang/String;

    if-eqz v6, :cond_0

    .line 60
    iget-object v6, p0, Lcom/rookiestudio/customize/NumberPickerPreference;->mSplashText:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/rookiestudio/customize/NumberPickerPreference;->mDialogMessage:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    :cond_0
    new-instance v1, Landroid/widget/TableRow;

    iget-object v6, p0, Lcom/rookiestudio/customize/NumberPickerPreference;->mContext:Landroid/content/Context;

    invoke-direct {v1, v6}, Landroid/widget/TableRow;-><init>(Landroid/content/Context;)V

    .line 63
    .local v1, row_header:Landroid/widget/TableRow;
    iget-object v6, p0, Lcom/rookiestudio/customize/NumberPickerPreference;->mSplashText:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    .line 65
    new-instance v6, Lcom/rookiestudio/customize/NumberPicker;

    iget-object v7, p0, Lcom/rookiestudio/customize/NumberPickerPreference;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7}, Lcom/rookiestudio/customize/NumberPicker;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/rookiestudio/customize/NumberPickerPreference;->mPickInteger:Lcom/rookiestudio/customize/NumberPicker;

    .line 66
    iget-object v6, p0, Lcom/rookiestudio/customize/NumberPickerPreference;->mPickInteger:Lcom/rookiestudio/customize/NumberPicker;

    iget v7, p0, Lcom/rookiestudio/customize/NumberPickerPreference;->mMin:I

    iget v8, p0, Lcom/rookiestudio/customize/NumberPickerPreference;->mMax:I

    invoke-virtual {v6, v7, v8}, Lcom/rookiestudio/customize/NumberPicker;->setRange(II)V

    .line 67
    iget-object v6, p0, Lcom/rookiestudio/customize/NumberPickerPreference;->mPickInteger:Lcom/rookiestudio/customize/NumberPicker;

    iget v7, p0, Lcom/rookiestudio/customize/NumberPickerPreference;->mStep:I

    invoke-virtual {v6, v7}, Lcom/rookiestudio/customize/NumberPicker;->setStep(I)V

    .line 69
    new-instance v4, Landroid/widget/TextView;

    iget-object v6, p0, Lcom/rookiestudio/customize/NumberPickerPreference;->mContext:Landroid/content/Context;

    invoke-direct {v4, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 70
    .local v4, suffix:Landroid/widget/TextView;
    iget-object v6, p0, Lcom/rookiestudio/customize/NumberPickerPreference;->mSuffix:Ljava/lang/String;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    const/high16 v6, 0x4200

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTextSize(F)V

    .line 73
    new-instance v3, Landroid/widget/TableRow;

    iget-object v6, p0, Lcom/rookiestudio/customize/NumberPickerPreference;->mContext:Landroid/content/Context;

    invoke-direct {v3, v6}, Landroid/widget/TableRow;-><init>(Landroid/content/Context;)V

    .line 74
    .local v3, row_one:Landroid/widget/TableRow;
    const/16 v6, 0x11

    invoke-virtual {v3, v6}, Landroid/widget/TableRow;->setGravity(I)V

    .line 75
    iget-object v6, p0, Lcom/rookiestudio/customize/NumberPickerPreference;->mPickInteger:Lcom/rookiestudio/customize/NumberPicker;

    invoke-virtual {v3, v6}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    .line 76
    invoke-virtual {v3, v4}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    .line 78
    invoke-virtual {v0, v1}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    .line 80
    new-instance v5, Landroid/widget/TableLayout;

    iget-object v6, p0, Lcom/rookiestudio/customize/NumberPickerPreference;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/widget/TableLayout;-><init>(Landroid/content/Context;)V

    .line 81
    .local v5, table_main:Landroid/widget/TableLayout;
    invoke-virtual {v5, v3}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    .line 83
    new-instance v2, Landroid/widget/TableRow;

    iget-object v6, p0, Lcom/rookiestudio/customize/NumberPickerPreference;->mContext:Landroid/content/Context;

    invoke-direct {v2, v6}, Landroid/widget/TableRow;-><init>(Landroid/content/Context;)V

    .line 84
    .local v2, row_main:Landroid/widget/TableRow;
    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Landroid/widget/TableRow;->setGravity(I)V

    .line 85
    invoke-virtual {v2, v5}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    .line 87
    invoke-virtual {v0, v2}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    .line 89
    invoke-virtual {p0}, Lcom/rookiestudio/customize/NumberPickerPreference;->shouldPersist()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 90
    iget v6, p0, Lcom/rookiestudio/customize/NumberPickerPreference;->mDefault:I

    invoke-virtual {p0, v6}, Lcom/rookiestudio/customize/NumberPickerPreference;->getPersistedInt(I)I

    move-result v6

    iput v6, p0, Lcom/rookiestudio/customize/NumberPickerPreference;->mValue:I

    .line 92
    :cond_1
    invoke-direct {p0}, Lcom/rookiestudio/customize/NumberPickerPreference;->bindData()V

    .line 94
    return-object v0
.end method

.method protected onDialogClosed(Z)V
    .locals 2
    .parameter "positiveResult"

    .prologue
    .line 138
    if-eqz p1, :cond_0

    .line 140
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onDialogClosed(Z)V

    .line 144
    iget-object v0, p0, Lcom/rookiestudio/customize/NumberPickerPreference;->mPickInteger:Lcom/rookiestudio/customize/NumberPicker;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/rookiestudio/customize/NumberPicker;->onClick(Landroid/view/View;)V

    .line 145
    iget-object v0, p0, Lcom/rookiestudio/customize/NumberPickerPreference;->mPickInteger:Lcom/rookiestudio/customize/NumberPicker;

    invoke-virtual {v0}, Lcom/rookiestudio/customize/NumberPicker;->getCurrent()I

    move-result v0

    iput v0, p0, Lcom/rookiestudio/customize/NumberPickerPreference;->mValue:I

    .line 146
    invoke-virtual {p0}, Lcom/rookiestudio/customize/NumberPickerPreference;->shouldPersist()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    iget v0, p0, Lcom/rookiestudio/customize/NumberPickerPreference;->mValue:I

    invoke-virtual {p0, v0}, Lcom/rookiestudio/customize/NumberPickerPreference;->persistInt(I)Z

    .line 149
    :cond_0
    return-void
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 2
    .parameter "restore"
    .parameter "defaultValue"

    .prologue
    .line 119
    invoke-super {p0, p1, p2}, Landroid/preference/DialogPreference;->onSetInitialValue(ZLjava/lang/Object;)V

    .line 120
    if-eqz p1, :cond_1

    .line 124
    :try_start_0
    invoke-virtual {p0}, Lcom/rookiestudio/customize/NumberPickerPreference;->shouldPersist()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/rookiestudio/customize/NumberPickerPreference;->mDefault:I

    invoke-virtual {p0, v1}, Lcom/rookiestudio/customize/NumberPickerPreference;->getPersistedInt(I)I

    move-result v1

    :goto_0
    iput v1, p0, Lcom/rookiestudio/customize/NumberPickerPreference;->mValue:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    .end local p2
    :goto_1
    return-void

    .line 124
    .restart local p2
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 126
    :catch_0
    move-exception v0

    .line 128
    .local v0, ex:Ljava/lang/Exception;
    iget v1, p0, Lcom/rookiestudio/customize/NumberPickerPreference;->mDefault:I

    iput v1, p0, Lcom/rookiestudio/customize/NumberPickerPreference;->mValue:I

    goto :goto_1

    .line 132
    .end local v0           #ex:Ljava/lang/Exception;
    :cond_1
    check-cast p2, Ljava/lang/Integer;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/rookiestudio/customize/NumberPickerPreference;->mValue:I

    goto :goto_1
.end method
