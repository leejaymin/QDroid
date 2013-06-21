.class Lexam/dialog/ErrorMessage2$1;
.super Ljava/lang/Object;
.source "ErrorMessage2.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexam/dialog/ErrorMessage2;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lexam/dialog/ErrorMessage2;


# direct methods
.method constructor <init>(Lexam/dialog/ErrorMessage2;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lexam/dialog/ErrorMessage2$1;->this$0:Lexam/dialog/ErrorMessage2;

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lexam/dialog/ErrorMessage2$1;)Lexam/dialog/ErrorMessage2;
    .locals 1
    .parameter

    .prologue
    .line 16
    iget-object v0, p0, Lexam/dialog/ErrorMessage2$1;->this$0:Lexam/dialog/ErrorMessage2;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 20
    const-wide/16 v1, 0x1f4

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    :goto_0
    const/4 v0, 0x1

    .line 25
    .local v0, ErrorOccur:Z
    if-eqz v0, :cond_0

    .line 26
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lexam/dialog/ErrorMessage2$1;->this$0:Lexam/dialog/ErrorMessage2;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 27
    const-string v2, "\uc5d0\ub7ec \ubc1c\uc0dd"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 28
    const-string v2, "\uc5b4\uca4c\uace0 \uc800\uca4c\uace0 \uc774\uc720\ub85c \uc791\uc5c5\uc744 \uacc4\uc18d\ud560 \uc218 \uc5c6\uc5b4 \uc885\ub8cc\ud569\ub2c8\ub2e4."

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 29
    const-string v2, "\uc885\ub8cc"

    new-instance v3, Lexam/dialog/ErrorMessage2$1$1;

    invoke-direct {v3, p0}, Lexam/dialog/ErrorMessage2$1$1;-><init>(Lexam/dialog/ErrorMessage2$1;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 34
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 39
    :goto_1
    return-void

    .line 36
    :cond_0
    iget-object v1, p0, Lexam/dialog/ErrorMessage2$1;->this$0:Lexam/dialog/ErrorMessage2;

    const-string v2, "\uc791\uc5c5\uc774 \ubb34\uc0ac\ud788 \ub05d\ub0ac\uc2b5\ub2c8\ub2e4."

    .line 37
    const/4 v3, 0x1

    .line 36
    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 37
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 21
    .end local v0           #ErrorOccur:Z
    :catch_0
    move-exception v1

    goto :goto_0
.end method
