.class public Lcom/rookiestudio/customize/SeekBarPreference;
.super Landroid/preference/DialogPreference;
.source "SeekBarPreference.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# static fields
.field private static final androidns:Ljava/lang/String; = "http://schemas.android.com/apk/res/android"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDefault:I

.field private mDialogMessage:Ljava/lang/String;

.field private mMax:I

.field private mMin:I

.field private mSeekBar:Landroid/widget/SeekBar;

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

    .line 30
    invoke-direct {p0, p1, p2}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    iput v5, p0, Lcom/rookiestudio/customize/SeekBarPreference;->mStep:I

    .line 31
    iput-object p1, p0, Lcom/rookiestudio/customize/SeekBarPreference;->mContext:Landroid/content/Context;

    .line 33
    const-string v2, "http://schemas.android.com/apk/res/android"

    const-string v3, "dialogMessage"

    invoke-interface {p2, v2, v3}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/rookiestudio/customize/SeekBarPreference;->mDialogMessage:Ljava/lang/String;

    .line 34
    const-string v2, "http://schemas.android.com/apk/res/android"

    const-string v3, "text"

    invoke-interface {p2, v2, v3}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/rookiestudio/customize/SeekBarPreference;->mSuffix:Ljava/lang/String;

    .line 35
    iget-object v2, p0, Lcom/rookiestudio/customize/SeekBarPreference;->mSuffix:Ljava/lang/String;

    const-string v3, "@"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 37
    :try_start_0
    iget-object v2, p0, Lcom/rookiestudio/customize/SeekBarPreference;->mSuffix:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 38
    .local v0, PP:I
    sget-object v2, Lcom/rookiestudio/perfectviewer/Global;->ApplicationRes:Landroid/content/res/Resources;

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/rookiestudio/customize/SeekBarPreference;->mSuffix:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    .end local v0           #PP:I
    :cond_0
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/rookiestudio/customize/SeekBarPreference;->mSuffix:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/rookiestudio/customize/SeekBarPreference;->mSuffix:Ljava/lang/String;

    .line 43
    const-string v2, "http://schemas.android.com/apk/res/android"

    const-string v3, "defaultValue"

    invoke-interface {p2, v2, v3, v5}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/rookiestudio/customize/SeekBarPreference;->mDefault:I

    .line 44
    const-string v2, "http://schemas.android.com/apk/res/android"

    const-string v3, "max"

    const/16 v4, 0x64

    invoke-interface {p2, v2, v3, v4}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/rookiestudio/customize/SeekBarPreference;->mMax:I

    .line 46
    sget-object v2, Lcom/rookiestudio/perfectviewer/R$styleable;->CustomSeekBar:[I

    .line 45
    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 48
    .local v1, a:Landroid/content/res/TypedArray;
    invoke-virtual {v1, v5, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lcom/rookiestudio/customize/SeekBarPreference;->mMin:I

    .line 49
    invoke-virtual {v1, v6, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lcom/rookiestudio/customize/SeekBarPreference;->mStep:I

    .line 51
    return-void

    .line 39
    .end local v1           #a:Landroid/content/res/TypedArray;
    :catch_0
    move-exception v2

    goto :goto_0
.end method


# virtual methods
.method public getMax()I
    .locals 1

    .prologue
    .line 120
    iget v0, p0, Lcom/rookiestudio/customize/SeekBarPreference;->mMax:I

    return v0
.end method

.method public getProgress()I
    .locals 1

    .prologue
    .line 127
    iget v0, p0, Lcom/rookiestudio/customize/SeekBarPreference;->mValue:I

    return v0
.end method

.method protected onBindDialogView(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 88
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onBindDialogView(Landroid/view/View;)V

    .line 89
    iget-object v2, p0, Lcom/rookiestudio/customize/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget v3, p0, Lcom/rookiestudio/customize/SeekBarPreference;->mMax:I

    iget v4, p0, Lcom/rookiestudio/customize/SeekBarPreference;->mMin:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/rookiestudio/customize/SeekBarPreference;->mStep:I

    div-int/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setMax(I)V

    .line 90
    iget-object v2, p0, Lcom/rookiestudio/customize/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget v3, p0, Lcom/rookiestudio/customize/SeekBarPreference;->mValue:I

    iget v4, p0, Lcom/rookiestudio/customize/SeekBarPreference;->mMin:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/rookiestudio/customize/SeekBarPreference;->mStep:I

    div-int/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 92
    iget v1, p0, Lcom/rookiestudio/customize/SeekBarPreference;->mValue:I

    .line 93
    .local v1, value2:I
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 94
    .local v0, t:Ljava/lang/String;
    iget-object v2, p0, Lcom/rookiestudio/customize/SeekBarPreference;->mValueText:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/rookiestudio/customize/SeekBarPreference;->mSuffix:Ljava/lang/String;

    if-nez v3, :cond_0

    .end local v0           #t:Ljava/lang/String;
    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    return-void

    .line 94
    .restart local v0       #t:Ljava/lang/String;
    :cond_0
    iget-object v3, p0, Lcom/rookiestudio/customize/SeekBarPreference;->mSuffix:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected onCreateDialogView()Landroid/view/View;
    .locals 9

    .prologue
    const/16 v8, 0x14

    const/4 v7, 0x1

    const/4 v6, -0x1

    const/4 v5, -0x2

    const/4 v4, 0x6

    .line 55
    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/rookiestudio/customize/SeekBarPreference;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 56
    .local v1, layout:Landroid/widget/LinearLayout;
    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 57
    invoke-virtual {v1, v4, v4, v4, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 59
    new-instance v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/rookiestudio/customize/SeekBarPreference;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/rookiestudio/customize/SeekBarPreference;->mSplashText:Landroid/widget/TextView;

    .line 60
    iget-object v3, p0, Lcom/rookiestudio/customize/SeekBarPreference;->mDialogMessage:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 61
    iget-object v3, p0, Lcom/rookiestudio/customize/SeekBarPreference;->mSplashText:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/rookiestudio/customize/SeekBarPreference;->mDialogMessage:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    :cond_0
    iget-object v3, p0, Lcom/rookiestudio/customize/SeekBarPreference;->mSplashText:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 64
    new-instance v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/rookiestudio/customize/SeekBarPreference;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/rookiestudio/customize/SeekBarPreference;->mValueText:Landroid/widget/TextView;

    .line 65
    iget-object v3, p0, Lcom/rookiestudio/customize/SeekBarPreference;->mValueText:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setGravity(I)V

    .line 66
    iget-object v3, p0, Lcom/rookiestudio/customize/SeekBarPreference;->mValueText:Landroid/widget/TextView;

    const/high16 v4, 0x4200

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 67
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v6, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 70
    .local v2, params:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v3, p0, Lcom/rookiestudio/customize/SeekBarPreference;->mValueText:Landroid/widget/TextView;

    invoke-virtual {v1, v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 72
    new-instance v3, Landroid/widget/SeekBar;

    iget-object v4, p0, Lcom/rookiestudio/customize/SeekBarPreference;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/rookiestudio/customize/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    .line 73
    iget-object v3, p0, Lcom/rookiestudio/customize/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v3, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 74
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v6, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 75
    .local v0, aLayout:Landroid/widget/LinearLayout$LayoutParams;
    iput v8, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 76
    iput v8, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 77
    iget-object v3, p0, Lcom/rookiestudio/customize/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 79
    invoke-virtual {p0}, Lcom/rookiestudio/customize/SeekBarPreference;->shouldPersist()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 80
    iget v3, p0, Lcom/rookiestudio/customize/SeekBarPreference;->mDefault:I

    invoke-virtual {p0, v3}, Lcom/rookiestudio/customize/SeekBarPreference;->getPersistedInt(I)I

    move-result v3

    iput v3, p0, Lcom/rookiestudio/customize/SeekBarPreference;->mValue:I

    .line 82
    :cond_1
    iget-object v3, p0, Lcom/rookiestudio/customize/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget v4, p0, Lcom/rookiestudio/customize/SeekBarPreference;->mMax:I

    iget v5, p0, Lcom/rookiestudio/customize/SeekBarPreference;->mMin:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/rookiestudio/customize/SeekBarPreference;->mStep:I

    div-int/2addr v4, v5

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setMax(I)V

    .line 83
    iget-object v3, p0, Lcom/rookiestudio/customize/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget v4, p0, Lcom/rookiestudio/customize/SeekBarPreference;->mValue:I

    iget v5, p0, Lcom/rookiestudio/customize/SeekBarPreference;->mMin:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/rookiestudio/customize/SeekBarPreference;->mStep:I

    div-int/2addr v4, v5

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 84
    return-object v1
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 4
    .parameter "seek"
    .parameter "value"
    .parameter "fromTouch"

    .prologue
    .line 109
    iget v2, p0, Lcom/rookiestudio/customize/SeekBarPreference;->mMin:I

    iget v3, p0, Lcom/rookiestudio/customize/SeekBarPreference;->mStep:I

    mul-int/2addr v3, p2

    add-int v1, v2, v3

    .line 110
    .local v1, value2:I
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 111
    .local v0, t:Ljava/lang/String;
    iget-object v2, p0, Lcom/rookiestudio/customize/SeekBarPreference;->mValueText:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/rookiestudio/customize/SeekBarPreference;->mSuffix:Ljava/lang/String;

    if-nez v3, :cond_1

    .end local v0           #t:Ljava/lang/String;
    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    invoke-virtual {p0}, Lcom/rookiestudio/customize/SeekBarPreference;->shouldPersist()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 113
    invoke-virtual {p0, v1}, Lcom/rookiestudio/customize/SeekBarPreference;->persistInt(I)Z

    .line 114
    :cond_0
    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p0, v2}, Lcom/rookiestudio/customize/SeekBarPreference;->callChangeListener(Ljava/lang/Object;)Z

    .line 115
    return-void

    .line 111
    .restart local v0       #t:Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcom/rookiestudio/customize/SeekBarPreference;->mSuffix:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 1
    .parameter "restore"
    .parameter "defaultValue"

    .prologue
    .line 100
    invoke-super {p0, p1, p2}, Landroid/preference/DialogPreference;->onSetInitialValue(ZLjava/lang/Object;)V

    .line 101
    if-eqz p1, :cond_1

    .line 102
    invoke-virtual {p0}, Lcom/rookiestudio/customize/SeekBarPreference;->shouldPersist()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/rookiestudio/customize/SeekBarPreference;->mDefault:I

    invoke-virtual {p0, v0}, Lcom/rookiestudio/customize/SeekBarPreference;->getPersistedInt(I)I

    move-result v0

    :goto_0
    iput v0, p0, Lcom/rookiestudio/customize/SeekBarPreference;->mValue:I

    .line 105
    .end local p2
    :goto_1
    return-void

    .line 102
    .restart local p2
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 104
    :cond_1
    check-cast p2, Ljava/lang/Integer;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/rookiestudio/customize/SeekBarPreference;->mValue:I

    goto :goto_1
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seek"

    .prologue
    .line 116
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seek"

    .prologue
    .line 117
    return-void
.end method

.method public setMax(I)V
    .locals 0
    .parameter "max"

    .prologue
    .line 119
    iput p1, p0, Lcom/rookiestudio/customize/SeekBarPreference;->mMax:I

    return-void
.end method

.method public setProgress(I)V
    .locals 1
    .parameter "progress"

    .prologue
    .line 123
    iput p1, p0, Lcom/rookiestudio/customize/SeekBarPreference;->mValue:I

    .line 124
    iget-object v0, p0, Lcom/rookiestudio/customize/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/rookiestudio/customize/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 126
    :cond_0
    return-void
.end method
