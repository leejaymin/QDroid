.class Ledu/umich/PowerTutor/ui/MiscView$OLEDItem;
.super Ledu/umich/PowerTutor/ui/MiscView$InfoItem;
.source "MiscView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ledu/umich/PowerTutor/ui/MiscView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OLEDItem"
.end annotation


# instance fields
.field final synthetic this$0:Ledu/umich/PowerTutor/ui/MiscView;


# direct methods
.method private constructor <init>(Ledu/umich/PowerTutor/ui/MiscView;)V
    .locals 1
    .parameter

    .prologue
    .line 451
    iput-object p1, p0, Ledu/umich/PowerTutor/ui/MiscView$OLEDItem;->this$0:Ledu/umich/PowerTutor/ui/MiscView;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ledu/umich/PowerTutor/ui/MiscView$InfoItem;-><init>(Ledu/umich/PowerTutor/ui/MiscView;Ledu/umich/PowerTutor/ui/MiscView$InfoItem;)V

    return-void
.end method

.method synthetic constructor <init>(Ledu/umich/PowerTutor/ui/MiscView;Ledu/umich/PowerTutor/ui/MiscView$OLEDItem;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 451
    invoke-direct {p0, p1}, Ledu/umich/PowerTutor/ui/MiscView$OLEDItem;-><init>(Ledu/umich/PowerTutor/ui/MiscView;)V

    return-void
.end method


# virtual methods
.method public available()Z
    .locals 2

    .prologue
    .line 453
    iget-object v0, p0, Ledu/umich/PowerTutor/ui/MiscView$OLEDItem;->this$0:Ledu/umich/PowerTutor/ui/MiscView;

    #getter for: Ledu/umich/PowerTutor/ui/MiscView;->uid:I
    invoke-static {v0}, Ledu/umich/PowerTutor/ui/MiscView;->access$5(Ledu/umich/PowerTutor/ui/MiscView;)I

    move-result v0

    const/16 v1, 0x2710

    if-ge v0, v1, :cond_0

    const/4 v0, 0x0

    .line 454
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Ledu/umich/PowerTutor/phone/PhoneSelector;->hasOled()Z

    move-result v0

    goto :goto_0
.end method

.method public setupView()V
    .locals 7

    .prologue
    .line 458
    iget-object v3, p0, Ledu/umich/PowerTutor/ui/MiscView$OLEDItem;->txt:Landroid/widget/TextView;

    if-nez v3, :cond_0

    .line 475
    :goto_0
    return-void

    .line 460
    :cond_0
    iget-object v3, p0, Ledu/umich/PowerTutor/ui/MiscView$OLEDItem;->txt:Landroid/widget/TextView;

    const-string v4, "No data"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 461
    iget-object v3, p0, Ledu/umich/PowerTutor/ui/MiscView$OLEDItem;->this$0:Ledu/umich/PowerTutor/ui/MiscView;

    #getter for: Ledu/umich/PowerTutor/ui/MiscView;->counterService:Ledu/umich/PowerTutor/service/ICounterService;
    invoke-static {v3}, Ledu/umich/PowerTutor/ui/MiscView;->access$1(Ledu/umich/PowerTutor/ui/MiscView;)Ledu/umich/PowerTutor/service/ICounterService;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 463
    :try_start_0
    iget-object v3, p0, Ledu/umich/PowerTutor/ui/MiscView$OLEDItem;->this$0:Ledu/umich/PowerTutor/ui/MiscView;

    #getter for: Ledu/umich/PowerTutor/ui/MiscView;->counterService:Ledu/umich/PowerTutor/service/ICounterService;
    invoke-static {v3}, Ledu/umich/PowerTutor/ui/MiscView;->access$1(Ledu/umich/PowerTutor/ui/MiscView;)Ledu/umich/PowerTutor/service/ICounterService;

    move-result-object v3

    const-string v4, "OLEDSCORE"

    iget-object v5, p0, Ledu/umich/PowerTutor/ui/MiscView$OLEDItem;->this$0:Ledu/umich/PowerTutor/ui/MiscView;

    #getter for: Ledu/umich/PowerTutor/ui/MiscView;->uid:I
    invoke-static {v5}, Ledu/umich/PowerTutor/ui/MiscView;->access$5(Ledu/umich/PowerTutor/ui/MiscView;)I

    move-result v5

    invoke-interface {v3, v4, v5}, Ledu/umich/PowerTutor/service/ICounterService;->getUidExtra(Ljava/lang/String;I)J

    move-result-wide v1

    .line 464
    .local v1, score:J
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-ltz v3, :cond_1

    .line 465
    iget-object v3, p0, Ledu/umich/PowerTutor/ui/MiscView$OLEDItem;->txt:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/16 v5, 0x64

    sub-long/2addr v5, v1

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 472
    .end local v1           #score:J
    :cond_1
    :goto_1
    iget-object v3, p0, Ledu/umich/PowerTutor/ui/MiscView$OLEDItem;->title:Landroid/widget/TextView;

    const-string v4, "OLED Score"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 473
    iget-object v3, p0, Ledu/umich/PowerTutor/ui/MiscView$OLEDItem;->summary:Landroid/widget/TextView;

    const-string v4, "100 is highly efficient\n0 is very inefficient\nIndependent of brightness"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 467
    :catch_0
    move-exception v0

    .line 468
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "MiscView"

    const-string v4, "Failed to request oled score information"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
