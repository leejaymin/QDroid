.class Lcom/spritefish/fastburstcamera/activities/helper/DialogHelper$3;
.super Ljava/lang/Object;
.source "DialogHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spritefish/fastburstcamera/activities/helper/DialogHelper;->createCustomDialogBuilder(Landroid/content/Context;Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/spritefish/fastburstcamera/activities/helper/DialogButton;Lcom/spritefish/fastburstcamera/activities/helper/DialogButton;Lcom/spritefish/fastburstcamera/activities/helper/DialogButton;)Landroid/app/AlertDialog$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$db:Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;

.field private final synthetic val$dialogid:Ljava/lang/String;

.field private final synthetic val$dontShowAgain:Landroid/widget/CheckBox;

.field private final synthetic val$neutral:Lcom/spritefish/fastburstcamera/activities/helper/DialogButton;


# direct methods
.method constructor <init>(Landroid/widget/CheckBox;Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;Ljava/lang/String;Lcom/spritefish/fastburstcamera/activities/helper/DialogButton;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/spritefish/fastburstcamera/activities/helper/DialogHelper$3;->val$dontShowAgain:Landroid/widget/CheckBox;

    iput-object p2, p0, Lcom/spritefish/fastburstcamera/activities/helper/DialogHelper$3;->val$db:Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;

    iput-object p3, p0, Lcom/spritefish/fastburstcamera/activities/helper/DialogHelper$3;->val$dialogid:Ljava/lang/String;

    iput-object p4, p0, Lcom/spritefish/fastburstcamera/activities/helper/DialogHelper$3;->val$neutral:Lcom/spritefish/fastburstcamera/activities/helper/DialogButton;

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/activities/helper/DialogHelper$3;->val$dontShowAgain:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/activities/helper/DialogHelper$3;->val$db:Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;

    iget-object v1, p0, Lcom/spritefish/fastburstcamera/activities/helper/DialogHelper$3;->val$dialogid:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/spritefish/fastburstcamera/activities/helper/DialogHelper;->setDialogSupressed(Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;Ljava/lang/String;Z)V

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/activities/helper/DialogHelper$3;->val$neutral:Lcom/spritefish/fastburstcamera/activities/helper/DialogButton;

    invoke-interface {v0}, Lcom/spritefish/fastburstcamera/activities/helper/DialogButton;->action()V

    .line 89
    return-void
.end method
