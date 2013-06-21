.class public Lcom/fleapapa/helper/CallBursts;
.super Landroid/app/Activity;
.source "CallBursts.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fleapapa/helper/CallBursts$BurstAdapter;,
        Lcom/fleapapa/helper/CallBursts$Burstx;
    }
.end annotation


# static fields
.field static call:Lcom/fleapapa/helper/CallPapa$Call;


# instance fields
.field private final WHO:Ljava/lang/String;

.field adapter:Lcom/fleapapa/helper/CallBursts$BurstAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/fleapapa/helper/CallBursts$BurstAdapter",
            "<",
            "Lcom/fleapapa/helper/CallBursts$Burstx;",
            ">;"
        }
    .end annotation
.end field

.field cplay:I

.field handler:Landroid/os/Handler;

.field lview:Landroid/widget/ListView;

.field runner:Ljava/lang/Runnable;

.field selectAll:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 27
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fleapapa/helper/CallBursts;->WHO:Ljava/lang/String;

    .line 26
    return-void
.end method


# virtual methods
.method nSelected()I
    .locals 3

    .prologue
    .line 157
    const/4 v1, 0x0

    .line 158
    .local v1, nselect:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/fleapapa/helper/CallBursts;->adapter:Lcom/fleapapa/helper/CallBursts$BurstAdapter;

    invoke-virtual {v2}, Lcom/fleapapa/helper/CallBursts$BurstAdapter;->getCount()I

    move-result v2

    if-lt v0, v2, :cond_0

    .line 160
    return v1

    .line 159
    :cond_0
    iget-object v2, p0, Lcom/fleapapa/helper/CallBursts;->adapter:Lcom/fleapapa/helper/CallBursts$BurstAdapter;

    invoke-virtual {v2, v0}, Lcom/fleapapa/helper/CallBursts$BurstAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fleapapa/helper/CallBursts$Burstx;

    iget-object v2, v2, Lcom/fleapapa/helper/CallBursts$Burstx;->burst:Lcom/fleapapa/helper/CallPapa$Burst;

    iget-boolean v2, v2, Lcom/fleapapa/helper/CallPapa$Burst;->selected:Z

    if-eqz v2, :cond_1

    add-int/lit8 v1, v1, 0x1

    .line 158
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "icicle"

    .prologue
    const v8, 0x7f08001c

    const v7, 0x7f080018

    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 37
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 38
    invoke-static {p0}, Lcom/fleapapa/util/My;->getScreenDimension(Landroid/app/Activity;)V

    .line 39
    sget-object v1, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    const-string v2, "CallBursts.onCreate"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/fleapapa/helper/CallBursts;->requestWindowFeature(I)Z

    .line 41
    const v1, 0x7f030005

    invoke-virtual {p0, v1}, Lcom/fleapapa/helper/CallBursts;->setContentView(I)V

    .line 42
    const v1, 0x7f080019

    invoke-virtual {p0, v1}, Lcom/fleapapa/helper/CallBursts;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/fleapapa/helper/CallBursts;->lview:Landroid/widget/ListView;

    .line 43
    iget-object v1, p0, Lcom/fleapapa/helper/CallBursts;->lview:Landroid/widget/ListView;

    new-instance v2, Lcom/fleapapa/helper/CallBursts$BurstAdapter;

    invoke-direct {v2, p0}, Lcom/fleapapa/helper/CallBursts$BurstAdapter;-><init>(Lcom/fleapapa/helper/CallBursts;)V

    iput-object v2, p0, Lcom/fleapapa/helper/CallBursts;->adapter:Lcom/fleapapa/helper/CallBursts$BurstAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 45
    sget-object v1, Lcom/fleapapa/helper/CallBursts;->call:Lcom/fleapapa/helper/CallPapa$Call;

    iget-object v1, v1, Lcom/fleapapa/helper/CallPapa$Call;->bursts:Ljava/util/ArrayList;

    monitor-enter v1

    .line 46
    :try_start_0
    sget-object v2, Lcom/fleapapa/helper/CallBursts;->call:Lcom/fleapapa/helper/CallPapa$Call;

    iget-object v2, v2, Lcom/fleapapa/helper/CallPapa$Call;->bursts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 45
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    iget-object v1, p0, Lcom/fleapapa/helper/CallBursts;->lview:Landroid/widget/ListView;

    new-instance v2, Lcom/fleapapa/helper/CallBursts$1;

    invoke-direct {v2, p0}, Lcom/fleapapa/helper/CallBursts$1;-><init>(Lcom/fleapapa/helper/CallBursts;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 62
    invoke-virtual {p0, v7}, Lcom/fleapapa/helper/CallBursts;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/fleapapa/helper/CallBursts;->adapter:Lcom/fleapapa/helper/CallBursts$BurstAdapter;

    invoke-virtual {v2}, Lcom/fleapapa/helper/CallBursts$BurstAdapter;->getCount()I

    move-result v2

    const/4 v3, 0x3

    if-le v2, v3, :cond_2

    move v2, v5

    :goto_1
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 63
    invoke-virtual {p0, v7}, Lcom/fleapapa/helper/CallBursts;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    new-instance v2, Lcom/fleapapa/helper/CallBursts$2;

    invoke-direct {v2, p0}, Lcom/fleapapa/helper/CallBursts$2;-><init>(Lcom/fleapapa/helper/CallBursts;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    const v1, 0x7f08001b

    invoke-virtual {p0, v1}, Lcom/fleapapa/helper/CallBursts;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/fleapapa/util/MyImageButton;

    new-instance v2, Lcom/fleapapa/helper/CallBursts$3;

    invoke-direct {v2, p0}, Lcom/fleapapa/helper/CallBursts$3;-><init>(Lcom/fleapapa/helper/CallBursts;)V

    invoke-virtual {v1, v2}, Lcom/fleapapa/util/MyImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    const v1, 0x7f08001e

    invoke-virtual {p0, v1}, Lcom/fleapapa/helper/CallBursts;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/fleapapa/util/MyImageButton;

    new-instance v2, Lcom/fleapapa/helper/CallBursts$4;

    invoke-direct {v2, p0}, Lcom/fleapapa/helper/CallBursts$4;-><init>(Lcom/fleapapa/helper/CallBursts;)V

    invoke-virtual {v1, v2}, Lcom/fleapapa/util/MyImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    invoke-virtual {p0, v8}, Lcom/fleapapa/helper/CallBursts;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/fleapapa/util/MyImageButton;

    invoke-virtual {v1, v6}, Lcom/fleapapa/util/MyImageButton;->setVisibility(I)V

    .line 92
    invoke-virtual {p0, v8}, Lcom/fleapapa/helper/CallBursts;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/fleapapa/util/MyImageButton;

    new-instance v2, Lcom/fleapapa/helper/CallBursts$5;

    invoke-direct {v2, p0}, Lcom/fleapapa/helper/CallBursts$5;-><init>(Lcom/fleapapa/helper/CallBursts;)V

    invoke-virtual {v1, v2}, Lcom/fleapapa/util/MyImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    sget-object v1, Lcom/fleapapa/helper/CallBursts;->call:Lcom/fleapapa/helper/CallPapa$Call;

    iput-boolean v5, v1, Lcom/fleapapa/helper/CallPapa$Call;->dirty:Z

    .line 100
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/fleapapa/helper/CallBursts;->handler:Landroid/os/Handler;

    .line 101
    new-instance v1, Lcom/fleapapa/helper/CallBursts$6;

    invoke-direct {v1, p0}, Lcom/fleapapa/helper/CallBursts$6;-><init>(Lcom/fleapapa/helper/CallBursts;)V

    iput-object v1, p0, Lcom/fleapapa/helper/CallBursts;->runner:Ljava/lang/Runnable;

    .line 126
    sget-object v1, Lcom/fleapapa/helper/CallBursts;->call:Lcom/fleapapa/helper/CallPapa$Call;

    new-instance v2, Lcom/fleapapa/helper/CallBursts$7;

    invoke-direct {v2, p0}, Lcom/fleapapa/helper/CallBursts$7;-><init>(Lcom/fleapapa/helper/CallBursts;)V

    invoke-virtual {v1, v2}, Lcom/fleapapa/helper/CallPapa$Call;->setCallback(Lcom/fleapapa/helper/CallPapa$Callback;)V

    .line 133
    return-void

    .line 46
    :cond_1
    :try_start_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fleapapa/helper/CallPapa$Burst;

    .line 47
    .local v0, burst:Lcom/fleapapa/helper/CallPapa$Burst;
    iget-boolean v3, v0, Lcom/fleapapa/helper/CallPapa$Burst;->mature:Z

    if-eqz v3, :cond_0

    .line 48
    iget-object v3, p0, Lcom/fleapapa/helper/CallBursts;->adapter:Lcom/fleapapa/helper/CallBursts$BurstAdapter;

    new-instance v4, Lcom/fleapapa/helper/CallBursts$Burstx;

    invoke-direct {v4, p0, v0}, Lcom/fleapapa/helper/CallBursts$Burstx;-><init>(Lcom/fleapapa/helper/CallBursts;Lcom/fleapapa/helper/CallPapa$Burst;)V

    invoke-virtual {v3, v4}, Lcom/fleapapa/helper/CallBursts$BurstAdapter;->add(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 45
    .end local v0           #burst:Lcom/fleapapa/helper/CallPapa$Burst;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    :cond_2
    move v2, v6

    .line 62
    goto/16 :goto_1
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    .line 146
    sget-object v0, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/fleapapa/helper/CallBursts;->WHO:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ".onDestroy()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fleapapa/helper/CallBursts;->handler:Landroid/os/Handler;

    .line 148
    sget-object v0, Lcom/fleapapa/helper/CallBursts;->call:Lcom/fleapapa/helper/CallPapa$Call;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/fleapapa/helper/CallPapa$Call;->save(ZZ)V

    .line 149
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 150
    return-void
.end method

.method protected onPause()V
    .locals 3

    .prologue
    .line 140
    sget-object v0, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/fleapapa/helper/CallBursts;->WHO:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ".onPause"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    sget-object v0, Lcom/fleapapa/helper/CallBursts;->call:Lcom/fleapapa/helper/CallPapa$Call;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/fleapapa/helper/CallPapa$Call;->foreground:Z

    .line 142
    sget-object v0, Lcom/fleapapa/helper/CallBursts;->call:Lcom/fleapapa/helper/CallPapa$Call;

    invoke-virtual {v0}, Lcom/fleapapa/helper/CallPapa$Call;->stopPlayer()V

    .line 143
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 144
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 135
    sget-object v0, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/fleapapa/helper/CallBursts;->WHO:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ".onResume"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 137
    sget-object v0, Lcom/fleapapa/helper/CallBursts;->call:Lcom/fleapapa/helper/CallPapa$Call;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/fleapapa/helper/CallPapa$Call;->foreground:Z

    .line 138
    return-void
.end method

.method selectAll(Z)V
    .locals 2
    .parameter "selected"

    .prologue
    .line 152
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/fleapapa/helper/CallBursts;->adapter:Lcom/fleapapa/helper/CallBursts$BurstAdapter;

    invoke-virtual {v1}, Lcom/fleapapa/helper/CallBursts$BurstAdapter;->getCount()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 154
    iget-object v1, p0, Lcom/fleapapa/helper/CallBursts;->lview:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->invalidateViews()V

    .line 155
    return-void

    .line 153
    :cond_0
    iget-object v1, p0, Lcom/fleapapa/helper/CallBursts;->adapter:Lcom/fleapapa/helper/CallBursts$BurstAdapter;

    invoke-virtual {v1, v0}, Lcom/fleapapa/helper/CallBursts$BurstAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fleapapa/helper/CallBursts$Burstx;

    invoke-virtual {v1, p1}, Lcom/fleapapa/helper/CallBursts$Burstx;->select(Z)V

    .line 152
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
