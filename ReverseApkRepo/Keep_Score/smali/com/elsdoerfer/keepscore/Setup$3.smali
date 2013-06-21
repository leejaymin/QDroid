.class Lcom/elsdoerfer/keepscore/Setup$3;
.super Ljava/lang/Object;
.source "Setup.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/elsdoerfer/keepscore/Setup;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/elsdoerfer/keepscore/Setup;


# direct methods
.method constructor <init>(Lcom/elsdoerfer/keepscore/Setup;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/elsdoerfer/keepscore/Setup$3;->this$0:Lcom/elsdoerfer/keepscore/Setup;

    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1
    .parameter "s"

    .prologue
    .line 179
    iget-object v0, p0, Lcom/elsdoerfer/keepscore/Setup$3;->this$0:Lcom/elsdoerfer/keepscore/Setup;

    invoke-virtual {v0}, Lcom/elsdoerfer/keepscore/Setup;->updateAddPlayerOrStartButton()V

    .line 180
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 183
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 186
    return-void
.end method
