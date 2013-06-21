.class Lcom/madvil/ms/MusicToPhoneActivity$2;
.super Ljava/lang/Object;
.source "MusicToPhoneActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/madvil/ms/MusicToPhoneActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/madvil/ms/MusicToPhoneActivity;


# direct methods
.method constructor <init>(Lcom/madvil/ms/MusicToPhoneActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/madvil/ms/MusicToPhoneActivity$2;->this$0:Lcom/madvil/ms/MusicToPhoneActivity;

    .line 226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 230
    iget-object v0, p0, Lcom/madvil/ms/MusicToPhoneActivity$2;->this$0:Lcom/madvil/ms/MusicToPhoneActivity;

    iget-object v0, v0, Lcom/madvil/ms/MusicToPhoneActivity;->searchEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 231
    iget-object v0, p0, Lcom/madvil/ms/MusicToPhoneActivity$2;->this$0:Lcom/madvil/ms/MusicToPhoneActivity;

    iget-object v0, v0, Lcom/madvil/ms/MusicToPhoneActivity;->inputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/madvil/ms/MusicToPhoneActivity$2;->this$0:Lcom/madvil/ms/MusicToPhoneActivity;

    iget-object v1, v1, Lcom/madvil/ms/MusicToPhoneActivity;->searchEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 232
    iget-object v0, p0, Lcom/madvil/ms/MusicToPhoneActivity$2;->this$0:Lcom/madvil/ms/MusicToPhoneActivity;

    invoke-virtual {v0}, Lcom/madvil/ms/MusicToPhoneActivity;->firstSearch()V

    .line 234
    :cond_0
    return-void
.end method
