.class Ledu/umich/PowerTutor/ui/MiscView$PackageItem;
.super Ledu/umich/PowerTutor/ui/MiscView$InfoItem;
.source "MiscView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ledu/umich/PowerTutor/ui/MiscView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PackageItem"
.end annotation


# instance fields
.field final synthetic this$0:Ledu/umich/PowerTutor/ui/MiscView;


# direct methods
.method private constructor <init>(Ledu/umich/PowerTutor/ui/MiscView;)V
    .locals 1
    .parameter

    .prologue
    .line 425
    iput-object p1, p0, Ledu/umich/PowerTutor/ui/MiscView$PackageItem;->this$0:Ledu/umich/PowerTutor/ui/MiscView;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ledu/umich/PowerTutor/ui/MiscView$InfoItem;-><init>(Ledu/umich/PowerTutor/ui/MiscView;Ledu/umich/PowerTutor/ui/MiscView$InfoItem;)V

    return-void
.end method

.method synthetic constructor <init>(Ledu/umich/PowerTutor/ui/MiscView;Ledu/umich/PowerTutor/ui/MiscView$PackageItem;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 425
    invoke-direct {p0, p1}, Ledu/umich/PowerTutor/ui/MiscView$PackageItem;-><init>(Ledu/umich/PowerTutor/ui/MiscView;)V

    return-void
.end method


# virtual methods
.method public available()Z
    .locals 2

    .prologue
    .line 427
    iget-object v0, p0, Ledu/umich/PowerTutor/ui/MiscView$PackageItem;->this$0:Ledu/umich/PowerTutor/ui/MiscView;

    #getter for: Ledu/umich/PowerTutor/ui/MiscView;->uid:I
    invoke-static {v0}, Ledu/umich/PowerTutor/ui/MiscView;->access$5(Ledu/umich/PowerTutor/ui/MiscView;)I

    move-result v0

    const/16 v1, 0x2710

    if-lt v0, v1, :cond_0

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
    .line 431
    iget-object v4, p0, Ledu/umich/PowerTutor/ui/MiscView$PackageItem;->txt:Landroid/widget/TextView;

    if-nez v4, :cond_0

    .line 448
    :goto_0
    return-void

    .line 432
    :cond_0
    iget-object v4, p0, Ledu/umich/PowerTutor/ui/MiscView$PackageItem;->txt:Landroid/widget/TextView;

    const-string v5, ""

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 434
    iget-object v4, p0, Ledu/umich/PowerTutor/ui/MiscView$PackageItem;->title:Landroid/widget/TextView;

    const-string v5, "Packages"

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 436
    iget-object v4, p0, Ledu/umich/PowerTutor/ui/MiscView$PackageItem;->this$0:Ledu/umich/PowerTutor/ui/MiscView;

    invoke-virtual {v4}, Ledu/umich/PowerTutor/ui/MiscView;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 437
    .local v3, pm:Landroid/content/pm/PackageManager;
    iget-object v4, p0, Ledu/umich/PowerTutor/ui/MiscView$PackageItem;->this$0:Ledu/umich/PowerTutor/ui/MiscView;

    #getter for: Ledu/umich/PowerTutor/ui/MiscView;->uid:I
    invoke-static {v4}, Ledu/umich/PowerTutor/ui/MiscView;->access$5(Ledu/umich/PowerTutor/ui/MiscView;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v2

    .line 438
    .local v2, packages:[Ljava/lang/String;
    if-eqz v2, :cond_3

    .line 439
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 440
    .local v0, buf:Ljava/lang/StringBuilder;
    array-length v5, v2

    const/4 v4, 0x0

    :goto_1
    if-lt v4, v5, :cond_1

    .line 444
    iget-object v4, p0, Ledu/umich/PowerTutor/ui/MiscView$PackageItem;->summary:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 440
    :cond_1
    aget-object v1, v2, v4

    .line 441
    .local v1, packageName:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-eqz v6, :cond_2

    const-string v6, "\n"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 442
    :cond_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 440
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 446
    .end local v0           #buf:Ljava/lang/StringBuilder;
    .end local v1           #packageName:Ljava/lang/String;
    :cond_3
    iget-object v4, p0, Ledu/umich/PowerTutor/ui/MiscView$PackageItem;->summary:Landroid/widget/TextView;

    const-string v5, "(None)"

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
