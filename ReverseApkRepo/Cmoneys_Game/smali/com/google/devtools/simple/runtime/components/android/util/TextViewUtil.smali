.class public Lcom/google/devtools/simple/runtime/components/android/util/TextViewUtil;
.super Ljava/lang/Object;
.source "TextViewUtil.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    return-void
.end method

.method public static getFontSize(Landroid/widget/TextView;)F
    .locals 1
    .parameter "textview"

    .prologue
    .line 94
    invoke-virtual {p0}, Landroid/widget/TextView;->getTextSize()F

    move-result v0

    return v0
.end method

.method public static getText(Landroid/widget/TextView;)Ljava/lang/String;
    .locals 1
    .parameter "textview"

    .prologue
    .line 161
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isEnabled(Landroid/widget/TextView;)Z
    .locals 1
    .parameter "textview"

    .prologue
    .line 73
    invoke-virtual {p0}, Landroid/widget/TextView;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public static setAlignment(Landroid/widget/TextView;IZ)V
    .locals 3
    .parameter "textview"
    .parameter "alignment"
    .parameter "centerVertically"

    .prologue
    .line 32
    packed-switch p1, :pswitch_data_0

    .line 34
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 37
    :pswitch_0
    const/4 v0, 0x3

    .line 48
    .local v0, horizontalGravity:I
    :goto_0
    if-eqz p2, :cond_0

    const/16 v2, 0x10

    move v1, v2

    .line 49
    .local v1, verticalGravity:I
    :goto_1
    or-int v2, v0, v1

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 50
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 51
    return-void

    .line 41
    .end local v0           #horizontalGravity:I
    .end local v1           #verticalGravity:I
    :pswitch_1
    const/4 v0, 0x1

    .line 42
    .restart local v0       #horizontalGravity:I
    goto :goto_0

    .line 45
    .end local v0           #horizontalGravity:I
    :pswitch_2
    const/4 v0, 0x5

    .restart local v0       #horizontalGravity:I
    goto :goto_0

    .line 48
    :cond_0
    const/16 v2, 0x30

    move v1, v2

    goto :goto_1

    .line 32
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static setBackgroundColor(Landroid/widget/TextView;I)V
    .locals 1
    .parameter "textview"
    .parameter "argb"

    .prologue
    .line 60
    const v0, 0xffffff

    if-eq p1, v0, :cond_0

    .line 61
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 62
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 64
    :cond_0
    return-void
.end method

.method public static setEnabled(Landroid/widget/TextView;Z)V
    .locals 0
    .parameter "textview"
    .parameter "enabled"

    .prologue
    .line 83
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 84
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 85
    return-void
.end method

.method public static setFontSize(Landroid/widget/TextView;F)V
    .locals 0
    .parameter "textview"
    .parameter "size"

    .prologue
    .line 104
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 105
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 106
    return-void
.end method

.method public static setFontTypeface(Landroid/widget/TextView;IZZ)V
    .locals 3
    .parameter "textview"
    .parameter "typeface"
    .parameter "bold"
    .parameter "italic"

    .prologue
    .line 122
    packed-switch p1, :pswitch_data_0

    .line 124
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 127
    :pswitch_0
    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    .line 143
    .local v1, tf:Landroid/graphics/Typeface;
    :goto_0
    const/4 v0, 0x0

    .line 144
    .local v0, style:I
    if-eqz p2, :cond_0

    .line 145
    or-int/lit8 v0, v0, 0x1

    .line 147
    :cond_0
    if-eqz p3, :cond_1

    .line 148
    or-int/lit8 v0, v0, 0x2

    .line 150
    :cond_1
    invoke-static {v1, v0}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 151
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 152
    return-void

    .line 131
    .end local v0           #style:I
    .end local v1           #tf:Landroid/graphics/Typeface;
    :pswitch_1
    sget-object v1, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    .line 132
    .restart local v1       #tf:Landroid/graphics/Typeface;
    goto :goto_0

    .line 135
    .end local v1           #tf:Landroid/graphics/Typeface;
    :pswitch_2
    sget-object v1, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    .line 136
    .restart local v1       #tf:Landroid/graphics/Typeface;
    goto :goto_0

    .line 139
    .end local v1           #tf:Landroid/graphics/Typeface;
    :pswitch_3
    sget-object v1, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    .restart local v1       #tf:Landroid/graphics/Typeface;
    goto :goto_0

    .line 122
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public static setText(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 0
    .parameter "textview"
    .parameter "text"

    .prologue
    .line 171
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 172
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 173
    return-void
.end method

.method public static setTextColor(Landroid/widget/TextView;I)V
    .locals 0
    .parameter "textview"
    .parameter "argb"

    .prologue
    .line 182
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 183
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 184
    return-void
.end method

.method public static setTextColors(Landroid/widget/TextView;Landroid/content/res/ColorStateList;)V
    .locals 0
    .parameter "textview"
    .parameter "colorStateList"

    .prologue
    .line 187
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 188
    return-void
.end method
