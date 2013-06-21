.class public Lcom/ui/LapseIt/capture/ScheduleView;
.super Landroid/app/Activity;
.source "ScheduleView.java"


# instance fields
.field private createConfirmDeleteDialog:Landroid/view/View$OnClickListener;

.field private dateDialogBuilder:Landroid/view/View$OnClickListener;

.field private newScheduleButton:Landroid/widget/Button;

.field private newScheduleContainer:Landroid/widget/LinearLayout;

.field private newScheduleEnd:Landroid/widget/RelativeLayout;

.field private newScheduleEndDate:J

.field private newScheduleHeader:Landroid/widget/LinearLayout;

.field private newScheduleStart:Landroid/widget/RelativeLayout;

.field private newScheduleStartDate:J

.field private oldScheduleContainer:Landroid/widget/LinearLayout;

.field private oldScheduleDate:Landroid/widget/RelativeLayout;

.field private oldScheduleHeader:Landroid/widget/LinearLayout;

.field private setScheduleHandler:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 111
    new-instance v0, Lcom/ui/LapseIt/capture/ScheduleView$1;

    invoke-direct {v0, p0}, Lcom/ui/LapseIt/capture/ScheduleView$1;-><init>(Lcom/ui/LapseIt/capture/ScheduleView;)V

    iput-object v0, p0, Lcom/ui/LapseIt/capture/ScheduleView;->dateDialogBuilder:Landroid/view/View$OnClickListener;

    .line 161
    new-instance v0, Lcom/ui/LapseIt/capture/ScheduleView$2;

    invoke-direct {v0, p0}, Lcom/ui/LapseIt/capture/ScheduleView$2;-><init>(Lcom/ui/LapseIt/capture/ScheduleView;)V

    iput-object v0, p0, Lcom/ui/LapseIt/capture/ScheduleView;->setScheduleHandler:Landroid/view/View$OnClickListener;

    .line 187
    new-instance v0, Lcom/ui/LapseIt/capture/ScheduleView$3;

    invoke-direct {v0, p0}, Lcom/ui/LapseIt/capture/ScheduleView$3;-><init>(Lcom/ui/LapseIt/capture/ScheduleView;)V

    iput-object v0, p0, Lcom/ui/LapseIt/capture/ScheduleView;->createConfirmDeleteDialog:Landroid/view/View$OnClickListener;

    .line 34
    return-void
.end method

.method static synthetic access$0(Lcom/ui/LapseIt/capture/ScheduleView;)Landroid/widget/RelativeLayout;
    .locals 1
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lcom/ui/LapseIt/capture/ScheduleView;->newScheduleEnd:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$1(Lcom/ui/LapseIt/capture/ScheduleView;)J
    .locals 2
    .parameter

    .prologue
    .line 48
    iget-wide v0, p0, Lcom/ui/LapseIt/capture/ScheduleView;->newScheduleStartDate:J

    return-wide v0
.end method

.method static synthetic access$2(Lcom/ui/LapseIt/capture/ScheduleView;)Landroid/widget/RelativeLayout;
    .locals 1
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lcom/ui/LapseIt/capture/ScheduleView;->newScheduleStart:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$3(Lcom/ui/LapseIt/capture/ScheduleView;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 48
    iput-wide p1, p0, Lcom/ui/LapseIt/capture/ScheduleView;->newScheduleStartDate:J

    return-void
.end method

.method static synthetic access$4(Lcom/ui/LapseIt/capture/ScheduleView;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 49
    iput-wide p1, p0, Lcom/ui/LapseIt/capture/ScheduleView;->newScheduleEndDate:J

    return-void
.end method

.method static synthetic access$5(Lcom/ui/LapseIt/capture/ScheduleView;)J
    .locals 2
    .parameter

    .prologue
    .line 49
    iget-wide v0, p0, Lcom/ui/LapseIt/capture/ScheduleView;->newScheduleEndDate:J

    return-wide v0
.end method

.method static synthetic access$6(Lcom/ui/LapseIt/capture/ScheduleView;JJ)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 172
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ui/LapseIt/capture/ScheduleView;->scheduleCapture(JJ)V

    return-void
.end method

.method static synthetic access$7(Lcom/ui/LapseIt/capture/ScheduleView;)Landroid/widget/RelativeLayout;
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/ui/LapseIt/capture/ScheduleView;->oldScheduleDate:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method private scheduleCapture(JJ)V
    .locals 8
    .parameter "startDateTime"
    .parameter "endDateTime"

    .prologue
    const/4 v7, 0x0

    .line 174
    const-string v3, "trace"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Setting schedule end "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v5, p0, Lcom/ui/LapseIt/capture/ScheduleView;->newScheduleEndDate:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    const-string v3, "scheduledStart"

    iget-wide v4, p0, Lcom/ui/LapseIt/capture/ScheduleView;->newScheduleStartDate:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v3, v4}, Lcom/ui/LapseIt/settings/SettingsHelper;->updateSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    const-string v3, "scheduledEnd"

    iget-wide v4, p0, Lcom/ui/LapseIt/capture/ScheduleView;->newScheduleEndDate:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v3, v4}, Lcom/ui/LapseIt/settings/SettingsHelper;->updateSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    const-string v3, "alarm"

    invoke-virtual {p0, v3}, Lcom/ui/LapseIt/capture/ScheduleView;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 180
    .local v0, alarmManager:Landroid/app/AlarmManager;
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/ui/LapseIt/capture/ScheduleReceiver;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 182
    .local v1, intent:Landroid/content/Intent;
    invoke-static {p0, v7, v1, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 184
    .local v2, pIntent:Landroid/app/PendingIntent;
    invoke-virtual {v0, v7, p1, p2, v2}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 185
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11
    .parameter "savedInstanceState"

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    const v7, 0x7f0b006f

    const v6, 0x7f0b006e

    .line 59
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 60
    const v3, 0x7f03001f

    invoke-virtual {p0, v3}, Lcom/ui/LapseIt/capture/ScheduleView;->setContentView(I)V

    .line 62
    const v3, 0x7f0b006c

    invoke-virtual {p0, v3}, Lcom/ui/LapseIt/capture/ScheduleView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/ui/LapseIt/capture/ScheduleView;->oldScheduleContainer:Landroid/widget/LinearLayout;

    .line 63
    iget-object v3, p0, Lcom/ui/LapseIt/capture/ScheduleView;->oldScheduleContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v8}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/ui/LapseIt/capture/ScheduleView;->oldScheduleHeader:Landroid/widget/LinearLayout;

    .line 64
    iget-object v3, p0, Lcom/ui/LapseIt/capture/ScheduleView;->oldScheduleContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v9}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, p0, Lcom/ui/LapseIt/capture/ScheduleView;->oldScheduleDate:Landroid/widget/RelativeLayout;

    .line 66
    iget-object v3, p0, Lcom/ui/LapseIt/capture/ScheduleView;->oldScheduleHeader:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/ui/LapseIt/capture/ScheduleView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f080098

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    const-string v3, "scheduledStart"

    invoke-static {p0, v3}, Lcom/ui/LapseIt/settings/SettingsHelper;->getSetting(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 69
    const-string v3, "scheduledStart"

    invoke-static {p0, v3}, Lcom/ui/LapseIt/settings/SettingsHelper;->getSetting(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 70
    .local v1, scheduledCapture:J
    const/4 v3, 0x3

    invoke-static {v10, v3}, Ljava/text/DateFormat;->getDateTimeInstance(II)Ljava/text/DateFormat;

    move-result-object v3

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v4}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 72
    .local v0, formatedDate:Ljava/lang/String;
    iget-object v3, p0, Lcom/ui/LapseIt/capture/ScheduleView;->oldScheduleDate:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v6}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Starting in "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    iget-object v3, p0, Lcom/ui/LapseIt/capture/ScheduleView;->oldScheduleDate:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v7}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/ui/LapseIt/capture/ScheduleView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f080092

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    iget-object v3, p0, Lcom/ui/LapseIt/capture/ScheduleView;->oldScheduleDate:Landroid/widget/RelativeLayout;

    iget-object v4, p0, Lcom/ui/LapseIt/capture/ScheduleView;->createConfirmDeleteDialog:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    .end local v0           #formatedDate:Ljava/lang/String;
    .end local v1           #scheduledCapture:J
    :goto_0
    const v3, 0x7f0b006d

    invoke-virtual {p0, v3}, Lcom/ui/LapseIt/capture/ScheduleView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/ui/LapseIt/capture/ScheduleView;->newScheduleContainer:Landroid/widget/LinearLayout;

    .line 80
    iget-object v3, p0, Lcom/ui/LapseIt/capture/ScheduleView;->newScheduleContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v8}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/ui/LapseIt/capture/ScheduleView;->newScheduleHeader:Landroid/widget/LinearLayout;

    .line 81
    iget-object v3, p0, Lcom/ui/LapseIt/capture/ScheduleView;->newScheduleContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v9}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, p0, Lcom/ui/LapseIt/capture/ScheduleView;->newScheduleStart:Landroid/widget/RelativeLayout;

    .line 82
    iget-object v3, p0, Lcom/ui/LapseIt/capture/ScheduleView;->newScheduleContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v10}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, p0, Lcom/ui/LapseIt/capture/ScheduleView;->newScheduleEnd:Landroid/widget/RelativeLayout;

    .line 85
    iget-object v3, p0, Lcom/ui/LapseIt/capture/ScheduleView;->newScheduleContainer:Landroid/widget/LinearLayout;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/ui/LapseIt/capture/ScheduleView;->newScheduleButton:Landroid/widget/Button;

    .line 87
    iget-object v3, p0, Lcom/ui/LapseIt/capture/ScheduleView;->newScheduleHeader:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/ui/LapseIt/capture/ScheduleView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f08009d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    iget-object v3, p0, Lcom/ui/LapseIt/capture/ScheduleView;->newScheduleStart:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v6}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/ui/LapseIt/capture/ScheduleView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f08009b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    iget-object v3, p0, Lcom/ui/LapseIt/capture/ScheduleView;->newScheduleEnd:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v6}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/ui/LapseIt/capture/ScheduleView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f08009c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    iget-object v3, p0, Lcom/ui/LapseIt/capture/ScheduleView;->newScheduleStart:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v7}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/ui/LapseIt/capture/ScheduleView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f08009a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    iget-object v3, p0, Lcom/ui/LapseIt/capture/ScheduleView;->newScheduleEnd:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v7}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/ui/LapseIt/capture/ScheduleView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f08009a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    iget-object v3, p0, Lcom/ui/LapseIt/capture/ScheduleView;->newScheduleStart:Landroid/widget/RelativeLayout;

    iget-object v4, p0, Lcom/ui/LapseIt/capture/ScheduleView;->dateDialogBuilder:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    iget-object v3, p0, Lcom/ui/LapseIt/capture/ScheduleView;->newScheduleEnd:Landroid/widget/RelativeLayout;

    iget-object v4, p0, Lcom/ui/LapseIt/capture/ScheduleView;->dateDialogBuilder:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    iget-object v3, p0, Lcom/ui/LapseIt/capture/ScheduleView;->newScheduleButton:Landroid/widget/Button;

    iget-object v4, p0, Lcom/ui/LapseIt/capture/ScheduleView;->setScheduleHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    return-void

    .line 76
    :cond_0
    iget-object v3, p0, Lcom/ui/LapseIt/capture/ScheduleView;->oldScheduleDate:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v6}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/ui/LapseIt/capture/ScheduleView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f080099

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 52
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 54
    invoke-static {}, Lcom/ui/LapseIt/Main;->getFlurryId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/flurry/android/FlurryAgent;->onStartSession(Landroid/content/Context;Ljava/lang/String;)V

    .line 55
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 106
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 108
    invoke-static {p0}, Lcom/flurry/android/FlurryAgent;->onEndSession(Landroid/content/Context;)V

    .line 109
    return-void
.end method
