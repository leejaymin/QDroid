.class public Lcom/ui/LapseIt/settings/SettingsView;
.super Landroid/app/Activity;
.source "SettingsView.java"


# instance fields
.field captureContainer:Landroid/widget/LinearLayout;

.field currentSettings:Landroid/os/Bundle;

.field editorActionHandler:Landroid/widget/TextView$OnEditorActionListener;

.field itemClickListener:Landroid/view/View$OnClickListener;

.field private itemLongClickListener:Landroid/view/View$OnLongClickListener;

.field otherClickListener:Landroid/view/View$OnClickListener;

.field otherContainer:Landroid/widget/LinearLayout;

.field private pickDirHandler:Landroid/view/View$OnClickListener;

.field renderContainer:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 179
    new-instance v0, Lcom/ui/LapseIt/settings/SettingsView$1;

    invoke-direct {v0, p0}, Lcom/ui/LapseIt/settings/SettingsView$1;-><init>(Lcom/ui/LapseIt/settings/SettingsView;)V

    iput-object v0, p0, Lcom/ui/LapseIt/settings/SettingsView;->pickDirHandler:Landroid/view/View$OnClickListener;

    .line 202
    new-instance v0, Lcom/ui/LapseIt/settings/SettingsView$2;

    invoke-direct {v0, p0}, Lcom/ui/LapseIt/settings/SettingsView$2;-><init>(Lcom/ui/LapseIt/settings/SettingsView;)V

    iput-object v0, p0, Lcom/ui/LapseIt/settings/SettingsView;->editorActionHandler:Landroid/widget/TextView$OnEditorActionListener;

    .line 312
    new-instance v0, Lcom/ui/LapseIt/settings/SettingsView$3;

    invoke-direct {v0, p0}, Lcom/ui/LapseIt/settings/SettingsView$3;-><init>(Lcom/ui/LapseIt/settings/SettingsView;)V

    iput-object v0, p0, Lcom/ui/LapseIt/settings/SettingsView;->itemClickListener:Landroid/view/View$OnClickListener;

    .line 329
    new-instance v0, Lcom/ui/LapseIt/settings/SettingsView$4;

    invoke-direct {v0, p0}, Lcom/ui/LapseIt/settings/SettingsView$4;-><init>(Lcom/ui/LapseIt/settings/SettingsView;)V

    iput-object v0, p0, Lcom/ui/LapseIt/settings/SettingsView;->otherClickListener:Landroid/view/View$OnClickListener;

    .line 434
    new-instance v0, Lcom/ui/LapseIt/settings/SettingsView$5;

    invoke-direct {v0, p0}, Lcom/ui/LapseIt/settings/SettingsView$5;-><init>(Lcom/ui/LapseIt/settings/SettingsView;)V

    iput-object v0, p0, Lcom/ui/LapseIt/settings/SettingsView;->itemLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 45
    return-void
.end method

.method static synthetic access$0(Lcom/ui/LapseIt/settings/SettingsView;)V
    .locals 0
    .parameter

    .prologue
    .line 470
    invoke-direct {p0}, Lcom/ui/LapseIt/settings/SettingsView;->createFolderDialog()V

    return-void
.end method

.method private createFolderDialog()V
    .locals 4

    .prologue
    .line 471
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 472
    .local v0, alertBuilder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/ui/LapseIt/settings/SettingsView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080089

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 473
    const v2, 0x1080027

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 474
    invoke-virtual {p0}, Lcom/ui/LapseIt/settings/SettingsView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f08008a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 475
    invoke-virtual {p0}, Lcom/ui/LapseIt/settings/SettingsView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080094

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/ui/LapseIt/settings/SettingsView$7;

    invoke-direct {v3, p0}, Lcom/ui/LapseIt/settings/SettingsView$7;-><init>(Lcom/ui/LapseIt/settings/SettingsView;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 531
    const-string v2, "Cancel"

    new-instance v3, Lcom/ui/LapseIt/settings/SettingsView$8;

    invoke-direct {v3, p0}, Lcom/ui/LapseIt/settings/SettingsView$8;-><init>(Lcom/ui/LapseIt/settings/SettingsView;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 538
    :try_start_0
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 544
    :goto_0
    return-void

    .line 539
    :catch_0
    move-exception v1

    .line 540
    .local v1, e:Landroid/view/WindowManager$BadTokenException;
    invoke-virtual {v1}, Landroid/view/WindowManager$BadTokenException;->printStackTrace()V

    goto :goto_0

    .line 541
    .end local v1           #e:Landroid/view/WindowManager$BadTokenException;
    :catch_1
    move-exception v1

    .line 542
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 61
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 62
    const v0, 0x7f030027

    invoke-virtual {p0, v0}, Lcom/ui/LapseIt/settings/SettingsView;->setContentView(I)V

    .line 64
    const v0, 0x7f0b007f

    invoke-virtual {p0, v0}, Lcom/ui/LapseIt/settings/SettingsView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/ui/LapseIt/settings/SettingsView;->captureContainer:Landroid/widget/LinearLayout;

    .line 65
    const v0, 0x7f0b0080

    invoke-virtual {p0, v0}, Lcom/ui/LapseIt/settings/SettingsView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/ui/LapseIt/settings/SettingsView;->renderContainer:Landroid/widget/LinearLayout;

    .line 66
    const v0, 0x7f0b0081

    invoke-virtual {p0, v0}, Lcom/ui/LapseIt/settings/SettingsView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/ui/LapseIt/settings/SettingsView;->otherContainer:Landroid/widget/LinearLayout;

    .line 68
    iget-object v0, p0, Lcom/ui/LapseIt/settings/SettingsView;->captureContainer:Landroid/widget/LinearLayout;

    sget-object v1, Lcom/ui/LapseIt/settings/SettingsHelper$CAPTURE_PARAMS;->CAPTURE_ITEMS:[[Ljava/lang/String;

    const-string v2, "Capture settings"

    invoke-virtual {p0, v0, v1, v2}, Lcom/ui/LapseIt/settings/SettingsView;->populateCapture(Landroid/widget/LinearLayout;[[Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    iget-object v0, p0, Lcom/ui/LapseIt/settings/SettingsView;->renderContainer:Landroid/widget/LinearLayout;

    sget-object v1, Lcom/ui/LapseIt/settings/SettingsHelper$RENDER_PARAMS;->RENDER_ITEMS:[[Ljava/lang/String;

    const-string v2, "Render settings"

    invoke-virtual {p0, v0, v1, v2}, Lcom/ui/LapseIt/settings/SettingsView;->populateCapture(Landroid/widget/LinearLayout;[[Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    iget-object v0, p0, Lcom/ui/LapseIt/settings/SettingsView;->otherContainer:Landroid/widget/LinearLayout;

    sget-object v1, Lcom/ui/LapseIt/settings/SettingsHelper$OTHER_PARAMS;->OTHER_ITEMS:[[Ljava/lang/String;

    const-string v2, "Other settings"

    invoke-virtual {p0, v0, v1, v2}, Lcom/ui/LapseIt/settings/SettingsView;->populateCapture(Landroid/widget/LinearLayout;[[Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    invoke-static {p0}, Lcom/ui/LapseIt/Main;->isFullVersion(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/ui/LapseIt/settings/SettingsView;->otherContainer:Landroid/widget/LinearLayout;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 76
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/ui/LapseIt/settings/SettingsView;->captureContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->requestFocus()Z

    .line 82
    iget-object v0, p0, Lcom/ui/LapseIt/settings/SettingsView;->captureContainer:Landroid/widget/LinearLayout;

    sget-object v1, Lcom/ui/LapseIt/settings/SettingsHelper$CAPTURE_PARAMS;->CAPTURE_ITEMS:[[Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/ui/LapseIt/settings/SettingsView;->updateSettings(Landroid/widget/LinearLayout;[[Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Lcom/ui/LapseIt/settings/SettingsView;->renderContainer:Landroid/widget/LinearLayout;

    sget-object v1, Lcom/ui/LapseIt/settings/SettingsHelper$RENDER_PARAMS;->RENDER_ITEMS:[[Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/ui/LapseIt/settings/SettingsView;->updateSettings(Landroid/widget/LinearLayout;[[Ljava/lang/String;)V

    .line 85
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 86
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 54
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 56
    invoke-static {}, Lcom/ui/LapseIt/Main;->getFlurryId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/flurry/android/FlurryAgent;->onStartSession(Landroid/content/Context;Ljava/lang/String;)V

    .line 57
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 90
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 92
    invoke-static {p0}, Lcom/flurry/android/FlurryAgent;->onEndSession(Landroid/content/Context;)V

    .line 93
    return-void
.end method

.method protected populateCapture(Landroid/widget/LinearLayout;[[Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .parameter "container"
    .parameter "params"
    .parameter "category"

    .prologue
    const v9, 0x7f0b0002

    const/high16 v8, 0x7f0b

    const v7, 0x7f0b006e

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 101
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    if-lt v1, v3, :cond_0

    .line 177
    return-void

    .line 102
    :cond_0
    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 104
    .local v0, currentView:Landroid/view/ViewGroup;
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 101
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 106
    :pswitch_0
    invoke-virtual {p0}, Lcom/ui/LapseIt/settings/SettingsView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    aget-object v4, p2, v1

    aget-object v4, v4, v6

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 107
    .local v2, itemTitle:Ljava/lang/String;
    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 111
    .end local v2           #itemTitle:Ljava/lang/String;
    :pswitch_1
    invoke-virtual {p0}, Lcom/ui/LapseIt/settings/SettingsView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    aget-object v4, p2, v1

    aget-object v4, v4, v6

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 112
    .restart local v2       #itemTitle:Ljava/lang/String;
    aget-object v3, p2, v1

    aget-object v3, v3, v5

    invoke-virtual {v0, v8, v3}, Landroid/view/ViewGroup;->setTag(ILjava/lang/Object;)V

    .line 113
    invoke-virtual {v0, v9, v2}, Landroid/view/ViewGroup;->setTag(ILjava/lang/Object;)V

    .line 114
    const v3, 0x7f0b0003

    invoke-virtual {v0, v3, p3}, Landroid/view/ViewGroup;->setTag(ILjava/lang/Object;)V

    .line 116
    iget-object v3, p0, Lcom/ui/LapseIt/settings/SettingsView;->otherContainer:Landroid/widget/LinearLayout;

    if-ne p1, v3, :cond_2

    .line 117
    iget-object v3, p0, Lcom/ui/LapseIt/settings/SettingsView;->otherClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    :cond_1
    :goto_2
    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 119
    :cond_2
    aget-object v3, p2, v1

    aget-object v3, v3, v5

    const-string v4, "directory"

    if-ne v3, v4, :cond_3

    .line 120
    iget-object v3, p0, Lcom/ui/LapseIt/settings/SettingsView;->pickDirHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    :goto_3
    aget-object v3, p2, v1

    aget-object v3, v3, v5

    const-string v4, "schedule"

    if-eq v3, v4, :cond_1

    .line 126
    iget-object v3, p0, Lcom/ui/LapseIt/settings/SettingsView;->itemLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto :goto_2

    .line 122
    :cond_3
    iget-object v3, p0, Lcom/ui/LapseIt/settings/SettingsView;->itemClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_3

    .line 134
    .end local v2           #itemTitle:Ljava/lang/String;
    :pswitch_2
    invoke-virtual {p0}, Lcom/ui/LapseIt/settings/SettingsView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    aget-object v4, p2, v1

    aget-object v4, v4, v6

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 135
    .restart local v2       #itemTitle:Ljava/lang/String;
    aget-object v3, p2, v1

    aget-object v3, v3, v5

    invoke-virtual {v0, v8, v3}, Landroid/view/ViewGroup;->setTag(ILjava/lang/Object;)V

    .line 136
    invoke-virtual {v0, v9, v2}, Landroid/view/ViewGroup;->setTag(ILjava/lang/Object;)V

    .line 137
    const v3, 0x7f0b0003

    invoke-virtual {v0, v3, p3}, Landroid/view/ViewGroup;->setTag(ILjava/lang/Object;)V

    .line 138
    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 140
    const v3, 0x7f0b006f

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iget-object v4, p0, Lcom/ui/LapseIt/settings/SettingsView;->editorActionHandler:Landroid/widget/TextView$OnEditorActionListener;

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 141
    const v3, 0x7f0b006f

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    new-instance v4, Lcom/ui/LapseIt/settings/SettingsView$6;

    invoke-direct {v4, p0}, Lcom/ui/LapseIt/settings/SettingsView$6;-><init>(Lcom/ui/LapseIt/settings/SettingsView;)V

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    goto/16 :goto_1

    .line 104
    :pswitch_data_0
    .packed-switch 0x7f0b0075
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method protected updateSettings(Landroid/widget/LinearLayout;[[Ljava/lang/String;)V
    .locals 14
    .parameter "container"
    .parameter "params"

    .prologue
    .line 251
    const/4 v5, 0x1

    .local v5, i:I
    :goto_0
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v10

    if-lt v5, v10, :cond_0

    .line 310
    return-void

    .line 252
    :cond_0
    invoke-virtual {p1, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 254
    .local v0, currentView:Landroid/view/ViewGroup;
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getId()I

    move-result v10

    packed-switch v10, :pswitch_data_0

    .line 251
    :cond_1
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 256
    :pswitch_0
    aget-object v10, p2, v5

    const/4 v11, 0x0

    aget-object v10, v10, v11

    const-string v11, "schedule"

    if-ne v10, v11, :cond_3

    .line 257
    const-string v10, "scheduledStart"

    invoke-static {p0, v10}, Lcom/ui/LapseIt/settings/SettingsHelper;->getSetting(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_2

    .line 258
    const-string v10, "scheduledStart"

    invoke-static {p0, v10}, Lcom/ui/LapseIt/settings/SettingsHelper;->getSetting(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 259
    .local v6, scheduledCapture:J
    const/4 v10, 0x2

    const/4 v11, 0x3

    invoke-static {v10, v11}, Ljava/text/DateFormat;->getDateTimeInstance(II)Ljava/text/DateFormat;

    move-result-object v10

    new-instance v11, Ljava/util/Date;

    invoke-direct {v11, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v10, v11}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    .line 260
    .local v4, formatedDate:Ljava/lang/String;
    const v10, 0x7f0b006f

    invoke-virtual {v0, v10}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    invoke-virtual {v10, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 262
    .end local v4           #formatedDate:Ljava/lang/String;
    .end local v6           #scheduledCapture:J
    :cond_2
    const v10, 0x7f0b006f

    invoke-virtual {v0, v10}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/ui/LapseIt/settings/SettingsView;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f08005e

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 264
    :cond_3
    aget-object v10, p2, v5

    const/4 v11, 0x0

    aget-object v10, v10, v11

    const-string v11, "renderfps"

    if-eq v10, v11, :cond_4

    aget-object v10, p2, v5

    const/4 v11, 0x0

    aget-object v10, v10, v11

    const-string v11, "dim"

    if-eq v10, v11, :cond_4

    aget-object v10, p2, v5

    const/4 v11, 0x0

    aget-object v10, v10, v11

    const-string v11, "directory"

    if-ne v10, v11, :cond_6

    .line 265
    :cond_4
    aget-object v10, p2, v5

    const/4 v11, 0x0

    aget-object v10, v10, v11

    invoke-static {p0, v10}, Lcom/ui/LapseIt/settings/SettingsHelper;->getSetting(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 267
    .local v8, value:Ljava/lang/String;
    aget-object v10, p2, v5

    const/4 v11, 0x0

    aget-object v10, v10, v11

    const-string v11, "dim"

    if-ne v10, v11, :cond_5

    .line 268
    const v10, 0x7f0b006f

    invoke-virtual {v0, v10}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, "%"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 270
    :cond_5
    const v10, 0x7f0b006f

    invoke-virtual {v0, v10}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    invoke-virtual {v10, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 274
    .end local v8           #value:Ljava/lang/String;
    :cond_6
    aget-object v10, p2, v5

    const/4 v11, 0x0

    aget-object v10, v10, v11

    invoke-static {p0, v10}, Lcom/ui/LapseIt/settings/SettingsHelper;->getSetting(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 276
    .restart local v8       #value:Ljava/lang/String;
    aget-object v10, p2, v5

    const/4 v11, 0x0

    aget-object v10, v10, v11

    invoke-static {v10}, Lcom/ui/LapseIt/settings/SettingsHelper;->getDetailParams(Ljava/lang/String;)[[Ljava/lang/String;

    move-result-object v2

    .line 277
    .local v2, detailsArray:[[Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 278
    array-length v12, v2

    const/4 v10, 0x0

    move v11, v10

    :goto_2
    if-ge v11, v12, :cond_1

    aget-object v1, v2, v11

    .line 279
    .local v1, detail:[Ljava/lang/String;
    const/4 v10, 0x1

    aget-object v10, v1, v10

    invoke-virtual {v10}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 280
    const-string v9, "Error"

    .line 282
    .local v9, valueString:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lcom/ui/LapseIt/settings/SettingsView;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const/4 v13, 0x0

    aget-object v13, v1, v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v10, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 286
    :goto_3
    const v10, 0x7f0b006f

    invoke-virtual {v0, v10}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    invoke-virtual {v10, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 278
    .end local v9           #valueString:Ljava/lang/String;
    :cond_7
    add-int/lit8 v10, v11, 0x1

    move v11, v10

    goto :goto_2

    .line 283
    .restart local v9       #valueString:Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 284
    .local v3, e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 295
    .end local v1           #detail:[Ljava/lang/String;
    .end local v2           #detailsArray:[[Ljava/lang/String;
    .end local v3           #e:Ljava/lang/Exception;
    .end local v8           #value:Ljava/lang/String;
    .end local v9           #valueString:Ljava/lang/String;
    :pswitch_1
    aget-object v10, p2, v5

    const/4 v11, 0x0

    aget-object v10, v10, v11

    invoke-static {p0, v10}, Lcom/ui/LapseIt/settings/SettingsHelper;->getSetting(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 296
    .restart local v8       #value:Ljava/lang/String;
    const v10, 0x7f0b006f

    invoke-virtual {v0, v10}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/EditText;

    invoke-virtual {v10, v8}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 297
    const v10, 0x7f0b006f

    invoke-virtual {v0, v10}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/EditText;

    invoke-virtual {v10, v8}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 300
    aget-object v10, p2, v5

    const/4 v11, 0x0

    aget-object v10, v10, v11

    const-string v11, "limitvalue"

    if-ne v10, v11, :cond_1

    .line 301
    const-string v10, "limitmode"

    invoke-static {p0, v10}, Lcom/ui/LapseIt/settings/SettingsHelper;->getSetting(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "user"

    invoke-virtual {v10, v11}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 302
    const/16 v10, 0x8

    invoke-virtual {v0, v10}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_1

    .line 304
    :cond_8
    const/4 v10, 0x0

    invoke-virtual {v0, v10}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_1

    .line 254
    :pswitch_data_0
    .packed-switch 0x7f0b0076
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
