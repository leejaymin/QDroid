.class public Lcom/wolfram/android/alpha/keyboard/WALowerKeyboardView_kindlefire;
.super Lcom/wolfram/android/alpha/keyboard/WAKeyboardView_kindlefire;
.source "WALowerKeyboardView_kindlefire.java"


# static fields
.field private static final STATE_CAPITAL_LETTERS:I = 0x4

.field private static final STATE_PUNCTUATION:I = 0x1

.field private static final STATE_QWERTY:I = 0x0

.field private static final STATE_SYMBOLS:I = 0x2

.field private static logger:Ljava/util/logging/Logger;


# instance fields
.field private state:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    const-string v0, "com.wolfram.android.alpha.keyboard.WALowerKeyboardView"

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/wolfram/android/alpha/keyboard/WALowerKeyboardView_kindlefire;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "c"
    .parameter "a"

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Lcom/wolfram/android/alpha/keyboard/WAKeyboardView_kindlefire;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Lcom/wolfram/android/alpha/keyboard/WALowerKeyboardView_kindlefire;->state:I

    .line 39
    return-void
.end method

.method private toggleCapital()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 178
    iget v0, p0, Lcom/wolfram/android/alpha/keyboard/WALowerKeyboardView_kindlefire;->state:I

    if-nez v0, :cond_1

    .line 179
    const/4 v0, 0x4

    iput v0, p0, Lcom/wolfram/android/alpha/keyboard/WALowerKeyboardView_kindlefire;->state:I

    .line 180
    invoke-virtual {p0}, Lcom/wolfram/android/alpha/keyboard/WALowerKeyboardView_kindlefire;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v1, :cond_0

    const v0, 0x7f050011

    invoke-virtual {p0, v0}, Lcom/wolfram/android/alpha/keyboard/WALowerKeyboardView_kindlefire;->setKeyboardResource(I)V

    .line 187
    :goto_0
    return-void

    .line 181
    :cond_0
    const v0, 0x7f050013

    invoke-virtual {p0, v0}, Lcom/wolfram/android/alpha/keyboard/WALowerKeyboardView_kindlefire;->setKeyboardResource(I)V

    goto :goto_0

    .line 183
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/wolfram/android/alpha/keyboard/WALowerKeyboardView_kindlefire;->state:I

    .line 184
    invoke-virtual {p0}, Lcom/wolfram/android/alpha/keyboard/WALowerKeyboardView_kindlefire;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v1, :cond_2

    const v0, 0x7f050005

    invoke-virtual {p0, v0}, Lcom/wolfram/android/alpha/keyboard/WALowerKeyboardView_kindlefire;->setKeyboardResource(I)V

    goto :goto_0

    .line 185
    :cond_2
    const v0, 0x7f050007

    invoke-virtual {p0, v0}, Lcom/wolfram/android/alpha/keyboard/WALowerKeyboardView_kindlefire;->setKeyboardResource(I)V

    goto :goto_0
.end method

.method private toggleQwerty()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 152
    sput v2, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->shiftState:I

    .line 153
    iget v0, p0, Lcom/wolfram/android/alpha/keyboard/WALowerKeyboardView_kindlefire;->state:I

    if-nez v0, :cond_1

    .line 154
    iput v1, p0, Lcom/wolfram/android/alpha/keyboard/WALowerKeyboardView_kindlefire;->state:I

    .line 155
    invoke-virtual {p0}, Lcom/wolfram/android/alpha/keyboard/WALowerKeyboardView_kindlefire;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v1, :cond_0

    const v0, 0x7f050009

    invoke-virtual {p0, v0}, Lcom/wolfram/android/alpha/keyboard/WALowerKeyboardView_kindlefire;->setKeyboardResource(I)V

    .line 162
    :goto_0
    return-void

    .line 156
    :cond_0
    const v0, 0x7f05000b

    invoke-virtual {p0, v0}, Lcom/wolfram/android/alpha/keyboard/WALowerKeyboardView_kindlefire;->setKeyboardResource(I)V

    goto :goto_0

    .line 158
    :cond_1
    iput v2, p0, Lcom/wolfram/android/alpha/keyboard/WALowerKeyboardView_kindlefire;->state:I

    .line 159
    invoke-virtual {p0}, Lcom/wolfram/android/alpha/keyboard/WALowerKeyboardView_kindlefire;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v1, :cond_2

    const v0, 0x7f050005

    invoke-virtual {p0, v0}, Lcom/wolfram/android/alpha/keyboard/WALowerKeyboardView_kindlefire;->setKeyboardResource(I)V

    goto :goto_0

    .line 160
    :cond_2
    const v0, 0x7f050007

    invoke-virtual {p0, v0}, Lcom/wolfram/android/alpha/keyboard/WALowerKeyboardView_kindlefire;->setKeyboardResource(I)V

    goto :goto_0
.end method

.method private toggleSymbols()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 165
    const/4 v0, 0x0

    sput v0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->shiftState:I

    .line 166
    iget v0, p0, Lcom/wolfram/android/alpha/keyboard/WALowerKeyboardView_kindlefire;->state:I

    if-ne v0, v1, :cond_1

    .line 167
    const/4 v0, 0x2

    iput v0, p0, Lcom/wolfram/android/alpha/keyboard/WALowerKeyboardView_kindlefire;->state:I

    .line 168
    invoke-virtual {p0}, Lcom/wolfram/android/alpha/keyboard/WALowerKeyboardView_kindlefire;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v1, :cond_0

    const v0, 0x7f05000d

    invoke-virtual {p0, v0}, Lcom/wolfram/android/alpha/keyboard/WALowerKeyboardView_kindlefire;->setKeyboardResource(I)V

    .line 175
    :goto_0
    return-void

    .line 169
    :cond_0
    const v0, 0x7f05000f

    invoke-virtual {p0, v0}, Lcom/wolfram/android/alpha/keyboard/WALowerKeyboardView_kindlefire;->setKeyboardResource(I)V

    goto :goto_0

    .line 171
    :cond_1
    iput v1, p0, Lcom/wolfram/android/alpha/keyboard/WALowerKeyboardView_kindlefire;->state:I

    .line 172
    invoke-virtual {p0}, Lcom/wolfram/android/alpha/keyboard/WALowerKeyboardView_kindlefire;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v1, :cond_2

    const v0, 0x7f050009

    invoke-virtual {p0, v0}, Lcom/wolfram/android/alpha/keyboard/WALowerKeyboardView_kindlefire;->setKeyboardResource(I)V

    goto :goto_0

    .line 173
    :cond_2
    const v0, 0x7f05000b

    invoke-virtual {p0, v0}, Lcom/wolfram/android/alpha/keyboard/WALowerKeyboardView_kindlefire;->setKeyboardResource(I)V

    goto :goto_0
.end method


# virtual methods
.method public onKey(I[I)V
    .locals 2
    .parameter "keyCode"
    .parameter "ignore"

    .prologue
    const/4 v1, 0x1

    .line 66
    sparse-switch p1, :sswitch_data_0

    .line 86
    invoke-super {p0, p1, p2}, Lcom/wolfram/android/alpha/keyboard/WAKeyboardView_kindlefire;->onKey(I[I)V

    .line 88
    :cond_0
    :goto_0
    return-void

    .line 69
    :sswitch_0
    invoke-direct {p0}, Lcom/wolfram/android/alpha/keyboard/WALowerKeyboardView_kindlefire;->toggleSymbols()V

    goto :goto_0

    .line 72
    :sswitch_1
    invoke-direct {p0}, Lcom/wolfram/android/alpha/keyboard/WALowerKeyboardView_kindlefire;->toggleQwerty()V

    goto :goto_0

    .line 74
    :sswitch_2
    const/4 v0, 0x0

    iput v0, p0, Lcom/wolfram/android/alpha/keyboard/WALowerKeyboardView_kindlefire;->state:I

    invoke-direct {p0}, Lcom/wolfram/android/alpha/keyboard/WALowerKeyboardView_kindlefire;->toggleQwerty()V

    goto :goto_0

    .line 76
    :sswitch_3
    sget v0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->shiftState:I

    if-ne v0, v1, :cond_0

    .line 78
    invoke-direct {p0}, Lcom/wolfram/android/alpha/keyboard/WALowerKeyboardView_kindlefire;->toggleCapital()V

    goto :goto_0

    .line 81
    :sswitch_4
    sget v0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->shiftState:I

    if-eq v0, v1, :cond_1

    sget v0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->shiftState:I

    if-nez v0, :cond_0

    .line 83
    :cond_1
    invoke-direct {p0}, Lcom/wolfram/android/alpha/keyboard/WALowerKeyboardView_kindlefire;->toggleCapital()V

    goto :goto_0

    .line 66
    nop

    :sswitch_data_0
    .sparse-switch
        0x186a2 -> :sswitch_0
        0x186a3 -> :sswitch_2
        0x186b4 -> :sswitch_1
        0x186b5 -> :sswitch_0
        0x186b9 -> :sswitch_3
        0x186ba -> :sswitch_4
    .end sparse-switch
.end method

.method protected onLongPress(Landroid/inputmethodservice/Keyboard$Key;)Z
    .locals 3
    .parameter "key"

    .prologue
    const/4 v2, 0x0

    .line 112
    iget-object v0, p1, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v0, v0, v2

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 113
    invoke-virtual {p0}, Lcom/wolfram/android/alpha/keyboard/WALowerKeyboardView_kindlefire;->getKeyboard()Landroid/inputmethodservice/Keyboard;

    move-result-object v0

    check-cast v0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;

    invoke-virtual {v0}, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->shiftLongPressed()V

    .line 114
    invoke-virtual {p0}, Lcom/wolfram/android/alpha/keyboard/WALowerKeyboardView_kindlefire;->invalidateAllKeys()V

    .line 115
    const/4 v0, 0x1

    .line 133
    :goto_0
    return v0

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method public onText(Ljava/lang/CharSequence;)V
    .locals 7
    .parameter "s"

    .prologue
    const/4 v4, 0x0

    .line 95
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "A"

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Z"

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-gtz v1, :cond_0

    .line 96
    sget v1, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->shiftState:I

    if-nez v1, :cond_0

    .line 98
    invoke-direct {p0}, Lcom/wolfram/android/alpha/keyboard/WALowerKeyboardView_kindlefire;->toggleCapital()V

    .line 102
    :cond_0
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ge v6, v1, :cond_1

    .line 104
    new-instance v0, Landroid/view/KeyEvent;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    add-int/lit8 v3, v6, 0x1

    invoke-interface {p1, v6, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    move v5, v4

    invoke-direct/range {v0 .. v5}, Landroid/view/KeyEvent;-><init>(JLjava/lang/String;II)V

    .line 105
    .local v0, event:Landroid/view/KeyEvent;
    iget-object v1, p0, Lcom/wolfram/android/alpha/keyboard/WALowerKeyboardView_kindlefire;->targetView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 102
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 107
    .end local v0           #event:Landroid/view/KeyEvent;
    :cond_1
    return-void
.end method

.method resetKeyboard()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 141
    iget-object v0, p0, Lcom/wolfram/android/alpha/keyboard/WALowerKeyboardView_kindlefire;->keyboard:Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;

    invoke-virtual {v0, v1}, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->setShifted(Z)Z

    .line 142
    sput v1, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;->shiftState:I

    .line 143
    iput v1, p0, Lcom/wolfram/android/alpha/keyboard/WALowerKeyboardView_kindlefire;->state:I

    .line 144
    invoke-virtual {p0}, Lcom/wolfram/android/alpha/keyboard/WALowerKeyboardView_kindlefire;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 145
    invoke-virtual {p0}, Lcom/wolfram/android/alpha/keyboard/WALowerKeyboardView_kindlefire;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 146
    const v0, 0x7f050005

    invoke-virtual {p0, v0}, Lcom/wolfram/android/alpha/keyboard/WALowerKeyboardView_kindlefire;->setKeyboardResource(I)V

    .line 148
    :goto_0
    return-void

    .line 147
    :cond_0
    const v0, 0x7f050007

    invoke-virtual {p0, v0}, Lcom/wolfram/android/alpha/keyboard/WALowerKeyboardView_kindlefire;->setKeyboardResource(I)V

    goto :goto_0
.end method

.method setKeyboardResource(I)V
    .locals 5
    .parameter "xmlResID"

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/wolfram/android/alpha/keyboard/WALowerKeyboardView_kindlefire;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 46
    .local v2, pm:Landroid/content/pm/PackageManager;
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.speech.action.RECOGNIZE_SPEECH"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 48
    .local v0, activities:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_0

    .line 49
    const v1, 0x7f0e00c2

    .line 54
    .local v1, modeID:I
    :goto_0
    invoke-static {p1}, Lcom/wolfram/android/alpha/Resources_modified;->getXmlKeyboardId(I)I

    move-result p1

    .line 56
    iput p1, p0, Lcom/wolfram/android/alpha/keyboard/WALowerKeyboardView_kindlefire;->xmlResID:I

    .line 57
    new-instance v3, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;

    invoke-virtual {p0}, Lcom/wolfram/android/alpha/keyboard/WALowerKeyboardView_kindlefire;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4, p1, v1}, Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;-><init>(Landroid/content/Context;II)V

    iput-object v3, p0, Lcom/wolfram/android/alpha/keyboard/WALowerKeyboardView_kindlefire;->keyboard:Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;

    .line 58
    iget-object v3, p0, Lcom/wolfram/android/alpha/keyboard/WALowerKeyboardView_kindlefire;->keyboard:Lcom/wolfram/android/alpha/keyboard/WAKeyboard_kindlefire;

    invoke-virtual {p0, v3}, Lcom/wolfram/android/alpha/keyboard/WALowerKeyboardView_kindlefire;->setKeyboard(Landroid/inputmethodservice/Keyboard;)V

    .line 59
    return-void

    .line 51
    .end local v1           #modeID:I
    :cond_0
    const v1, 0x7f0e00c3

    .restart local v1       #modeID:I
    goto :goto_0
.end method
