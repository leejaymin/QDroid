.class public Lcom/wolfram/android/alpha/keyboard/WALowerKeyboardView;
.super Lcom/wolfram/android/alpha/keyboard/WAKeyboardView;
.source "WALowerKeyboardView.java"


# static fields
.field private static final STATE_PUNCTUATION:I = 0x1

.field private static final STATE_QWERTY:I = 0x0

.field private static final STATE_SYMBOLS:I = 0x2


# instance fields
.field private state:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "c"
    .parameter "a"

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lcom/wolfram/android/alpha/keyboard/WAKeyboardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    const/4 v0, 0x0

    iput v0, p0, Lcom/wolfram/android/alpha/keyboard/WALowerKeyboardView;->state:I

    .line 32
    return-void
.end method

.method private toggleQwerty()V
    .locals 1

    .prologue
    .line 105
    iget v0, p0, Lcom/wolfram/android/alpha/keyboard/WALowerKeyboardView;->state:I

    if-nez v0, :cond_0

    .line 106
    const/4 v0, 0x1

    iput v0, p0, Lcom/wolfram/android/alpha/keyboard/WALowerKeyboardView;->state:I

    .line 107
    const v0, 0x7f050009

    invoke-virtual {p0, v0}, Lcom/wolfram/android/alpha/keyboard/WALowerKeyboardView;->setKeyboardResource(I)V

    .line 112
    :goto_0
    return-void

    .line 109
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/wolfram/android/alpha/keyboard/WALowerKeyboardView;->state:I

    .line 110
    const v0, 0x7f050005

    invoke-virtual {p0, v0}, Lcom/wolfram/android/alpha/keyboard/WALowerKeyboardView;->setKeyboardResource(I)V

    goto :goto_0
.end method

.method private toggleSymbols()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 115
    iget v0, p0, Lcom/wolfram/android/alpha/keyboard/WALowerKeyboardView;->state:I

    if-ne v0, v1, :cond_0

    .line 116
    const/4 v0, 0x2

    iput v0, p0, Lcom/wolfram/android/alpha/keyboard/WALowerKeyboardView;->state:I

    .line 117
    const v0, 0x7f05000d

    invoke-virtual {p0, v0}, Lcom/wolfram/android/alpha/keyboard/WALowerKeyboardView;->setKeyboardResource(I)V

    .line 122
    :goto_0
    return-void

    .line 119
    :cond_0
    iput v1, p0, Lcom/wolfram/android/alpha/keyboard/WALowerKeyboardView;->state:I

    .line 120
    const v0, 0x7f050009

    invoke-virtual {p0, v0}, Lcom/wolfram/android/alpha/keyboard/WALowerKeyboardView;->setKeyboardResource(I)V

    goto :goto_0
.end method


# virtual methods
.method public onKey(I[I)V
    .locals 1
    .parameter "keyCode"
    .parameter "ignore"

    .prologue
    .line 54
    const v0, 0x186a2

    if-ne p1, v0, :cond_0

    .line 56
    invoke-direct {p0}, Lcom/wolfram/android/alpha/keyboard/WALowerKeyboardView;->toggleSymbols()V

    .line 63
    :goto_0
    return-void

    .line 57
    :cond_0
    const v0, 0x186a3

    if-ne p1, v0, :cond_1

    .line 59
    invoke-direct {p0}, Lcom/wolfram/android/alpha/keyboard/WALowerKeyboardView;->toggleQwerty()V

    goto :goto_0

    .line 61
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/wolfram/android/alpha/keyboard/WAKeyboardView;->onKey(I[I)V

    goto :goto_0
.end method

.method protected onLongPress(Landroid/inputmethodservice/Keyboard$Key;)Z
    .locals 3
    .parameter "key"

    .prologue
    const/4 v2, 0x0

    .line 69
    iget-object v0, p1, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v0, v0, v2

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 70
    invoke-virtual {p0}, Lcom/wolfram/android/alpha/keyboard/WALowerKeyboardView;->getKeyboard()Landroid/inputmethodservice/Keyboard;

    move-result-object v0

    check-cast v0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard;

    invoke-virtual {v0}, Lcom/wolfram/android/alpha/keyboard/WAKeyboard;->shiftLongPressed()V

    .line 71
    invoke-virtual {p0}, Lcom/wolfram/android/alpha/keyboard/WALowerKeyboardView;->invalidateAllKeys()V

    .line 72
    const/4 v0, 0x1

    .line 90
    :goto_0
    return v0

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method resetKeyboard()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 98
    iget-object v0, p0, Lcom/wolfram/android/alpha/keyboard/WALowerKeyboardView;->keyboard:Lcom/wolfram/android/alpha/keyboard/WAKeyboard;

    invoke-virtual {v0, v1}, Lcom/wolfram/android/alpha/keyboard/WAKeyboard;->setShifted(Z)Z

    .line 99
    iput v1, p0, Lcom/wolfram/android/alpha/keyboard/WALowerKeyboardView;->state:I

    .line 100
    const v0, 0x7f050005

    invoke-virtual {p0, v0}, Lcom/wolfram/android/alpha/keyboard/WALowerKeyboardView;->setKeyboardResource(I)V

    .line 101
    return-void
.end method

.method setKeyboardResource(I)V
    .locals 5
    .parameter "xmlResID"

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/wolfram/android/alpha/keyboard/WALowerKeyboardView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 39
    .local v2, pm:Landroid/content/pm/PackageManager;
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.speech.action.RECOGNIZE_SPEECH"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 41
    .local v0, activities:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_0

    .line 42
    const v1, 0x7f0e00c2

    .line 46
    .local v1, modeID:I
    :goto_0
    iput p1, p0, Lcom/wolfram/android/alpha/keyboard/WALowerKeyboardView;->xmlResID:I

    .line 47
    new-instance v3, Lcom/wolfram/android/alpha/keyboard/WAKeyboard;

    invoke-virtual {p0}, Lcom/wolfram/android/alpha/keyboard/WALowerKeyboardView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4, p1, v1}, Lcom/wolfram/android/alpha/keyboard/WAKeyboard;-><init>(Landroid/content/Context;II)V

    iput-object v3, p0, Lcom/wolfram/android/alpha/keyboard/WALowerKeyboardView;->keyboard:Lcom/wolfram/android/alpha/keyboard/WAKeyboard;

    .line 48
    iget-object v3, p0, Lcom/wolfram/android/alpha/keyboard/WALowerKeyboardView;->keyboard:Lcom/wolfram/android/alpha/keyboard/WAKeyboard;

    invoke-virtual {p0, v3}, Lcom/wolfram/android/alpha/keyboard/WALowerKeyboardView;->setKeyboard(Landroid/inputmethodservice/Keyboard;)V

    .line 49
    return-void

    .line 44
    .end local v1           #modeID:I
    :cond_0
    const v1, 0x7f0e00c3

    .restart local v1       #modeID:I
    goto :goto_0
.end method
