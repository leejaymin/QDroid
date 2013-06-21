.class Lcom/spritefish/fastburstcamera/activities/BurstListActivity$2;
.super Ljava/lang/Object;
.source "BurstListActivity.java"

# interfaces
.implements Lcom/spritefish/fastburstcamera/controls/RangeDialogChangeListener;


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


# direct methods
.method constructor <init>(Lcom/spritefish/fastburstcamera/activities/BurstListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/spritefish/fastburstcamera/activities/BurstListActivity$2;->this$0:Lcom/spritefish/fastburstcamera/activities/BurstListActivity;

    .line 295
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRangeChange(JJLandroid/widget/TextView;)V
    .locals 7
    .parameter "min"
    .parameter "max"
    .parameter "txtView"

    .prologue
    const-wide/16 v5, 0x1

    .line 299
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/activities/BurstListActivity$2;->this$0:Lcom/spritefish/fastburstcamera/activities/BurstListActivity;

    invoke-virtual {v0}, Lcom/spritefish/fastburstcamera/activities/BurstListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0001

    add-long v2, p3, v5

    sub-long/2addr v2, p1

    long-to-int v2, v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    add-long/2addr v5, p3

    sub-long/2addr v5, p1

    long-to-int v5, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 300
    return-void
.end method
