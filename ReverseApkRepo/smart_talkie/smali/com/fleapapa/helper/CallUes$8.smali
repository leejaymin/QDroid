.class Lcom/fleapapa/helper/CallUes$8;
.super Ljava/lang/Object;
.source "CallUes.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fleapapa/helper/CallUes;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fleapapa/helper/CallUes;


# direct methods
.method constructor <init>(Lcom/fleapapa/helper/CallUes;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fleapapa/helper/CallUes$8;->this$0:Lcom/fleapapa/helper/CallUes;

    .line 214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    const/4 v3, 0x0

    .line 216
    iget-object v1, p0, Lcom/fleapapa/helper/CallUes$8;->this$0:Lcom/fleapapa/helper/CallUes;

    const v2, 0x7f080057

    invoke-virtual {v1, v2}, Lcom/fleapapa/helper/CallUes;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 217
    .local v0, eName:Landroid/widget/EditText;
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/fleapapa/util/MyUtil;->empty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 218
    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 226
    :goto_0
    return-void

    .line 222
    :cond_0
    iget-object v1, p0, Lcom/fleapapa/helper/CallUes$8;->this$0:Lcom/fleapapa/helper/CallUes;

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Lcom/fleapapa/helper/CallUes;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 223
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 225
    iget-object v1, p0, Lcom/fleapapa/helper/CallUes$8;->this$0:Lcom/fleapapa/helper/CallUes;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Lcom/fleapapa/helper/CallUes;->findUEs(Ljava/lang/String;Z)V

    goto :goto_0
.end method
