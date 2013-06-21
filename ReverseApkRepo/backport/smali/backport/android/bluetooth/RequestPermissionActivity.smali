.class abstract Lbackport/android/bluetooth/RequestPermissionActivity;
.super Landroid/app/Activity;
.source "RequestPermissionActivity.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private createProgressDialog(Landroid/content/Context;Ljava/lang/String;)Landroid/app/ProgressDialog;
    .locals 2
    .parameter "context"
    .parameter "message"

    .prologue
    .line 67
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 68
    .local v0, dialog:Landroid/app/ProgressDialog;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 69
    invoke-virtual {v0, p2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 71
    return-object v0
.end method

.method private indeterminateInternal(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/Runnable;Landroid/content/DialogInterface$OnDismissListener;Z)V
    .locals 2
    .parameter "context"
    .parameter "handler"
    .parameter "message"
    .parameter "runnable"
    .parameter "dismissListener"
    .parameter "cancelable"

    .prologue
    .line 78
    invoke-direct {p0, p1, p3}, Lbackport/android/bluetooth/RequestPermissionActivity;->createProgressDialog(Landroid/content/Context;Ljava/lang/String;)Landroid/app/ProgressDialog;

    move-result-object v0

    .line 79
    .local v0, dialog:Landroid/app/ProgressDialog;
    invoke-virtual {v0, p6}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 81
    if-eqz p5, :cond_0

    .line 83
    invoke-virtual {v0, p5}, Landroid/app/ProgressDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 86
    :cond_0
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 88
    new-instance v1, Lbackport/android/bluetooth/RequestPermissionActivity$1;

    invoke-direct {v1, p0, p4, p2, v0}, Lbackport/android/bluetooth/RequestPermissionActivity$1;-><init>(Lbackport/android/bluetooth/RequestPermissionActivity;Ljava/lang/Runnable;Landroid/os/Handler;Landroid/app/ProgressDialog;)V

    .line 111
    invoke-virtual {v1}, Lbackport/android/bluetooth/RequestPermissionActivity$1;->start()V

    .line 112
    return-void
.end method


# virtual methods
.method protected getDialogInfoIconId()I
    .locals 5

    .prologue
    .line 116
    :try_start_0
    invoke-virtual {p0}, Lbackport/android/bluetooth/RequestPermissionActivity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    const-string v4, "android.R.drawable"

    invoke-virtual {v3, v4}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 117
    .local v0, drawable:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-string v3, "ic_dialog_info"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 118
    .local v1, field:Ljava/lang/reflect/Field;
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 119
    .local v2, id:Ljava/lang/Integer;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 126
    .end local v0           #drawable:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v1           #field:Ljava/lang/reflect/Field;
    .end local v2           #id:Ljava/lang/Integer;
    :goto_0
    return v3

    .line 124
    :catch_0
    move-exception v3

    .line 126
    :goto_1
    const v3, 0x108009b

    goto :goto_0

    .line 123
    :catch_1
    move-exception v3

    goto :goto_1

    .line 122
    :catch_2
    move-exception v3

    goto :goto_1

    .line 121
    :catch_3
    move-exception v3

    goto :goto_1

    .line 120
    :catch_4
    move-exception v3

    goto :goto_1
.end method

.method public indeterminate(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/Runnable;Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 7
    .parameter "context"
    .parameter "handler"
    .parameter "message"
    .parameter "runnable"
    .parameter "dismissListener"

    .prologue
    .line 37
    .line 38
    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 37
    :try_start_0
    invoke-direct/range {v0 .. v6}, Lbackport/android/bluetooth/RequestPermissionActivity;->indeterminateInternal(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/Runnable;Landroid/content/DialogInterface$OnDismissListener;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    :goto_0
    return-void

    .line 39
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public indeterminate(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/Runnable;Landroid/content/DialogInterface$OnDismissListener;Z)V
    .locals 1
    .parameter "context"
    .parameter "handler"
    .parameter "message"
    .parameter "runnable"
    .parameter "dismissListener"
    .parameter "cancelable"

    .prologue
    .line 51
    :try_start_0
    invoke-direct/range {p0 .. p6}, Lbackport/android/bluetooth/RequestPermissionActivity;->indeterminateInternal(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/Runnable;Landroid/content/DialogInterface$OnDismissListener;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    :goto_0
    return-void

    .line 53
    :catch_0
    move-exception v0

    goto :goto_0
.end method
