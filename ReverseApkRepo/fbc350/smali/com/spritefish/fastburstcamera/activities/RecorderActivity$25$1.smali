.class Lcom/spritefish/fastburstcamera/activities/RecorderActivity$25$1;
.super Ljava/lang/Object;
.source "RecorderActivity.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spritefish/fastburstcamera/activities/RecorderActivity$25;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/spritefish/fastburstcamera/activities/RecorderActivity$25;

.field private final synthetic val$before:Lcom/spritefish/fastburstcamera/activities/RecorderActivity$Shootmode;


# direct methods
.method constructor <init>(Lcom/spritefish/fastburstcamera/activities/RecorderActivity$25;Lcom/spritefish/fastburstcamera/activities/RecorderActivity$Shootmode;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$25$1;->this$1:Lcom/spritefish/fastburstcamera/activities/RecorderActivity$25;

    iput-object p2, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$25$1;->val$before:Lcom/spritefish/fastburstcamera/activities/RecorderActivity$Shootmode;

    .line 1526
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/spritefish/fastburstcamera/activities/RecorderActivity$25$1;)Lcom/spritefish/fastburstcamera/activities/RecorderActivity$25;
    .locals 1
    .parameter

    .prologue
    .line 1526
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$25$1;->this$1:Lcom/spritefish/fastburstcamera/activities/RecorderActivity$25;

    return-object v0
.end method


# virtual methods
.method public onDismiss()V
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 1530
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$25$1;->val$before:Lcom/spritefish/fastburstcamera/activities/RecorderActivity$Shootmode;

    iget-object v1, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$25$1;->this$1:Lcom/spritefish/fastburstcamera/activities/RecorderActivity$25;

    #getter for: Lcom/spritefish/fastburstcamera/activities/RecorderActivity$25;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;
    invoke-static {v1}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$25;->access$0(Lcom/spritefish/fastburstcamera/activities/RecorderActivity$25;)Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    move-result-object v1

    iget-object v1, v1, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->shootmode:Lcom/spritefish/fastburstcamera/activities/RecorderActivity$Shootmode;

    if-eq v0, v1, :cond_1

    .line 1533
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$25$1;->this$1:Lcom/spritefish/fastburstcamera/activities/RecorderActivity$25;

    #getter for: Lcom/spritefish/fastburstcamera/activities/RecorderActivity$25;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;
    invoke-static {v0}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$25;->access$0(Lcom/spritefish/fastburstcamera/activities/RecorderActivity$25;)Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    move-result-object v0

    iget-object v0, v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->shootmode:Lcom/spritefish/fastburstcamera/activities/RecorderActivity$Shootmode;

    sget-object v1, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$Shootmode;->MOTION:Lcom/spritefish/fastburstcamera/activities/RecorderActivity$Shootmode;

    if-ne v0, v1, :cond_0

    .line 1535
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$25$1;->this$1:Lcom/spritefish/fastburstcamera/activities/RecorderActivity$25;

    #getter for: Lcom/spritefish/fastburstcamera/activities/RecorderActivity$25;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;
    invoke-static {v0}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$25;->access$0(Lcom/spritefish/fastburstcamera/activities/RecorderActivity$25;)Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$25$1;->this$1:Lcom/spritefish/fastburstcamera/activities/RecorderActivity$25;

    #getter for: Lcom/spritefish/fastburstcamera/activities/RecorderActivity$25;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;
    invoke-static {v1}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$25;->access$0(Lcom/spritefish/fastburstcamera/activities/RecorderActivity$25;)Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    move-result-object v1

    iget-object v1, v1, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->dbHelper:Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;

    iget-object v2, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$25$1;->this$1:Lcom/spritefish/fastburstcamera/activities/RecorderActivity$25;

    #getter for: Lcom/spritefish/fastburstcamera/activities/RecorderActivity$25;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;
    invoke-static {v2}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$25;->access$0(Lcom/spritefish/fastburstcamera/activities/RecorderActivity$25;)Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    move-result-object v2

    const v3, 0x7f070020

    invoke-virtual {v2, v3}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$25$1;->this$1:Lcom/spritefish/fastburstcamera/activities/RecorderActivity$25;

    #getter for: Lcom/spritefish/fastburstcamera/activities/RecorderActivity$25;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;
    invoke-static {v3}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$25;->access$0(Lcom/spritefish/fastburstcamera/activities/RecorderActivity$25;)Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    move-result-object v3

    const v4, 0x7f070021

    invoke-virtual {v3, v4}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "motiontriggerhelp"

    new-instance v5, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$25$1$1;

    invoke-direct {v5, p0}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$25$1$1;-><init>(Lcom/spritefish/fastburstcamera/activities/RecorderActivity$25$1;)V

    invoke-static/range {v0 .. v6}, Lcom/spritefish/fastburstcamera/activities/helper/DialogHelper;->createCustomDialogBuilder(Landroid/content/Context;Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/spritefish/fastburstcamera/activities/helper/DialogButton;Lcom/spritefish/fastburstcamera/activities/helper/DialogButton;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    .line 1548
    .local v7, motionHelper:Landroid/app/AlertDialog$Builder;
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$25$1;->this$1:Lcom/spritefish/fastburstcamera/activities/RecorderActivity$25;

    #getter for: Lcom/spritefish/fastburstcamera/activities/RecorderActivity$25;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;
    invoke-static {v0}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$25;->access$0(Lcom/spritefish/fastburstcamera/activities/RecorderActivity$25;)Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    move-result-object v0

    iget-object v0, v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->dbHelper:Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;

    const-string v1, "motiontriggerhelp"

    invoke-static {v0, v1}, Lcom/spritefish/fastburstcamera/activities/helper/DialogHelper;->isDialogSupressed(Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1549
    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1553
    .end local v7           #motionHelper:Landroid/app/AlertDialog$Builder;
    :cond_0
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$25$1;->this$1:Lcom/spritefish/fastburstcamera/activities/RecorderActivity$25;

    #getter for: Lcom/spritefish/fastburstcamera/activities/RecorderActivity$25;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;
    invoke-static {v0}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$25;->access$0(Lcom/spritefish/fastburstcamera/activities/RecorderActivity$25;)Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    move-result-object v0

    iget-object v0, v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->shootmode:Lcom/spritefish/fastburstcamera/activities/RecorderActivity$Shootmode;

    sget-object v1, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$Shootmode;->PRESHOT:Lcom/spritefish/fastburstcamera/activities/RecorderActivity$Shootmode;

    if-ne v0, v1, :cond_1

    .line 1555
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$25$1;->this$1:Lcom/spritefish/fastburstcamera/activities/RecorderActivity$25;

    #getter for: Lcom/spritefish/fastburstcamera/activities/RecorderActivity$25;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;
    invoke-static {v0}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$25;->access$0(Lcom/spritefish/fastburstcamera/activities/RecorderActivity$25;)Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$25$1;->this$1:Lcom/spritefish/fastburstcamera/activities/RecorderActivity$25;

    #getter for: Lcom/spritefish/fastburstcamera/activities/RecorderActivity$25;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;
    invoke-static {v1}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$25;->access$0(Lcom/spritefish/fastburstcamera/activities/RecorderActivity$25;)Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    move-result-object v1

    iget-object v1, v1, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->dbHelper:Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;

    iget-object v2, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$25$1;->this$1:Lcom/spritefish/fastburstcamera/activities/RecorderActivity$25;

    #getter for: Lcom/spritefish/fastburstcamera/activities/RecorderActivity$25;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;
    invoke-static {v2}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$25;->access$0(Lcom/spritefish/fastburstcamera/activities/RecorderActivity$25;)Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    move-result-object v2

    const v3, 0x7f070022

    invoke-virtual {v2, v3}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$25$1;->this$1:Lcom/spritefish/fastburstcamera/activities/RecorderActivity$25;

    #getter for: Lcom/spritefish/fastburstcamera/activities/RecorderActivity$25;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;
    invoke-static {v3}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$25;->access$0(Lcom/spritefish/fastburstcamera/activities/RecorderActivity$25;)Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    move-result-object v3

    const v4, 0x7f070023

    invoke-virtual {v3, v4}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "preshothelp"

    new-instance v5, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$25$1$2;

    invoke-direct {v5, p0}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$25$1$2;-><init>(Lcom/spritefish/fastburstcamera/activities/RecorderActivity$25$1;)V

    invoke-static/range {v0 .. v6}, Lcom/spritefish/fastburstcamera/activities/helper/DialogHelper;->createCustomDialogBuilder(Landroid/content/Context;Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/spritefish/fastburstcamera/activities/helper/DialogButton;Lcom/spritefish/fastburstcamera/activities/helper/DialogButton;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    .line 1569
    .restart local v7       #motionHelper:Landroid/app/AlertDialog$Builder;
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$25$1;->this$1:Lcom/spritefish/fastburstcamera/activities/RecorderActivity$25;

    #getter for: Lcom/spritefish/fastburstcamera/activities/RecorderActivity$25;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;
    invoke-static {v0}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$25;->access$0(Lcom/spritefish/fastburstcamera/activities/RecorderActivity$25;)Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    move-result-object v0

    iget-object v0, v0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->dbHelper:Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;

    const-string v1, "preshothelp"

    invoke-static {v0, v1}, Lcom/spritefish/fastburstcamera/activities/helper/DialogHelper;->isDialogSupressed(Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1570
    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1574
    .end local v7           #motionHelper:Landroid/app/AlertDialog$Builder;
    :cond_1
    return-void
.end method
