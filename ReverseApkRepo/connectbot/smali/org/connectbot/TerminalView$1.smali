.class Lorg/connectbot/TerminalView$1;
.super Landroid/view/inputmethod/BaseInputConnection;
.source "TerminalView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/connectbot/TerminalView;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/connectbot/TerminalView;


# direct methods
.method constructor <init>(Lorg/connectbot/TerminalView;Landroid/view/View;Z)V
    .locals 0
    .parameter
    .parameter "$anonymous0"
    .parameter "$anonymous1"

    .prologue
    .line 1
    iput-object p1, p0, Lorg/connectbot/TerminalView$1;->this$0:Lorg/connectbot/TerminalView;

    .line 308
    invoke-direct {p0, p2, p3}, Landroid/view/inputmethod/BaseInputConnection;-><init>(Landroid/view/View;Z)V

    return-void
.end method


# virtual methods
.method public deleteSurroundingText(II)Z
    .locals 4
    .parameter "leftLength"
    .parameter "rightLength"

    .prologue
    const/16 v3, 0x43

    const/4 v2, 0x0

    .line 311
    if-nez p2, :cond_0

    if-nez p1, :cond_0

    .line 312
    new-instance v1, Landroid/view/KeyEvent;

    invoke-direct {v1, v2, v3}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {p0, v1}, Lorg/connectbot/TerminalView$1;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    .line 318
    :goto_0
    return v1

    .line 314
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-lt v0, p1, :cond_1

    .line 318
    const/4 v1, 0x1

    goto :goto_0

    .line 315
    :cond_1
    new-instance v1, Landroid/view/KeyEvent;

    invoke-direct {v1, v2, v3}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {p0, v1}, Lorg/connectbot/TerminalView$1;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    .line 314
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
