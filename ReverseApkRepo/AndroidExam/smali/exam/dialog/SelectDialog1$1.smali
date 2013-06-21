.class Lexam/dialog/SelectDialog1$1;
.super Ljava/lang/Object;
.source "SelectDialog1.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexam/dialog/SelectDialog1;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lexam/dialog/SelectDialog1;


# direct methods
.method constructor <init>(Lexam/dialog/SelectDialog1;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lexam/dialog/SelectDialog1$1;->this$0:Lexam/dialog/SelectDialog1;

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lexam/dialog/SelectDialog1$1;)Lexam/dialog/SelectDialog1;
    .locals 1
    .parameter

    .prologue
    .line 16
    iget-object v0, p0, Lexam/dialog/SelectDialog1$1;->this$0:Lexam/dialog/SelectDialog1;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 18
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lexam/dialog/SelectDialog1$1;->this$0:Lexam/dialog/SelectDialog1;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 19
    const-string v1, "\uc74c\uc2dd\uc744 \uc120\ud0dd\ud558\uc2dc\uc624."

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 20
    const v1, 0x7f020014

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 21
    const v1, 0x7f060002

    .line 23
    new-instance v2, Lexam/dialog/SelectDialog1$1$1;

    invoke-direct {v2, p0}, Lexam/dialog/SelectDialog1$1$1;-><init>(Lexam/dialog/SelectDialog1$1;)V

    .line 21
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 30
    const-string v1, "\ucde8\uc18c"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 31
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 32
    return-void
.end method
