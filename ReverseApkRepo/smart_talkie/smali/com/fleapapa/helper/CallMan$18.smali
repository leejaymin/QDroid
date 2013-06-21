.class Lcom/fleapapa/helper/CallMan$18;
.super Ljava/lang/Object;
.source "CallMan.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fleapapa/helper/CallMan;->gotoCall(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fleapapa/helper/CallMan;

.field private final synthetic val$call:Lcom/fleapapa/helper/CallPapa$Call;


# direct methods
.method constructor <init>(Lcom/fleapapa/helper/CallMan;Lcom/fleapapa/helper/CallPapa$Call;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fleapapa/helper/CallMan$18;->this$0:Lcom/fleapapa/helper/CallMan;

    iput-object p2, p0, Lcom/fleapapa/helper/CallMan$18;->val$call:Lcom/fleapapa/helper/CallPapa$Call;

    .line 558
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 11
    .parameter "v"
    .parameter "ev"

    .prologue
    .line 563
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 564
    .local v3, now:J
    invoke-static {}, Lcom/fleapapa/util/My;->isEmulator()Z

    move-result v1

    .line 565
    .local v1, emulated:Z
    sget-wide v5, Lcom/fleapapa/util/My;->tBootstrp:J

    sub-long v5, v3, v5

    if-eqz v1, :cond_1

    const/4 v7, 0x0

    :goto_0
    const v8, 0x5265c00

    mul-int/2addr v7, v8

    int-to-long v7, v7

    cmp-long v5, v5, v7

    if-lez v5, :cond_3

    .line 566
    sget-wide v5, Lcom/fleapapa/util/My;->tLastClick:J

    sub-long v5, v3, v5

    if-eqz v1, :cond_2

    const/4 v7, 0x1

    :goto_1
    const v8, 0x36ee80

    mul-int/2addr v7, v8

    int-to-long v7, v7

    cmp-long v5, v5, v7

    if-lez v5, :cond_3

    .line 567
    sget-object v5, Lcom/fleapapa/util/My;->papa:Lcom/fleapapa/helper/CallPapa;

    iget-object v5, v5, Lcom/fleapapa/helper/CallPapa;->acall:Lcom/fleapapa/helper/CallPapa$Call;

    invoke-virtual {v5}, Lcom/fleapapa/helper/CallPapa$Call;->numMyBursts()I

    move-result v5

    int-to-long v5, v5

    const-wide/16 v7, 0x4

    const-wide/16 v9, 0x8

    rem-long v9, v3, v9

    add-long/2addr v7, v9

    cmp-long v5, v5, v7

    if-lez v5, :cond_3

    .line 568
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "tLastClick"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    sput-wide v3, Lcom/fleapapa/util/My;->tLastClick:J

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v5}, Lcom/fleapapa/util/MyUtil;->putPreference([Ljava/lang/String;)V

    .line 569
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    if-nez v5, :cond_0

    .line 571
    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v2

    .line 572
    .local v2, ev2:Landroid/view/MotionEvent;
    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Landroid/view/MotionEvent;->setAction(I)V

    .line 574
    iget-object v5, p0, Lcom/fleapapa/helper/CallMan$18;->this$0:Lcom/fleapapa/helper/CallMan;

    iget-object v5, v5, Lcom/fleapapa/helper/CallMan;->admob:Lcom/admob/android/ads/AdView;

    invoke-virtual {v5, p2}, Lcom/admob/android/ads/AdView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 575
    iget-object v5, p0, Lcom/fleapapa/helper/CallMan$18;->this$0:Lcom/fleapapa/helper/CallMan;

    iget-object v5, v5, Lcom/fleapapa/helper/CallMan;->admob:Lcom/admob/android/ads/AdView;

    invoke-virtual {v5, v2}, Lcom/admob/android/ads/AdView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 577
    .end local v2           #ev2:Landroid/view/MotionEvent;
    :cond_0
    const/4 v5, 0x1

    .line 600
    :goto_2
    return v5

    .line 565
    :cond_1
    const/4 v7, 0x7

    goto :goto_0

    .line 566
    :cond_2
    const/4 v7, 0x3

    goto :goto_1

    .line 582
    :cond_3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 600
    :goto_3
    const/4 v5, 0x0

    goto :goto_2

    .line 584
    :pswitch_0
    iget-object v5, p0, Lcom/fleapapa/helper/CallMan$18;->this$0:Lcom/fleapapa/helper/CallMan;

    iget-object v5, v5, Lcom/fleapapa/helper/CallMan;->tview:Landroid/widget/EditText;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setVisibility(I)V

    .line 585
    iget-object v5, p0, Lcom/fleapapa/helper/CallMan$18;->this$0:Lcom/fleapapa/helper/CallMan;

    iget-object v5, v5, Lcom/fleapapa/helper/CallMan;->mview:Lcom/google/android/maps/MapView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/google/android/maps/MapView;->setVisibility(I)V

    .line 586
    iget-object v5, p0, Lcom/fleapapa/helper/CallMan$18;->val$call:Lcom/fleapapa/helper/CallPapa$Call;

    invoke-virtual {v5}, Lcom/fleapapa/helper/CallPapa$Call;->startRecorder()V

    .line 587
    iget-object v5, p0, Lcom/fleapapa/helper/CallMan$18;->this$0:Lcom/fleapapa/helper/CallMan;

    invoke-virtual {v5}, Lcom/fleapapa/helper/CallMan;->startCamera()V

    goto :goto_3

    .line 590
    :pswitch_1
    iget-object v5, p0, Lcom/fleapapa/helper/CallMan$18;->this$0:Lcom/fleapapa/helper/CallMan;

    iget-object v5, v5, Lcom/fleapapa/helper/CallMan;->tview:Landroid/widget/EditText;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setVisibility(I)V

    .line 591
    iget-object v5, p0, Lcom/fleapapa/helper/CallMan$18;->this$0:Lcom/fleapapa/helper/CallMan;

    iget-object v5, v5, Lcom/fleapapa/helper/CallMan;->mview:Lcom/google/android/maps/MapView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Lcom/google/android/maps/MapView;->setVisibility(I)V

    .line 592
    iget-object v5, p0, Lcom/fleapapa/helper/CallMan$18;->this$0:Lcom/fleapapa/helper/CallMan;

    invoke-virtual {v5}, Lcom/fleapapa/helper/CallMan;->stopCamera()V

    .line 593
    iget-object v5, p0, Lcom/fleapapa/helper/CallMan$18;->val$call:Lcom/fleapapa/helper/CallPapa$Call;

    invoke-virtual {v5}, Lcom/fleapapa/helper/CallPapa$Call;->stopRecorder()Lcom/fleapapa/helper/CallPapa$Burst;

    move-result-object v0

    .line 595
    .local v0, burst:Lcom/fleapapa/helper/CallPapa$Burst;
    if-eqz v0, :cond_4

    iget-object v5, p0, Lcom/fleapapa/helper/CallMan$18;->this$0:Lcom/fleapapa/helper/CallMan;

    invoke-virtual {v5, v0}, Lcom/fleapapa/helper/CallMan;->delayRxReport(Lcom/fleapapa/helper/CallPapa$Burst;)V

    .line 597
    :cond_4
    invoke-static {}, Ljava/lang/System;->gc()V

    goto :goto_3

    .line 582
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
