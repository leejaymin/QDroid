.class Ledu/umich/PowerTutor/ui/MiscView$ChargeItem;
.super Ledu/umich/PowerTutor/ui/MiscView$InfoItem;
.source "MiscView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ledu/umich/PowerTutor/ui/MiscView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ChargeItem"
.end annotation


# instance fields
.field final synthetic this$0:Ledu/umich/PowerTutor/ui/MiscView;


# direct methods
.method private constructor <init>(Ledu/umich/PowerTutor/ui/MiscView;)V
    .locals 1
    .parameter

    .prologue
    .line 261
    iput-object p1, p0, Ledu/umich/PowerTutor/ui/MiscView$ChargeItem;->this$0:Ledu/umich/PowerTutor/ui/MiscView;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ledu/umich/PowerTutor/ui/MiscView$InfoItem;-><init>(Ledu/umich/PowerTutor/ui/MiscView;Ledu/umich/PowerTutor/ui/MiscView$InfoItem;)V

    return-void
.end method

.method synthetic constructor <init>(Ledu/umich/PowerTutor/ui/MiscView;Ledu/umich/PowerTutor/ui/MiscView$ChargeItem;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 261
    invoke-direct {p0, p1}, Ledu/umich/PowerTutor/ui/MiscView$ChargeItem;-><init>(Ledu/umich/PowerTutor/ui/MiscView;)V

    return-void
.end method


# virtual methods
.method public available()Z
    .locals 2

    .prologue
    .line 263
    iget-object v0, p0, Ledu/umich/PowerTutor/ui/MiscView$ChargeItem;->this$0:Ledu/umich/PowerTutor/ui/MiscView;

    #getter for: Ledu/umich/PowerTutor/ui/MiscView;->uid:I
    invoke-static {v0}, Ledu/umich/PowerTutor/ui/MiscView;->access$5(Ledu/umich/PowerTutor/ui/MiscView;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Ledu/umich/PowerTutor/ui/MiscView$ChargeItem;->this$0:Ledu/umich/PowerTutor/ui/MiscView;

    #getter for: Ledu/umich/PowerTutor/ui/MiscView;->batteryStats:Ledu/umich/PowerTutor/util/BatteryStats;
    invoke-static {v0}, Ledu/umich/PowerTutor/ui/MiscView;->access$6(Ledu/umich/PowerTutor/ui/MiscView;)Ledu/umich/PowerTutor/util/BatteryStats;

    move-result-object v0

    invoke-virtual {v0}, Ledu/umich/PowerTutor/util/BatteryStats;->hasCharge()Z

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
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const-wide/high16 v6, 0x404e

    .line 267
    iget-object v4, p0, Ledu/umich/PowerTutor/ui/MiscView$ChargeItem;->txt:Landroid/widget/TextView;

    if-nez v4, :cond_0

    .line 280
    :goto_0
    return-void

    .line 268
    :cond_0
    iget-object v4, p0, Ledu/umich/PowerTutor/ui/MiscView$ChargeItem;->this$0:Ledu/umich/PowerTutor/ui/MiscView;

    #getter for: Ledu/umich/PowerTutor/ui/MiscView;->batteryStats:Ledu/umich/PowerTutor/util/BatteryStats;
    invoke-static {v4}, Ledu/umich/PowerTutor/ui/MiscView;->access$6(Ledu/umich/PowerTutor/ui/MiscView;)Ledu/umich/PowerTutor/util/BatteryStats;

    move-result-object v4

    invoke-virtual {v4}, Ledu/umich/PowerTutor/util/BatteryStats;->getCharge()D

    move-result-wide v4

    div-double/2addr v4, v6

    div-double/2addr v4, v6

    const-wide v6, 0x408f400000000000L

    mul-double v0, v4, v6

    .line 269
    .local v0, charge:D
    iget-object v4, p0, Ledu/umich/PowerTutor/ui/MiscView$ChargeItem;->this$0:Ledu/umich/PowerTutor/ui/MiscView;

    #getter for: Ledu/umich/PowerTutor/ui/MiscView;->batteryStats:Ledu/umich/PowerTutor/util/BatteryStats;
    invoke-static {v4}, Ledu/umich/PowerTutor/ui/MiscView;->access$6(Ledu/umich/PowerTutor/ui/MiscView;)Ledu/umich/PowerTutor/util/BatteryStats;

    move-result-object v4

    invoke-virtual {v4}, Ledu/umich/PowerTutor/util/BatteryStats;->getCapacity()D

    move-result-wide v2

    .line 270
    .local v2, perc:D
    const-wide/16 v4, 0x0

    cmpg-double v4, v2, v4

    if-gez v4, :cond_1

    .line 271
    iget-object v4, p0, Ledu/umich/PowerTutor/ui/MiscView$ChargeItem;->txt:Landroid/widget/TextView;

    const-string v5, "%1$.1f mAh"

    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 276
    :goto_1
    iget-object v4, p0, Ledu/umich/PowerTutor/ui/MiscView$ChargeItem;->txt:Landroid/widget/TextView;

    const/16 v5, 0x11

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 278
    iget-object v4, p0, Ledu/umich/PowerTutor/ui/MiscView$ChargeItem;->title:Landroid/widget/TextView;

    const-string v5, "Charge"

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 279
    iget-object v4, p0, Ledu/umich/PowerTutor/ui/MiscView$ChargeItem;->summary:Landroid/widget/TextView;

    const-string v5, "Battery charge sensor reading"

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 273
    :cond_1
    iget-object v4, p0, Ledu/umich/PowerTutor/ui/MiscView$ChargeItem;->txt:Landroid/widget/TextView;

    const-string v5, "%1$.1f mAh\n(%2$.0f%%)"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    .line 274
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    aput-object v7, v6, v8

    const-wide/high16 v7, 0x4059

    mul-double/2addr v7, v2

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    aput-object v7, v6, v9

    .line 273
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method