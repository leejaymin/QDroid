.class Ledu/umich/PowerTutor/ui/MiscView$UidItem;
.super Ledu/umich/PowerTutor/ui/MiscView$InfoItem;
.source "MiscView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ledu/umich/PowerTutor/ui/MiscView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UidItem"
.end annotation


# instance fields
.field final synthetic this$0:Ledu/umich/PowerTutor/ui/MiscView;


# direct methods
.method private constructor <init>(Ledu/umich/PowerTutor/ui/MiscView;)V
    .locals 1
    .parameter

    .prologue
    .line 408
    iput-object p1, p0, Ledu/umich/PowerTutor/ui/MiscView$UidItem;->this$0:Ledu/umich/PowerTutor/ui/MiscView;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ledu/umich/PowerTutor/ui/MiscView$InfoItem;-><init>(Ledu/umich/PowerTutor/ui/MiscView;Ledu/umich/PowerTutor/ui/MiscView$InfoItem;)V

    return-void
.end method

.method synthetic constructor <init>(Ledu/umich/PowerTutor/ui/MiscView;Ledu/umich/PowerTutor/ui/MiscView$UidItem;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 408
    invoke-direct {p0, p1}, Ledu/umich/PowerTutor/ui/MiscView$UidItem;-><init>(Ledu/umich/PowerTutor/ui/MiscView;)V

    return-void
.end method


# virtual methods
.method public available()Z
    .locals 2

    .prologue
    .line 410
    iget-object v0, p0, Ledu/umich/PowerTutor/ui/MiscView$UidItem;->this$0:Ledu/umich/PowerTutor/ui/MiscView;

    #getter for: Ledu/umich/PowerTutor/ui/MiscView;->uid:I
    invoke-static {v0}, Ledu/umich/PowerTutor/ui/MiscView;->access$5(Ledu/umich/PowerTutor/ui/MiscView;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setupView()V
    .locals 5

    .prologue
    .line 414
    iget-object v0, p0, Ledu/umich/PowerTutor/ui/MiscView$UidItem;->txt:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 422
    :goto_0
    return-void

    .line 415
    :cond_0
    iget-object v0, p0, Ledu/umich/PowerTutor/ui/MiscView$UidItem;->txt:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ledu/umich/PowerTutor/ui/MiscView$UidItem;->this$0:Ledu/umich/PowerTutor/ui/MiscView;

    #getter for: Ledu/umich/PowerTutor/ui/MiscView;->uid:I
    invoke-static {v2}, Ledu/umich/PowerTutor/ui/MiscView;->access$5(Ledu/umich/PowerTutor/ui/MiscView;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 416
    iget-object v0, p0, Ledu/umich/PowerTutor/ui/MiscView$UidItem;->txt:Landroid/widget/TextView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 418
    iget-object v0, p0, Ledu/umich/PowerTutor/ui/MiscView$UidItem;->title:Landroid/widget/TextView;

    const-string v1, "User ID"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 419
    iget-object v0, p0, Ledu/umich/PowerTutor/ui/MiscView$UidItem;->summary:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "User ID for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ledu/umich/PowerTutor/util/SystemInfo;->getInstance()Ledu/umich/PowerTutor/util/SystemInfo;

    move-result-object v2

    iget-object v3, p0, Ledu/umich/PowerTutor/ui/MiscView$UidItem;->this$0:Ledu/umich/PowerTutor/ui/MiscView;

    #getter for: Ledu/umich/PowerTutor/ui/MiscView;->uid:I
    invoke-static {v3}, Ledu/umich/PowerTutor/ui/MiscView;->access$5(Ledu/umich/PowerTutor/ui/MiscView;)I

    move-result v3

    .line 420
    iget-object v4, p0, Ledu/umich/PowerTutor/ui/MiscView$UidItem;->this$0:Ledu/umich/PowerTutor/ui/MiscView;

    invoke-virtual {v4}, Ledu/umich/PowerTutor/ui/MiscView;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 419
    invoke-virtual {v2, v3, v4}, Ledu/umich/PowerTutor/util/SystemInfo;->getUidName(ILandroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
