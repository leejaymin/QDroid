.class Ledu/umich/PowerTutor/ui/MiscView$TempItem;
.super Ledu/umich/PowerTutor/ui/MiscView$InfoItem;
.source "MiscView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ledu/umich/PowerTutor/ui/MiscView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TempItem"
.end annotation


# instance fields
.field final synthetic this$0:Ledu/umich/PowerTutor/ui/MiscView;


# direct methods
.method private constructor <init>(Ledu/umich/PowerTutor/ui/MiscView;)V
    .locals 1
    .parameter

    .prologue
    .line 390
    iput-object p1, p0, Ledu/umich/PowerTutor/ui/MiscView$TempItem;->this$0:Ledu/umich/PowerTutor/ui/MiscView;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ledu/umich/PowerTutor/ui/MiscView$InfoItem;-><init>(Ledu/umich/PowerTutor/ui/MiscView;Ledu/umich/PowerTutor/ui/MiscView$InfoItem;)V

    return-void
.end method

.method synthetic constructor <init>(Ledu/umich/PowerTutor/ui/MiscView;Ledu/umich/PowerTutor/ui/MiscView$TempItem;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 390
    invoke-direct {p0, p1}, Ledu/umich/PowerTutor/ui/MiscView$TempItem;-><init>(Ledu/umich/PowerTutor/ui/MiscView;)V

    return-void
.end method


# virtual methods
.method public available()Z
    .locals 2

    .prologue
    .line 392
    iget-object v0, p0, Ledu/umich/PowerTutor/ui/MiscView$TempItem;->this$0:Ledu/umich/PowerTutor/ui/MiscView;

    #getter for: Ledu/umich/PowerTutor/ui/MiscView;->uid:I
    invoke-static {v0}, Ledu/umich/PowerTutor/ui/MiscView;->access$5(Ledu/umich/PowerTutor/ui/MiscView;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Ledu/umich/PowerTutor/ui/MiscView$TempItem;->this$0:Ledu/umich/PowerTutor/ui/MiscView;

    #getter for: Ledu/umich/PowerTutor/ui/MiscView;->batteryStats:Ledu/umich/PowerTutor/util/BatteryStats;
    invoke-static {v0}, Ledu/umich/PowerTutor/ui/MiscView;->access$6(Ledu/umich/PowerTutor/ui/MiscView;)Ledu/umich/PowerTutor/util/BatteryStats;

    move-result-object v0

    invoke-virtual {v0}, Ledu/umich/PowerTutor/util/BatteryStats;->hasTemp()Z

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
    .line 396
    iget-object v4, p0, Ledu/umich/PowerTutor/ui/MiscView$TempItem;->txt:Landroid/widget/TextView;

    if-nez v4, :cond_0

    .line 405
    :goto_0
    return-void

    .line 397
    :cond_0
    iget-object v4, p0, Ledu/umich/PowerTutor/ui/MiscView$TempItem;->this$0:Ledu/umich/PowerTutor/ui/MiscView;

    #getter for: Ledu/umich/PowerTutor/ui/MiscView;->batteryStats:Ledu/umich/PowerTutor/util/BatteryStats;
    invoke-static {v4}, Ledu/umich/PowerTutor/ui/MiscView;->access$6(Ledu/umich/PowerTutor/ui/MiscView;)Ledu/umich/PowerTutor/util/BatteryStats;

    move-result-object v4

    invoke-virtual {v4}, Ledu/umich/PowerTutor/util/BatteryStats;->getTemp()D

    move-result-wide v0

    .line 398
    .local v0, celcius:D
    const-wide/high16 v4, 0x4040

    const-wide/high16 v6, 0x4022

    mul-double/2addr v6, v0

    const-wide/high16 v8, 0x4014

    div-double/2addr v6, v8

    add-double v2, v4, v6

    .line 399
    .local v2, farenheit:D
    iget-object v4, p0, Ledu/umich/PowerTutor/ui/MiscView$TempItem;->txt:Landroid/widget/TextView;

    const-string v5, "%1$.1f \u00b0C\n(%2$.1f \u00b0F)"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    .line 400
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    aput-object v8, v6, v7

    .line 399
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 401
    iget-object v4, p0, Ledu/umich/PowerTutor/ui/MiscView$TempItem;->txt:Landroid/widget/TextView;

    const/16 v5, 0x11

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 403
    iget-object v4, p0, Ledu/umich/PowerTutor/ui/MiscView$TempItem;->title:Landroid/widget/TextView;

    const-string v5, "Battery Temperature"

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 404
    iget-object v4, p0, Ledu/umich/PowerTutor/ui/MiscView$TempItem;->summary:Landroid/widget/TextView;

    const-string v5, "Battery temperature sensor reading"

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
