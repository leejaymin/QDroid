.class public Lorg/appcelerator/titanium/util/TiJSErrorDialog;
.super Ljava/lang/Object;
.source "TiJSErrorDialog.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TiJSError"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static createDialog(Ljava/util/concurrent/Semaphore;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V
    .locals 7
    .parameter "semaphore"
    .parameter "context"
    .parameter "title"
    .parameter "message"
    .parameter "sourceName"
    .parameter "line"
    .parameter "lineSource"
    .parameter "lineOffset"

    .prologue
    .line 67
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 68
    .local v0, layout:Landroid/widget/FrameLayout;
    const/16 v1, 0x80

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 70
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 71
    .local v2, vlayout:Landroid/widget/LinearLayout;
    const/4 v1, 0x1

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 72
    const/16 v1, 0xa

    const/16 v3, 0xa

    const/16 v4, 0xa

    const/16 v5, 0xa

    invoke-virtual {v2, v1, v3, v4, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 73
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 75
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 76
    .local v1, sourceInfoView:Landroid/widget/TextView;
    const/4 v3, -0x1

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 77
    const/high16 v3, -0x100

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 78
    const/4 v3, 0x4

    const/4 v4, 0x5

    const/4 v5, 0x4

    const/4 v6, 0x0

    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 79
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p5

    .end local p5
    const-string v3, ","

    invoke-virtual {p5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p5

    invoke-virtual {p5, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p5

    const-string p7, "] "

    .end local p7
    invoke-virtual {p5, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p5

    invoke-virtual {p5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    .end local p4
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v1, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    new-instance p5, Landroid/widget/TextView;

    invoke-direct {p5, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 82
    .local p5, messageView:Landroid/widget/TextView;
    const/4 p4, -0x1

    invoke-virtual {p5, p4}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 83
    const/high16 p4, -0x100

    invoke-virtual {p5, p4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 84
    const/4 p4, 0x4

    const/4 p7, 0x5

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-virtual {p5, p4, p7, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 85
    invoke-virtual {p5, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    new-instance p7, Landroid/widget/TextView;

    invoke-direct {p7, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 88
    .local p7, sourceView:Landroid/widget/TextView;
    const/4 p3, -0x1

    invoke-virtual {p7, p3}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 89
    .end local p3
    const/high16 p3, -0x100

    invoke-virtual {p7, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 90
    const/4 p3, 0x4

    const/4 p4, 0x5

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-virtual {p7, p3, p4, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 91
    invoke-virtual {p7, p6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    new-instance p3, Landroid/widget/TextView;

    invoke-direct {p3, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 94
    .local p3, infoLabel:Landroid/widget/TextView;
    const-string p4, "Location: "

    invoke-virtual {p3, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    const/4 p4, -0x1

    invoke-virtual {p3, p4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 96
    const/high16 p4, 0x3fc0

    invoke-virtual {p3, p4}, Landroid/widget/TextView;->setTextScaleX(F)V

    .line 98
    new-instance p4, Landroid/widget/TextView;

    invoke-direct {p4, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 99
    .local p4, messageLabel:Landroid/widget/TextView;
    const-string p6, "Message: "

    .end local p6
    invoke-virtual {p4, p6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    const/4 p6, -0x1

    invoke-virtual {p4, p6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 101
    const/high16 p6, 0x3fc0

    invoke-virtual {p4, p6}, Landroid/widget/TextView;->setTextScaleX(F)V

    .line 103
    new-instance p6, Landroid/widget/TextView;

    invoke-direct {p6, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 104
    .local p6, sourceLabel:Landroid/widget/TextView;
    const-string v3, "Source: "

    invoke-virtual {p6, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    const/4 v3, -0x1

    invoke-virtual {p6, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 106
    const/high16 v3, 0x3fc0

    invoke-virtual {p6, v3}, Landroid/widget/TextView;->setTextScaleX(F)V

    .line 108
    invoke-virtual {v2, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 109
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 110
    invoke-virtual {v2, p4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 111
    invoke-virtual {v2, p5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 112
    invoke-virtual {v2, p6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 113
    invoke-virtual {v2, p7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 115
    new-instance p3, Lorg/appcelerator/titanium/util/TiJSErrorDialog$2;

    .end local p3           #infoLabel:Landroid/widget/TextView;
    invoke-direct {p3, p0}, Lorg/appcelerator/titanium/util/TiJSErrorDialog$2;-><init>(Ljava/util/concurrent/Semaphore;)V

    .line 127
    .local p3, clickListener:Landroid/content/DialogInterface$OnClickListener;
    new-instance p4, Landroid/app/AlertDialog$Builder;

    .end local p4           #messageLabel:Landroid/widget/TextView;
    invoke-direct {p4, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p4, p2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .end local p1
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const-string p2, "Kill"

    .end local p2
    invoke-virtual {p1, p2, p3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const-string p2, "Continue"

    invoke-virtual {p1, p2, p3}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    .line 136
    invoke-static {}, Lorg/appcelerator/titanium/TiMessageQueue;->getMainMessageQueue()Lorg/appcelerator/titanium/TiMessageQueue;

    move-result-object p1

    invoke-virtual {p1}, Lorg/appcelerator/titanium/TiMessageQueue;->isBlocking()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 137
    invoke-virtual {p0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 139
    :cond_0
    return-void
.end method

.method public static openErrorDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V
    .locals 10
    .parameter "activity"
    .parameter "title"
    .parameter "message"
    .parameter "sourceName"
    .parameter "line"
    .parameter "lineSource"
    .parameter "lineOffset"

    .prologue
    .line 43
    invoke-static/range {p1 .. p6}, Lorg/appcelerator/titanium/util/TiJSErrorDialog;->printError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V

    .line 44
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 46
    :cond_0
    const-string p0, "TiJSError"

    .end local p0
    const-string p1, "Activity is null or already finishing, skipping dialog."

    .end local p1
    invoke-static {p0, p1}, Lorg/appcelerator/titanium/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    :goto_0
    return-void

    .line 50
    .restart local p0
    .restart local p1
    :cond_1
    new-instance v1, Ljava/util/concurrent/Semaphore;

    const/4 v0, 0x0

    invoke-direct {v1, v0}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    .line 51
    .local v1, semaphore:Ljava/util/concurrent/Semaphore;
    invoke-static {}, Lorg/appcelerator/titanium/TiMessageQueue;->getMainMessageQueue()Lorg/appcelerator/titanium/TiMessageQueue;

    move-result-object v9

    new-instance v0, Lorg/appcelerator/titanium/util/TiJSErrorDialog$1;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move-object v7, p5

    move/from16 v8, p6

    invoke-direct/range {v0 .. v8}, Lorg/appcelerator/titanium/util/TiJSErrorDialog$1;-><init>(Ljava/util/concurrent/Semaphore;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V

    invoke-virtual {v9, v0}, Lorg/appcelerator/titanium/TiMessageQueue;->post(Ljava/lang/Runnable;)V

    .line 58
    :try_start_0
    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 59
    :catch_0
    move-exception p0

    goto :goto_0
.end method

.method public static printError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V
    .locals 3
    .parameter "title"
    .parameter "message"
    .parameter "sourceName"
    .parameter "line"
    .parameter "lineSource"
    .parameter "lineOffset"

    .prologue
    const-string v2, "TiJSError"

    .line 34
    const-string v0, "TiJSError"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "----- Titanium Javascript "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " -----"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lorg/appcelerator/titanium/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    const-string v0, "TiJSError"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "- In "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lorg/appcelerator/titanium/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    const-string v0, "TiJSError"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "- Message: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lorg/appcelerator/titanium/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    const-string v0, "TiJSError"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "- Source: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lorg/appcelerator/titanium/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    return-void
.end method
