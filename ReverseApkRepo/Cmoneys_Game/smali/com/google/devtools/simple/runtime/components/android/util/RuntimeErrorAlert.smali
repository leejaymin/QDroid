.class public final Lcom/google/devtools/simple/runtime/components/android/util/RuntimeErrorAlert;
.super Ljava/lang/Object;
.source "RuntimeErrorAlert.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static alert(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "context"
    .parameter "message"
    .parameter "title"
    .parameter "buttonText"

    .prologue
    const-class v4, Lcom/google/devtools/simple/runtime/components/android/util/RuntimeErrorAlert;

    .line 26
    const-string v2, "RuntimeErrorAlert"

    const-string v3, "in alert"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    new-instance v3, Landroid/app/AlertDialog$Builder;

    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    move-object v2, v0

    invoke-direct {v3, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 28
    .local v1, alertDialog:Landroid/app/AlertDialog;
    invoke-virtual {v1, p2}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 29
    invoke-virtual {v1, p1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 30
    new-instance v2, Lcom/google/devtools/simple/runtime/components/android/util/RuntimeErrorAlert$1;

    invoke-direct {v2, p0}, Lcom/google/devtools/simple/runtime/components/android/util/RuntimeErrorAlert$1;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, p3, v2}, Landroid/app/AlertDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 34
    if-nez p1, :cond_0

    .line 36
    const-class v2, Lcom/google/devtools/simple/runtime/components/android/util/RuntimeErrorAlert;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "No error message available"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    :goto_0
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 41
    return-void

    .line 38
    :cond_0
    const-class v2, Lcom/google/devtools/simple/runtime/components/android/util/RuntimeErrorAlert;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
