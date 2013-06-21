.class public Lcom/wolfram/android/alpha/keyboard/WAKeyboardPairView;
.super Landroid/widget/LinearLayout;
.source "WAKeyboardPairView.java"


# instance fields
.field lowerKeyboardView:Lcom/wolfram/android/alpha/keyboard/WALowerKeyboardView;

.field upperKeyboardView:Lcom/wolfram/android/alpha/keyboard/WAUpperKeyboardView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    const-string v0, "keyboard"

    invoke-virtual {p0, v0}, Lcom/wolfram/android/alpha/keyboard/WAKeyboardPairView;->setTag(Ljava/lang/Object;)V

    .line 29
    return-void
.end method

.method public static createFromXML(Landroid/content/Context;)Lcom/wolfram/android/alpha/keyboard/WAKeyboardPairView;
    .locals 3
    .parameter "context"

    .prologue
    .line 22
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030058

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/wolfram/android/alpha/keyboard/WAKeyboardPairView;

    return-object p0
.end method


# virtual methods
.method public initialize(I)V
    .locals 2
    .parameter "maxKeyboardHeightInPixels"

    .prologue
    .line 34
    const v0, 0x7f0e005b

    invoke-virtual {p0, v0}, Lcom/wolfram/android/alpha/keyboard/WAKeyboardPairView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/wolfram/android/alpha/keyboard/WAUpperKeyboardView;

    iput-object v0, p0, Lcom/wolfram/android/alpha/keyboard/WAKeyboardPairView;->upperKeyboardView:Lcom/wolfram/android/alpha/keyboard/WAUpperKeyboardView;

    .line 35
    const v0, 0x7f0e005d

    invoke-virtual {p0, v0}, Lcom/wolfram/android/alpha/keyboard/WAKeyboardPairView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/wolfram/android/alpha/keyboard/WALowerKeyboardView;

    iput-object v0, p0, Lcom/wolfram/android/alpha/keyboard/WAKeyboardPairView;->lowerKeyboardView:Lcom/wolfram/android/alpha/keyboard/WALowerKeyboardView;

    .line 36
    iget-object v0, p0, Lcom/wolfram/android/alpha/keyboard/WAKeyboardPairView;->upperKeyboardView:Lcom/wolfram/android/alpha/keyboard/WAUpperKeyboardView;

    const v1, 0x7f050017

    invoke-virtual {v0, v1}, Lcom/wolfram/android/alpha/keyboard/WAUpperKeyboardView;->setKeyboardResource(I)V

    .line 37
    iget-object v0, p0, Lcom/wolfram/android/alpha/keyboard/WAKeyboardPairView;->lowerKeyboardView:Lcom/wolfram/android/alpha/keyboard/WALowerKeyboardView;

    const v1, 0x7f050005

    invoke-virtual {v0, v1}, Lcom/wolfram/android/alpha/keyboard/WALowerKeyboardView;->setKeyboardResource(I)V

    .line 38
    return-void
.end method

.method public resetKeyboard()V
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/wolfram/android/alpha/keyboard/WAKeyboardPairView;->upperKeyboardView:Lcom/wolfram/android/alpha/keyboard/WAUpperKeyboardView;

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/wolfram/android/alpha/keyboard/WAKeyboardPairView;->upperKeyboardView:Lcom/wolfram/android/alpha/keyboard/WAUpperKeyboardView;

    invoke-virtual {v0}, Lcom/wolfram/android/alpha/keyboard/WAUpperKeyboardView;->resetKeyboard()V

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/wolfram/android/alpha/keyboard/WAKeyboardPairView;->lowerKeyboardView:Lcom/wolfram/android/alpha/keyboard/WALowerKeyboardView;

    if-eqz v0, :cond_1

    .line 53
    iget-object v0, p0, Lcom/wolfram/android/alpha/keyboard/WAKeyboardPairView;->lowerKeyboardView:Lcom/wolfram/android/alpha/keyboard/WALowerKeyboardView;

    invoke-virtual {v0}, Lcom/wolfram/android/alpha/keyboard/WALowerKeyboardView;->resetKeyboard()V

    .line 54
    :cond_1
    return-void
.end method

.method public setTargetView(Landroid/view/View;)V
    .locals 1
    .parameter "targetView"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/wolfram/android/alpha/keyboard/WAKeyboardPairView;->upperKeyboardView:Lcom/wolfram/android/alpha/keyboard/WAUpperKeyboardView;

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/wolfram/android/alpha/keyboard/WAKeyboardPairView;->upperKeyboardView:Lcom/wolfram/android/alpha/keyboard/WAUpperKeyboardView;

    invoke-virtual {v0, p1}, Lcom/wolfram/android/alpha/keyboard/WAUpperKeyboardView;->setTargetView(Landroid/view/View;)V

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/wolfram/android/alpha/keyboard/WAKeyboardPairView;->lowerKeyboardView:Lcom/wolfram/android/alpha/keyboard/WALowerKeyboardView;

    if-eqz v0, :cond_1

    .line 45
    iget-object v0, p0, Lcom/wolfram/android/alpha/keyboard/WAKeyboardPairView;->lowerKeyboardView:Lcom/wolfram/android/alpha/keyboard/WALowerKeyboardView;

    invoke-virtual {v0, p1}, Lcom/wolfram/android/alpha/keyboard/WALowerKeyboardView;->setTargetView(Landroid/view/View;)V

    .line 46
    :cond_1
    return-void
.end method
