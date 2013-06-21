.class Lcom/spritefish/fastburstcamera/activities/BurstListActivity$3$1;
.super Ljava/lang/Object;
.source "BurstListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spritefish/fastburstcamera/activities/BurstListActivity$3;->onResult(ZJJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/spritefish/fastburstcamera/activities/BurstListActivity$3;

.field private final synthetic val$burst:Lcom/spritefish/fastburstcamera/db/dao/Burst;

.field private final synthetic val$max:J

.field private final synthetic val$min:J


# direct methods
.method constructor <init>(Lcom/spritefish/fastburstcamera/activities/BurstListActivity$3;Lcom/spritefish/fastburstcamera/db/dao/Burst;JJ)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/spritefish/fastburstcamera/activities/BurstListActivity$3$1;->this$1:Lcom/spritefish/fastburstcamera/activities/BurstListActivity$3;

    iput-object p2, p0, Lcom/spritefish/fastburstcamera/activities/BurstListActivity$3$1;->val$burst:Lcom/spritefish/fastburstcamera/db/dao/Burst;

    iput-wide p3, p0, Lcom/spritefish/fastburstcamera/activities/BurstListActivity$3$1;->val$min:J

    iput-wide p5, p0, Lcom/spritefish/fastburstcamera/activities/BurstListActivity$3$1;->val$max:J

    .line 311
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 313
    new-instance v0, Lcom/spritefish/fastburstcamera/activities/helper/CleanupHelper;

    iget-object v3, p0, Lcom/spritefish/fastburstcamera/activities/BurstListActivity$3$1;->this$1:Lcom/spritefish/fastburstcamera/activities/BurstListActivity$3;

    #getter for: Lcom/spritefish/fastburstcamera/activities/BurstListActivity$3;->this$0:Lcom/spritefish/fastburstcamera/activities/BurstListActivity;
    invoke-static {v3}, Lcom/spritefish/fastburstcamera/activities/BurstListActivity$3;->access$0(Lcom/spritefish/fastburstcamera/activities/BurstListActivity$3;)Lcom/spritefish/fastburstcamera/activities/BurstListActivity;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/spritefish/fastburstcamera/activities/helper/CleanupHelper;-><init>(Landroid/app/Activity;)V

    .line 314
    .local v0, cup:Lcom/spritefish/fastburstcamera/activities/helper/CleanupHelper;
    iget-object v3, p0, Lcom/spritefish/fastburstcamera/activities/BurstListActivity$3$1;->this$1:Lcom/spritefish/fastburstcamera/activities/BurstListActivity$3;

    #getter for: Lcom/spritefish/fastburstcamera/activities/BurstListActivity$3;->this$0:Lcom/spritefish/fastburstcamera/activities/BurstListActivity;
    invoke-static {v3}, Lcom/spritefish/fastburstcamera/activities/BurstListActivity$3;->access$0(Lcom/spritefish/fastburstcamera/activities/BurstListActivity$3;)Lcom/spritefish/fastburstcamera/activities/BurstListActivity;

    move-result-object v3

    #getter for: Lcom/spritefish/fastburstcamera/activities/BurstListActivity;->dbHelper:Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;
    invoke-static {v3}, Lcom/spritefish/fastburstcamera/activities/BurstListActivity;->access$2(Lcom/spritefish/fastburstcamera/activities/BurstListActivity;)Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;

    move-result-object v3

    iget-object v4, p0, Lcom/spritefish/fastburstcamera/activities/BurstListActivity$3$1;->val$burst:Lcom/spritefish/fastburstcamera/db/dao/Burst;

    invoke-virtual {v4}, Lcom/spritefish/fastburstcamera/db/dao/Burst;->getId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;->getPicturesInBurst(J)Ljava/util/List;

    move-result-object v2

    .line 315
    .local v2, pics:Ljava/util/List;,"Ljava/util/List<Lcom/spritefish/fastburstcamera/db/dao/Picture;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lt v1, v3, :cond_1

    .line 320
    iget-object v3, p0, Lcom/spritefish/fastburstcamera/activities/BurstListActivity$3$1;->this$1:Lcom/spritefish/fastburstcamera/activities/BurstListActivity$3;

    #getter for: Lcom/spritefish/fastburstcamera/activities/BurstListActivity$3;->this$0:Lcom/spritefish/fastburstcamera/activities/BurstListActivity;
    invoke-static {v3}, Lcom/spritefish/fastburstcamera/activities/BurstListActivity$3;->access$0(Lcom/spritefish/fastburstcamera/activities/BurstListActivity$3;)Lcom/spritefish/fastburstcamera/activities/BurstListActivity;

    move-result-object v3

    #getter for: Lcom/spritefish/fastburstcamera/activities/BurstListActivity;->dbHelper:Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;
    invoke-static {v3}, Lcom/spritefish/fastburstcamera/activities/BurstListActivity;->access$2(Lcom/spritefish/fastburstcamera/activities/BurstListActivity;)Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;

    move-result-object v3

    iget-object v4, p0, Lcom/spritefish/fastburstcamera/activities/BurstListActivity$3$1;->val$burst:Lcom/spritefish/fastburstcamera/db/dao/Burst;

    invoke-virtual {v4}, Lcom/spritefish/fastburstcamera/db/dao/Burst;->getId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/spritefish/fastburstcamera/db/dao/BurstDatabaseHelper;->getPicturesInBurst(J)Ljava/util/List;

    move-result-object v2

    .line 321
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_0

    .line 322
    iget-object v3, p0, Lcom/spritefish/fastburstcamera/activities/BurstListActivity$3$1;->val$burst:Lcom/spritefish/fastburstcamera/db/dao/Burst;

    invoke-virtual {v3}, Lcom/spritefish/fastburstcamera/db/dao/Burst;->getId()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/spritefish/fastburstcamera/activities/helper/CleanupHelper;->removeBurst(J)V

    .line 323
    :cond_0
    iget-object v3, p0, Lcom/spritefish/fastburstcamera/activities/BurstListActivity$3$1;->this$1:Lcom/spritefish/fastburstcamera/activities/BurstListActivity$3;

    #getter for: Lcom/spritefish/fastburstcamera/activities/BurstListActivity$3;->this$0:Lcom/spritefish/fastburstcamera/activities/BurstListActivity;
    invoke-static {v3}, Lcom/spritefish/fastburstcamera/activities/BurstListActivity$3;->access$0(Lcom/spritefish/fastburstcamera/activities/BurstListActivity$3;)Lcom/spritefish/fastburstcamera/activities/BurstListActivity;

    move-result-object v3

    #calls: Lcom/spritefish/fastburstcamera/activities/BurstListActivity;->initUi()V
    invoke-static {v3}, Lcom/spritefish/fastburstcamera/activities/BurstListActivity;->access$3(Lcom/spritefish/fastburstcamera/activities/BurstListActivity;)V

    .line 325
    return-void

    .line 317
    :cond_1
    int-to-long v3, v1

    iget-wide v5, p0, Lcom/spritefish/fastburstcamera/activities/BurstListActivity$3$1;->val$min:J

    cmp-long v3, v3, v5

    if-ltz v3, :cond_2

    int-to-long v3, v1

    iget-wide v5, p0, Lcom/spritefish/fastburstcamera/activities/BurstListActivity$3$1;->val$max:J

    cmp-long v3, v3, v5

    if-gtz v3, :cond_2

    .line 318
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/spritefish/fastburstcamera/db/dao/Picture;

    invoke-virtual {v3}, Lcom/spritefish/fastburstcamera/db/dao/Picture;->getId()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/spritefish/fastburstcamera/activities/helper/CleanupHelper;->removePicture(J)V

    .line 315
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
