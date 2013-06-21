.class public Limoblife/toolbox/full/ui/AAdvancedSetting;
.super Landroid/app/Activity;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private A:Landroid/widget/LinearLayout;

.field private B:Landroid/widget/ImageView;

.field private C:Landroid/widget/LinearLayout;

.field private D:Landroid/widget/TextView;

.field private E:Landroid/widget/RadioButton;

.field private F:Landroid/widget/RadioButton;

.field private G:Landroid/widget/RadioButton;

.field private H:Landroid/widget/ImageView;

.field private I:Landroid/widget/RadioButton;

.field private J:Landroid/widget/RadioButton;

.field private K:Landroid/widget/RadioButton;

.field private L:I

.field private M:I

.field private N:Landroid/widget/TextView;

.field private O:Landroid/widget/TextView;

.field private P:Landroid/widget/TextView;

.field private Q:Landroid/widget/TextView;

.field private R:Landroid/widget/LinearLayout;

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

.field private n:Landroid/widget/LinearLayout;

.field private o:Landroid/widget/LinearLayout;

.field private p:Landroid/widget/LinearLayout;

.field private q:Landroid/widget/LinearLayout;

.field private r:Landroid/widget/LinearLayout;

.field private s:Landroid/widget/ImageView;

.field private t:Landroid/widget/LinearLayout;

.field private u:Landroid/widget/ImageView;

.field private v:Landroid/widget/ImageView;

.field private w:Landroid/widget/ImageView;

.field private x:Landroid/widget/ImageView;

.field private y:Landroid/content/SharedPreferences;

.field private z:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Limoblife/toolbox/full/ui/AAdvancedSetting;->L:I

    const/4 v0, 0x0

    iput v0, p0, Limoblife/toolbox/full/ui/AAdvancedSetting;->M:I

    return-void
.end method

.method static synthetic a(Limoblife/toolbox/full/ui/AAdvancedSetting;)Landroid/content/SharedPreferences;
    .locals 1

    iget-object v0, p0, Limoblife/toolbox/full/ui/AAdvancedSetting;->y:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method private a()V
    .locals 11

    const-wide/16 v9, 0x3e8

    iget-object v0, p0, Limoblife/toolbox/full/ui/AAdvancedSetting;->y:Landroid/content/SharedPreferences;

    const-string v1, "optimize_interval"

    const/16 v2, 0x258

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    int-to-long v7, v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "(514) startIntervalOptimize(): interval  = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v0, 0x0

    cmp-long v0, v7, v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "(514) startAutoMode()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Limoblife/toolbox/full/g/a;->a(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v6

    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Limoblife/toolbox/full/ui/AAdvancedSetting;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    const/4 v1, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    mul-long v4, v7, v9

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "(514) startAutoMode(): interval * 1000 = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    mul-long v2, v7, v9

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private a(I)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, -0x1

    const v2, -0x777778

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    iget-object v0, p0, Limoblife/toolbox/full/ui/AAdvancedSetting;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setClickable(Z)V

    iget-object v0, p0, Limoblife/toolbox/full/ui/AAdvancedSetting;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    iget-object v0, p0, Limoblife/toolbox/full/ui/AAdvancedSetting;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setClickable(Z)V

    iget-object v0, p0, Limoblife/toolbox/full/ui/AAdvancedSetting;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    iget-object v0, p0, Limoblife/toolbox/full/ui/AAdvancedSetting;->A:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setClickable(Z)V

    iget-object v0, p0, Limoblife/toolbox/full/ui/AAdvancedSetting;->A:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    iget-object v0, p0, Limoblife/toolbox/full/ui/AAdvancedSetting;->R:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setClickable(Z)V

    iget-object v0, p0, Limoblife/toolbox/full/ui/AAdvancedSetting;->R:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    iget-object v0, p0, Limoblife/toolbox/full/ui/AAdvancedSetting;->N:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Limoblife/toolbox/full/ui/AAdvancedSetting;->O:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Limoblife/toolbox/full/ui/AAdvancedSetting;->P:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Limoblife/toolbox/full/ui/AAdvancedSetting;->Q:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Limoblife/toolbox/full/ui/AAdvancedSetting;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setClickable(Z)V

    iget-object v0, p0, Limoblife/toolbox/full/ui/AAdvancedSetting;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    iget-object v0, p0, Limoblife/toolbox/full/ui/AAdvancedSetting;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setClickable(Z)V

    iget-object v0, p0, Limoblife/toolbox/full/ui/AAdvancedSetting;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    iget-object v0, p0, Limoblife/toolbox/full/ui/AAdvancedSetting;->A:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setClickable(Z)V

    iget-object v0, p0, Limoblife/toolbox/full/ui/AAdvancedSetting;->A:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    iget-object v0, p0, Limoblife/toolbox/full/ui/AAdvancedSetting;->R:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setClickable(Z)V

    iget-object v0, p0, Limoblife/toolbox/full/ui/AAdvancedSetting;->R:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    iget-object v0, p0, Limoblife/toolbox/full/ui/AAdvancedSetting;->N:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Limoblife/toolbox/full/ui/AAdvancedSetting;->O:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Limoblife/toolbox/full/ui/AAdvancedSetting;->P:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Limoblife/toolbox/full/ui/AAdvancedSetting;->Q:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method

.method static synthetic a(Limoblife/toolbox/full/ui/AAdvancedSetting;I)V
    .locals 0

    iput p1, p0, Limoblife/toolbox/full/ui/AAdvancedSetting;->L:I

    return-void
.end method

.method private b(I)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "showAutoModeON(): interval = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Limoblife/toolbox/full/ui/AAdvancedSetting;->v:Landroid/widget/ImageView;

    const v1, 0x7f020172

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    sparse-switch p1, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    iget-object v0, p0, Limoblife/toolbox/full/ui/AAdvancedSetting;->E:Landroid/widget/RadioButton;

    invoke-virtual {v0, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v0, p0, Limoblife/toolbox/full/ui/AAdvancedSetting;->F:Landroid/widget/RadioButton;

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v0, p0, Limoblife/toolbox/full/ui/AAdvancedSetting;->G:Landroid/widget/RadioButton;

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Limoblife/toolbox/full/ui/AAdvancedSetting;->E:Landroid/widget/RadioButton;

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v0, p0, Limoblife/toolbox/full/ui/AAdvancedSetting;->F:Landroid/widget/RadioButton;

    invoke-virtual {v0, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v0, p0, Limoblife/toolbox/full/ui/AAdvancedSetting;->G:Landroid/widget/RadioButton;

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Limoblife/toolbox/full/ui/AAdvancedSetting;->E:Landroid/widget/RadioButton;

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v0, p0, Limoblife/toolbox/full/ui/AAdvancedSetting;->F:Landroid/widget/RadioButton;

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v0, p0, Limoblife/toolbox/full/ui/AAdvancedSetting;->G:Landroid/widget/RadioButton;

    invoke-virtual {v0, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1e -> :sswitch_0
        0x3c -> :sswitch_1
        0x5a -> :sswitch_2
    .end sparse-switch
.end method

.method static synthetic b(Limoblife/toolbox/full/ui/AAdvancedSetting;)V
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "stopAutoMode()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Limoblife/toolbox/full/ui/AAdvancedSetting;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Limoblife/toolbox/full/g/a;->a(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v1

    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Limoblife/toolbox/full/ui/AAdvancedSetting;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    return-void
.end method

.method private c(I)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "showSecurityMode(): mode = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Limoblife/toolbox/full/ui/AAdvancedSetting;->I:Landroid/widget/RadioButton;

    invoke-virtual {v0, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v0, p0, Limoblife/toolbox/full/ui/AAdvancedSetting;->J:Landroid/widget/RadioButton;

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v0, p0, Limoblife/toolbox/full/ui/AAdvancedSetting;->K:Landroid/widget/RadioButton;

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Limoblife/toolbox/full/ui/AAdvancedSetting;->I:Landroid/widget/RadioButton;

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v0, p0, Limoblife/toolbox/full/ui/AAdvancedSetting;->J:Landroid/widget/RadioButton;

    invoke-virtual {v0, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v0, p0, Limoblife/toolbox/full/ui/AAdvancedSetting;->K:Landroid/widget/RadioButton;

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Limoblife/toolbox/full/ui/AAdvancedSetting;->I:Landroid/widget/RadioButton;

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v0, p0, Limoblife/toolbox/full/ui/AAdvancedSetting;->J:Landroid/widget/RadioButton;

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v0, p0, Limoblife/toolbox/full/ui/AAdvancedSetting;->K:Landroid/widget/RadioButton;

    invoke-virtual {v0, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic c(Limoblife/toolbox/full/ui/AAdvancedSetting;)V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Limoblife/toolbox/full/ui/AAdvancedSetting;->M:I

    return-void
.end method

.method static synthetic d(Limoblife/toolbox/full/ui/AAdvancedSetting;)V
    .locals 0

    invoke-direct {p0}, Limoblife/toolbox/full/ui/AAdvancedSetting;->a()V

    return-void
.end method

.method static synthetic e(Limoblife/toolbox/full/ui/AAdvancedSetting;)V
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "stopThresholdMode()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Limoblife/toolbox/full/ui/AAdvancedSetting;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Limoblife/toolbox/full/g/d;->a(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v1

    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Limoblife/toolbox/full/ui/AAdvancedSetting;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    return-void
.end method

.method static synthetic f(Limoblife/toolbox/full/ui/AAdvancedSetting;)V
    .locals 7

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "startThresholdOptimize()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Limoblife/toolbox/full/g/d;->a(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v6

    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Limoblife/toolbox/full/ui/AAdvancedSetting;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    const/4 v1, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0xa1220

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 5

    iget-object v0, p0, Limoblife/toolbox/full/ui/AAdvancedSetting;->y:Landroid/content/SharedPreferences;

    const-string v1, "optimize_interval"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0}, Limoblife/toolbox/full/ui/AAdvancedSetting;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "imoblife.memorybooster.AMOUNT"

    int-to-long v3, v0

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v2, "imoblife.memorybooster.SIZE"

    int-to-long v3, v0

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    iget v0, p0, Limoblife/toolbox/full/ui/AAdvancedSetting;->M:I

    invoke-virtual {p0, v0, v1}, Limoblife/toolbox/full/ui/AAdvancedSetting;->setResult(ILandroid/content/Intent;)V

    invoke-super {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8

    const/4 v7, 0x2

    const v6, 0x7f020172

    const v5, 0x7f020171

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Limoblife/toolbox/full/ui/AAdvancedSetting;->a:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Limoblife/toolbox/full/ui/AAdvancedSetting;->c:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Landroid/content/Intent;

    const-class v1, Limoblife/toolbox/full/ui/AWhitelist;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Limoblife/toolbox/full/ui/AAdvancedSetting;->startActivity(Landroid/content/Intent;)V

    :cond_0
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onClick()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v0, p0, Limoblife/toolbox/full/ui/AAdvancedSetting;->d:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Limoblife/toolbox/full/ui/AAdvancedSetting;->y:Landroid/content/SharedPreferences;

    const-string v1, "mode_auto"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v4, :cond_2

    iget-object v0, p0, Limoblife/toolbox/full/ui/AAdvancedSetting;->y:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "mode_auto"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Limoblife/toolbox/full/ui/AAdvancedSetting;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-direct {p0, v3}, Limoblife/toolbox/full/ui/AAdvancedSetting;->a(I)V

    iput v4, p0, Limoblife/toolbox/full/ui/AAdvancedSetting;->L:I

    const/4 v0, -0x1

    iput v0, p0, Limoblife/toolbox/full/ui/AAdvancedSetting;->M:I

    goto :goto_0

    :cond_2
    if-nez v0, :cond_0

    iget-object v0, p0, Limoblife/toolbox/full/ui/AAdvancedSetting;->y:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "mode_auto"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Limoblife/toolbox/full/ui/AAdvancedSetting;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-direct {p0, v4}, Limoblife/toolbox/full/ui/AAdvancedSetting;->a(I)V

    const/4 v0, -0x1

    iput v0, p0, Limoblife/toolbox/full/ui/AAdvancedSetting;->L:I

    const/4 v0, -0x1

    iput v0, p0, Limoblife/toolbox/full/ui/AAdvancedSetting;->M:I

    goto :goto_0

    :cond_3
    iget-object v0, p0, Limoblife/toolbox/full/ui/AAdvancedSetting;->f:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Limoblife/toolbox/full/ui/AAdvancedSetting;->y:Landroid/content/SharedPreferences;

    const-string v1, "mode_interval_optimize"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/CharSequence;

    const v2, 0x7f0700ea

    invoke-virtual {p0, v2}, Limoblife/toolbox/full/ui/AAdvancedSetting;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    const v2, 0x7f0700eb

    invoke-virtual {p0, v2}, Limoblife/toolbox/full/ui/AAdvancedSetting;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    const v2, 0x7f0700ec

    invoke-virtual {p0, v2}, Limoblife/toolbox/full/ui/AAdvancedSetting;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v7

    const/4 v2, 0x3

    const v3, 0x7f0700ed

    invoke-virtual {p0, v3}, Limoblife/toolbox/full/ui/AAdvancedSetting;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const v3, 0x7f0700ee

    invoke-virtual {p0, v3}, Limoblife/toolbox/full/ui/AAdvancedSetting;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const v3, 0x7f0700ef

    invoke-virtual {p0, v3}, Limoblife/toolbox/full/ui/AAdvancedSetting;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0700e8

    invoke-virtual {p0, v3}, Limoblife/toolbox/full/ui/AAdvancedSetting;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "createIntervalDialog(): mode = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Limoblife/toolbox/full/ui/f;

    invoke-direct {v3, p0}, Limoblife/toolbox/full/ui/f;-><init>(Limoblife/toolbox/full/ui/AAdvancedSetting;)V

    invoke-virtual {v2, v1, v0, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Limoblife/toolbox/full/ui/AAdvancedSetting;->n:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Limoblife/toolbox/full/ui/AAdvancedSetting;->y:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "optimize_interval"

    const/16 v2, 0x258

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-direct {p0}, Limoblife/toolbox/full/ui/AAdvancedSetting;->a()V

    goto/16 :goto_0

    :cond_5
    iget-object v0, p0, Limoblife/toolbox/full/ui/AAdvancedSetting;->o:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Limoblife/toolbox/full/ui/AAdvancedSetting;->y:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "optimize_interval"

    const/16 v2, 0x708

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const/16 v0, 0x3c

    invoke-direct {p0, v0}, Limoblife/toolbox/full/ui/AAdvancedSetting;->b(I)V

    invoke-direct {p0}, Limoblife/toolbox/full/ui/AAdvancedSetting;->a()V

    goto/16 :goto_0

    :cond_6
    iget-object v0, p0, Limoblife/toolbox/full/ui/AAdvancedSetting;->p:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Limoblife/toolbox/full/ui/AAdvancedSetting;->y:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "optimize_interval"

    const/16 v2, 0xe10

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const/16 v0, 0x5a

    invoke-direct {p0, v0}, Limoblife/toolbox/full/ui/AAdvancedSetting;->b(I)V

    invoke-direct {p0}, Limoblife/toolbox/full/ui/AAdvancedSetting;->a()V

    goto/16 :goto_0

    :cond_7
    iget-object v0, p0, Limoblife/toolbox/full/ui/AAdvancedSetting;->h:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Limoblife/toolbox/full/ui/AAdvancedSetting;->y:Landroid/content/SharedPreferences;

    const-string v1, "mode_security_optimize"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/CharSequence;

    const-string v2, "Low"

    aput-object v2, v1, v3

    const-string v2, "Middle"

    aput-object v2, v1, v4

    const-string v2, "High"

    aput-object v2, v1, v7

    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v3, "Security Level"

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    new-instance v3, Limoblife/toolbox/full/ui/g;

    invoke-direct {v3, p0}, Limoblife/toolbox/full/ui/g;-><init>(Limoblife/toolbox/full/ui/AAdvancedSetting;)V

    invoke-virtual {v2, v1, v0, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    :cond_8
    iget-object v0, p0, Limoblife/toolbox/full/ui/AAdvancedSetting;->k:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Limoblife/toolbox/full/ui/AAdvancedSetting;->y:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "mode_security_optimize"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-direct {p0, v4}, Limoblife/toolbox/full/ui/AAdvancedSetting;->c(I)V

    goto/16 :goto_0

    :cond_9
    iget-object v0, p0, Limoblife/toolbox/full/ui/AAdvancedSetting;->l:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Limoblife/toolbox/full/ui/AAdvancedSetting;->y:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "mode_security_optimize"

    invoke-interface {v0, v1, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-direct {p0, v7}, Limoblife/toolbox/full/ui/AAdvancedSetting;->c(I)V

    goto/16 :goto_0

    :cond_a
    iget-object v0, p0, Limoblife/toolbox/full/ui/AAdvancedSetting;->m:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Limoblife/toolbox/full/ui/AAdvancedSetting;->y:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "mode_security_optimize"

    const/4 v2, 0x3

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Limoblife/toolbox/full/ui/AAdvancedSetting;->c(I)V

    goto/16 :goto_0

    :cond_b
    iget-object v0, p0, Limoblife/toolbox/full/ui/AAdvancedSetting;->g:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Limoblife/toolbox/full/ui/AAdvancedSetting;->y:Landroid/content/SharedPreferences;

    const-string v1, "mode_startup_optimize"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_d

    iget-object v1, p0, Limoblife/toolbox/full/ui/AAdvancedSetting;->y:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "mode_startup_optimize"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v1, p0, Limoblife/toolbox/full/ui/AAdvancedSetting;->z:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_c
    :goto_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "changeAutoMode() 1 : auto_mode = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_d
    if-ne v0, v4, :cond_c

    iget-object v1, p0, Limoblife/toolbox/full/ui/AAdvancedSetting;->y:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "mode_startup_optimize"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v1, p0, Limoblife/toolbox/full/ui/AAdvancedSetting;->z:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    :cond_e
    iget-object v0, p0, Limoblife/toolbox/full/ui/AAdvancedSetting;->A:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Limoblife/toolbox/full/ui/AAdvancedSetting;->y:Landroid/content/SharedPreferences;

    const-string v1, "mode_screenoff_optimize"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_10

    new-instance v1, Landroid/content/Intent;

    const-class v2, Limoblife/toolbox/full/ScreenEventService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Limoblife/toolbox/full/ui/AAdvancedSetting;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    iget-object v1, p0, Limoblife/toolbox/full/ui/AAdvancedSetting;->y:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "mode_screenoff_optimize"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v1, p0, Limoblife/toolbox/full/ui/AAdvancedSetting;->B:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_f
    :goto_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "changeScreenOffMode(): auto_mode = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_10
    if-ne v0, v4, :cond_f

    new-instance v1, Landroid/content/Intent;

    const-class v2, Limoblife/toolbox/full/ScreenEventService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Limoblife/toolbox/full/ui/AAdvancedSetting;->stopService(Landroid/content/Intent;)Z

    iget-object v1, p0, Limoblife/toolbox/full/ui/AAdvancedSetting;->y:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "mode_screenoff_optimize"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v1, p0, Limoblife/toolbox/full/ui/AAdvancedSetting;->B:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    :cond_11
    iget-object v0, p0, Limoblife/toolbox/full/ui/AAdvancedSetting;->i:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Limoblife/toolbox/full/ui/AAdvancedSetting;->y:Landroid/content/SharedPreferences;

    const-string v1, "mode_notification"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_12

    invoke-static {p0}, Limoblife/toolbox/full/f/a;->a(Landroid/content/Context;)Limoblife/toolbox/full/f/a;

    move-result-object v0

    invoke-virtual {v0}, Limoblife/toolbox/full/f/a;->c()V

    invoke-static {p0}, Limoblife/toolbox/full/f/a;->a(Landroid/content/Context;)Limoblife/toolbox/full/f/a;

    move-result-object v0

    invoke-virtual {v0}, Limoblife/toolbox/full/f/a;->e()V

    iget-object v0, p0, Limoblife/toolbox/full/ui/AAdvancedSetting;->y:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "mode_notification"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Limoblife/toolbox/full/ui/AAdvancedSetting;->H:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    :cond_12
    invoke-static {p0}, Limoblife/toolbox/full/f/a;->a(Landroid/content/Context;)Limoblife/toolbox/full/f/a;

    move-result-object v0

    invoke-virtual {v0}, Limoblife/toolbox/full/f/a;->d()V

    invoke-static {p0}, Limoblife/toolbox/full/f/a;->a(Landroid/content/Context;)Limoblife/toolbox/full/f/a;

    move-result-object v0

    invoke-virtual {v0}, Limoblife/toolbox/full/f/a;->f()V

    iget-object v0, p0, Limoblife/toolbox/full/ui/AAdvancedSetting;->y:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "mode_notification"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Limoblife/toolbox/full/ui/AAdvancedSetting;->H:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    :cond_13
    iget-object v0, p0, Limoblife/toolbox/full/ui/AAdvancedSetting;->q:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Limoblife/toolbox/full/ui/AAdvancedSetting;->y:Landroid/content/SharedPreferences;

    const-string v1, "mode_cache_optimize"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, p0, Limoblife/toolbox/full/ui/AAdvancedSetting;->y:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "mode_cache_optimize"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Limoblife/toolbox/full/ui/AAdvancedSetting;->w:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    :cond_14
    iget-object v0, p0, Limoblife/toolbox/full/ui/AAdvancedSetting;->y:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "mode_cache_optimize"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Limoblife/toolbox/full/ui/AAdvancedSetting;->w:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    :cond_15
    iget-object v0, p0, Limoblife/toolbox/full/ui/AAdvancedSetting;->r:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Limoblife/toolbox/full/ui/AAdvancedSetting;->y:Landroid/content/SharedPreferences;

    const-string v1, "mode_notification_optimize"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_16

    iget-object v0, p0, Limoblife/toolbox/full/ui/AAdvancedSetting;->y:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "mode_notification_optimize"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Limoblife/toolbox/full/ui/AAdvancedSetting;->s:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    :cond_16
    iget-object v0, p0, Limoblife/toolbox/full/ui/AAdvancedSetting;->y:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "mode_notification_optimize"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Limoblife/toolbox/full/ui/AAdvancedSetting;->s:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    :cond_17
    iget-object v0, p0, Limoblife/toolbox/full/ui/AAdvancedSetting;->t:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Limoblife/toolbox/full/ui/AAdvancedSetting;->y:Landroid/content/SharedPreferences;

    const-string v1, "mode_optimize_toast"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_18

    iget-object v0, p0, Limoblife/toolbox/full/ui/AAdvancedSetting;->y:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "mode_optimize_toast"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Limoblife/toolbox/full/ui/AAdvancedSetting;->u:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    :cond_18
    iget-object v0, p0, Limoblife/toolbox/full/ui/AAdvancedSetting;->y:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "mode_optimize_toast"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Limoblife/toolbox/full/ui/AAdvancedSetting;->u:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    :cond_19
    iget-object v0, p0, Limoblife/toolbox/full/ui/AAdvancedSetting;->C:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Limoblife/toolbox/full/ui/AAdvancedSetting;->y:Landroid/content/SharedPreferences;

    const-string v1, "mode_temperature_unit"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/CharSequence;

    const-string v2, "Unit: C"

    aput-object v2, v1, v3

    const-string v2, "Unit: F"

    aput-object v2, v1, v4

    const-string v2, "Unit: C/F"

    aput-object v2, v1, v7

    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v3, "Temperature Unit"

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    new-instance v3, Limoblife/toolbox/full/ui/i;

    invoke-direct {v3, p0}, Limoblife/toolbox/full/ui/i;-><init>(Limoblife/toolbox/full/ui/AAdvancedSetting;)V

    invoke-virtual {v2, v1, v0, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "changeTempUnit(): mode = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_1a
    iget-object v0, p0, Limoblife/toolbox/full/ui/AAdvancedSetting;->R:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onClick(): setting_threshold_ll"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Limoblife/toolbox/full/ui/AAdvancedSetting;->y:Landroid/content/SharedPreferences;

    const-string v1, "mode_threshold_optimize"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "createThresholdDialog()"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/CharSequence;

    const v2, 0x7f0700f2

    invoke-virtual {p0, v2}, Limoblife/toolbox/full/ui/AAdvancedSetting;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    const v2, 0x7f0700f3

    invoke-virtual {p0, v2}, Limoblife/toolbox/full/ui/AAdvancedSetting;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    const v2, 0x7f0700f4

    invoke-virtual {p0, v2}, Limoblife/toolbox/full/ui/AAdvancedSetting;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v7

    const/4 v2, 0x3

    const v3, 0x7f0700f5

    invoke-virtual {p0, v3}, Limoblife/toolbox/full/ui/AAdvancedSetting;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const v3, 0x7f0700f6

    invoke-virtual {p0, v3}, Limoblife/toolbox/full/ui/AAdvancedSetting;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const v3, 0x7f0700f7

    invoke-virtual {p0, v3}, Limoblife/toolbox/full/ui/AAdvancedSetting;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0700f0

    invoke-virtual {p0, v3}, Limoblife/toolbox/full/ui/AAdvancedSetting;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    new-instance v3, Limoblife/toolbox/full/ui/h;

    invoke-direct {v3, p0}, Limoblife/toolbox/full/ui/h;-><init>(Limoblife/toolbox/full/ui/AAdvancedSetting;)V

    invoke-virtual {v2, v1, v0, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8

    const v2, 0x7f0700db

    const/4 v7, 0x1

    const v6, 0x7f020171

    const v5, 0x7f020172

    const/4 v4, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0, v7}, Limoblife/toolbox/full/ui/AAdvancedSetting;->requestWindowFeature(I)Z

    const v0, 0x7f030005

    invoke-virtual {p0, v0}, Limoblife/toolbox/full/ui/AAdvancedSetting;->setContentView(I)V

    const v0, 0x7f080049

    invoke-virtual {p0, v0}, Limoblife/toolbox/full/ui/AAdvancedSetting;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Limoblife/toolbox/full/ui/AAdvancedSetting;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f080070

    invoke-virtual {p0, v0}, Limoblife/toolbox/full/ui/AAdvancedSetting;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    new-instance v1, Limoblife/toolbox/full/ui/e;

    invoke-direct {v1, p0}, Limoblife/toolbox/full/ui/e;-><init>(Limoblife/toolbox/full/ui/AAdvancedSetting;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Limoblife/toolbox/full/ui/AAdvancedSetting;->y:Landroid/content/SharedPreferences;

    const v0, 0x7f080049

    invoke-virtual {p0, v0}, Limoblife/toolbox/full/ui/AAdvancedSetting;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, v2}, Limoblife/toolbox/full/ui/AAdvancedSetting;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f080007

    invoke-virtual {p0, v0}, Limoblife/toolbox/full/ui/AAdvancedSetting;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Limoblife/toolbox/full/ui/AAdvancedSetting;->b:Landroid/widget/LinearLayout;

    iget-object v0, p0, Limoblife/toolbox/full/ui/AAdvancedSetting;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f08002c

    invoke-virtual {p0, v0}, Limoblife/toolbox/full/ui/AAdvancedSetting;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Limoblife/toolbox/full/ui/AAdvancedSetting;->v:Landroid/widget/ImageView;

    iget-object v0, p0, Limoblife/toolbox/full/ui/AAdvancedSetting;->v:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f080008

    invoke-virtual {p0, v0}, Limoblife/toolbox/full/ui/AAdvancedSetting;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Limoblife/toolbox/full/ui/AAdvancedSetting;->i:Landroid/widget/LinearLayout;

    iget-object v0, p0, Limoblife/toolbox/full/ui/AAdvancedSetting;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f080009

    invoke-virtual {p0, v0}, Limoblife/toolbox/full/ui/AAdvancedSetting;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Limoblife/toolbox/full/ui/AAdvancedSetting;->H:Landroid/widget/ImageView;

    const v0, 0x7f08003c

    invoke-virtual {p0, v0}, Limoblife/toolbox/full/ui/AAdvancedSetting;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Limoblife/toolbox/full/ui/AAdvancedSetting;->q:Landroid/widget/LinearLayout;

    iget-object v0, p0, Limoblife/toolbox/full/ui/AAdvancedSetting;->q:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f08003d

    invoke-virtual {p0, v0}, Limoblife/toolbox/full/ui/AAdvancedSetting;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Limoblife/toolbox/full/ui/AAdvancedSetting;->w:Landroid/widget/ImageView;

    const v0, 0x7f080026

    invoke-virtual {p0, v0}, Limoblife/toolbox/full/ui/AAdvancedSetting;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Limoblife/toolbox/full/ui/AAdvancedSetting;->r:Landroid/widget/LinearLayout;

    iget-object v0, p0, Limoblife/toolbox/full/ui/AAdvancedSetting;->r:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f080027

    invoke-virtual {p0, v0}, Limoblife/toolbox/full/ui/AAdvancedSetting;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Limoblife/toolbox/full/ui/AAdvancedSetting;->s:Landroid/widget/ImageView;

    const v0, 0x7f08003d

    invoke-virtual {p0, v0}, Limoblife/toolbox/full/ui/AAdvancedSetting;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Limoblife/toolbox/full/ui/AAdvancedSetting;->w:Landroid/widget/ImageView;

    const v0, 0x7f08003e

    invoke-virtual {p0, v0}, Limoblife/toolbox/full/ui/AAdvancedSetting;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Limoblife/toolbox/full/ui/AAdvancedSetting;->t:Landroid/widget/LinearLayout;

    iget-object v0, p0, Limoblife/toolbox/full/ui/AAdvancedSetting;->t:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f08003f

    invoke-virtual {p0, v0}, Limoblife/toolbox/full/ui/AAdvancedSetting;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Limoblife/toolbox/full/ui/AAdvancedSetting;->u:Landroid/widget/ImageView;

    const v0, 0x7f080025

    invoke-virtual {p0, v0}, Limoblife/toolbox/full/ui/AAdvancedSetting;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Limoblife/toolbox/full/ui/AAdvancedSetting;->D:Landroid/widget/TextView;

    const v0, 0x7f080024

    invoke-virtual {p0, v0}, Limoblife/toolbox/full/ui/AAdvancedSetting;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Limoblife/toolbox/full/ui/AAdvancedSetting;->C:Landroid/widget/LinearLayout;

    iget-object v0, p0, Limoblife/toolbox/full/ui/AAdvancedSetting;->C:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f080006

    invoke-virtual {p0, v0}, Limoblife/toolbox/full/ui/AAdvancedSetting;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Limoblife/toolbox/full/ui/AAdvancedSetting;->a:Landroid/widget/LinearLayout;

    iget-object v0, p0, Limoblife/toolbox/full/ui/AAdvancedSetting;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f08000a

    invoke-virtual {p0, v0}, Limoblife/toolbox/full/ui/AAdvancedSetting;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Limoblife/toolbox/full/ui/AAdvancedSetting;->c:Landroid/widget/LinearLayout;

    iget-object v0, p0, Limoblife/toolbox/full/ui/AAdvancedSetting;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f080028

    invoke-virtual {p0, v0}, Limoblife/toolbox/full/ui/AAdvancedSetting;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Limoblife/toolbox/full/ui/AAdvancedSetting;->d:Landroid/widget/LinearLayout;

    iget-object v0, p0, Limoblife/toolbox/full/ui/AAdvancedSetting;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f080029

    invoke-virtual {p0, v0}, Limoblife/toolbox/full/ui/AAdvancedSetting;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Limoblife/toolbox/full/ui/AAdvancedSetting;->e:Landroid/widget/ImageView;

    const v0, 0x7f08002a

    invoke-virtual {p0, v0}, Limoblife/toolbox/full/ui/AAdvancedSetting;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Limoblife/toolbox/full/ui/AAdvancedSetting;->f:Landroid/widget/LinearLayout;

    iget-object v0, p0, Limoblife/toolbox/full/ui/AAdvancedSetting;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f08001b

    invoke-virtual {p0, v0}, Limoblife/toolbox/full/ui/AAdvancedSetting;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Limoblife/toolbox/full/ui/AAdvancedSetting;->h:Landroid/widget/LinearLayout;

    iget-object v0, p0, Limoblife/toolbox/full/ui/AAdvancedSetting;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f08001c

    invoke-virtual {p0, v0}, Limoblife/toolbox/full/ui/AAdvancedSetting;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Limoblife/toolbox/full/ui/AAdvancedSetting;->x:Landroid/widget/ImageView;

    const v0, 0x7f08001d

    invoke-virtual {p0, v0}, Limoblife/toolbox/full/ui/AAdvancedSetting;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Limoblife/toolbox/full/ui/AAdvancedSetting;->j:Landroid/widget/LinearLayout;

    iget-object v0, p0, Limoblife/toolbox/full/ui/AAdvancedSetting;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f08001f

    invoke-virtual {p0, v0}, Limoblife/toolbox/full/ui/AAdvancedSetting;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Limoblife/toolbox/full/ui/AAdvancedSetting;->I:Landroid/widget/RadioButton;

    const v0, 0x7f080021

    invoke-virtual {p0, v0}, Limoblife/toolbox/full/ui/AAdvancedSetting;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Limoblife/toolbox/full/ui/AAdvancedSetting;->J:Landroid/widget/RadioButton;

    const v0, 0x7f080023

    invoke-virtual {p0, v0}, Limoblife/toolbox/full/ui/AAdvancedSetting;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Limoblife/toolbox/full/ui/AAdvancedSetting;->K:Landroid/widget/RadioButton;

    const v0, 0x7f08001e

    invoke-virtual {p0, v0}, Limoblife/toolbox/full/ui/AAdvancedSetting;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Limoblife/toolbox/full/ui/AAdvancedSetting;->k:Landroid/widget/LinearLayout;

    iget-object v0, p0, Limoblife/toolbox/full/ui/AAdvancedSetting;->k:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f080020

    invoke-virtual {p0, v0}, Limoblife/toolbox/full/ui/AAdvancedSetting;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Limoblife/toolbox/full/ui/AAdvancedSetting;->l:Landroid/widget/LinearLayout;

    iget-object v0, p0, Limoblife/toolbox/full/ui/AAdvancedSetting;->l:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f080022

    invoke-virtual {p0, v0}, Limoblife/toolbox/full/ui/AAdvancedSetting;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Limoblife/toolbox/full/ui/AAdvancedSetting;->m:Landroid/widget/LinearLayout;

    iget-object v0, p0, Limoblife/toolbox/full/ui/AAdvancedSetting;->m:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f080036

    invoke-virtual {p0, v0}, Limoblife/toolbox/full/ui/AAdvancedSetting;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Limoblife/toolbox/full/ui/AAdvancedSetting;->g:Landroid/widget/LinearLayout;

    iget-object v0, p0, Limoblife/toolbox/full/ui/AAdvancedSetting;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f080038

    invoke-virtual {p0, v0}, Limoblife/toolbox/full/ui/AAdvancedSetting;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Limoblife/toolbox/full/ui/AAdvancedSetting;->z:Landroid/widget/ImageView;

    const v0, 0x7f080039

    invoke-virtual {p0, v0}, Limoblife/toolbox/full/ui/AAdvancedSetting;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Limoblife/toolbox/full/ui/AAdvancedSetting;->A:Landroid/widget/LinearLayout;

    iget-object v0, p0, Limoblife/toolbox/full/ui/AAdvancedSetting;->A:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f08003b

    invoke-virtual {p0, v0}, Limoblife/toolbox/full/ui/AAdvancedSetting;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Limoblife/toolbox/full/ui/AAdvancedSetting;->B:Landroid/widget/ImageView;

    const v0, 0x7f080031

    invoke-virtual {p0, v0}, Limoblife/toolbox/full/ui/AAdvancedSetting;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Limoblife/toolbox/full/ui/AAdvancedSetting;->E:Landroid/widget/RadioButton;

    const v0, 0x7f080033

    invoke-virtual {p0, v0}, Limoblife/toolbox/full/ui/AAdvancedSetting;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Limoblife/toolbox/full/ui/AAdvancedSetting;->F:Landroid/widget/RadioButton;

    const v0, 0x7f080035

    invoke-virtual {p0, v0}, Limoblife/toolbox/full/ui/AAdvancedSetting;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Limoblife/toolbox/full/ui/AAdvancedSetting;->G:Landroid/widget/RadioButton;

    const v0, 0x7f08002b

    invoke-virtual {p0, v0}, Limoblife/toolbox/full/ui/AAdvancedSetting;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Limoblife/toolbox/full/ui/AAdvancedSetting;->N:Landroid/widget/TextView;

    const v0, 0x7f080037

    invoke-virtual {p0, v0}, Limoblife/toolbox/full/ui/AAdvancedSetting;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Limoblife/toolbox/full/ui/AAdvancedSetting;->O:Landroid/widget/TextView;

    const v0, 0x7f08003a

    invoke-virtual {p0, v0}, Limoblife/toolbox/full/ui/AAdvancedSetting;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Limoblife/toolbox/full/ui/AAdvancedSetting;->P:Landroid/widget/TextView;

    const v0, 0x7f08002d

    invoke-virtual {p0, v0}, Limoblife/toolbox/full/ui/AAdvancedSetting;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Limoblife/toolbox/full/ui/AAdvancedSetting;->R:Landroid/widget/LinearLayout;

    iget-object v0, p0, Limoblife/toolbox/full/ui/AAdvancedSetting;->R:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f08002e

    invoke-virtual {p0, v0}, Limoblife/toolbox/full/ui/AAdvancedSetting;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Limoblife/toolbox/full/ui/AAdvancedSetting;->Q:Landroid/widget/TextView;

    iget-object v0, p0, Limoblife/toolbox/full/ui/AAdvancedSetting;->y:Landroid/content/SharedPreferences;

    const-string v1, "mode_auto"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v7, :cond_4

    iget-object v1, p0, Limoblife/toolbox/full/ui/AAdvancedSetting;->e:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-direct {p0, v7}, Limoblife/toolbox/full/ui/AAdvancedSetting;->a(I)V

    :cond_0
    :goto_0
    iget-object v1, p0, Limoblife/toolbox/full/ui/AAdvancedSetting;->y:Landroid/content/SharedPreferences;

    const-string v2, "optimize_interval"

    const/4 v3, -0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, p0, Limoblife/toolbox/full/ui/AAdvancedSetting;->v:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_1
    iget-object v1, p0, Limoblife/toolbox/full/ui/AAdvancedSetting;->y:Landroid/content/SharedPreferences;

    const-string v2, "mode_security_optimize"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_2

    iget-object v1, p0, Limoblife/toolbox/full/ui/AAdvancedSetting;->x:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-direct {p0, v0}, Limoblife/toolbox/full/ui/AAdvancedSetting;->c(I)V

    :cond_2
    iget-object v0, p0, Limoblife/toolbox/full/ui/AAdvancedSetting;->y:Landroid/content/SharedPreferences;

    const-string v1, "mode_startup_optimize"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v7, :cond_5

    iget-object v0, p0, Limoblife/toolbox/full/ui/AAdvancedSetting;->z:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_1
    iget-object v0, p0, Limoblife/toolbox/full/ui/AAdvancedSetting;->y:Landroid/content/SharedPreferences;

    const-string v1, "mode_screenoff_optimize"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Limoblife/toolbox/full/ui/AAdvancedSetting;->B:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_3
    :goto_2
    iget-object v0, p0, Limoblife/toolbox/full/ui/AAdvancedSetting;->y:Landroid/content/SharedPreferences;

    const-string v1, "mode_notification"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Limoblife/toolbox/full/ui/AAdvancedSetting;->H:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_3
    iget-object v0, p0, Limoblife/toolbox/full/ui/AAdvancedSetting;->y:Landroid/content/SharedPreferences;

    const-string v1, "mode_cache_optimize"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Limoblife/toolbox/full/ui/AAdvancedSetting;->w:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_4
    iget-object v0, p0, Limoblife/toolbox/full/ui/AAdvancedSetting;->y:Landroid/content/SharedPreferences;

    const-string v1, "mode_notification_optimize"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Limoblife/toolbox/full/ui/AAdvancedSetting;->s:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_5
    iget-object v0, p0, Limoblife/toolbox/full/ui/AAdvancedSetting;->y:Landroid/content/SharedPreferences;

    const-string v1, "mode_optimize_toast"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Limoblife/toolbox/full/ui/AAdvancedSetting;->u:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_6
    return-void

    :cond_4
    if-nez v0, :cond_0

    iget-object v1, p0, Limoblife/toolbox/full/ui/AAdvancedSetting;->e:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-direct {p0, v4}, Limoblife/toolbox/full/ui/AAdvancedSetting;->a(I)V

    goto/16 :goto_0

    :cond_5
    iget-object v0, p0, Limoblife/toolbox/full/ui/AAdvancedSetting;->z:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    :cond_6
    iget-object v0, p0, Limoblife/toolbox/full/ui/AAdvancedSetting;->y:Landroid/content/SharedPreferences;

    const-string v1, "mode_screenoff_optimize"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v7, :cond_3

    iget-object v0, p0, Limoblife/toolbox/full/ui/AAdvancedSetting;->B:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    :cond_7
    iget-object v0, p0, Limoblife/toolbox/full/ui/AAdvancedSetting;->H:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3

    :cond_8
    iget-object v0, p0, Limoblife/toolbox/full/ui/AAdvancedSetting;->w:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_4

    :cond_9
    iget-object v0, p0, Limoblife/toolbox/full/ui/AAdvancedSetting;->s:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_5

    :cond_a
    iget-object v0, p0, Limoblife/toolbox/full/ui/AAdvancedSetting;->u:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_6
.end method
