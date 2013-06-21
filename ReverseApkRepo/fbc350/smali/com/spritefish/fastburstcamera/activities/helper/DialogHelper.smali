.class public Lcom/spritefish/fastburstcamera/activities/helper/DialogHelper;
.super Ljava/lang/Object;
.source "DialogHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createCustomDialogBuilder(Landroid/content/Context;Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;IILjava/lang/String;Lcom/spritefish/fastburstcamera/activities/helper/DialogButton;Lcom/spritefish/fastburstcamera/activities/helper/DialogButton;)Landroid/app/AlertDialog$Builder;
    .locals 7
    .parameter "c"
    .parameter "db"
    .parameter "header"
    .parameter "text"
    .parameter "dialogid"
    .parameter "positive"
    .parameter "negative"

    .prologue
    .line 32
    invoke-virtual {p0, p2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 33
    .local v2, headerText:Ljava/lang/String;
    invoke-virtual {p0, p3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .local v3, textText:Ljava/lang/String;
    move-object v0, p0

    move-object v1, p1

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 34
    invoke-static/range {v0 .. v6}, Lcom/spritefish/fastburstcamera/activities/helper/DialogHelper;->createCustomDialogBuilder(Landroid/content/Context;Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/spritefish/fastburstcamera/activities/helper/DialogButton;Lcom/spritefish/fastburstcamera/activities/helper/DialogButton;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static createCustomDialogBuilder(Landroid/content/Context;Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/spritefish/fastburstcamera/activities/helper/DialogButton;Lcom/spritefish/fastburstcamera/activities/helper/DialogButton;)Landroid/app/AlertDialog$Builder;
    .locals 8
    .parameter "c"
    .parameter "db"
    .parameter "header"
    .parameter "text"
    .parameter "dialogid"
    .parameter "positive"
    .parameter "negative"

    .prologue
    .line 98
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-static/range {v0 .. v7}, Lcom/spritefish/fastburstcamera/activities/helper/DialogHelper;->createCustomDialogBuilder(Landroid/content/Context;Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/spritefish/fastburstcamera/activities/helper/DialogButton;Lcom/spritefish/fastburstcamera/activities/helper/DialogButton;Lcom/spritefish/fastburstcamera/activities/helper/DialogButton;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static createCustomDialogBuilder(Landroid/content/Context;Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/spritefish/fastburstcamera/activities/helper/DialogButton;Lcom/spritefish/fastburstcamera/activities/helper/DialogButton;Lcom/spritefish/fastburstcamera/activities/helper/DialogButton;)Landroid/app/AlertDialog$Builder;
    .locals 8
    .parameter "c"
    .parameter "db"
    .parameter "header"
    .parameter "text"
    .parameter "dialogid"
    .parameter "positive"
    .parameter "negative"
    .parameter "neutral"

    .prologue
    .line 39
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 40
    .local v0, dialogBuilder:Landroid/app/AlertDialog$Builder;
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 41
    .local v3, inflater:Landroid/view/LayoutInflater;
    const v6, 0x7f030008

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 42
    .local v4, layout:Landroid/view/View;
    const v6, 0x7f0d001d

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 43
    .local v1, dontShowAgain:Landroid/widget/CheckBox;
    invoke-static {p4}, Lcom/spritefish/camera/Util;->isEmpty(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 44
    const/16 v6, 0x8

    invoke-virtual {v1, v6}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 45
    :cond_0
    const v6, 0x7f0d0018

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 46
    .local v2, ht:Landroid/widget/TextView;
    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    const v6, 0x7f0d0017

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 48
    .local v5, tv:Landroid/widget/TextView;
    invoke-virtual {v5, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 51
    if-eqz p5, :cond_1

    .line 53
    invoke-interface {p5}, Lcom/spritefish/fastburstcamera/activities/helper/DialogButton;->getName()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/spritefish/fastburstcamera/activities/helper/DialogHelper$1;

    invoke-direct {v7, v1, p1, p4, p5}, Lcom/spritefish/fastburstcamera/activities/helper/DialogHelper$1;-><init>(Landroid/widget/CheckBox;Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;Ljava/lang/String;Lcom/spritefish/fastburstcamera/activities/helper/DialogButton;)V

    invoke-virtual {v0, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 65
    :cond_1
    if-eqz p6, :cond_2

    .line 67
    invoke-interface {p6}, Lcom/spritefish/fastburstcamera/activities/helper/DialogButton;->getName()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/spritefish/fastburstcamera/activities/helper/DialogHelper$2;

    invoke-direct {v7, v1, p1, p4, p6}, Lcom/spritefish/fastburstcamera/activities/helper/DialogHelper$2;-><init>(Landroid/widget/CheckBox;Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;Ljava/lang/String;Lcom/spritefish/fastburstcamera/activities/helper/DialogButton;)V

    invoke-virtual {v0, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 79
    :cond_2
    if-eqz p7, :cond_3

    .line 81
    invoke-interface {p7}, Lcom/spritefish/fastburstcamera/activities/helper/DialogButton;->getName()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/spritefish/fastburstcamera/activities/helper/DialogHelper$3;

    invoke-direct {v7, v1, p1, p4, p7}, Lcom/spritefish/fastburstcamera/activities/helper/DialogHelper$3;-><init>(Landroid/widget/CheckBox;Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;Ljava/lang/String;Lcom/spritefish/fastburstcamera/activities/helper/DialogButton;)V

    invoke-virtual {v0, v6, v7}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 93
    :cond_3
    return-object v0
.end method

.method public static isDialogSupressed(Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;Ljava/lang/String;)Z
    .locals 2
    .parameter "db"
    .parameter "dialogid"

    .prologue
    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "dialog_suppres_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "false"

    invoke-virtual {p0, v0, v1}, Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static setDialogSupressed(Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;Ljava/lang/String;Z)V
    .locals 2
    .parameter "db"
    .parameter "dialogid"
    .parameter "supress"

    .prologue
    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "dialog_suppres_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz p2, :cond_0

    const-string v0, "true"

    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    return-void

    .line 27
    :cond_0
    const-string v0, "false"

    goto :goto_0
.end method
