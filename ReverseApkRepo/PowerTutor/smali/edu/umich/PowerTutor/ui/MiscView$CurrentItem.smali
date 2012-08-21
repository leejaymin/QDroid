.class Ledu/umich/PowerTutor/ui/MiscView$CurrentItem;
.super Ledu/umich/PowerTutor/ui/MiscView$InfoItem;
.source "MiscView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ledu/umich/PowerTutor/ui/MiscView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CurrentItem"
.end annotation


# instance fields
.field final synthetic this$0:Ledu/umich/PowerTutor/ui/MiscView;


# direct methods
.method private constructor <init>(Ledu/umich/PowerTutor/ui/MiscView;)V
    .locals 1
    .parameter

    .prologue
    .line 234
    iput-object p1, p0, Ledu/umich/PowerTutor/ui/MiscView$CurrentItem;->this$0:Ledu/umich/PowerTutor/ui/MiscView;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ledu/umich/PowerTutor/ui/MiscView$InfoItem;-><init>(Ledu/umich/PowerTutor/ui/MiscView;Ledu/umich/PowerTutor/ui/MiscView$InfoItem;)V

    return-void
.end method

.method synthetic constructor <init>(Ledu/umich/PowerTutor/ui/MiscView;Ledu/umich/PowerTutor/ui/MiscView$CurrentItem;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 234
    invoke-direct {p0, p1}, Ledu/umich/PowerTutor/ui/MiscView$CurrentItem;-><init>(Ledu/umich/PowerTutor/ui/MiscView;)V

    return-void
.end method


# virtual methods
.method public available()Z
    .locals 2

    .prologue
    .line 236
    iget-object v0, p0, Ledu/umich/PowerTutor/ui/MiscView$CurrentItem;->this$0:Ledu/umich/PowerTutor/ui/MiscView;

    #getter for: Ledu/umich/PowerTutor/ui/MiscView;->uid:I
    invoke-static {v0}, Ledu/umich/PowerTutor/ui/MiscView;->access$5(Ledu/umich/PowerTutor/ui/MiscView;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Ledu/umich/PowerTutor/ui/MiscView$CurrentItem;->this$0:Ledu/umich/PowerTutor/ui/MiscView;

    #getter for: Ledu/umich/PowerTutor/ui/MiscView;->batteryStats:Ledu/umich/PowerTutor/util/BatteryStats;
    invoke-static {v0}, Ledu/umich/PowerTutor/ui/MiscView;->access$6(Ledu/umich/PowerTutor/ui/MiscView;)Ledu/umich/PowerTutor/util/BatteryStats;

    move-result-object v0

    invoke-virtual {v0}, Ledu/umich/PowerTutor/util/BatteryStats;->hasCurrent()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setupView()V
    .locals 14

    .prologue
    .line 240
    iget-object v6, p0, Ledu/umich/PowerTutor/ui/MiscView$CurrentItem;->txt:Landroid/widget/TextView;

    if-nez v6, :cond_0

    .line 258
    :goto_0
    return-void

    .line 241
    :cond_0
    iget-object v6, p0, Ledu/umich/PowerTutor/ui/MiscView$CurrentItem;->this$0:Ledu/umich/PowerTutor/ui/MiscView;

    #getter for: Ledu/umich/PowerTutor/ui/MiscView;->batteryStats:Ledu/umich/PowerTutor/util/BatteryStats;
    invoke-static {v6}, Ledu/umich/PowerTutor/ui/MiscView;->access$6(Ledu/umich/PowerTutor/ui/MiscView;)Ledu/umich/PowerTutor/util/BatteryStats;

    move-result-object v6

    invoke-virtual {v6}, Ledu/umich/PowerTutor/util/BatteryStats;->getCurrent()D

    move-result-wide v2

    .line 242
    .local v2, current:D
    const-wide/16 v6, 0x0

    cmpg-double v6, v2, v6

    if-gtz v6, :cond_2

    .line 243
    iget-object v6, p0, Ledu/umich/PowerTutor/ui/MiscView$CurrentItem;->txt:Landroid/widget/TextView;

    const-string v7, "%1$.1f mA"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    neg-double v10, v2

    const-wide v12, 0x408f400000000000L

    mul-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 254
    :cond_1
    :goto_1
    iget-object v6, p0, Ledu/umich/PowerTutor/ui/MiscView$CurrentItem;->txt:Landroid/widget/TextView;

    const/16 v7, 0x11

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setGravity(I)V

    .line 256
    iget-object v6, p0, Ledu/umich/PowerTutor/ui/MiscView$CurrentItem;->title:Landroid/widget/TextView;

    const-string v7, "Current"

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 257
    iget-object v6, p0, Ledu/umich/PowerTutor/ui/MiscView$CurrentItem;->summary:Landroid/widget/TextView;

    const-string v7, "Battery current sensor reading"

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 245
    :cond_2
    iget-object v6, p0, Ledu/umich/PowerTutor/ui/MiscView$CurrentItem;->this$0:Ledu/umich/PowerTutor/ui/MiscView;

    #getter for: Ledu/umich/PowerTutor/ui/MiscView;->batteryStats:Ledu/umich/PowerTutor/util/BatteryStats;
    invoke-static {v6}, Ledu/umich/PowerTutor/ui/MiscView;->access$6(Ledu/umich/PowerTutor/ui/MiscView;)Ledu/umich/PowerTutor/util/BatteryStats;

    move-result-object v6

    invoke-virtual {v6}, Ledu/umich/PowerTutor/util/BatteryStats;->getCapacity()D

    move-result-wide v0

    .line 246
    .local v0, cp:D
    const-wide v6, 0x3f847ae147ae147bL

    cmpg-double v6, v6, v0

    if-gtz v6, :cond_1

    const-wide v6, 0x3fefae147ae147aeL

    cmpg-double v6, v0, v6

    if-gtz v6, :cond_1

    iget-object v6, p0, Ledu/umich/PowerTutor/ui/MiscView$CurrentItem;->this$0:Ledu/umich/PowerTutor/ui/MiscView;

    #getter for: Ledu/umich/PowerTutor/ui/MiscView;->batteryStats:Ledu/umich/PowerTutor/util/BatteryStats;
    invoke-static {v6}, Ledu/umich/PowerTutor/ui/MiscView;->access$6(Ledu/umich/PowerTutor/ui/MiscView;)Ledu/umich/PowerTutor/util/BatteryStats;

    move-result-object v6

    invoke-virtual {v6}, Ledu/umich/PowerTutor/util/BatteryStats;->hasCharge()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 247
    iget-object v6, p0, Ledu/umich/PowerTutor/ui/MiscView$CurrentItem;->this$0:Ledu/umich/PowerTutor/ui/MiscView;

    #getter for: Ledu/umich/PowerTutor/ui/MiscView;->batteryStats:Ledu/umich/PowerTutor/util/BatteryStats;
    invoke-static {v6}, Ledu/umich/PowerTutor/ui/MiscView;->access$6(Ledu/umich/PowerTutor/ui/MiscView;)Ledu/umich/PowerTutor/util/BatteryStats;

    move-result-object v6

    invoke-virtual {v6}, Ledu/umich/PowerTutor/util/BatteryStats;->getCharge()D

    move-result-wide v6

    div-double/2addr v6, v0

    const-wide/high16 v8, 0x3ff0

    sub-double/2addr v8, v0

    mul-double/2addr v6, v8

    div-double/2addr v6, v2

    double-to-long v4, v6

    .line 249
    .local v4, time:J
    iget-object v6, p0, Ledu/umich/PowerTutor/ui/MiscView$CurrentItem;->txt:Landroid/widget/TextView;

    .line 250
    const-string v7, "%1$.1f mA\n(Charge time %2$d:%3$02d:%4$02d)"

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-wide v10, 0x408f400000000000L

    mul-double/2addr v10, v2

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    .line 251
    const-wide/16 v10, 0x3c

    div-long v10, v4, v10

    const-wide/16 v12, 0x3c

    div-long/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    const-wide/16 v10, 0x3c

    div-long v10, v4, v10

    const-wide/16 v12, 0x3c

    rem-long/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x3

    const-wide/16 v10, 0x3c

    rem-long v10, v4, v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v9

    .line 249
    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1
.end method
