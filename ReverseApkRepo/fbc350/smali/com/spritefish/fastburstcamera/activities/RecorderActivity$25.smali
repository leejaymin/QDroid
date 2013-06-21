.class Lcom/spritefish/fastburstcamera/activities/RecorderActivity$25;
.super Ljava/lang/Object;
.source "RecorderActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->initUiControls()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

.field private final synthetic val$settingsBar:Lcom/spritefish/fastburstcamera/controls/SettingsActionBar;


# direct methods
.method constructor <init>(Lcom/spritefish/fastburstcamera/activities/RecorderActivity;Lcom/spritefish/fastburstcamera/controls/SettingsActionBar;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$25;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    iput-object p2, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$25;->val$settingsBar:Lcom/spritefish/fastburstcamera/controls/SettingsActionBar;

    .line 1504
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/spritefish/fastburstcamera/activities/RecorderActivity$25;)Lcom/spritefish/fastburstcamera/activities/RecorderActivity;
    .locals 1
    .parameter

    .prologue
    .line 1504
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$25;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 1508
    iget-object v2, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$25;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    iget-object v2, v2, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->recording:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lcom/spritefish/fastburstcamera/activities/RecordMode;->PRESHOT:Lcom/spritefish/fastburstcamera/activities/RecordMode;

    if-ne v2, v3, :cond_0

    .line 1510
    iget-object v2, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$25;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    #calls: Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->cancelPreshot()V
    invoke-static {v2}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->access$27(Lcom/spritefish/fastburstcamera/activities/RecorderActivity;)V

    .line 1511
    iget-object v2, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$25;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->stopPrerecording(ZZ)V

    .line 1514
    :cond_0
    iget-object v2, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$25;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    iget-object v2, v2, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->recording:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lcom/spritefish/fastburstcamera/activities/RecordMode;->MOTION:Lcom/spritefish/fastburstcamera/activities/RecordMode;

    if-ne v2, v3, :cond_1

    .line 1516
    iget-object v2, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$25;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    iget-object v2, v2, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->recording:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v3, Lcom/spritefish/fastburstcamera/activities/RecordMode;->NONE:Lcom/spritefish/fastburstcamera/activities/RecordMode;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 1517
    iget-object v2, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$25;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    #getter for: Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->snapButton:Lcom/spritefish/fastburstcamera/controls/GlyphImageButton;
    invoke-static {v2}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->access$28(Lcom/spritefish/fastburstcamera/activities/RecorderActivity;)Lcom/spritefish/fastburstcamera/controls/GlyphImageButton;

    move-result-object v2

    invoke-virtual {v2}, Lcom/spritefish/fastburstcamera/controls/GlyphImageButton;->stopFlashTimer()V

    .line 1519
    :cond_1
    new-instance v1, Lcom/spritefish/fastburstcamera/controls/QuickAction;

    invoke-direct {v1, p1}, Lcom/spritefish/fastburstcamera/controls/QuickAction;-><init>(Landroid/view/View;)V

    .line 1521
    .local v1, qa:Lcom/spritefish/fastburstcamera/controls/QuickAction;
    iget-object v2, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$25;->val$settingsBar:Lcom/spritefish/fastburstcamera/controls/SettingsActionBar;

    invoke-virtual {v1, v2}, Lcom/spritefish/fastburstcamera/controls/QuickAction;->addActionItem(Lcom/spritefish/fastburstcamera/controls/ActionItem;)V

    .line 1522
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/spritefish/fastburstcamera/controls/QuickAction;->setAnimStyle(I)V

    .line 1523
    iget-object v2, p0, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$25;->this$0:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    iget-object v0, v2, Lcom/spritefish/fastburstcamera/activities/RecorderActivity;->shootmode:Lcom/spritefish/fastburstcamera/activities/RecorderActivity$Shootmode;

    .line 1525
    .local v0, before:Lcom/spritefish/fastburstcamera/activities/RecorderActivity$Shootmode;
    invoke-virtual {v1}, Lcom/spritefish/fastburstcamera/controls/QuickAction;->show()V

    .line 1526
    new-instance v2, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$25$1;

    invoke-direct {v2, p0, v0}, Lcom/spritefish/fastburstcamera/activities/RecorderActivity$25$1;-><init>(Lcom/spritefish/fastburstcamera/activities/RecorderActivity$25;Lcom/spritefish/fastburstcamera/activities/RecorderActivity$Shootmode;)V

    invoke-virtual {v1, v2}, Lcom/spritefish/fastburstcamera/controls/QuickAction;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 1577
    return-void
.end method
