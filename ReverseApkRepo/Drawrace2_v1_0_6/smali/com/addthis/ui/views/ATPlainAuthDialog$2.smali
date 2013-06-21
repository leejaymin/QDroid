.class Lcom/addthis/ui/views/ATPlainAuthDialog$2;
.super Ljava/lang/Object;
.source "ATPlainAuthDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/addthis/ui/views/ATPlainAuthDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/addthis/ui/views/ATPlainAuthDialog;


# direct methods
.method constructor <init>(Lcom/addthis/ui/views/ATPlainAuthDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/addthis/ui/views/ATPlainAuthDialog$2;->this$0:Lcom/addthis/ui/views/ATPlainAuthDialog;

    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 194
    iget-object v0, p0, Lcom/addthis/ui/views/ATPlainAuthDialog$2;->this$0:Lcom/addthis/ui/views/ATPlainAuthDialog;

    #getter for: Lcom/addthis/ui/views/ATPlainAuthDialog;->mListener:Lcom/addthis/ui/views/ATOAuthDialogListener;
    invoke-static {v0}, Lcom/addthis/ui/views/ATPlainAuthDialog;->access$2(Lcom/addthis/ui/views/ATPlainAuthDialog;)Lcom/addthis/ui/views/ATOAuthDialogListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/addthis/ui/views/ATOAuthDialogListener;->onAuthViewCancel()V

    .line 195
    return-void
.end method
