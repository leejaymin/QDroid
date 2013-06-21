.class Lcom/elsdoerfer/keepscore/Game$1;
.super Landroid/text/method/DigitsKeyListener;
.source "Game.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/elsdoerfer/keepscore/Game;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/elsdoerfer/keepscore/Game;


# direct methods
.method constructor <init>(Lcom/elsdoerfer/keepscore/Game;ZZ)V
    .locals 0
    .parameter
    .parameter "$anonymous0"
    .parameter "$anonymous1"

    .prologue
    .line 1
    iput-object p1, p0, Lcom/elsdoerfer/keepscore/Game$1;->this$0:Lcom/elsdoerfer/keepscore/Game;

    .line 147
    invoke-direct {p0, p2, p3}, Landroid/text/method/DigitsKeyListener;-><init>(ZZ)V

    return-void
.end method


# virtual methods
.method public onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "view"
    .parameter "text"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 152
    invoke-super {p0, p1, p2, p3, p4}, Landroid/text/method/DigitsKeyListener;->onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyUp(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "view"
    .parameter "text"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v3, 0x1

    .line 162
    sparse-switch p3, :sswitch_data_0

    .line 178
    invoke-super {p0, p1, p2, p3, p4}, Landroid/text/method/DigitsKeyListener;->onKeyUp(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 180
    .local v0, result:Z
    iget-object v2, p0, Lcom/elsdoerfer/keepscore/Game$1;->this$0:Lcom/elsdoerfer/keepscore/Game;

    invoke-virtual {v2}, Lcom/elsdoerfer/keepscore/Game;->updateUI()V

    move v2, v0

    .line 181
    .end local v0           #result:Z
    :goto_0
    return v2

    .line 164
    :sswitch_0
    iget-object v2, p0, Lcom/elsdoerfer/keepscore/Game$1;->this$0:Lcom/elsdoerfer/keepscore/Game;

    iget-object v2, v2, Lcom/elsdoerfer/keepscore/Game;->mAddNewScoresButton:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 165
    iget-object v2, p0, Lcom/elsdoerfer/keepscore/Game$1;->this$0:Lcom/elsdoerfer/keepscore/Game;

    iget-object v2, v2, Lcom/elsdoerfer/keepscore/Game;->mAddNewScoresButton:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->requestFocus()Z

    move v2, v3

    .line 166
    goto :goto_0

    .line 170
    :cond_0
    :sswitch_1
    const/16 v2, 0x42

    invoke-virtual {p1, v2}, Landroid/view/View;->focusSearch(I)Landroid/view/View;

    move-result-object v1

    .line 171
    .local v1, v:Landroid/view/View;
    if-nez v1, :cond_1

    .line 172
    const/16 v2, 0x82

    invoke-virtual {p1, v2}, Landroid/view/View;->focusSearch(I)Landroid/view/View;

    move-result-object v1

    .line 173
    :cond_1
    if-eqz v1, :cond_2

    .line 174
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/view/View;->requestFocus(I)Z

    :cond_2
    move v2, v3

    .line 175
    goto :goto_0

    .line 162
    :sswitch_data_0
    .sparse-switch
        0x3d -> :sswitch_1
        0x42 -> :sswitch_0
    .end sparse-switch
.end method
