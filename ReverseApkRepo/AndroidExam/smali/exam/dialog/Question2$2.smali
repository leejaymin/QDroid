.class Lexam/dialog/Question2$2;
.super Ljava/lang/Object;
.source "Question2.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lexam/dialog/Question2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lexam/dialog/Question2;


# direct methods
.method constructor <init>(Lexam/dialog/Question2;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lexam/dialog/Question2$2;->this$0:Lexam/dialog/Question2;

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 49
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 50
    iget-object v0, p0, Lexam/dialog/Question2$2;->this$0:Lexam/dialog/Question2;

    const/4 v1, 0x5

    iput v1, v0, Lexam/dialog/Question2;->b:I

    .line 54
    :goto_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lexam/dialog/Question2$2;->this$0:Lexam/dialog/Question2;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 55
    const-string v1, "\uc9c8\ubb38"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 56
    const-string v1, "\uc5b4\ub5a4 \uc5f0\uc0b0\uc744 \ud558\uc2dc\uaca0\uc2b5\ub2c8\uae4c?"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 57
    const-string v1, "\ub367\uc148"

    iget-object v2, p0, Lexam/dialog/Question2$2;->this$0:Lexam/dialog/Question2;

    iget-object v2, v2, Lexam/dialog/Question2;->mClickOperator:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 58
    const-string v1, "\uacf1\uc148"

    iget-object v2, p0, Lexam/dialog/Question2$2;->this$0:Lexam/dialog/Question2;

    iget-object v2, v2, Lexam/dialog/Question2;->mClickOperator:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 59
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 60
    return-void

    .line 52
    :cond_0
    iget-object v0, p0, Lexam/dialog/Question2$2;->this$0:Lexam/dialog/Question2;

    const/4 v1, 0x6

    iput v1, v0, Lexam/dialog/Question2;->b:I

    goto :goto_0
.end method
