.class Lcom/spritefish/fastburstcamera/activities/BurstListActivity$3;
.super Ljava/lang/Object;
.source "BurstListActivity.java"

# interfaces
.implements Lcom/spritefish/fastburstcamera/controls/RangeDialogResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spritefish/fastburstcamera/activities/BurstListActivity;->onContextItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/spritefish/fastburstcamera/activities/BurstListActivity;

.field private final synthetic val$burst:Lcom/spritefish/fastburstcamera/db/dao/Burst;


# direct methods
.method constructor <init>(Lcom/spritefish/fastburstcamera/activities/BurstListActivity;Lcom/spritefish/fastburstcamera/db/dao/Burst;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/spritefish/fastburstcamera/activities/BurstListActivity$3;->this$0:Lcom/spritefish/fastburstcamera/activities/BurstListActivity;

    iput-object p2, p0, Lcom/spritefish/fastburstcamera/activities/BurstListActivity$3;->val$burst:Lcom/spritefish/fastburstcamera/db/dao/Burst;

    .line 301
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/spritefish/fastburstcamera/activities/BurstListActivity$3;)Lcom/spritefish/fastburstcamera/activities/BurstListActivity;
    .locals 1
    .parameter

    .prologue
    .line 301
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/activities/BurstListActivity$3;->this$0:Lcom/spritefish/fastburstcamera/activities/BurstListActivity;

    return-object v0
.end method


# virtual methods
.method public onResult(ZJJ)V
    .locals 9
    .parameter "ok"
    .parameter "min"
    .parameter "max"

    .prologue
    const-wide/16 v6, 0x1

    .line 306
    if-eqz p1, :cond_0

    .line 308
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/spritefish/fastburstcamera/activities/BurstListActivity$3;->this$0:Lcom/spritefish/fastburstcamera/activities/BurstListActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 310
    iget-object v1, p0, Lcom/spritefish/fastburstcamera/activities/BurstListActivity$3;->this$0:Lcom/spritefish/fastburstcamera/activities/BurstListActivity;

    invoke-virtual {v1}, Lcom/spritefish/fastburstcamera/activities/BurstListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0002

    add-long v3, p4, v6

    sub-long/2addr v3, p2

    long-to-int v3, v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    add-long/2addr v6, p4

    sub-long/2addr v6, p2

    long-to-int v6, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    .line 311
    const v8, 0x7f070037

    new-instance v0, Lcom/spritefish/fastburstcamera/activities/BurstListActivity$3$1;

    iget-object v2, p0, Lcom/spritefish/fastburstcamera/activities/BurstListActivity$3;->val$burst:Lcom/spritefish/fastburstcamera/db/dao/Burst;

    move-object v1, p0

    move-wide v3, p2

    move-wide v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/spritefish/fastburstcamera/activities/BurstListActivity$3$1;-><init>(Lcom/spritefish/fastburstcamera/activities/BurstListActivity$3;Lcom/spritefish/fastburstcamera/db/dao/Burst;JJ)V

    invoke-virtual {v7, v8, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 327
    const v1, 0x7f070038

    new-instance v2, Lcom/spritefish/fastburstcamera/activities/BurstListActivity$3$2;

    invoke-direct {v2, p0}, Lcom/spritefish/fastburstcamera/activities/BurstListActivity$3$2;-><init>(Lcom/spritefish/fastburstcamera/activities/BurstListActivity$3;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 333
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 336
    :cond_0
    return-void
.end method
