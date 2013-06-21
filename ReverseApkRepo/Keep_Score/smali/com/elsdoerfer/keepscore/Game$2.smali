.class Lcom/elsdoerfer/keepscore/Game$2;
.super Ljava/lang/Object;
.source "Game.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


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
.method constructor <init>(Lcom/elsdoerfer/keepscore/Game;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/elsdoerfer/keepscore/Game$2;->this$0:Lcom/elsdoerfer/keepscore/Game;

    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 4
    .parameter "v"
    .parameter "hasFocus"

    .prologue
    .line 196
    move-object v0, p1

    check-cast v0, Landroid/widget/EditText;

    move-object v1, v0

    .line 197
    .local v1, edit:Landroid/widget/EditText;
    invoke-virtual {v1}, Landroid/widget/EditText;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 198
    invoke-virtual {v1}, Landroid/widget/EditText;->hasFocus()Z

    move-result v2

    if-nez v2, :cond_1

    .line 199
    iget-object v2, p0, Lcom/elsdoerfer/keepscore/Game$2;->this$0:Lcom/elsdoerfer/keepscore/Game;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    iput-object v3, v2, Lcom/elsdoerfer/keepscore/Game;->mLastEnteredValue:Ljava/lang/CharSequence;

    .line 213
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/elsdoerfer/keepscore/Game$2;->this$0:Lcom/elsdoerfer/keepscore/Game;

    invoke-virtual {v2}, Lcom/elsdoerfer/keepscore/Game;->updateUI()V

    .line 214
    return-void

    .line 200
    :cond_1
    iget-object v2, p0, Lcom/elsdoerfer/keepscore/Game$2;->this$0:Lcom/elsdoerfer/keepscore/Game;

    iget-object v2, v2, Lcom/elsdoerfer/keepscore/Game;->mLastEnteredValue:Ljava/lang/CharSequence;

    if-eqz v2, :cond_0

    .line 201
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    if-nez v2, :cond_0

    .line 202
    iget-object v2, p0, Lcom/elsdoerfer/keepscore/Game$2;->this$0:Lcom/elsdoerfer/keepscore/Game;

    iget-object v2, v2, Lcom/elsdoerfer/keepscore/Game;->mLastEnteredValue:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 207
    invoke-virtual {v1}, Landroid/widget/EditText;->selectAll()V

    goto :goto_0
.end method
