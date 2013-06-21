.class Lcom/wolfram/android/alpha/keyboard/WAKeyboard$WAKey;
.super Landroid/inputmethodservice/Keyboard$Key;
.source "WAKeyboard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wolfram/android/alpha/keyboard/WAKeyboard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "WAKey"
.end annotation


# instance fields
.field private isShiftKey:Z


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Landroid/inputmethodservice/Keyboard$Row;IILandroid/content/res/XmlResourceParser;)V
    .locals 0
    .parameter "res"
    .parameter "parent"
    .parameter "x"
    .parameter "y"
    .parameter "parser"

    .prologue
    .line 171
    invoke-direct/range {p0 .. p5}, Landroid/inputmethodservice/Keyboard$Key;-><init>(Landroid/content/res/Resources;Landroid/inputmethodservice/Keyboard$Row;IILandroid/content/res/XmlResourceParser;)V

    .line 178
    return-void
.end method


# virtual methods
.method public onReleased(Z)V
    .locals 1
    .parameter "inside"

    .prologue
    .line 187
    iget-boolean v0, p0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard$WAKey;->isShiftKey:Z

    if-eqz v0, :cond_1

    .line 188
    iget-boolean v0, p0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard$WAKey;->pressed:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard$WAKey;->pressed:Z

    .line 192
    :goto_1
    return-void

    .line 188
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 190
    :cond_1
    invoke-super {p0, p1}, Landroid/inputmethodservice/Keyboard$Key;->onReleased(Z)V

    goto :goto_1
.end method

.method setShiftKey()V
    .locals 1

    .prologue
    .line 181
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/wolfram/android/alpha/keyboard/WAKeyboard$WAKey;->isShiftKey:Z

    .line 182
    return-void
.end method
