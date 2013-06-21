.class Lexam/Widget/ShowHideKey$1;
.super Ljava/lang/Object;
.source "ShowHideKey.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lexam/Widget/ShowHideKey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lexam/Widget/ShowHideKey;


# direct methods
.method constructor <init>(Lexam/Widget/ShowHideKey;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lexam/Widget/ShowHideKey$1;->this$0:Lexam/Widget/ShowHideKey;

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    const/4 v2, 0x0

    .line 27
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 35
    :goto_0
    return-void

    .line 29
    :pswitch_0
    iget-object v0, p0, Lexam/Widget/ShowHideKey$1;->this$0:Lexam/Widget/ShowHideKey;

    iget-object v0, v0, Lexam/Widget/ShowHideKey;->mImm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lexam/Widget/ShowHideKey$1;->this$0:Lexam/Widget/ShowHideKey;

    iget-object v1, v1, Lexam/Widget/ShowHideKey;->mEdit:Landroid/widget/EditText;

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    goto :goto_0

    .line 32
    :pswitch_1
    iget-object v0, p0, Lexam/Widget/ShowHideKey$1;->this$0:Lexam/Widget/ShowHideKey;

    iget-object v0, v0, Lexam/Widget/ShowHideKey;->mImm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lexam/Widget/ShowHideKey$1;->this$0:Lexam/Widget/ShowHideKey;

    iget-object v1, v1, Lexam/Widget/ShowHideKey;->mEdit:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0

    .line 27
    nop

    :pswitch_data_0
    .packed-switch 0x7f0c009a
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
