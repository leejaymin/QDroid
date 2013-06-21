.class public Limoblife/toolbox/full/ui/ASplash;
.super Landroid/app/Activity;


# instance fields
.field private a:Landroid/widget/ProgressBar;

.field private b:Landroid/os/Handler;

.field private c:Ljava/util/Timer;

.field private d:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic a(Limoblife/toolbox/full/ui/ASplash;)I
    .locals 1

    iget v0, p0, Limoblife/toolbox/full/ui/ASplash;->d:I

    return v0
.end method

.method static synthetic a(Limoblife/toolbox/full/ui/ASplash;I)V
    .locals 0

    iput p1, p0, Limoblife/toolbox/full/ui/ASplash;->d:I

    return-void
.end method

.method static synthetic b(Limoblife/toolbox/full/ui/ASplash;)Landroid/widget/ProgressBar;
    .locals 1

    iget-object v0, p0, Limoblife/toolbox/full/ui/ASplash;->a:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic c(Limoblife/toolbox/full/ui/ASplash;)Ljava/util/Timer;
    .locals 1

    iget-object v0, p0, Limoblife/toolbox/full/ui/ASplash;->c:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic d(Limoblife/toolbox/full/ui/ASplash;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Limoblife/toolbox/full/ui/ASplash;->b:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f03003b

    invoke-virtual {p0, v0}, Limoblife/toolbox/full/ui/ASplash;->setContentView(I)V

    const v0, 0x7f080101

    invoke-virtual {p0, v0}, Limoblife/toolbox/full/ui/ASplash;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Limoblife/toolbox/full/ui/ASplash;->a:Landroid/widget/ProgressBar;

    const/4 v0, 0x0

    iput v0, p0, Limoblife/toolbox/full/ui/ASplash;->d:I

    new-instance v0, Limoblife/toolbox/full/ui/bh;

    invoke-direct {v0, p0}, Limoblife/toolbox/full/ui/bh;-><init>(Limoblife/toolbox/full/ui/ASplash;)V

    iput-object v0, p0, Limoblife/toolbox/full/ui/ASplash;->b:Landroid/os/Handler;

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Limoblife/toolbox/full/ui/ASplash;->c:Ljava/util/Timer;

    iget-object v0, p0, Limoblife/toolbox/full/ui/ASplash;->c:Ljava/util/Timer;

    new-instance v1, Limoblife/toolbox/full/ui/bi;

    invoke-direct {v1, p0}, Limoblife/toolbox/full/ui/bi;-><init>(Limoblife/toolbox/full/ui/ASplash;)V

    const-wide/16 v2, 0xa

    const-wide/16 v4, 0x14

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
