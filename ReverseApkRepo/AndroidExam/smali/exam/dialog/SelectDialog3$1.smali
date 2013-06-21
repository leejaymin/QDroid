.class Lexam/dialog/SelectDialog3$1;
.super Ljava/lang/Object;
.source "SelectDialog3.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexam/dialog/SelectDialog3;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lexam/dialog/SelectDialog3;


# direct methods
.method constructor <init>(Lexam/dialog/SelectDialog3;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lexam/dialog/SelectDialog3$1;->this$0:Lexam/dialog/SelectDialog3;

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lexam/dialog/SelectDialog3$1;)Lexam/dialog/SelectDialog3;
    .locals 1
    .parameter

    .prologue
    .line 17
    iget-object v0, p0, Lexam/dialog/SelectDialog3$1;->this$0:Lexam/dialog/SelectDialog3;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 19
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lexam/dialog/SelectDialog3$1;->this$0:Lexam/dialog/SelectDialog3;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 20
    const-string v1, "\uc74c\uc2dd\uc744 \uc120\ud0dd\ud558\uc2dc\uc624."

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 21
    const v1, 0x7f020014

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 22
    const v1, 0x7f060002

    iget-object v2, p0, Lexam/dialog/SelectDialog3$1;->this$0:Lexam/dialog/SelectDialog3;

    iget-object v2, v2, Lexam/dialog/SelectDialog3;->mSelect:[Z

    .line 23
    new-instance v3, Lexam/dialog/SelectDialog3$1$1;

    invoke-direct {v3, p0}, Lexam/dialog/SelectDialog3$1$1;-><init>(Lexam/dialog/SelectDialog3$1;)V

    .line 22
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setMultiChoiceItems(I[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 28
    const-string v1, "\ud655\uc778"

    new-instance v2, Lexam/dialog/SelectDialog3$1$2;

    invoke-direct {v2, p0}, Lexam/dialog/SelectDialog3$1$2;-><init>(Lexam/dialog/SelectDialog3$1;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 41
    const-string v1, "\ucde8\uc18c"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 42
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 43
    return-void
.end method
