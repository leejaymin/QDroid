.class Ledu/umich/PowerTutor/ui/MiscView$VoltageItem;
.super Ledu/umich/PowerTutor/ui/MiscView$InfoItem;
.source "MiscView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ledu/umich/PowerTutor/ui/MiscView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VoltageItem"
.end annotation


# instance fields
.field final synthetic this$0:Ledu/umich/PowerTutor/ui/MiscView;


# direct methods
.method private constructor <init>(Ledu/umich/PowerTutor/ui/MiscView;)V
    .locals 1
    .parameter

    .prologue
    .line 374
    iput-object p1, p0, Ledu/umich/PowerTutor/ui/MiscView$VoltageItem;->this$0:Ledu/umich/PowerTutor/ui/MiscView;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ledu/umich/PowerTutor/ui/MiscView$InfoItem;-><init>(Ledu/umich/PowerTutor/ui/MiscView;Ledu/umich/PowerTutor/ui/MiscView$InfoItem;)V

    return-void
.end method

.method synthetic constructor <init>(Ledu/umich/PowerTutor/ui/MiscView;Ledu/umich/PowerTutor/ui/MiscView$VoltageItem;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 374
    invoke-direct {p0, p1}, Ledu/umich/PowerTutor/ui/MiscView$VoltageItem;-><init>(Ledu/umich/PowerTutor/ui/MiscView;)V

    return-void
.end method


# virtual methods
.method public available()Z
    .locals 2

    .prologue
    .line 376
    iget-object v0, p0, Ledu/umich/PowerTutor/ui/MiscView$VoltageItem;->this$0:Ledu/umich/PowerTutor/ui/MiscView;

    #getter for: Ledu/umich/PowerTutor/ui/MiscView;->uid:I
    invoke-static {v0}, Ledu/umich/PowerTutor/ui/MiscView;->access$5(Ledu/umich/PowerTutor/ui/MiscView;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Ledu/umich/PowerTutor/ui/MiscView$VoltageItem;->this$0:Ledu/umich/PowerTutor/ui/MiscView;

    #getter for: Ledu/umich/PowerTutor/ui/MiscView;->batteryStats:Ledu/umich/PowerTutor/util/BatteryStats;
    invoke-static {v0}, Ledu/umich/PowerTutor/ui/MiscView;->access$6(Ledu/umich/PowerTutor/ui/MiscView;)Ledu/umich/PowerTutor/util/BatteryStats;

    move-result-object v0

    invoke-virtual {v0}, Ledu/umich/PowerTutor/util/BatteryStats;->hasVoltage()Z

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
    .locals 7

    .prologue
    .line 380
    iget-object v2, p0, Ledu/umich/PowerTutor/ui/MiscView$VoltageItem;->txt:Landroid/widget/TextView;

    if-nez v2, :cond_0

    .line 387
    :goto_0
    return-void

    .line 381
    :cond_0
    iget-object v2, p0, Ledu/umich/PowerTutor/ui/MiscView$VoltageItem;->this$0:Ledu/umich/PowerTutor/ui/MiscView;

    #getter for: Ledu/umich/PowerTutor/ui/MiscView;->batteryStats:Ledu/umich/PowerTutor/util/BatteryStats;
    invoke-static {v2}, Ledu/umich/PowerTutor/ui/MiscView;->access$6(Ledu/umich/PowerTutor/ui/MiscView;)Ledu/umich/PowerTutor/util/BatteryStats;

    move-result-object v2

    invoke-virtual {v2}, Ledu/umich/PowerTutor/util/BatteryStats;->getVoltage()D

    move-result-wide v0

    .line 382
    .local v0, voltage:D
    iget-object v2, p0, Ledu/umich/PowerTutor/ui/MiscView$VoltageItem;->txt:Landroid/widget/TextView;

    const-string v3, "%1$.2f V"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 383
    iget-object v2, p0, Ledu/umich/PowerTutor/ui/MiscView$VoltageItem;->txt:Landroid/widget/TextView;

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 385
    iget-object v2, p0, Ledu/umich/PowerTutor/ui/MiscView$VoltageItem;->title:Landroid/widget/TextView;

    const-string v3, "Voltage"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 386
    iget-object v2, p0, Ledu/umich/PowerTutor/ui/MiscView$VoltageItem;->summary:Landroid/widget/TextView;

    const-string v3, "Battery voltage sensor reading"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
