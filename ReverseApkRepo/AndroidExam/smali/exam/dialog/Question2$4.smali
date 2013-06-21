.class Lexam/dialog/Question2$4;
.super Ljava/lang/Object;
.source "Question2.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexam/dialog/Question2;->onCreate(Landroid/os/Bundle;)V
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
    iput-object p1, p0, Lexam/dialog/Question2$4;->this$0:Lexam/dialog/Question2;

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 21
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lexam/dialog/Question2$4;->this$0:Lexam/dialog/Question2;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 22
    const-string v1, "\uc9c8\ubb38"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 23
    const-string v1, "\uc88c\ubcc0\uc744 \uc120\ud0dd\ud558\uc2ed\uc2dc\uc624."

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 24
    const-string v1, "3"

    iget-object v2, p0, Lexam/dialog/Question2$4;->this$0:Lexam/dialog/Question2;

    iget-object v2, v2, Lexam/dialog/Question2;->mClickLeft:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 25
    const-string v1, "4"

    iget-object v2, p0, Lexam/dialog/Question2$4;->this$0:Lexam/dialog/Question2;

    iget-object v2, v2, Lexam/dialog/Question2;->mClickLeft:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 26
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 27
    return-void
.end method
