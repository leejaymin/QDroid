.class public Lcom/spritefish/fastburstcamera/controls/SettingsActionBar;
.super Ljava/lang/Object;
.source "SettingsActionBar.java"

# interfaces
.implements Lcom/spritefish/fastburstcamera/controls/ActionItem;


# instance fields
.field private activity:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

.field descText:Landroid/widget/TextView;

.field preferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Lcom/spritefish/fastburstcamera/activities/RecorderActivity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/spritefish/fastburstcamera/controls/SettingsActionBar;->activity:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    .line 29
    return-void
.end method

.method static synthetic access$0(Lcom/spritefish/fastburstcamera/controls/SettingsActionBar;)Lcom/spritefish/fastburstcamera/activities/RecorderActivity;
    .locals 1
    .parameter

    .prologue
    .line 23
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/controls/SettingsActionBar;->activity:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    return-object v0
.end method


# virtual methods
.method public getActionItem(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 12
    .parameter "inflater"

    .prologue
    .line 63
    iget-object v9, p0, Lcom/spritefish/fastburstcamera/controls/SettingsActionBar;->activity:Lcom/spritefish/fastburstcamera/activities/RecorderActivity;

    invoke-static {v9}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v9

    iput-object v9, p0, Lcom/spritefish/fastburstcamera/controls/SettingsActionBar;->preferences:Landroid/content/SharedPreferences;

    .line 64
    iget-object v9, p0, Lcom/spritefish/fastburstcamera/controls/SettingsActionBar;->preferences:Landroid/content/SharedPreferences;

    const-string v10, "shootmodePref"

    const-string v11, "cont"

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 66
    .local v8, shootmode:Ljava/lang/String;
    const v9, 0x7f030004

    const/4 v10, 0x0

    invoke-virtual {p1, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 67
    .local v0, container:Landroid/view/View;
    const v9, 0x7f0d0011

    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iput-object v9, p0, Lcom/spritefish/fastburstcamera/controls/SettingsActionBar;->descText:Landroid/widget/TextView;

    .line 68
    const v9, 0x7f0d000b

    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/RadioGroup;

    .line 69
    .local v7, rg:Landroid/widget/RadioGroup;
    const v9, 0x7f0d000c

    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RadioButton;

    .line 70
    .local v5, oneshot:Landroid/widget/RadioButton;
    const v9, 0x7f0d000d

    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    .line 71
    .local v1, fiveshot:Landroid/widget/RadioButton;
    const v9, 0x7f0d000e

    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    .line 72
    .local v2, fullburst:Landroid/widget/RadioButton;
    const v9, 0x7f0d000f

    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RadioButton;

    .line 73
    .local v6, preshot:Landroid/widget/RadioButton;
    const v9, 0x7f0d0010

    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioButton;

    .line 76
    .local v3, motion:Landroid/widget/RadioButton;
    new-instance v4, Lcom/spritefish/fastburstcamera/controls/SettingsActionBar$1;

    invoke-direct {v4, p0, v7}, Lcom/spritefish/fastburstcamera/controls/SettingsActionBar$1;-><init>(Lcom/spritefish/fastburstcamera/controls/SettingsActionBar;Landroid/widget/RadioGroup;)V

    .line 88
    .local v4, ocl:Landroid/view/View$OnClickListener;
    invoke-virtual {v5, v4}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    invoke-virtual {v1, v4}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    invoke-virtual {v2, v4}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    invoke-virtual {v6, v4}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    invoke-virtual {v3, v4}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    const-string v9, "cont"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-virtual {v2}, Landroid/widget/RadioButton;->toggle()V

    .line 95
    :cond_0
    const-string v9, "1"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-virtual {v5}, Landroid/widget/RadioButton;->toggle()V

    .line 96
    :cond_1
    const-string v9, "3"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-virtual {v5}, Landroid/widget/RadioButton;->toggle()V

    .line 97
    :cond_2
    const-string v9, "5"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-virtual {v1}, Landroid/widget/RadioButton;->toggle()V

    .line 98
    :cond_3
    const-string v9, "preshot"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-virtual {v6}, Landroid/widget/RadioButton;->toggle()V

    .line 99
    :cond_4
    const-string v9, "motion"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-virtual {v3}, Landroid/widget/RadioButton;->toggle()V

    .line 100
    :cond_5
    invoke-virtual {p0, v7}, Lcom/spritefish/fastburstcamera/controls/SettingsActionBar;->onShotmodeRadioButtonSelected(Landroid/widget/RadioGroup;)V

    .line 102
    return-object v0
.end method

.method public onShotmodeRadioButtonSelected(Landroid/widget/RadioGroup;)V
    .locals 6
    .parameter "rg"

    .prologue
    .line 34
    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v2

    .line 35
    .local v2, rbid:I
    invoke-virtual {p1, v2}, Landroid/widget/RadioGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 36
    .local v1, rb:Landroid/view/View;
    invoke-virtual {p1, v1}, Landroid/widget/RadioGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 37
    .local v0, idx:I
    const-string v3, "insta"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Selected "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    packed-switch v0, :pswitch_data_0

    .line 58
    :goto_0
    return-void

    .line 40
    :pswitch_0
    iget-object v3, p0, Lcom/spritefish/fastburstcamera/controls/SettingsActionBar;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "shootmodePref"

    const-string v5, "1"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 41
    iget-object v3, p0, Lcom/spritefish/fastburstcamera/controls/SettingsActionBar;->descText:Landroid/widget/TextView;

    const v4, 0x7f070016

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 43
    :pswitch_1
    iget-object v3, p0, Lcom/spritefish/fastburstcamera/controls/SettingsActionBar;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "shootmodePref"

    const-string v5, "5"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 44
    iget-object v3, p0, Lcom/spritefish/fastburstcamera/controls/SettingsActionBar;->descText:Landroid/widget/TextView;

    const v4, 0x7f070017

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 46
    :pswitch_2
    iget-object v3, p0, Lcom/spritefish/fastburstcamera/controls/SettingsActionBar;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "shootmodePref"

    const-string v5, "cont"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 47
    iget-object v3, p0, Lcom/spritefish/fastburstcamera/controls/SettingsActionBar;->descText:Landroid/widget/TextView;

    const v4, 0x7f070018

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 49
    :pswitch_3
    iget-object v3, p0, Lcom/spritefish/fastburstcamera/controls/SettingsActionBar;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "shootmodePref"

    const-string v5, "preshot"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 50
    iget-object v3, p0, Lcom/spritefish/fastburstcamera/controls/SettingsActionBar;->descText:Landroid/widget/TextView;

    const v4, 0x7f070019

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 52
    :pswitch_4
    iget-object v3, p0, Lcom/spritefish/fastburstcamera/controls/SettingsActionBar;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "shootmodePref"

    const-string v5, "motion"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 53
    iget-object v3, p0, Lcom/spritefish/fastburstcamera/controls/SettingsActionBar;->descText:Landroid/widget/TextView;

    const v4, 0x7f07001a

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 38
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
