.class Lcom/spritefish/fastburstcamera/activities/helper/TrialHelper$1;
.super Ljava/lang/Object;
.source "TrialHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spritefish/fastburstcamera/activities/helper/TrialHelper;->showDaysLeft(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$bdh:Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;

.field private final synthetic val$c:Landroid/app/Activity;

.field private final synthetic val$days:J


# direct methods
.method constructor <init>(Landroid/app/Activity;JLcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/spritefish/fastburstcamera/activities/helper/TrialHelper$1;->val$c:Landroid/app/Activity;

    iput-wide p2, p0, Lcom/spritefish/fastburstcamera/activities/helper/TrialHelper$1;->val$days:J

    iput-object p4, p0, Lcom/spritefish/fastburstcamera/activities/helper/TrialHelper$1;->val$bdh:Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/spritefish/fastburstcamera/activities/helper/TrialHelper$1;->val$c:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07005d

    new-array v4, v9, [Ljava/lang/Object;

    iget-wide v5, p0, Lcom/spritefish/fastburstcamera/activities/helper/TrialHelper$1;->val$days:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-virtual {v1, v2, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "\n\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/spritefish/fastburstcamera/activities/helper/TrialHelper$1;->val$c:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07005c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 114
    .local v3, text:Ljava/lang/String;
    iget-wide v0, p0, Lcom/spritefish/fastburstcamera/activities/helper/TrialHelper$1;->val$days:J

    const-wide/16 v4, 0x1

    cmp-long v0, v0, v4

    if-nez v0, :cond_0

    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/spritefish/fastburstcamera/activities/helper/TrialHelper$1;->val$c:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07005f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "\n\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/spritefish/fastburstcamera/activities/helper/TrialHelper$1;->val$c:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070060

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 119
    :cond_0
    iget-wide v0, p0, Lcom/spritefish/fastburstcamera/activities/helper/TrialHelper$1;->val$days:J

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-nez v0, :cond_1

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/spritefish/fastburstcamera/activities/helper/TrialHelper$1;->val$c:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070061

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "\n\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/spritefish/fastburstcamera/activities/helper/TrialHelper$1;->val$c:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070062

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 126
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/spritefish/fastburstcamera/activities/helper/TrialHelper$1;->val$c:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07005e

    new-array v4, v9, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/spritefish/fastburstcamera/activities/helper/TrialHelper$1;->val$bdh:Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;

    invoke-virtual {v5}, Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;->getHighestPictureNumber()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-virtual {v1, v2, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 128
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/activities/helper/TrialHelper$1;->val$c:Landroid/app/Activity;

    iget-object v1, p0, Lcom/spritefish/fastburstcamera/activities/helper/TrialHelper$1;->val$bdh:Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;

    iget-object v2, p0, Lcom/spritefish/fastburstcamera/activities/helper/TrialHelper$1;->val$c:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f070063

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v4, ""

    new-instance v5, Lcom/spritefish/fastburstcamera/activities/helper/TrialHelper$1$1;

    iget-object v6, p0, Lcom/spritefish/fastburstcamera/activities/helper/TrialHelper$1;->val$c:Landroid/app/Activity;

    invoke-direct {v5, p0, v6}, Lcom/spritefish/fastburstcamera/activities/helper/TrialHelper$1$1;-><init>(Lcom/spritefish/fastburstcamera/activities/helper/TrialHelper$1;Landroid/app/Activity;)V

    .line 140
    new-instance v6, Lcom/spritefish/fastburstcamera/activities/helper/TrialHelper$1$2;

    iget-object v8, p0, Lcom/spritefish/fastburstcamera/activities/helper/TrialHelper$1;->val$c:Landroid/app/Activity;

    invoke-direct {v6, p0, v8}, Lcom/spritefish/fastburstcamera/activities/helper/TrialHelper$1$2;-><init>(Lcom/spritefish/fastburstcamera/activities/helper/TrialHelper$1;Landroid/app/Activity;)V

    .line 128
    invoke-static/range {v0 .. v6}, Lcom/spritefish/fastburstcamera/activities/helper/DialogHelper;->createCustomDialogBuilder(Landroid/content/Context;Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/spritefish/fastburstcamera/activities/helper/DialogButton;Lcom/spritefish/fastburstcamera/activities/helper/DialogButton;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    .line 157
    .local v7, dialog:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 158
    return-void
.end method
