.class public Limoblife/memoryboosterwidget/BatteryWidgetActivity;
.super Landroid/app/Activity;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Landroid/widget/LinearLayout;

.field private b:Landroid/widget/LinearLayout;

.field private c:Landroid/widget/LinearLayout;

.field private d:Landroid/widget/LinearLayout;

.field private e:Landroid/widget/ImageView;

.field private f:Landroid/widget/LinearLayout;

.field private g:Landroid/widget/LinearLayout;

.field private h:Landroid/widget/LinearLayout;

.field private i:Landroid/widget/LinearLayout;

.field private j:Landroid/widget/LinearLayout;

.field private k:Landroid/widget/LinearLayout;

.field private l:Landroid/widget/LinearLayout;

.field private m:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onClick()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Limoblife/memoryboosterwidget/BatteryWidgetActivity;->e:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Limoblife/memoryboosterwidget/BatteryWidgetActivity;->finish()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Limoblife/memoryboosterwidget/BatteryWidgetActivity;->a:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "command_start_activity_1"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Limoblife/memoryboosterwidget/BatteryWidgetActivity;->sendBroadcast(Landroid/content/Intent;)V

    invoke-virtual {p0}, Limoblife/memoryboosterwidget/BatteryWidgetActivity;->finish()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Limoblife/memoryboosterwidget/BatteryWidgetActivity;->b:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "command_start_activity_2"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Limoblife/memoryboosterwidget/BatteryWidgetActivity;->sendBroadcast(Landroid/content/Intent;)V

    invoke-virtual {p0}, Limoblife/memoryboosterwidget/BatteryWidgetActivity;->finish()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Limoblife/memoryboosterwidget/BatteryWidgetActivity;->c:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Landroid/content/Intent;

    const-string v1, "command_start_activity_3"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Limoblife/memoryboosterwidget/BatteryWidgetActivity;->sendBroadcast(Landroid/content/Intent;)V

    invoke-virtual {p0}, Limoblife/memoryboosterwidget/BatteryWidgetActivity;->finish()V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Limoblife/memoryboosterwidget/BatteryWidgetActivity;->d:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Landroid/content/Intent;

    const-string v1, "command_start_activity_4"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Limoblife/memoryboosterwidget/BatteryWidgetActivity;->sendBroadcast(Landroid/content/Intent;)V

    invoke-virtual {p0}, Limoblife/memoryboosterwidget/BatteryWidgetActivity;->finish()V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Limoblife/memoryboosterwidget/BatteryWidgetActivity;->f:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v0, Landroid/content/Intent;

    const-string v1, "command_start_activity_5"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Limoblife/memoryboosterwidget/BatteryWidgetActivity;->sendBroadcast(Landroid/content/Intent;)V

    invoke-virtual {p0}, Limoblife/memoryboosterwidget/BatteryWidgetActivity;->finish()V

    goto :goto_0

    :cond_6
    iget-object v0, p0, Limoblife/memoryboosterwidget/BatteryWidgetActivity;->g:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    new-instance v0, Landroid/content/Intent;

    const-string v1, "command_start_activity_6"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Limoblife/memoryboosterwidget/BatteryWidgetActivity;->sendBroadcast(Landroid/content/Intent;)V

    invoke-virtual {p0}, Limoblife/memoryboosterwidget/BatteryWidgetActivity;->finish()V

    goto/16 :goto_0

    :cond_7
    iget-object v0, p0, Limoblife/memoryboosterwidget/BatteryWidgetActivity;->h:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    new-instance v0, Landroid/content/Intent;

    const-string v1, "command_start_activity_7"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Limoblife/memoryboosterwidget/BatteryWidgetActivity;->sendBroadcast(Landroid/content/Intent;)V

    invoke-virtual {p0}, Limoblife/memoryboosterwidget/BatteryWidgetActivity;->finish()V

    goto/16 :goto_0

    :cond_8
    iget-object v0, p0, Limoblife/memoryboosterwidget/BatteryWidgetActivity;->i:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    new-instance v0, Landroid/content/Intent;

    const-string v1, "command_start_activity_8"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Limoblife/memoryboosterwidget/BatteryWidgetActivity;->sendBroadcast(Landroid/content/Intent;)V

    invoke-virtual {p0}, Limoblife/memoryboosterwidget/BatteryWidgetActivity;->finish()V

    goto/16 :goto_0

    :cond_9
    iget-object v0, p0, Limoblife/memoryboosterwidget/BatteryWidgetActivity;->j:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    new-instance v0, Landroid/content/Intent;

    const-string v1, "command_start_activity_9"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Limoblife/memoryboosterwidget/BatteryWidgetActivity;->sendBroadcast(Landroid/content/Intent;)V

    invoke-virtual {p0}, Limoblife/memoryboosterwidget/BatteryWidgetActivity;->finish()V

    goto/16 :goto_0

    :cond_a
    iget-object v0, p0, Limoblife/memoryboosterwidget/BatteryWidgetActivity;->k:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    new-instance v0, Landroid/content/Intent;

    const-string v1, "command_start_activity_10"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Limoblife/memoryboosterwidget/BatteryWidgetActivity;->sendBroadcast(Landroid/content/Intent;)V

    invoke-virtual {p0}, Limoblife/memoryboosterwidget/BatteryWidgetActivity;->finish()V

    goto/16 :goto_0

    :cond_b
    iget-object v0, p0, Limoblife/memoryboosterwidget/BatteryWidgetActivity;->l:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    new-instance v0, Landroid/content/Intent;

    const-string v1, "command_kill_manual"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Limoblife/memoryboosterwidget/BatteryWidgetActivity;->sendBroadcast(Landroid/content/Intent;)V

    invoke-virtual {p0}, Limoblife/memoryboosterwidget/BatteryWidgetActivity;->finish()V

    goto/16 :goto_0

    :cond_c
    iget-object v0, p0, Limoblife/memoryboosterwidget/BatteryWidgetActivity;->m:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "command_start_activity_12"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Limoblife/memoryboosterwidget/BatteryWidgetActivity;->sendBroadcast(Landroid/content/Intent;)V

    invoke-virtual {p0}, Limoblife/memoryboosterwidget/BatteryWidgetActivity;->finish()V

    goto/16 :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Limoblife/memoryboosterwidget/BatteryWidgetActivity;->requestWindowFeature(I)Z

    sget v0, Limoblife/memoryboosterwidget/c;->b:I

    invoke-virtual {p0, v0}, Limoblife/memoryboosterwidget/BatteryWidgetActivity;->setContentView(I)V

    sget v0, Limoblife/memoryboosterwidget/b;->r:I

    invoke-virtual {p0, v0}, Limoblife/memoryboosterwidget/BatteryWidgetActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Limoblife/memoryboosterwidget/BatteryWidgetActivity;->a:Landroid/widget/LinearLayout;

    iget-object v0, p0, Limoblife/memoryboosterwidget/BatteryWidgetActivity;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Limoblife/memoryboosterwidget/b;->g:I

    invoke-virtual {p0, v0}, Limoblife/memoryboosterwidget/BatteryWidgetActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Limoblife/memoryboosterwidget/BatteryWidgetActivity;->b:Landroid/widget/LinearLayout;

    iget-object v0, p0, Limoblife/memoryboosterwidget/BatteryWidgetActivity;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Limoblife/memoryboosterwidget/b;->l:I

    invoke-virtual {p0, v0}, Limoblife/memoryboosterwidget/BatteryWidgetActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Limoblife/memoryboosterwidget/BatteryWidgetActivity;->c:Landroid/widget/LinearLayout;

    iget-object v0, p0, Limoblife/memoryboosterwidget/BatteryWidgetActivity;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Limoblife/memoryboosterwidget/b;->h:I

    invoke-virtual {p0, v0}, Limoblife/memoryboosterwidget/BatteryWidgetActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Limoblife/memoryboosterwidget/BatteryWidgetActivity;->d:Landroid/widget/LinearLayout;

    iget-object v0, p0, Limoblife/memoryboosterwidget/BatteryWidgetActivity;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Limoblife/memoryboosterwidget/b;->k:I

    invoke-virtual {p0, v0}, Limoblife/memoryboosterwidget/BatteryWidgetActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Limoblife/memoryboosterwidget/BatteryWidgetActivity;->f:Landroid/widget/LinearLayout;

    iget-object v0, p0, Limoblife/memoryboosterwidget/BatteryWidgetActivity;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Limoblife/memoryboosterwidget/b;->f:I

    invoke-virtual {p0, v0}, Limoblife/memoryboosterwidget/BatteryWidgetActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Limoblife/memoryboosterwidget/BatteryWidgetActivity;->g:Landroid/widget/LinearLayout;

    iget-object v0, p0, Limoblife/memoryboosterwidget/BatteryWidgetActivity;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Limoblife/memoryboosterwidget/b;->n:I

    invoke-virtual {p0, v0}, Limoblife/memoryboosterwidget/BatteryWidgetActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Limoblife/memoryboosterwidget/BatteryWidgetActivity;->h:Landroid/widget/LinearLayout;

    iget-object v0, p0, Limoblife/memoryboosterwidget/BatteryWidgetActivity;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Limoblife/memoryboosterwidget/b;->o:I

    invoke-virtual {p0, v0}, Limoblife/memoryboosterwidget/BatteryWidgetActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Limoblife/memoryboosterwidget/BatteryWidgetActivity;->i:Landroid/widget/LinearLayout;

    iget-object v0, p0, Limoblife/memoryboosterwidget/BatteryWidgetActivity;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Limoblife/memoryboosterwidget/b;->j:I

    invoke-virtual {p0, v0}, Limoblife/memoryboosterwidget/BatteryWidgetActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Limoblife/memoryboosterwidget/BatteryWidgetActivity;->j:Landroid/widget/LinearLayout;

    iget-object v0, p0, Limoblife/memoryboosterwidget/BatteryWidgetActivity;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Limoblife/memoryboosterwidget/b;->m:I

    invoke-virtual {p0, v0}, Limoblife/memoryboosterwidget/BatteryWidgetActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Limoblife/memoryboosterwidget/BatteryWidgetActivity;->k:Landroid/widget/LinearLayout;

    iget-object v0, p0, Limoblife/memoryboosterwidget/BatteryWidgetActivity;->k:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Limoblife/memoryboosterwidget/b;->p:I

    invoke-virtual {p0, v0}, Limoblife/memoryboosterwidget/BatteryWidgetActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Limoblife/memoryboosterwidget/BatteryWidgetActivity;->l:Landroid/widget/LinearLayout;

    iget-object v0, p0, Limoblife/memoryboosterwidget/BatteryWidgetActivity;->l:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Limoblife/memoryboosterwidget/b;->q:I

    invoke-virtual {p0, v0}, Limoblife/memoryboosterwidget/BatteryWidgetActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Limoblife/memoryboosterwidget/BatteryWidgetActivity;->m:Landroid/widget/LinearLayout;

    iget-object v0, p0, Limoblife/memoryboosterwidget/BatteryWidgetActivity;->m:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Limoblife/memoryboosterwidget/b;->e:I

    invoke-virtual {p0, v0}, Limoblife/memoryboosterwidget/BatteryWidgetActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Limoblife/memoryboosterwidget/BatteryWidgetActivity;->e:Landroid/widget/ImageView;

    iget-object v0, p0, Limoblife/memoryboosterwidget/BatteryWidgetActivity;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
