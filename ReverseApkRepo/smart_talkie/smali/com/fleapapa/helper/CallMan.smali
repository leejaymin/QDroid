.class public Lcom/fleapapa/helper/CallMan;
.super Lcom/google/android/maps/MapActivity;
.source "CallMan.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fleapapa/helper/CallMan$BurstAdapter;,
        Lcom/fleapapa/helper/CallMan$CallOverlay;
    }
.end annotation


# static fields
.field static final FX:I = 0x12c

.field static final RESULT_SELECT_UES:I

.field static changedStatus:I

.field static currentMan:Lcom/fleapapa/helper/CallMan;

.field static handler:Landroid/os/Handler;

.field static refreshUI:Ljava/lang/Runnable;


# instance fields
.field private final WHO:Ljava/lang/String;

.field admob:Lcom/admob/android/ads/AdView;

.field badapter:Lcom/fleapapa/helper/CallMan$BurstAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/fleapapa/helper/CallMan$BurstAdapter",
            "<",
            "Lcom/fleapapa/helper/CallPapa$Burst;",
            ">;"
        }
    .end annotation
.end field

.field bview:Landroid/widget/ListView;

.field calls:[Lcom/fleapapa/helper/CallPapa$Call;

.field camera:Landroid/hardware/Camera;

.field cidx:I

.field h263:[B

.field intent:Landroid/content/Intent;

.field lltop:Landroid/widget/LinearLayout;

.field mview:Lcom/google/android/maps/MapView;

.field mypoint:Lcom/google/android/maps/GeoPoint;

.field osec:I

.field rand:Ljava/util/Random;

.field roller:Landroid/view/animation/Animation;

.field seq:I

.field sholder:Landroid/view/SurfaceHolder;

.field sview:Landroid/view/SurfaceView;

.field tview:Landroid/widget/EditText;

.field urgency:Z

.field vstop:Landroid/widget/ImageView;

.field zoomLevel:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/google/android/maps/MapActivity;-><init>()V

    .line 61
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fleapapa/helper/CallMan;->WHO:Ljava/lang/String;

    .line 72
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/fleapapa/helper/CallMan;->rand:Ljava/util/Random;

    .line 83
    const/16 v0, 0x4000

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/fleapapa/helper/CallMan;->h263:[B

    .line 60
    return-void
.end method

.method static synthetic access$0(Lcom/fleapapa/helper/CallMan;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 61
    iget-object v0, p0, Lcom/fleapapa/helper/CallMan;->WHO:Ljava/lang/String;

    return-object v0
.end method

.method static invite(Landroid/content/Context;Landroid/os/Handler;Lcom/fleapapa/helper/CallPapa$Call;)V
    .locals 3
    .parameter "context"
    .parameter "handler"
    .parameter "call"

    .prologue
    .line 771
    if-eqz p2, :cond_0

    iget-object v1, p2, Lcom/fleapapa/helper/CallPapa$Call;->ues:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_1

    .line 782
    :cond_0
    :goto_0
    return-void

    .line 772
    :cond_1
    invoke-virtual {p2}, Lcom/fleapapa/helper/CallPapa$Call;->invite()V

    .line 774
    new-instance v0, Lcom/fleapapa/helper/CallMan$22;

    invoke-direct {v0, p2, p0}, Lcom/fleapapa/helper/CallMan$22;-><init>(Lcom/fleapapa/helper/CallPapa$Call;Landroid/content/Context;)V

    .line 781
    .local v0, check:Ljava/lang/Runnable;
    const-wide/16 v1, 0x1388

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method


# virtual methods
.method addBursts(IZ)V
    .locals 6
    .parameter "from"
    .parameter "refreshAd"

    .prologue
    const/4 v5, 0x1

    .line 655
    sget-object v2, Lcom/fleapapa/util/My;->papa:Lcom/fleapapa/helper/CallPapa;

    iget-object v2, v2, Lcom/fleapapa/helper/CallPapa;->acall:Lcom/fleapapa/helper/CallPapa$Call;

    iget-boolean v2, v2, Lcom/fleapapa/helper/CallPapa$Call;->foreground:Z

    if-nez v2, :cond_1

    .line 669
    :cond_0
    :goto_0
    return-void

    .line 656
    :cond_1
    sget-object v2, Lcom/fleapapa/util/My;->papa:Lcom/fleapapa/helper/CallPapa;

    iget-object v2, v2, Lcom/fleapapa/helper/CallPapa;->acall:Lcom/fleapapa/helper/CallPapa$Call;

    iget-object v2, v2, Lcom/fleapapa/helper/CallPapa$Call;->bursts:Ljava/util/ArrayList;

    monitor-enter v2

    .line 657
    :try_start_0
    sget-object v3, Lcom/fleapapa/util/My;->papa:Lcom/fleapapa/helper/CallPapa;

    iget-object v3, v3, Lcom/fleapapa/helper/CallPapa;->acall:Lcom/fleapapa/helper/CallPapa$Call;

    iget-object v3, v3, Lcom/fleapapa/helper/CallPapa$Call;->bursts:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_4

    .line 656
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 665
    iget-object v2, p0, Lcom/fleapapa/helper/CallMan;->badapter:Lcom/fleapapa/helper/CallMan$BurstAdapter;

    invoke-virtual {v2}, Lcom/fleapapa/helper/CallMan$BurstAdapter;->getCount()I

    move-result v1

    .line 666
    .local v1, count:I
    if-lez v1, :cond_3

    iget-object v2, p0, Lcom/fleapapa/helper/CallMan;->bview:Landroid/widget/ListView;

    sub-int v3, v1, v5

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setSelection(I)V

    .line 668
    :cond_3
    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/fleapapa/helper/CallMan;->changeAdmob(I)V

    goto :goto_0

    .line 657
    .end local v1           #count:I
    :cond_4
    :try_start_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fleapapa/helper/CallPapa$Burst;

    .line 658
    .local v0, burst:Lcom/fleapapa/helper/CallPapa$Burst;
    iget-byte v4, v0, Lcom/fleapapa/helper/CallPapa$Burst;->type:B

    if-eq v4, v5, :cond_5

    iget-boolean v4, v0, Lcom/fleapapa/helper/CallPapa$Burst;->mature:Z

    if-eqz v4, :cond_2

    .line 659
    :cond_5
    iget-object v4, p0, Lcom/fleapapa/helper/CallMan;->badapter:Lcom/fleapapa/helper/CallMan$BurstAdapter;

    invoke-virtual {v4, v0}, Lcom/fleapapa/helper/CallMan$BurstAdapter;->getPosition(Ljava/lang/Object;)I

    move-result v4

    if-gez v4, :cond_2

    .line 660
    iget-object v4, p0, Lcom/fleapapa/helper/CallMan;->badapter:Lcom/fleapapa/helper/CallMan$BurstAdapter;

    invoke-virtual {v4, v0}, Lcom/fleapapa/helper/CallMan$BurstAdapter;->add(Ljava/lang/Object;)V

    .line 661
    iget-object v4, p0, Lcom/fleapapa/helper/CallMan;->badapter:Lcom/fleapapa/helper/CallMan$BurstAdapter;

    invoke-virtual {v4}, Lcom/fleapapa/helper/CallMan$BurstAdapter;->notifyDataSetChanged()V

    goto :goto_1

    .line 656
    .end local v0           #burst:Lcom/fleapapa/helper/CallPapa$Burst;
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method changeAdmob(I)V
    .locals 5
    .parameter "from"

    .prologue
    const-string v4, ".changeAdmob: request ad "

    .line 744
    sget-object v1, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/fleapapa/helper/CallMan;->WHO:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ".changeAdmob: request ad "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    :try_start_0
    iget-object v1, p0, Lcom/fleapapa/helper/CallMan;->admob:Lcom/admob/android/ads/AdView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/admob/android/ads/AdView;->setVisibility(I)V

    .line 748
    iget-object v1, p0, Lcom/fleapapa/helper/CallMan;->admob:Lcom/admob/android/ads/AdView;

    invoke-virtual {v1}, Lcom/admob/android/ads/AdView;->requestFreshAd()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 756
    :goto_0
    return-void

    .line 750
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 751
    .local v0, e:Ljava/lang/Exception;
    sget-object v1, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/fleapapa/helper/CallMan;->WHO:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ".changeAdmob: request ad "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method delayRxReport(Lcom/fleapapa/helper/CallPapa$Burst;)V
    .locals 4
    .parameter "burst"

    .prologue
    .line 807
    sget-object v0, Lcom/fleapapa/helper/CallMan;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/fleapapa/helper/CallMan$23;

    invoke-direct {v1, p0, p1}, Lcom/fleapapa/helper/CallMan$23;-><init>(Lcom/fleapapa/helper/CallMan;Lcom/fleapapa/helper/CallPapa$Burst;)V

    .line 823
    const-wide/16 v2, 0x1770

    .line 807
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 824
    return-void
.end method

.method gotoCall(I)V
    .locals 11
    .parameter "idx"

    .prologue
    const v10, 0x7f08006d

    const v9, 0x7f080068

    const/16 v8, 0x8

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 467
    if-gez p1, :cond_0

    const/4 p1, 0x0

    .line 468
    :cond_0
    iget-object v3, p0, Lcom/fleapapa/helper/CallMan;->calls:[Lcom/fleapapa/helper/CallPapa$Call;

    array-length v3, v3

    if-lt p1, v3, :cond_1

    iget-object v3, p0, Lcom/fleapapa/helper/CallMan;->calls:[Lcom/fleapapa/helper/CallPapa$Call;

    array-length v3, v3

    sub-int p1, v3, v6

    .line 469
    :cond_1
    iget-object v3, p0, Lcom/fleapapa/helper/CallMan;->calls:[Lcom/fleapapa/helper/CallPapa$Call;

    iput p1, p0, Lcom/fleapapa/helper/CallMan;->cidx:I

    aget-object v0, v3, p1

    .line 470
    .local v0, call:Lcom/fleapapa/helper/CallPapa$Call;
    sget-object v3, Lcom/fleapapa/util/My;->papa:Lcom/fleapapa/helper/CallPapa;

    invoke-virtual {v3, v0}, Lcom/fleapapa/helper/CallPapa;->setaCall(Lcom/fleapapa/helper/CallPapa$Call;)V

    .line 471
    invoke-virtual {p0, v0}, Lcom/fleapapa/helper/CallMan;->setTitle(Lcom/fleapapa/helper/CallPapa$Call;)V

    .line 472
    invoke-virtual {p0, v10}, Lcom/fleapapa/helper/CallMan;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iget-object v4, v0, Lcom/fleapapa/helper/CallPapa$Call;->title:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 473
    invoke-virtual {p0, v6}, Lcom/fleapapa/helper/CallMan;->hideTitleBox(Z)V

    .line 477
    const v3, 0x7f080062

    invoke-virtual {p0, v3}, Lcom/fleapapa/helper/CallMan;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/fleapapa/util/MyImageButton;

    if-lez p1, :cond_2

    move v4, v6

    :goto_0
    invoke-virtual {v3, v4}, Lcom/fleapapa/util/MyImageButton;->setEnabled(Z)V

    .line 478
    const v3, 0x7f080066

    invoke-virtual {p0, v3}, Lcom/fleapapa/helper/CallMan;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/fleapapa/util/MyImageButton;

    add-int/lit8 v4, p1, 0x1

    iget-object v5, p0, Lcom/fleapapa/helper/CallMan;->calls:[Lcom/fleapapa/helper/CallPapa$Call;

    array-length v5, v5

    if-ge v4, v5, :cond_3

    move v4, v6

    :goto_1
    invoke-virtual {v3, v4}, Lcom/fleapapa/util/MyImageButton;->setEnabled(Z)V

    .line 480
    iget-object v3, p0, Lcom/fleapapa/helper/CallMan;->lltop:Landroid/widget/LinearLayout;

    iget-boolean v4, v0, Lcom/fleapapa/helper/CallPapa$Call;->urgency:Z

    if-eqz v4, :cond_4

    const v4, 0x7f020072

    :goto_2
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 483
    const v3, 0x7f080065

    invoke-virtual {p0, v3}, Lcom/fleapapa/helper/CallMan;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0}, Lcom/fleapapa/helper/CallMan;->tooManyCalls()Z

    move-result v4

    if-eqz v4, :cond_5

    move v4, v8

    :goto_3
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 490
    const v3, 0x7f08006f

    invoke-virtual {p0, v3}, Lcom/fleapapa/helper/CallMan;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/fleapapa/util/MyImageButton;

    .line 491
    .local v1, mb:Lcom/fleapapa/util/MyImageButton;
    iget-boolean v3, v0, Lcom/fleapapa/helper/CallPapa$Call;->muted:Z

    if-eqz v3, :cond_6

    const v3, 0x7f0600df

    :goto_4
    invoke-virtual {p0, v3}, Lcom/fleapapa/helper/CallMan;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/fleapapa/util/MyImageButton;->text:Ljava/lang/String;

    .line 492
    iget-boolean v3, v0, Lcom/fleapapa/helper/CallPapa$Call;->urgency:Z

    if-eqz v3, :cond_7

    move v3, v8

    :goto_5
    invoke-virtual {v1, v3}, Lcom/fleapapa/util/MyImageButton;->setVisibility(I)V

    .line 493
    iget-boolean v3, v0, Lcom/fleapapa/helper/CallPapa$Call;->muted:Z

    if-nez v3, :cond_8

    const v3, 0x7f020057

    :goto_6
    invoke-virtual {v1, v3}, Lcom/fleapapa/util/MyImageButton;->setImageResource(I)V

    .line 494
    new-instance v3, Lcom/fleapapa/helper/CallMan$14;

    invoke-direct {v3, p0, v0, v1}, Lcom/fleapapa/helper/CallMan$14;-><init>(Lcom/fleapapa/helper/CallMan;Lcom/fleapapa/helper/CallPapa$Call;Lcom/fleapapa/util/MyImageButton;)V

    invoke-virtual {v1, v3}, Lcom/fleapapa/util/MyImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 502
    invoke-virtual {p0, v9}, Lcom/fleapapa/helper/CallMan;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iget-object v4, v0, Lcom/fleapapa/helper/CallPapa$Call;->ues:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v4

    sget-object v5, Lcom/fleapapa/util/My;->papa:Lcom/fleapapa/helper/CallPapa;

    iget v5, v5, Lcom/fleapapa/helper/CallPapa;->maxParties:I

    if-ge v4, v5, :cond_9

    move v4, v6

    :goto_7
    invoke-virtual {v3, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 504
    invoke-virtual {p0, v0}, Lcom/fleapapa/helper/CallMan;->showPeers(Lcom/fleapapa/helper/CallPapa$Call;)V

    .line 506
    iget-object v3, p0, Lcom/fleapapa/helper/CallMan;->badapter:Lcom/fleapapa/helper/CallMan$BurstAdapter;

    invoke-virtual {v3}, Lcom/fleapapa/helper/CallMan$BurstAdapter;->clear()V

    .line 507
    invoke-virtual {p0, v6, v6}, Lcom/fleapapa/helper/CallMan;->addBursts(IZ)V

    .line 509
    iget-object v3, p0, Lcom/fleapapa/helper/CallMan;->bview:Landroid/widget/ListView;

    new-instance v4, Lcom/fleapapa/helper/CallMan$15;

    invoke-direct {v4, p0, v0}, Lcom/fleapapa/helper/CallMan$15;-><init>(Lcom/fleapapa/helper/CallMan;Lcom/fleapapa/helper/CallPapa$Call;)V

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 528
    invoke-virtual {p0, v9}, Lcom/fleapapa/helper/CallMan;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/fleapapa/util/MyImageButton;

    const v4, 0x7f0600d0

    invoke-virtual {p0, v4}, Lcom/fleapapa/helper/CallMan;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/fleapapa/util/MyImageButton;->text:Ljava/lang/String;

    .line 529
    invoke-virtual {p0, v9}, Lcom/fleapapa/helper/CallMan;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/fleapapa/util/MyImageButton;

    new-instance v4, Lcom/fleapapa/helper/CallMan$16;

    invoke-direct {v4, p0, v0}, Lcom/fleapapa/helper/CallMan$16;-><init>(Lcom/fleapapa/helper/CallMan;Lcom/fleapapa/helper/CallPapa$Call;)V

    invoke-virtual {v3, v4}, Lcom/fleapapa/util/MyImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 534
    const v3, 0x7f08006e

    invoke-virtual {p0, v3}, Lcom/fleapapa/helper/CallMan;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/fleapapa/util/MyImageButton;

    const v4, 0x7f0600dc

    invoke-virtual {p0, v4}, Lcom/fleapapa/helper/CallMan;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/fleapapa/util/MyImageButton;->text:Ljava/lang/String;

    .line 535
    const v3, 0x7f08006e

    invoke-virtual {p0, v3}, Lcom/fleapapa/helper/CallMan;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/fleapapa/util/MyImageButton;

    new-instance v4, Lcom/fleapapa/helper/CallMan$17;

    invoke-direct {v4, p0, v0}, Lcom/fleapapa/helper/CallMan$17;-><init>(Lcom/fleapapa/helper/CallMan;Lcom/fleapapa/helper/CallPapa$Call;)V

    invoke-virtual {v3, v4}, Lcom/fleapapa/util/MyImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 556
    const v3, 0x7f080078

    invoke-virtual {p0, v3}, Lcom/fleapapa/helper/CallMan;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 557
    .local v2, pushButton:Landroid/widget/Button;
    invoke-virtual {p0, v2}, Lcom/fleapapa/helper/CallMan;->showPushButton(Landroid/widget/Button;)V

    .line 558
    new-instance v3, Lcom/fleapapa/helper/CallMan$18;

    invoke-direct {v3, p0, v0}, Lcom/fleapapa/helper/CallMan$18;-><init>(Lcom/fleapapa/helper/CallMan;Lcom/fleapapa/helper/CallPapa$Call;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 604
    iget-object v3, p0, Lcom/fleapapa/helper/CallMan;->tview:Landroid/widget/EditText;

    const v4, 0x7f0600d7

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(I)V

    .line 605
    iget-object v3, p0, Lcom/fleapapa/helper/CallMan;->tview:Landroid/widget/EditText;

    new-instance v4, Lcom/fleapapa/helper/CallMan$19;

    invoke-direct {v4, p0, v0}, Lcom/fleapapa/helper/CallMan$19;-><init>(Lcom/fleapapa/helper/CallMan;Lcom/fleapapa/helper/CallPapa$Call;)V

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 620
    iget-object v3, p0, Lcom/fleapapa/helper/CallMan;->tview:Landroid/widget/EditText;

    new-instance v4, Lcom/fleapapa/helper/CallMan$20;

    invoke-direct {v4, p0}, Lcom/fleapapa/helper/CallMan$20;-><init>(Lcom/fleapapa/helper/CallMan;)V

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 635
    sget-object v3, Lcom/fleapapa/helper/CallMan;->handler:Landroid/os/Handler;

    sget-object v4, Lcom/fleapapa/helper/CallMan;->refreshUI:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 637
    new-instance v3, Lcom/fleapapa/helper/CallMan$21;

    invoke-direct {v3, p0}, Lcom/fleapapa/helper/CallMan$21;-><init>(Lcom/fleapapa/helper/CallMan;)V

    invoke-virtual {v0, v3}, Lcom/fleapapa/helper/CallPapa$Call;->setCallback(Lcom/fleapapa/helper/CallPapa$Callback;)V

    .line 648
    iget-object v3, v0, Lcom/fleapapa/helper/CallPapa$Call;->title:Ljava/lang/String;

    invoke-static {v3}, Lcom/fleapapa/util/MyUtil;->empty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 649
    invoke-virtual {p0, v10}, Lcom/fleapapa/helper/CallMan;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    .line 652
    :goto_8
    iget-object v3, p0, Lcom/fleapapa/helper/CallMan;->mview:Lcom/google/android/maps/MapView;

    iget-object v4, p0, Lcom/fleapapa/helper/CallMan;->badapter:Lcom/fleapapa/helper/CallMan$BurstAdapter;

    invoke-virtual {v4}, Lcom/fleapapa/helper/CallMan$BurstAdapter;->getCount()I

    move-result v4

    if-nez v4, :cond_b

    move v4, v7

    :goto_9
    invoke-virtual {v3, v4}, Lcom/google/android/maps/MapView;->setVisibility(I)V

    .line 653
    return-void

    .end local v1           #mb:Lcom/fleapapa/util/MyImageButton;
    .end local v2           #pushButton:Landroid/widget/Button;
    :cond_2
    move v4, v7

    .line 477
    goto/16 :goto_0

    :cond_3
    move v4, v7

    .line 478
    goto/16 :goto_1

    .line 480
    :cond_4
    const v4, 0x7f020073

    goto/16 :goto_2

    :cond_5
    move v4, v7

    .line 483
    goto/16 :goto_3

    .line 491
    .restart local v1       #mb:Lcom/fleapapa/util/MyImageButton;
    :cond_6
    const v3, 0x7f0600de

    goto/16 :goto_4

    :cond_7
    move v3, v7

    .line 492
    goto/16 :goto_5

    .line 493
    :cond_8
    const v3, 0x7f02003d

    goto/16 :goto_6

    :cond_9
    move v4, v7

    .line 502
    goto/16 :goto_7

    .line 650
    .restart local v2       #pushButton:Landroid/widget/Button;
    :cond_a
    const v3, 0x7f080077

    invoke-virtual {p0, v3}, Lcom/fleapapa/helper/CallMan;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    goto :goto_8

    :cond_b
    move v4, v8

    .line 652
    goto :goto_9
.end method

.method gotoCall(Lcom/fleapapa/helper/CallPapa$Call;)V
    .locals 1
    .parameter "call"

    .prologue
    .line 464
    invoke-virtual {p0, p1}, Lcom/fleapapa/helper/CallMan;->idxCall(Lcom/fleapapa/helper/CallPapa$Call;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/fleapapa/helper/CallMan;->gotoCall(I)V

    .line 465
    return-void
.end method

.method hideTitleBox(Z)V
    .locals 2
    .parameter "hide"

    .prologue
    .line 671
    const v0, 0x7f08006d

    invoke-virtual {p0, v0}, Lcom/fleapapa/helper/CallMan;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz p1, :cond_0

    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 672
    return-void

    .line 671
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method idxCall(Lcom/fleapapa/helper/CallPapa$Call;)I
    .locals 3
    .parameter "call"

    .prologue
    .line 459
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/fleapapa/helper/CallMan;->calls:[Lcom/fleapapa/helper/CallPapa$Call;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 461
    const/4 v1, 0x0

    :goto_1
    return v1

    .line 460
    :cond_0
    iget-object v1, p0, Lcom/fleapapa/helper/CallMan;->calls:[Lcom/fleapapa/helper/CallPapa$Call;

    aget-object v1, v1, v0

    iget v1, v1, Lcom/fleapapa/helper/CallPapa$Call;->cid:I

    iget v2, p1, Lcom/fleapapa/helper/CallPapa$Call;->cid:I

    if-ne v1, v2, :cond_1

    move v1, v0

    goto :goto_1

    .line 459
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected isRouteDisplayed()Z
    .locals 1

    .prologue
    .line 768
    const/4 v0, 0x0

    return v0
.end method

.method layoutCalls()V
    .locals 7

    .prologue
    .line 440
    :goto_0
    invoke-virtual {p0}, Lcom/fleapapa/helper/CallMan;->nCall()I

    move-result v3

    .local v3, ncall:I
    if-lez v3, :cond_1

    .line 444
    new-array v4, v3, [Lcom/fleapapa/helper/CallPapa$Call;

    iput-object v4, p0, Lcom/fleapapa/helper/CallMan;->calls:[Lcom/fleapapa/helper/CallPapa$Call;

    .line 445
    const/4 v1, 0x0

    .line 446
    .local v1, i:I
    sget-object v4, Lcom/fleapapa/util/My;->papa:Lcom/fleapapa/helper/CallPapa;

    iget-object v4, v4, Lcom/fleapapa/helper/CallPapa;->calls:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_2

    .line 449
    return-void

    .line 441
    .end local v1           #i:I
    :cond_1
    sget-object v4, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/fleapapa/helper/CallMan;->WHO:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, ".layoutCalls: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " calls"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    sget-object v4, Lcom/fleapapa/util/My;->papa:Lcom/fleapapa/helper/CallPapa;

    iget-boolean v5, p0, Lcom/fleapapa/helper/CallMan;->urgency:Z

    invoke-virtual {v4, v5}, Lcom/fleapapa/helper/CallPapa;->newCall(Z)Lcom/fleapapa/helper/CallPapa$Call;

    goto :goto_0

    .line 446
    .restart local v1       #i:I
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fleapapa/helper/CallPapa$Call;

    .line 447
    .local v0, call:Lcom/fleapapa/helper/CallPapa$Call;
    iget-boolean v5, v0, Lcom/fleapapa/helper/CallPapa$Call;->urgency:Z

    iget-boolean v6, p0, Lcom/fleapapa/helper/CallMan;->urgency:Z

    if-ne v5, v6, :cond_0

    .line 448
    iget-object v5, p0, Lcom/fleapapa/helper/CallMan;->calls:[Lcom/fleapapa/helper/CallPapa$Call;

    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .local v2, i:I
    aput-object v0, v5, v1

    move v1, v2

    .end local v2           #i:I
    .restart local v1       #i:I
    goto :goto_1
.end method

.method nCall()I
    .locals 5

    .prologue
    .line 433
    const/4 v1, 0x0

    .line 434
    .local v1, n:I
    sget-object v2, Lcom/fleapapa/util/My;->papa:Lcom/fleapapa/helper/CallPapa;

    iget-object v2, v2, Lcom/fleapapa/helper/CallPapa;->calls:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 436
    return v1

    .line 434
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fleapapa/helper/CallPapa$Call;

    .line 435
    .local v0, call:Lcom/fleapapa/helper/CallPapa$Call;
    iget-boolean v3, v0, Lcom/fleapapa/helper/CallPapa$Call;->urgency:Z

    iget-boolean v4, p0, Lcom/fleapapa/helper/CallMan;->urgency:Z

    if-ne v3, v4, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 758
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/maps/MapActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 759
    packed-switch p1, :pswitch_data_0

    .line 766
    :cond_0
    :goto_0
    return-void

    .line 761
    :pswitch_0
    if-eqz p2, :cond_0

    .line 762
    sget-object v0, Lcom/fleapapa/util/My;->papa:Lcom/fleapapa/helper/CallPapa;

    iget-object v0, v0, Lcom/fleapapa/helper/CallPapa;->acall:Lcom/fleapapa/helper/CallPapa$Call;

    invoke-virtual {p0, v0}, Lcom/fleapapa/helper/CallMan;->showPeers(Lcom/fleapapa/helper/CallPapa$Call;)V

    .line 763
    sget-object v0, Lcom/fleapapa/helper/CallMan;->handler:Landroid/os/Handler;

    sget-object v1, Lcom/fleapapa/util/My;->papa:Lcom/fleapapa/helper/CallPapa;

    iget-object v1, v1, Lcom/fleapapa/helper/CallPapa;->acall:Lcom/fleapapa/helper/CallPapa$Call;

    invoke-static {p0, v0, v1}, Lcom/fleapapa/helper/CallMan;->invite(Landroid/content/Context;Landroid/os/Handler;Lcom/fleapapa/helper/CallPapa$Call;)V

    goto :goto_0

    .line 759
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 13
    .parameter "icicle"

    .prologue
    const v12, 0x7f080063

    const/4 v11, -0x1

    const-wide v9, 0x412e848000000000L

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 90
    sget-object v3, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/fleapapa/helper/CallMan;->WHO:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ".onCreate"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    invoke-super {p0, p1}, Lcom/google/android/maps/MapActivity;->onCreate(Landroid/os/Bundle;)V

    .line 92
    invoke-static {p0}, Lcom/fleapapa/util/My;->getScreenDimension(Landroid/app/Activity;)V

    .line 93
    invoke-virtual {p0, v7}, Lcom/fleapapa/helper/CallMan;->requestWindowFeature(I)Z

    .line 94
    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Lcom/fleapapa/helper/CallMan;->requestWindowFeature(I)Z

    .line 95
    const v3, 0x7f03000e

    invoke-virtual {p0, v3}, Lcom/fleapapa/helper/CallMan;->setContentView(I)V

    .line 96
    const v3, 0x7f080060

    invoke-virtual {p0, v3}, Lcom/fleapapa/helper/CallMan;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/fleapapa/helper/CallMan;->lltop:Landroid/widget/LinearLayout;

    .line 97
    const v3, 0x7f080077

    invoke-virtual {p0, v3}, Lcom/fleapapa/helper/CallMan;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/fleapapa/helper/CallMan;->tview:Landroid/widget/EditText;

    .line 99
    const v3, 0x7f080072

    invoke-virtual {p0, v3}, Lcom/fleapapa/helper/CallMan;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    iput-object v3, p0, Lcom/fleapapa/helper/CallMan;->bview:Landroid/widget/ListView;

    .line 100
    iget-object v3, p0, Lcom/fleapapa/helper/CallMan;->bview:Landroid/widget/ListView;

    new-instance v4, Lcom/fleapapa/helper/CallMan$BurstAdapter;

    invoke-direct {v4, p0}, Lcom/fleapapa/helper/CallMan$BurstAdapter;-><init>(Lcom/fleapapa/helper/CallMan;)V

    iput-object v4, p0, Lcom/fleapapa/helper/CallMan;->badapter:Lcom/fleapapa/helper/CallMan$BurstAdapter;

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 102
    new-instance v3, Lcom/google/android/maps/MapView;

    invoke-static {}, Lcom/fleapapa/util/My;->isEmulator()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 103
    const v4, 0x7f060108

    :goto_0
    invoke-virtual {p0, v4}, Lcom/fleapapa/helper/CallMan;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/google/android/maps/MapView;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 102
    iput-object v3, p0, Lcom/fleapapa/helper/CallMan;->mview:Lcom/google/android/maps/MapView;

    .line 104
    new-instance v3, Lcom/google/android/maps/GeoPoint;

    sget-object v4, Lcom/fleapapa/util/My;->gps:Lcom/fleapapa/util/MyGPS;

    invoke-virtual {v4}, Lcom/fleapapa/util/MyGPS;->loc()Landroid/location/Location;

    move-result-object v4

    invoke-virtual {v4}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    mul-double/2addr v4, v9

    double-to-int v4, v4

    sget-object v5, Lcom/fleapapa/util/My;->gps:Lcom/fleapapa/util/MyGPS;

    invoke-virtual {v5}, Lcom/fleapapa/util/MyGPS;->loc()Landroid/location/Location;

    move-result-object v5

    invoke-virtual {v5}, Landroid/location/Location;->getLongitude()D

    move-result-wide v5

    mul-double/2addr v5, v9

    double-to-int v5, v5

    invoke-direct {v3, v4, v5}, Lcom/google/android/maps/GeoPoint;-><init>(II)V

    iput-object v3, p0, Lcom/fleapapa/helper/CallMan;->mypoint:Lcom/google/android/maps/GeoPoint;

    .line 105
    const-string v3, "zoomLevel"

    new-array v4, v8, [Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/fleapapa/util/MyUtil;->getPreference(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/fleapapa/util/MyUtil;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/fleapapa/helper/CallMan;->zoomLevel:I

    .line 106
    iget v3, p0, Lcom/fleapapa/helper/CallMan;->zoomLevel:I

    if-lez v3, :cond_0

    iget v3, p0, Lcom/fleapapa/helper/CallMan;->zoomLevel:I

    const/16 v4, 0x15

    if-le v3, v4, :cond_1

    :cond_0
    const/16 v3, 0xa

    iput v3, p0, Lcom/fleapapa/helper/CallMan;->zoomLevel:I

    .line 107
    :cond_1
    iget-object v3, p0, Lcom/fleapapa/helper/CallMan;->mview:Lcom/google/android/maps/MapView;

    invoke-virtual {v3}, Lcom/google/android/maps/MapView;->getOverlays()Ljava/util/List;

    move-result-object v3

    new-instance v4, Lcom/fleapapa/helper/CallMan$CallOverlay;

    invoke-direct {v4, p0}, Lcom/fleapapa/helper/CallMan$CallOverlay;-><init>(Lcom/fleapapa/helper/CallMan;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    iget-object v3, p0, Lcom/fleapapa/helper/CallMan;->mview:Lcom/google/android/maps/MapView;

    invoke-virtual {v3, v7}, Lcom/google/android/maps/MapView;->setBuiltInZoomControls(Z)V

    .line 109
    iget-object v3, p0, Lcom/fleapapa/helper/CallMan;->mview:Lcom/google/android/maps/MapView;

    invoke-virtual {v3, v7}, Lcom/google/android/maps/MapView;->setEnabled(Z)V

    .line 110
    iget-object v3, p0, Lcom/fleapapa/helper/CallMan;->mview:Lcom/google/android/maps/MapView;

    invoke-virtual {v3, v7}, Lcom/google/android/maps/MapView;->setClickable(Z)V

    .line 112
    const v3, 0x7f080071

    invoke-virtual {p0, v3}, Lcom/fleapapa/helper/CallMan;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 113
    .local v0, bframe:Landroid/widget/FrameLayout;
    iget-object v3, p0, Lcom/fleapapa/helper/CallMan;->mview:Lcom/google/android/maps/MapView;

    .line 114
    iget-object v4, p0, Lcom/fleapapa/helper/CallMan;->bview:Landroid/widget/ListView;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->indexOfChild(Landroid/view/View;)I

    move-result v4

    .line 115
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v5, v11, v11}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 113
    invoke-virtual {v0, v3, v4, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 117
    const v3, 0x7f080076

    invoke-virtual {p0, v3}, Lcom/fleapapa/helper/CallMan;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/admob/android/ads/AdView;

    iput-object v3, p0, Lcom/fleapapa/helper/CallMan;->admob:Lcom/admob/android/ads/AdView;

    .line 118
    iget-object v3, p0, Lcom/fleapapa/helper/CallMan;->admob:Lcom/admob/android/ads/AdView;

    new-instance v4, Lcom/fleapapa/helper/CallMan$1;

    invoke-direct {v4, p0}, Lcom/fleapapa/helper/CallMan$1;-><init>(Lcom/fleapapa/helper/CallMan;)V

    invoke-virtual {v3, v4}, Lcom/admob/android/ads/AdView;->setAdListener(Lcom/admob/android/ads/AdListener;)V

    .line 133
    const v3, 0x7f040001

    invoke-static {p0, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    iput-object v3, p0, Lcom/fleapapa/helper/CallMan;->roller:Landroid/view/animation/Animation;

    .line 135
    invoke-virtual {p0}, Lcom/fleapapa/helper/CallMan;->getIntent()Landroid/content/Intent;

    move-result-object v3

    iput-object v3, p0, Lcom/fleapapa/helper/CallMan;->intent:Landroid/content/Intent;

    .line 136
    iget-object v3, p0, Lcom/fleapapa/helper/CallMan;->intent:Landroid/content/Intent;

    const-string v4, "urgency"

    invoke-virtual {v3, v4, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/fleapapa/helper/CallMan;->urgency:Z

    .line 138
    iget-object v3, p0, Lcom/fleapapa/helper/CallMan;->intent:Landroid/content/Intent;

    const-string v4, "cid"

    invoke-virtual {v3, v4, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 139
    .local v2, cid:I
    if-eqz v2, :cond_2

    .line 140
    sget-object v4, Lcom/fleapapa/util/My;->papa:Lcom/fleapapa/helper/CallPapa;

    sget-object v3, Lcom/fleapapa/util/My;->papa:Lcom/fleapapa/helper/CallPapa;

    iget-object v3, v3, Lcom/fleapapa/helper/CallPapa;->calls:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/fleapapa/helper/CallPapa$Call;

    invoke-virtual {v4, v3}, Lcom/fleapapa/helper/CallPapa;->setaCall(Lcom/fleapapa/helper/CallPapa$Call;)V

    .line 141
    sget-object v3, Lcom/fleapapa/util/My;->papa:Lcom/fleapapa/helper/CallPapa;

    iget-object v3, v3, Lcom/fleapapa/helper/CallPapa;->acall:Lcom/fleapapa/helper/CallPapa$Call;

    if-eqz v3, :cond_2

    sget-object v3, Lcom/fleapapa/util/My;->papa:Lcom/fleapapa/helper/CallPapa;

    iget-object v3, v3, Lcom/fleapapa/helper/CallPapa;->acall:Lcom/fleapapa/helper/CallPapa$Call;

    iget-boolean v3, v3, Lcom/fleapapa/helper/CallPapa$Call;->urgency:Z

    iput-boolean v3, p0, Lcom/fleapapa/helper/CallMan;->urgency:Z

    .line 144
    :cond_2
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    sput-object v3, Lcom/fleapapa/helper/CallMan;->handler:Landroid/os/Handler;

    .line 148
    new-instance v3, Lcom/fleapapa/helper/CallMan$2;

    invoke-direct {v3, p0}, Lcom/fleapapa/helper/CallMan$2;-><init>(Lcom/fleapapa/helper/CallMan;)V

    sput-object v3, Lcom/fleapapa/helper/CallMan;->refreshUI:Ljava/lang/Runnable;

    .line 219
    const v3, 0x7f080062

    invoke-virtual {p0, v3}, Lcom/fleapapa/helper/CallMan;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/fleapapa/util/MyImageButton;

    new-instance v4, Lcom/fleapapa/helper/CallMan$3;

    invoke-direct {v4, p0}, Lcom/fleapapa/helper/CallMan$3;-><init>(Lcom/fleapapa/helper/CallMan;)V

    invoke-virtual {v3, v4}, Lcom/fleapapa/util/MyImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 224
    const v3, 0x7f080066

    invoke-virtual {p0, v3}, Lcom/fleapapa/helper/CallMan;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/fleapapa/util/MyImageButton;

    new-instance v4, Lcom/fleapapa/helper/CallMan$4;

    invoke-direct {v4, p0}, Lcom/fleapapa/helper/CallMan$4;-><init>(Lcom/fleapapa/helper/CallMan;)V

    invoke-virtual {v3, v4}, Lcom/fleapapa/util/MyImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 229
    const v3, 0x7f08006c

    invoke-virtual {p0, v3}, Lcom/fleapapa/helper/CallMan;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/fleapapa/util/MyImageButton;

    const v4, 0x7f0600dd

    invoke-virtual {p0, v4}, Lcom/fleapapa/helper/CallMan;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/fleapapa/util/MyImageButton;->text:Ljava/lang/String;

    .line 230
    const v3, 0x7f08006c

    invoke-virtual {p0, v3}, Lcom/fleapapa/helper/CallMan;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/fleapapa/util/MyImageButton;

    new-instance v4, Lcom/fleapapa/helper/CallMan$5;

    invoke-direct {v4, p0}, Lcom/fleapapa/helper/CallMan$5;-><init>(Lcom/fleapapa/helper/CallMan;)V

    invoke-virtual {v3, v4}, Lcom/fleapapa/util/MyImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 235
    const v3, 0x7f08006d

    invoke-virtual {p0, v3}, Lcom/fleapapa/helper/CallMan;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    invoke-virtual {v3, v7}, Landroid/widget/EditText;->setSelectAllOnFocus(Z)V

    .line 236
    const v3, 0x7f08006d

    invoke-virtual {p0, v3}, Lcom/fleapapa/helper/CallMan;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    new-instance v4, Lcom/fleapapa/helper/CallMan$6;

    invoke-direct {v4, p0}, Lcom/fleapapa/helper/CallMan$6;-><init>(Lcom/fleapapa/helper/CallMan;)V

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 249
    const v3, 0x7f080065

    invoke-virtual {p0, v3}, Lcom/fleapapa/helper/CallMan;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/fleapapa/util/MyImageButton;

    const v4, 0x7f0600d5

    invoke-virtual {p0, v4}, Lcom/fleapapa/helper/CallMan;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/fleapapa/util/MyImageButton;->text:Ljava/lang/String;

    .line 250
    const v3, 0x7f080065

    invoke-virtual {p0, v3}, Lcom/fleapapa/helper/CallMan;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/fleapapa/util/MyImageButton;

    new-instance v4, Lcom/fleapapa/helper/CallMan$7;

    invoke-direct {v4, p0}, Lcom/fleapapa/helper/CallMan$7;-><init>(Lcom/fleapapa/helper/CallMan;)V

    invoke-virtual {v3, v4}, Lcom/fleapapa/util/MyImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 267
    const v3, 0x7f080064

    invoke-virtual {p0, v3}, Lcom/fleapapa/helper/CallMan;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/fleapapa/util/MyImageButton;

    const v4, 0x7f0600d1

    invoke-virtual {p0, v4}, Lcom/fleapapa/helper/CallMan;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/fleapapa/util/MyImageButton;->text:Ljava/lang/String;

    .line 268
    const v3, 0x7f080064

    invoke-virtual {p0, v3}, Lcom/fleapapa/helper/CallMan;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/fleapapa/util/MyImageButton;

    new-instance v4, Lcom/fleapapa/helper/CallMan$8;

    invoke-direct {v4, p0}, Lcom/fleapapa/helper/CallMan$8;-><init>(Lcom/fleapapa/helper/CallMan;)V

    invoke-virtual {v3, v4}, Lcom/fleapapa/util/MyImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 273
    invoke-virtual {p0, v12}, Lcom/fleapapa/helper/CallMan;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/fleapapa/util/MyImageButton;

    const v4, 0x7f0600d6

    invoke-virtual {p0, v4}, Lcom/fleapapa/helper/CallMan;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/fleapapa/util/MyImageButton;->text:Ljava/lang/String;

    .line 274
    invoke-virtual {p0, v12}, Lcom/fleapapa/helper/CallMan;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/fleapapa/util/MyImageButton;

    new-instance v4, Lcom/fleapapa/helper/CallMan$9;

    invoke-direct {v4, p0}, Lcom/fleapapa/helper/CallMan$9;-><init>(Lcom/fleapapa/helper/CallMan;)V

    invoke-virtual {v3, v4}, Lcom/fleapapa/util/MyImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 298
    const v3, 0x7f080075

    invoke-virtual {p0, v3}, Lcom/fleapapa/helper/CallMan;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/SurfaceView;

    iput-object v3, p0, Lcom/fleapapa/helper/CallMan;->sview:Landroid/view/SurfaceView;

    .line 299
    iget-object v3, p0, Lcom/fleapapa/helper/CallMan;->sview:Landroid/view/SurfaceView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 300
    sget-object v3, Lcom/fleapapa/util/My;->papa:Lcom/fleapapa/helper/CallPapa;

    iget-boolean v3, v3, Lcom/fleapapa/helper/CallPapa;->enableCamera:Z

    if-eqz v3, :cond_3

    .line 301
    iget-object v3, p0, Lcom/fleapapa/helper/CallMan;->sview:Landroid/view/SurfaceView;

    invoke-virtual {v3}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v3

    iput-object v3, p0, Lcom/fleapapa/helper/CallMan;->sholder:Landroid/view/SurfaceHolder;

    .line 302
    iget-object v3, p0, Lcom/fleapapa/helper/CallMan;->sholder:Landroid/view/SurfaceHolder;

    const/4 v4, 0x3

    invoke-interface {v3, v4}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 303
    iget-object v3, p0, Lcom/fleapapa/helper/CallMan;->sholder:Landroid/view/SurfaceHolder;

    new-instance v4, Lcom/fleapapa/helper/CallMan$10;

    invoke-direct {v4, p0}, Lcom/fleapapa/helper/CallMan$10;-><init>(Lcom/fleapapa/helper/CallMan;)V

    invoke-interface {v3, v4}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 317
    :cond_3
    if-nez v2, :cond_5

    .line 318
    sget-object v3, Lcom/fleapapa/util/My;->papa:Lcom/fleapapa/helper/CallPapa;

    iget-object v3, v3, Lcom/fleapapa/helper/CallPapa;->calls:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_7

    .line 324
    :cond_5
    :goto_1
    return-void

    .line 103
    .end local v0           #bframe:Landroid/widget/FrameLayout;
    .end local v2           #cid:I
    :cond_6
    const v4, 0x7f060109

    goto/16 :goto_0

    .line 318
    .restart local v0       #bframe:Landroid/widget/FrameLayout;
    .restart local v2       #cid:I
    :cond_7
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fleapapa/helper/CallPapa$Call;

    .line 319
    .local v1, call:Lcom/fleapapa/helper/CallPapa$Call;
    iget-boolean v4, v1, Lcom/fleapapa/helper/CallPapa$Call;->urgency:Z

    iget-boolean v5, p0, Lcom/fleapapa/helper/CallMan;->urgency:Z

    if-ne v4, v5, :cond_4

    .line 320
    iget-object v4, v1, Lcom/fleapapa/helper/CallPapa$Call;->ues:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v4

    if-le v4, v7, :cond_4

    .line 321
    sget-object v3, Lcom/fleapapa/util/My;->papa:Lcom/fleapapa/helper/CallPapa;

    invoke-virtual {v3, v1}, Lcom/fleapapa/helper/CallPapa;->setaCall(Lcom/fleapapa/helper/CallPapa$Call;)V

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    .line 393
    sget-object v0, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/fleapapa/helper/CallMan;->WHO:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ".onDestroy"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "zoomLevel"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/fleapapa/helper/CallMan;->mview:Lcom/google/android/maps/MapView;

    invoke-virtual {v2}, Lcom/google/android/maps/MapView;->getZoomLevel()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/fleapapa/util/MyUtil;->putPreference([Ljava/lang/String;)V

    .line 395
    invoke-super {p0}, Lcom/google/android/maps/MapActivity;->onDestroy()V

    .line 396
    return-void
.end method

.method protected onPause()V
    .locals 3

    .prologue
    .line 385
    sget-object v0, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/fleapapa/helper/CallMan;->WHO:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ".onPause"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    invoke-super {p0}, Lcom/google/android/maps/MapActivity;->onPause()V

    .line 387
    iget-object v0, p0, Lcom/fleapapa/helper/CallMan;->camera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 388
    iget-object v0, p0, Lcom/fleapapa/helper/CallMan;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 389
    :cond_0
    sget-object v0, Lcom/fleapapa/util/My;->papa:Lcom/fleapapa/helper/CallPapa;

    iget-object v0, v0, Lcom/fleapapa/helper/CallPapa;->acall:Lcom/fleapapa/helper/CallPapa$Call;

    if-eqz v0, :cond_1

    .line 390
    sget-object v0, Lcom/fleapapa/util/My;->papa:Lcom/fleapapa/helper/CallPapa;

    iget-object v0, v0, Lcom/fleapapa/helper/CallPapa;->acall:Lcom/fleapapa/helper/CallPapa$Call;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/fleapapa/helper/CallPapa$Call;->foreground:Z

    .line 391
    :cond_1
    return-void
.end method

.method protected onResume()V
    .locals 6

    .prologue
    const/4 v4, 0x1

    const-string v5, "notification"

    .line 326
    sget-object v1, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/fleapapa/helper/CallMan;->WHO:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ".onResume: urgency="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/fleapapa/helper/CallMan;->urgency:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    invoke-super {p0}, Lcom/google/android/maps/MapActivity;->onResume()V

    .line 328
    sput-object p0, Lcom/fleapapa/helper/CallMan;->currentMan:Lcom/fleapapa/helper/CallMan;

    .line 334
    sget-object v1, Lcom/fleapapa/util/My;->name:Ljava/lang/String;

    const-string v2, "[unknown]"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 335
    sget-object v1, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/fleapapa/helper/CallMan;->WHO:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ".onCreate: user name still unknown"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    const/16 v1, 0x309

    invoke-static {p0, v4, v1}, Lcom/fleapapa/helper/Signin;->sign_in_out(Landroid/app/Activity;ZI)V

    .line 343
    :cond_0
    sget-object v1, Lcom/fleapapa/helper/CallTabs;->tabs:Landroid/widget/TabHost;

    invoke-virtual {v1}, Landroid/widget/TabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v1

    const-string v2, "urgency"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/fleapapa/helper/CallMan;->urgency:Z

    .line 344
    invoke-virtual {p0}, Lcom/fleapapa/helper/CallMan;->layoutCalls()V

    .line 346
    sget-object v1, Lcom/fleapapa/util/My;->papa:Lcom/fleapapa/helper/CallPapa;

    iget-object v1, v1, Lcom/fleapapa/helper/CallPapa;->acall:Lcom/fleapapa/helper/CallPapa$Call;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/fleapapa/util/My;->papa:Lcom/fleapapa/helper/CallPapa;

    iget-object v1, v1, Lcom/fleapapa/helper/CallPapa;->acall:Lcom/fleapapa/helper/CallPapa$Call;

    iget-boolean v1, v1, Lcom/fleapapa/helper/CallPapa$Call;->urgency:Z

    iget-boolean v2, p0, Lcom/fleapapa/helper/CallMan;->urgency:Z

    if-eq v1, v2, :cond_2

    .line 347
    :cond_1
    sget-object v1, Lcom/fleapapa/util/My;->papa:Lcom/fleapapa/helper/CallPapa;

    sget-object v2, Lcom/fleapapa/util/My;->papa:Lcom/fleapapa/helper/CallPapa;

    iget-boolean v3, p0, Lcom/fleapapa/helper/CallMan;->urgency:Z

    invoke-virtual {v2, v3}, Lcom/fleapapa/helper/CallPapa;->call0(Z)Lcom/fleapapa/helper/CallPapa$Call;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/fleapapa/helper/CallPapa;->setaCall(Lcom/fleapapa/helper/CallPapa$Call;)V

    .line 349
    :cond_2
    sget-object v1, Lcom/fleapapa/util/My;->papa:Lcom/fleapapa/helper/CallPapa;

    iget-object v1, v1, Lcom/fleapapa/helper/CallPapa;->acall:Lcom/fleapapa/helper/CallPapa$Call;

    invoke-virtual {p0, v1}, Lcom/fleapapa/helper/CallMan;->gotoCall(Lcom/fleapapa/helper/CallPapa$Call;)V

    .line 351
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sput-wide v1, Lcom/fleapapa/helper/CallTabs;->tshow:J

    .line 353
    const-string v1, "notification"

    invoke-virtual {p0, v5}, Lcom/fleapapa/helper/CallMan;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/app/NotificationManager;->cancel(I)V

    .line 354
    const-string v1, "notification"

    invoke-virtual {p0, v5}, Lcom/fleapapa/helper/CallMan;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/app/NotificationManager;->cancel(I)V

    .line 356
    iget-boolean v1, p0, Lcom/fleapapa/helper/CallMan;->urgency:Z

    if-eqz v1, :cond_3

    .line 357
    sget-object v1, Lcom/fleapapa/util/My;->papa:Lcom/fleapapa/helper/CallPapa;

    iget-boolean v1, v1, Lcom/fleapapa/helper/CallPapa;->noUrgency:Z

    if-eqz v1, :cond_3

    .line 358
    invoke-virtual {p0}, Lcom/fleapapa/helper/CallMan;->promptUrgency()V

    .line 362
    :cond_3
    sget-object v1, Lcom/fleapapa/util/My;->papa:Lcom/fleapapa/helper/CallPapa;

    iget-boolean v1, v1, Lcom/fleapapa/helper/CallPapa;->enableCamera:Z

    if-eqz v1, :cond_4

    .line 363
    invoke-static {}, Landroid/hardware/Camera;->open()Landroid/hardware/Camera;

    move-result-object v1

    iput-object v1, p0, Lcom/fleapapa/helper/CallMan;->camera:Landroid/hardware/Camera;

    .line 364
    iget-object v1, p0, Lcom/fleapapa/helper/CallMan;->camera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 365
    .local v0, cparam:Landroid/hardware/Camera$Parameters;
    sget-object v1, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/fleapapa/helper/CallMan;->WHO:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ".onResume: set preview format from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPreviewFormat()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setPreviewFormat(I)V

    .line 367
    const/16 v1, 0x15c

    const/16 v2, 0x120

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 368
    sget v1, Lcom/fleapapa/util/My;->performa:I

    mul-int/lit8 v1, v1, 0x3

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setPreviewFrameRate(I)V

    .line 372
    const-string v1, "orientation"

    const-string v2, "portrait"

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    iget-object v1, p0, Lcom/fleapapa/helper/CallMan;->camera:Landroid/hardware/Camera;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 375
    iget-object v1, p0, Lcom/fleapapa/helper/CallMan;->camera:Landroid/hardware/Camera;

    new-instance v2, Lcom/fleapapa/helper/CallMan$11;

    invoke-direct {v2, p0}, Lcom/fleapapa/helper/CallMan$11;-><init>(Lcom/fleapapa/helper/CallMan;)V

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 381
    .end local v0           #cparam:Landroid/hardware/Camera$Parameters;
    :cond_4
    sget-object v1, Lcom/fleapapa/util/My;->papa:Lcom/fleapapa/helper/CallPapa;

    iget-object v1, v1, Lcom/fleapapa/helper/CallPapa;->acall:Lcom/fleapapa/helper/CallPapa$Call;

    if-eqz v1, :cond_5

    .line 382
    sget-object v1, Lcom/fleapapa/util/My;->papa:Lcom/fleapapa/helper/CallPapa;

    iget-object v1, v1, Lcom/fleapapa/helper/CallPapa;->acall:Lcom/fleapapa/helper/CallPapa$Call;

    iput-boolean v4, v1, Lcom/fleapapa/helper/CallPapa$Call;->foreground:Z

    .line 383
    :cond_5
    return-void
.end method

.method promptUrgency()V
    .locals 4

    .prologue
    .line 419
    const/4 v0, 0x0

    const v1, 0x7f06001a

    invoke-virtual {p0, v1}, Lcom/fleapapa/helper/CallMan;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 420
    new-instance v2, Lcom/fleapapa/helper/CallMan$12;

    invoke-direct {v2, p0}, Lcom/fleapapa/helper/CallMan$12;-><init>(Lcom/fleapapa/helper/CallMan;)V

    .line 425
    new-instance v3, Lcom/fleapapa/helper/CallMan$13;

    invoke-direct {v3, p0}, Lcom/fleapapa/helper/CallMan$13;-><init>(Lcom/fleapapa/helper/CallMan;)V

    .line 419
    invoke-static {p0, v0, v1, v2, v3}, Lcom/fleapapa/util/MyAlert;->alert(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V

    .line 431
    return-void
.end method

.method selectPeers(Lcom/fleapapa/helper/CallPapa$Call;)V
    .locals 3
    .parameter "call"

    .prologue
    .line 710
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/fleapapa/helper/CallGrps;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 711
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "cid"

    iget v2, p1, Lcom/fleapapa/helper/CallPapa$Call;->cid:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 712
    const-string v1, "urgency"

    iget-boolean v2, p0, Lcom/fleapapa/helper/CallMan;->urgency:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 713
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/fleapapa/helper/CallMan;->startActivityForResult(Landroid/content/Intent;I)V

    .line 714
    return-void
.end method

.method setMap()V
    .locals 10

    .prologue
    .line 690
    iget-object v7, p0, Lcom/fleapapa/helper/CallMan;->mypoint:Lcom/google/android/maps/GeoPoint;

    invoke-virtual {v7}, Lcom/google/android/maps/GeoPoint;->getLatitudeE6()I

    move-result v4

    .line 691
    .local v4, minLati:I
    iget-object v7, p0, Lcom/fleapapa/helper/CallMan;->mypoint:Lcom/google/android/maps/GeoPoint;

    invoke-virtual {v7}, Lcom/google/android/maps/GeoPoint;->getLatitudeE6()I

    move-result v2

    .line 692
    .local v2, maxLati:I
    iget-object v7, p0, Lcom/fleapapa/helper/CallMan;->mypoint:Lcom/google/android/maps/GeoPoint;

    invoke-virtual {v7}, Lcom/google/android/maps/GeoPoint;->getLongitudeE6()I

    move-result v5

    .line 693
    .local v5, minLoni:I
    iget-object v7, p0, Lcom/fleapapa/helper/CallMan;->mypoint:Lcom/google/android/maps/GeoPoint;

    invoke-virtual {v7}, Lcom/google/android/maps/GeoPoint;->getLongitudeE6()I

    move-result v3

    .line 695
    .local v3, maxLoni:I
    sget-object v7, Lcom/fleapapa/util/My;->papa:Lcom/fleapapa/helper/CallPapa;

    iget-object v7, v7, Lcom/fleapapa/helper/CallPapa;->calls:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v7}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_2

    .line 702
    new-instance v1, Lcom/google/android/maps/GeoPoint;

    add-int v7, v4, v2

    div-int/lit8 v7, v7, 0x2

    add-int v8, v5, v3

    div-int/lit8 v8, v8, 0x2

    invoke-direct {v1, v7, v8}, Lcom/google/android/maps/GeoPoint;-><init>(II)V

    .line 703
    .local v1, center:Lcom/google/android/maps/GeoPoint;
    iget-object v7, p0, Lcom/fleapapa/helper/CallMan;->mview:Lcom/google/android/maps/MapView;

    invoke-virtual {v7}, Lcom/google/android/maps/MapView;->getController()Lcom/google/android/maps/MapController;

    move-result-object v7

    invoke-virtual {v7, v1}, Lcom/google/android/maps/MapController;->setCenter(Lcom/google/android/maps/GeoPoint;)V

    .line 704
    if-eq v2, v4, :cond_1

    if-ne v3, v5, :cond_7

    .line 705
    :cond_1
    iget-object v7, p0, Lcom/fleapapa/helper/CallMan;->mview:Lcom/google/android/maps/MapView;

    invoke-virtual {v7}, Lcom/google/android/maps/MapView;->getController()Lcom/google/android/maps/MapController;

    move-result-object v7

    iget v8, p0, Lcom/fleapapa/helper/CallMan;->zoomLevel:I

    invoke-virtual {v7, v8}, Lcom/google/android/maps/MapController;->setZoom(I)I

    .line 707
    :goto_0
    iget-object v7, p0, Lcom/fleapapa/helper/CallMan;->mview:Lcom/google/android/maps/MapView;

    invoke-virtual {v7}, Lcom/google/android/maps/MapView;->invalidate()V

    .line 708
    return-void

    .line 695
    .end local v1           #center:Lcom/google/android/maps/GeoPoint;
    :cond_2
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fleapapa/helper/CallPapa$Call;

    .line 696
    .local v0, call:Lcom/fleapapa/helper/CallPapa$Call;
    iget-object v8, v0, Lcom/fleapapa/helper/CallPapa$Call;->ues:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v8}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_3
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/fleapapa/helper/CallPapa$UE;

    .line 697
    .local v6, ue:Lcom/fleapapa/helper/CallPapa$UE;
    iget v9, v6, Lcom/fleapapa/helper/CallPapa$UE;->lati:I

    if-ge v9, v4, :cond_4

    iget v4, v6, Lcom/fleapapa/helper/CallPapa$UE;->lati:I

    .line 698
    :cond_4
    iget v9, v6, Lcom/fleapapa/helper/CallPapa$UE;->lati:I

    if-le v9, v2, :cond_5

    iget v2, v6, Lcom/fleapapa/helper/CallPapa$UE;->lati:I

    .line 699
    :cond_5
    iget v9, v6, Lcom/fleapapa/helper/CallPapa$UE;->loni:I

    if-ge v9, v5, :cond_6

    iget v5, v6, Lcom/fleapapa/helper/CallPapa$UE;->loni:I

    .line 700
    :cond_6
    iget v9, v6, Lcom/fleapapa/helper/CallPapa$UE;->loni:I

    if-le v9, v3, :cond_3

    iget v3, v6, Lcom/fleapapa/helper/CallPapa$UE;->loni:I

    goto :goto_1

    .line 706
    .end local v0           #call:Lcom/fleapapa/helper/CallPapa$Call;
    .end local v6           #ue:Lcom/fleapapa/helper/CallPapa$UE;
    .restart local v1       #center:Lcom/google/android/maps/GeoPoint;
    :cond_7
    iget-object v7, p0, Lcom/fleapapa/helper/CallMan;->mview:Lcom/google/android/maps/MapView;

    invoke-virtual {v7}, Lcom/google/android/maps/MapView;->getController()Lcom/google/android/maps/MapController;

    move-result-object v7

    sub-int v8, v2, v4

    sub-int v9, v3, v5

    invoke-virtual {v7, v8, v9}, Lcom/google/android/maps/MapController;->zoomToSpan(II)V

    goto :goto_0
.end method

.method setTitle(Lcom/fleapapa/helper/CallPapa$Call;)V
    .locals 2
    .parameter "call"

    .prologue
    .line 451
    iget-object v0, p1, Lcom/fleapapa/helper/CallPapa$Call;->title:Ljava/lang/String;

    invoke-static {v0}, Lcom/fleapapa/util/MyUtil;->empty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 452
    sget-object v0, Lcom/fleapapa/helper/CallTabs;->tabact:Landroid/app/TabActivity;

    const v1, 0x7f0600e1

    invoke-virtual {v0, v1}, Landroid/app/TabActivity;->setTitle(I)V

    .line 454
    :goto_0
    return-void

    .line 453
    :cond_0
    sget-object v0, Lcom/fleapapa/helper/CallTabs;->tabact:Landroid/app/TabActivity;

    iget-object v1, p1, Lcom/fleapapa/helper/CallPapa$Call;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/TabActivity;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method showPeers(Lcom/fleapapa/helper/CallPapa$Call;)V
    .locals 12
    .parameter "call"

    .prologue
    const v11, 0x7f08006a

    const/16 v10, 0x18

    const/4 v9, 0x0

    const v8, 0x7f080069

    .line 717
    iget-object v6, p1, Lcom/fleapapa/helper/CallPapa$Call;->ues:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v2

    .line 718
    .local v2, nue:I
    const/4 v6, 0x1

    if-le v2, v6, :cond_1

    move v6, v8

    :goto_0
    invoke-virtual {p0, v6}, Lcom/fleapapa/helper/CallMan;->findViewById(I)Landroid/view/View;

    move-result-object v6

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 719
    const/4 v6, 0x2

    if-ge v2, v6, :cond_2

    move v6, v8

    :goto_1
    invoke-virtual {p0, v6}, Lcom/fleapapa/helper/CallMan;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/view/View;->setVisibility(I)V

    .line 720
    invoke-virtual {p0, v8}, Lcom/fleapapa/helper/CallMan;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iget-boolean v7, p1, Lcom/fleapapa/helper/CallPapa$Call;->urgency:Z

    if-eqz v7, :cond_3

    const v7, 0x7f0600e0

    :goto_2
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    .line 722
    const v6, 0x7f08006b

    invoke-virtual {p0, v6}, Lcom/fleapapa/helper/CallMan;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 723
    .local v1, ll:Landroid/widget/LinearLayout;
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 724
    iget-object v6, p1, Lcom/fleapapa/helper/CallPapa$Call;->ues:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_4

    .line 739
    invoke-virtual {p0}, Lcom/fleapapa/helper/CallMan;->setMap()V

    .line 740
    return-void

    .end local v1           #ll:Landroid/widget/LinearLayout;
    :cond_1
    move v6, v11

    .line 718
    goto :goto_0

    :cond_2
    move v6, v11

    .line 719
    goto :goto_1

    .line 720
    :cond_3
    const v7, 0x7f0600d9

    goto :goto_2

    .line 724
    .restart local v1       #ll:Landroid/widget/LinearLayout;
    :cond_4
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/fleapapa/helper/CallPapa$UE;

    .line 725
    .local v5, ue:Lcom/fleapapa/helper/CallPapa$UE;
    iget v7, v5, Lcom/fleapapa/helper/CallPapa$UE;->uid:I

    sget v8, Lcom/fleapapa/util/My;->uid:I

    if-eq v7, v8, :cond_0

    .line 726
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 727
    .local v0, iv:Landroid/widget/ImageView;
    iget v7, v5, Lcom/fleapapa/helper/CallPapa$UE;->avatar:I

    invoke-static {v7}, Lcom/fleapapa/helper/Avatar;->avatar(I)I

    move-result v7

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 728
    invoke-virtual {v1, v0, v10, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    .line 729
    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 730
    .local v4, tv:Landroid/widget/TextView;
    iget-object v7, p1, Lcom/fleapapa/helper/CallPapa$Call;->ons:Landroid/util/SparseBooleanArray;

    iget v8, v5, Lcom/fleapapa/helper/CallPapa$UE;->uid:I

    invoke-virtual {v7, v8}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v3

    .line 731
    .local v3, oncall:Z
    new-instance v7, Ljava/lang/StringBuilder;

    iget-object v8, v5, Lcom/fleapapa/helper/CallPapa$UE;->name:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 732
    if-eqz v3, :cond_5

    const/4 v7, -0x1

    :goto_4
    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 733
    if-eqz v3, :cond_6

    sget-object v7, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    :goto_5
    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 734
    if-eqz v3, :cond_7

    const/16 v7, 0x10

    :goto_6
    int-to-float v7, v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setTextSize(F)V

    .line 735
    if-eqz v3, :cond_8

    const v7, 0x11007f00

    :goto_7
    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 736
    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_3

    .line 732
    :cond_5
    const v7, -0x808081

    goto :goto_4

    .line 733
    :cond_6
    sget-object v7, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    goto :goto_5

    .line 734
    :cond_7
    const/16 v7, 0xe

    goto :goto_6

    :cond_8
    move v7, v9

    .line 735
    goto :goto_7
.end method

.method showPushButton(Landroid/widget/Button;)V
    .locals 3
    .parameter "pushButton"

    .prologue
    .line 786
    invoke-virtual {p1}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 787
    .local v0, dr:Landroid/graphics/drawable/Drawable;
    sget-object v1, Lcom/fleapapa/util/My;->papa:Lcom/fleapapa/helper/CallPapa;

    iget-object v1, v1, Lcom/fleapapa/helper/CallPapa;->acall:Lcom/fleapapa/helper/CallPapa$Call;

    iget v1, v1, Lcom/fleapapa/helper/CallPapa$Call;->tstate:I

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 788
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 790
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 791
    sget-object v1, Lcom/fleapapa/util/My;->papa:Lcom/fleapapa/helper/CallPapa;

    iget-object v1, v1, Lcom/fleapapa/helper/CallPapa;->acall:Lcom/fleapapa/helper/CallPapa$Call;

    iget v1, v1, Lcom/fleapapa/helper/CallPapa$Call;->tstate:I

    sparse-switch v1, :sswitch_data_0

    .line 802
    const v1, 0x7f060010

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setText(I)V

    .line 805
    :goto_0
    return-void

    .line 793
    :sswitch_0
    const v1, 0x7f0600d2

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_0

    .line 796
    :sswitch_1
    const v1, 0x7f0600d3

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_0

    .line 799
    :sswitch_2
    const v1, 0x7f0600d4

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_0

    .line 791
    nop

    :sswitch_data_0
    .sparse-switch
        0x7700af00 -> :sswitch_0
        0x77ff7f00 -> :sswitch_2
        0x77ffff00 -> :sswitch_1
    .end sparse-switch
.end method

.method showToolBar(Z)V
    .locals 2
    .parameter "show"

    .prologue
    .line 456
    const v0, 0x7f080061

    invoke-virtual {p0, v0}, Lcom/fleapapa/helper/CallMan;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 457
    return-void

    .line 456
    :cond_0
    const/16 v1, 0x8

    goto :goto_0
.end method

.method startCamera()V
    .locals 4

    .prologue
    .line 398
    sget-object v1, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/fleapapa/helper/CallMan;->WHO:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ".startCamera="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/fleapapa/helper/CallMan;->camera:Landroid/hardware/Camera;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    sget-object v1, Lcom/fleapapa/util/My;->papa:Lcom/fleapapa/helper/CallPapa;

    iget-boolean v1, v1, Lcom/fleapapa/helper/CallPapa;->enableCamera:Z

    if-nez v1, :cond_1

    .line 410
    :cond_0
    :goto_0
    return-void

    .line 400
    :cond_1
    iget-object v1, p0, Lcom/fleapapa/helper/CallMan;->camera:Landroid/hardware/Camera;

    if-eqz v1, :cond_0

    .line 402
    :try_start_0
    iget-object v1, p0, Lcom/fleapapa/helper/CallMan;->sview:Landroid/view/SurfaceView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 403
    iget-object v1, p0, Lcom/fleapapa/helper/CallMan;->camera:Landroid/hardware/Camera;

    iget-object v2, p0, Lcom/fleapapa/helper/CallMan;->sholder:Landroid/view/SurfaceHolder;

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    .line 404
    iget-object v1, p0, Lcom/fleapapa/helper/CallMan;->camera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->startPreview()V

    .line 405
    sget-object v1, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/fleapapa/helper/CallMan;->WHO:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ".startCamera: fps="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/fleapapa/helper/CallMan;->camera:Landroid/hardware/Camera;

    invoke-virtual {v3}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getPreviewFrameRate()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 407
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 408
    .local v0, e:Ljava/lang/Exception;
    sget-object v1, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/fleapapa/helper/CallMan;->WHO:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ".startCamera: e="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method stopCamera()V
    .locals 3

    .prologue
    .line 412
    sget-object v0, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/fleapapa/helper/CallMan;->WHO:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ".stopCamera"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    sget-object v0, Lcom/fleapapa/util/My;->papa:Lcom/fleapapa/helper/CallPapa;

    iget-boolean v0, v0, Lcom/fleapapa/helper/CallPapa;->enableCamera:Z

    if-nez v0, :cond_1

    .line 417
    :cond_0
    :goto_0
    return-void

    .line 414
    :cond_1
    iget-object v0, p0, Lcom/fleapapa/helper/CallMan;->camera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 415
    iget-object v0, p0, Lcom/fleapapa/helper/CallMan;->sview:Landroid/view/SurfaceView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 416
    iget-object v0, p0, Lcom/fleapapa/helper/CallMan;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    goto :goto_0
.end method

.method tooManyCalls()Z
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 674
    sget-object v3, Lcom/fleapapa/util/My;->papa:Lcom/fleapapa/helper/CallPapa;

    iget-object v3, v3, Lcom/fleapapa/helper/CallPapa;->calls:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v3

    sget-object v4, Lcom/fleapapa/util/My;->papa:Lcom/fleapapa/helper/CallPapa;

    iget v4, v4, Lcom/fleapapa/helper/CallPapa;->maxCall:I

    if-lt v3, v4, :cond_0

    move v3, v11

    .line 687
    :goto_0
    return v3

    .line 676
    :cond_0
    iget-boolean v3, p0, Lcom/fleapapa/helper/CallMan;->urgency:Z

    if-eqz v3, :cond_2

    .line 677
    sget-object v3, Lcom/fleapapa/util/My;->papa:Lcom/fleapapa/helper/CallPapa;

    iget-object v3, v3, Lcom/fleapapa/helper/CallPapa;->calls:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_3

    .line 681
    const/4 v1, 0x0

    .line 682
    .local v1, ne:I
    const-string v3, "ecalls"

    new-array v4, v10, [Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/fleapapa/util/MyUtil;->getPreference(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    move v5, v10

    :goto_1
    if-lt v5, v4, :cond_4

    .end local v1           #ne:I
    :cond_2
    move v3, v10

    .line 687
    goto :goto_0

    .line 677
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fleapapa/helper/CallPapa$Call;

    .line 678
    .local v0, call:Lcom/fleapapa/helper/CallPapa$Call;
    iget-boolean v4, v0, Lcom/fleapapa/helper/CallPapa$Call;->urgency:Z

    if-eqz v4, :cond_1

    iget-boolean v4, v0, Lcom/fleapapa/helper/CallPapa$Call;->inbound:Z

    if-nez v4, :cond_1

    move v3, v11

    .line 679
    goto :goto_0

    .line 682
    .end local v0           #call:Lcom/fleapapa/helper/CallPapa$Call;
    .restart local v1       #ne:I
    :cond_4
    aget-object v2, v3, v5

    .line 683
    .local v2, s:Ljava/lang/String;
    invoke-static {v2}, Lcom/fleapapa/util/MyUtil;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v6, v8

    const-wide/32 v8, 0x5265c00

    cmp-long v6, v6, v8

    if-gez v6, :cond_5

    .line 684
    add-int/lit8 v1, v1, 0x1

    const/4 v6, 0x3

    if-lt v1, v6, :cond_5

    move v3, v11

    .line 685
    goto :goto_0

    .line 682
    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_1
.end method
