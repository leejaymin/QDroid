.class public Lcom/wolfram/android/alpha/keyboard/WAKeyListener;
.super Landroid/text/method/TextKeyListener;
.source "WAKeyListener.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 34
    sget-object v0, Landroid/text/method/TextKeyListener$Capitalize;->NONE:Landroid/text/method/TextKeyListener$Capitalize;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/text/method/TextKeyListener;-><init>(Landroid/text/method/TextKeyListener$Capitalize;Z)V

    .line 36
    return-void
.end method


# virtual methods
.method public getInputType()I
    .locals 1

    .prologue
    .line 49
    invoke-static {}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getApplication()Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->isUseCustomKeyboard()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    const/4 v0, 0x0

    .line 53
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
