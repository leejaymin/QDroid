.class Lexam/dialog/OrderDialog$1$2;
.super Ljava/lang/Object;
.source "OrderDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexam/dialog/OrderDialog$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lexam/dialog/OrderDialog$1;


# direct methods
.method constructor <init>(Lexam/dialog/OrderDialog$1;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lexam/dialog/OrderDialog$1$2;->this$1:Lexam/dialog/OrderDialog$1;

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 38
    iget-object v1, p0, Lexam/dialog/OrderDialog$1$2;->this$1:Lexam/dialog/OrderDialog$1;

    #getter for: Lexam/dialog/OrderDialog$1;->this$0:Lexam/dialog/OrderDialog;
    invoke-static {v1}, Lexam/dialog/OrderDialog$1;->access$0(Lexam/dialog/OrderDialog$1;)Lexam/dialog/OrderDialog;

    move-result-object v1

    const v2, 0x7f0c0008

    invoke-virtual {v1, v2}, Lexam/dialog/OrderDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 39
    .local v0, text:Landroid/widget/TextView;
    const-string v1, "\uc8fc\ubb38\uc744 \ucde8\uc18c\ud588\uc2b5\ub2c8\ub2e4."

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 40
    return-void
.end method
