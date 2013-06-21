.class public Lcom/fleapapa/util/MyAlert;
.super Ljava/lang/Object;
.source "MyAlert.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static alert(Landroid/content/Context;III)V
    .locals 3
    .parameter "context"
    .parameter "title"
    .parameter "message"
    .parameter "button"

    .prologue
    .line 47
    .line 48
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 49
    :goto_0
    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 50
    invoke-virtual {p0, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 47
    invoke-static {p0, v0, v1, v2}, Lcom/fleapapa/util/MyAlert;->alert(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    return-void

    .line 48
    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static alert(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "message"

    .prologue
    .line 54
    const/4 v0, 0x0

    .line 55
    const v1, 0x7f06001b

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 54
    invoke-static {p0, v0, p1, v1}, Lcom/fleapapa/util/MyAlert;->alert(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    return-void
.end method

.method public static alert(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 11
    .parameter "context"
    .parameter "title"
    .parameter "message"
    .parameter "listenerYes"
    .parameter "listenerNo"

    .prologue
    const/4 v3, 0x0

    .line 28
    .line 30
    const v0, 0x7f06001c

    invoke-static {v0}, Lcom/fleapapa/util/My;->string(I)Ljava/lang/String;

    move-result-object v5

    .line 31
    const v0, 0x7f06001d

    invoke-static {v0}, Lcom/fleapapa/util/My;->string(I)Ljava/lang/String;

    move-result-object v7

    .line 32
    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v3

    move-object v6, p3

    move-object v8, p4

    move-object v10, v3

    .line 28
    invoke-static/range {v0 .. v10}, Lcom/fleapapa/util/MyAlert;->alert(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;ZLandroid/content/DialogInterface$OnCancelListener;)V

    .line 33
    return-void
.end method

.method public static alert(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .parameter "context"
    .parameter "title"
    .parameter "message"
    .parameter "button"

    .prologue
    const/4 v5, 0x0

    .line 35
    .line 37
    new-instance v4, Lcom/fleapapa/util/MyAlert$1;

    invoke-direct {v4}, Lcom/fleapapa/util/MyAlert$1;-><init>()V

    .line 44
    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v6, v5

    move-object v7, v5

    move-object v8, v5

    move-object v10, v5

    .line 35
    invoke-static/range {v0 .. v10}, Lcom/fleapapa/util/MyAlert;->alert(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;ZLandroid/content/DialogInterface$OnCancelListener;)V

    .line 45
    return-void
.end method

.method public static alert(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;ZLandroid/content/DialogInterface$OnCancelListener;)V
    .locals 1
    .parameter "context"
    .parameter "title"
    .parameter "message"
    .parameter "buttonOk"
    .parameter "listenerOk"
    .parameter "buttonYes"
    .parameter "listenerYes"
    .parameter "buttonNo"
    .parameter "listenerNo"
    .parameter "cancellable"
    .parameter "listenerCancel"

    .prologue
    .line 15
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 16
    .local v0, ab:Landroid/app/AlertDialog$Builder;
    if-eqz p1, :cond_0

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 17
    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 18
    :cond_1
    if-eqz p3, :cond_2

    invoke-virtual {v0, p3, p4}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 19
    :cond_2
    if-eqz p7, :cond_3

    invoke-virtual {v0, p7, p8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 20
    :cond_3
    if-eqz p5, :cond_4

    invoke-virtual {v0, p5, p6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 21
    :cond_4
    if-eqz p10, :cond_5

    invoke-virtual {v0, p10}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 22
    :cond_5
    invoke-virtual {v0, p9}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 23
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 24
    return-void
.end method
