.class public Lcom/wolfram/android/alpha/keyboard/WAKeyboard;
.super Landroid/inputmethodservice/Keyboard;
.source "WAKeyboard.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wolfram/android/alpha/keyboard/WAKeyboard$WAKey;
    }
.end annotation


# static fields
.field public static final KEYBOARD_USEALWAYS:I = 0x0

.field public static final KEYBOARD_USENEVER:I = 0x1

.field public static final KEYBOARD_USEUPPER:I = 0x3

.field public static final KEYBOARD_USEWHENNOPHYSICAL:I = 0x2

.field private static final SHIFT_LOCKED:I = 0x2

.field private static final SHIFT_OFF:I = 0x0

.field private static final SHIFT_ON:I = 0x1


# instance fields
.field private mEnterKey:Landroid/inputmethodservice/Keyboard$Key;

.field private shiftIcon:Landroid/graphics/drawable/Drawable;

.field private shiftKey:Landroid/inputmethodservice/Keyboard$Key;

.field private shiftOnIcon:Landroid/graphics/drawable/Drawable;

.field private shiftOnPreviewIcon:Landroid/graphics/drawable/Drawable;

.field private shiftPreviewIcon:Landroid/graphics/drawable/Drawable;

.field private shiftState:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .parameter "context"
    .parameter "xmlLayoutResId"

    .prologue
    .line 40
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/wolfram/android/alpha/keyboard/WAKeyboard;-><init>(Landroid/content/Context;II)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 8
    .parameter "context"
    .parameter "xmlLayoutResId"
    .parameter "modeId"

    .prologue
    const/4 v7, 0x0

    .line 46
    invoke-direct {p0, p1, p2, p3}, Landroid/inputmethodservice/Keyboard;-><init>(Landroid/content/Context;II)V

    .line 29
    iput v7, p0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard;->shiftState:I

    .line 48
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 53
    .local v2, res:Landroid/content/res/Resources;
    invoke-virtual {p0}, Lcom/wolfram/android/alpha/keyboard/WAKeyboard;->getHeight()I

    move-result v0

    .line 54
    .local v0, height:I
    invoke-virtual {p0}, Lcom/wolfram/android/alpha/keyboard/WAKeyboard;->getMinWidth()I

    move-result v3

    .line 59
    .local v3, width:I
    invoke-virtual {p0}, Lcom/wolfram/android/alpha/keyboard/WAKeyboard;->getShiftKeyIndex()I

    move-result v1

    .line 60
    .local v1, index:I
    if-ltz v1, :cond_2

    .line 61
    invoke-virtual {p0}, Lcom/wolfram/android/alpha/keyboard/WAKeyboard;->getKeys()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/inputmethodservice/Keyboard$Key;

    iput-object v4, p0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard;->shiftKey:Landroid/inputmethodservice/Keyboard$Key;

    .line 62
    iget-object v4, p0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard;->shiftKey:Landroid/inputmethodservice/Keyboard$Key;

    instance-of v4, v4, Lcom/wolfram/android/alpha/keyboard/WAKeyboard$WAKey;

    if-eqz v4, :cond_0

    .line 63
    iget-object v4, p0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard;->shiftKey:Landroid/inputmethodservice/Keyboard$Key;

    check-cast v4, Lcom/wolfram/android/alpha/keyboard/WAKeyboard$WAKey;

    invoke-virtual {v4}, Lcom/wolfram/android/alpha/keyboard/WAKeyboard$WAKey;->setShiftKey()V

    .line 65
    :cond_0
    iget-object v4, p0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard;->shiftKey:Landroid/inputmethodservice/Keyboard$Key;

    iget-object v4, v4, Landroid/inputmethodservice/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    iput-object v4, p0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard;->shiftIcon:Landroid/graphics/drawable/Drawable;

    .line 66
    iget-object v4, p0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard;->shiftKey:Landroid/inputmethodservice/Keyboard$Key;

    iget-object v4, v4, Landroid/inputmethodservice/Keyboard$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    iput-object v4, p0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard;->shiftPreviewIcon:Landroid/graphics/drawable/Drawable;

    .line 67
    const v4, 0x7f0200c3

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard;->shiftOnIcon:Landroid/graphics/drawable/Drawable;

    .line 68
    const v4, 0x7f0200be

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard;->shiftOnPreviewIcon:Landroid/graphics/drawable/Drawable;

    .line 71
    iget-object v4, p0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard;->shiftOnIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_1

    .line 72
    iget-object v4, p0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard;->shiftOnIcon:Landroid/graphics/drawable/Drawable;

    iget-object v5, p0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard;->shiftOnIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    iget-object v6, p0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard;->shiftOnIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    invoke-virtual {v4, v7, v7, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 75
    :cond_1
    iget-object v4, p0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard;->shiftOnPreviewIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_2

    .line 76
    iget-object v4, p0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard;->shiftOnPreviewIcon:Landroid/graphics/drawable/Drawable;

    iget-object v5, p0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard;->shiftOnPreviewIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    iget-object v6, p0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard;->shiftOnPreviewIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    invoke-virtual {v4, v7, v7, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 80
    :cond_2
    return-void
.end method


# virtual methods
.method protected createKeyFromXml(Landroid/content/res/Resources;Landroid/inputmethodservice/Keyboard$Row;IILandroid/content/res/XmlResourceParser;)Landroid/inputmethodservice/Keyboard$Key;
    .locals 6
    .parameter "res"
    .parameter "parent"
    .parameter "x"
    .parameter "y"
    .parameter "parser"

    .prologue
    .line 106
    new-instance v0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard$WAKey;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/wolfram/android/alpha/keyboard/WAKeyboard$WAKey;-><init>(Landroid/content/res/Resources;Landroid/inputmethodservice/Keyboard$Row;IILandroid/content/res/XmlResourceParser;)V

    .line 108
    .local v0, key:Landroid/inputmethodservice/Keyboard$Key;
    iget-object v1, v0, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    const/16 v2, 0xa

    if-ne v1, v2, :cond_0

    .line 109
    iput-object v0, p0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard;->mEnterKey:Landroid/inputmethodservice/Keyboard$Key;

    .line 111
    :cond_0
    return-object v0
.end method

.method public getVerticalGap()I
    .locals 1

    .prologue
    .line 158
    invoke-super {p0}, Landroid/inputmethodservice/Keyboard;->getVerticalGap()I

    move-result v0

    return v0
.end method

.method public isShiftLocked()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 148
    iget-object v0, p0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard;->shiftKey:Landroid/inputmethodservice/Keyboard$Key;

    if-eqz v0, :cond_1

    .line 149
    iget v0, p0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard;->shiftState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 151
    :goto_0
    return v0

    :cond_0
    move v0, v2

    .line 149
    goto :goto_0

    :cond_1
    move v0, v2

    .line 151
    goto :goto_0
.end method

.method public isShifted()Z
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard;->shiftKey:Landroid/inputmethodservice/Keyboard$Key;

    if-eqz v0, :cond_1

    .line 141
    iget v0, p0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard;->shiftState:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 143
    :goto_0
    return v0

    .line 141
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 143
    :cond_1
    invoke-super {p0}, Landroid/inputmethodservice/Keyboard;->isShifted()Z

    move-result v0

    goto :goto_0
.end method

.method public setShifted(Z)Z
    .locals 4
    .parameter "shifted"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 118
    const/4 v0, 0x0

    .line 119
    .local v0, shiftChanged:Z
    iget-object v1, p0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard;->shiftKey:Landroid/inputmethodservice/Keyboard$Key;

    if-eqz v1, :cond_4

    .line 120
    if-nez p1, :cond_2

    .line 121
    iget v1, p0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard;->shiftState:I

    if-eqz v1, :cond_1

    move v0, v3

    .line 122
    :goto_0
    iput v2, p0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard;->shiftState:I

    .line 123
    iget-object v1, p0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard;->shiftKey:Landroid/inputmethodservice/Keyboard$Key;

    iput-boolean v2, v1, Landroid/inputmethodservice/Keyboard$Key;->on:Z

    .line 124
    iget-object v1, p0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard;->shiftKey:Landroid/inputmethodservice/Keyboard$Key;

    iget-object v2, p0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard;->shiftIcon:Landroid/graphics/drawable/Drawable;

    iput-object v2, v1, Landroid/inputmethodservice/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    :cond_0
    :goto_1
    move v1, v0

    .line 135
    :goto_2
    return v1

    :cond_1
    move v0, v2

    .line 121
    goto :goto_0

    .line 126
    :cond_2
    iget v1, p0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard;->shiftState:I

    if-nez v1, :cond_0

    .line 127
    iget v1, p0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard;->shiftState:I

    if-nez v1, :cond_3

    move v0, v3

    .line 128
    :goto_3
    iput v3, p0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard;->shiftState:I

    .line 129
    iget-object v1, p0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard;->shiftKey:Landroid/inputmethodservice/Keyboard$Key;

    iget-object v2, p0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard;->shiftOnIcon:Landroid/graphics/drawable/Drawable;

    iput-object v2, v1, Landroid/inputmethodservice/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    :cond_3
    move v0, v2

    .line 127
    goto :goto_3

    .line 133
    :cond_4
    invoke-super {p0, p1}, Landroid/inputmethodservice/Keyboard;->setShifted(Z)Z

    move-result v1

    goto :goto_2
.end method

.method public shiftLongPressed()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 91
    iget v0, p0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard;->shiftState:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard;->shiftState:I

    if-ne v0, v1, :cond_1

    .line 92
    :cond_0
    invoke-virtual {p0, v1}, Lcom/wolfram/android/alpha/keyboard/WAKeyboard;->setShifted(Z)Z

    .line 93
    const/4 v0, 0x2

    iput v0, p0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard;->shiftState:I

    .line 94
    iget-object v0, p0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard;->shiftKey:Landroid/inputmethodservice/Keyboard$Key;

    iput-boolean v1, v0, Landroid/inputmethodservice/Keyboard$Key;->on:Z

    .line 99
    :goto_0
    return-void

    .line 96
    :cond_1
    invoke-virtual {p0, v2}, Lcom/wolfram/android/alpha/keyboard/WAKeyboard;->setShifted(Z)Z

    .line 97
    iget-object v0, p0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard;->shiftKey:Landroid/inputmethodservice/Keyboard$Key;

    iput-boolean v2, v0, Landroid/inputmethodservice/Keyboard$Key;->on:Z

    goto :goto_0
.end method

.method public shiftPressed()V
    .locals 1

    .prologue
    .line 84
    iget v0, p0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard;->shiftState:I

    if-nez v0, :cond_0

    .line 85
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/wolfram/android/alpha/keyboard/WAKeyboard;->setShifted(Z)Z

    .line 88
    :goto_0
    return-void

    .line 87
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/wolfram/android/alpha/keyboard/WAKeyboard;->setShifted(Z)Z

    goto :goto_0
.end method
