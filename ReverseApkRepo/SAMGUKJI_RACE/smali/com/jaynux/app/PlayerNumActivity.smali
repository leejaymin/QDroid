.class public Lcom/jaynux/app/PlayerNumActivity;
.super Landroid/app/Activity;
.source "PlayerNumActivity.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# instance fields
.field private intent:Landroid/content/Intent;

.field private meter:I

.field private nextBtn:Landroid/widget/Button;

.field private playerNum:I

.field private radio1:Landroid/widget/RadioGroup;

.field private radio2:Landroid/widget/RadioGroup;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 17
    const/4 v0, 0x4

    iput v0, p0, Lcom/jaynux/app/PlayerNumActivity;->playerNum:I

    .line 18
    const/16 v0, 0x2710

    iput v0, p0, Lcom/jaynux/app/PlayerNumActivity;->meter:I

    .line 10
    return-void
.end method

.method static synthetic access$0(Lcom/jaynux/app/PlayerNumActivity;)Landroid/content/Intent;
    .locals 1
    .parameter

    .prologue
    .line 20
    iget-object v0, p0, Lcom/jaynux/app/PlayerNumActivity;->intent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$1(Lcom/jaynux/app/PlayerNumActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 17
    iget v0, p0, Lcom/jaynux/app/PlayerNumActivity;->playerNum:I

    return v0
.end method

.method static synthetic access$2(Lcom/jaynux/app/PlayerNumActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 18
    iget v0, p0, Lcom/jaynux/app/PlayerNumActivity;->meter:I

    return v0
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 1
    .parameter "group"
    .parameter "checkedId"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/jaynux/app/PlayerNumActivity;->radio1:Landroid/widget/RadioGroup;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    packed-switch p2, :pswitch_data_0

    .line 133
    :goto_0
    return-void

    .line 105
    :pswitch_0
    const/4 v0, 0x1

    iput v0, p0, Lcom/jaynux/app/PlayerNumActivity;->playerNum:I

    goto :goto_0

    .line 108
    :pswitch_1
    const/4 v0, 0x2

    iput v0, p0, Lcom/jaynux/app/PlayerNumActivity;->playerNum:I

    goto :goto_0

    .line 111
    :pswitch_2
    const/4 v0, 0x3

    iput v0, p0, Lcom/jaynux/app/PlayerNumActivity;->playerNum:I

    goto :goto_0

    .line 114
    :pswitch_3
    const/4 v0, 0x4

    iput v0, p0, Lcom/jaynux/app/PlayerNumActivity;->playerNum:I

    goto :goto_0

    .line 118
    :cond_0
    packed-switch p2, :pswitch_data_1

    goto :goto_0

    .line 120
    :pswitch_4
    const/16 v0, 0x2710

    iput v0, p0, Lcom/jaynux/app/PlayerNumActivity;->meter:I

    goto :goto_0

    .line 123
    :pswitch_5
    const/16 v0, 0x3a98

    iput v0, p0, Lcom/jaynux/app/PlayerNumActivity;->meter:I

    goto :goto_0

    .line 126
    :pswitch_6
    const/16 v0, 0x4e20

    iput v0, p0, Lcom/jaynux/app/PlayerNumActivity;->meter:I

    goto :goto_0

    .line 129
    :pswitch_7
    const/16 v0, 0x61a8

    iput v0, p0, Lcom/jaynux/app/PlayerNumActivity;->meter:I

    goto :goto_0

    .line 103
    :pswitch_data_0
    .packed-switch 0x7f09002a
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 118
    :pswitch_data_1
    .packed-switch 0x7f09002f
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 24
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 25
    const v0, 0x7f030005

    invoke-virtual {p0, v0}, Lcom/jaynux/app/PlayerNumActivity;->setContentView(I)V

    .line 26
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/jaynux/app/SettingActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/jaynux/app/PlayerNumActivity;->intent:Landroid/content/Intent;

    .line 28
    const v0, 0x7f090033

    invoke-virtual {p0, v0}, Lcom/jaynux/app/PlayerNumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/jaynux/app/PlayerNumActivity;->nextBtn:Landroid/widget/Button;

    .line 29
    iget-object v0, p0, Lcom/jaynux/app/PlayerNumActivity;->nextBtn:Landroid/widget/Button;

    new-instance v1, Lcom/jaynux/app/PlayerNumActivity$1;

    invoke-direct {v1, p0}, Lcom/jaynux/app/PlayerNumActivity$1;-><init>(Lcom/jaynux/app/PlayerNumActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    const v0, 0x7f090029

    invoke-virtual {p0, v0}, Lcom/jaynux/app/PlayerNumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/jaynux/app/PlayerNumActivity;->radio1:Landroid/widget/RadioGroup;

    .line 80
    iget-object v0, p0, Lcom/jaynux/app/PlayerNumActivity;->radio1:Landroid/widget/RadioGroup;

    invoke-virtual {v0, p0}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 82
    const v0, 0x7f09002e

    invoke-virtual {p0, v0}, Lcom/jaynux/app/PlayerNumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/jaynux/app/PlayerNumActivity;->radio2:Landroid/widget/RadioGroup;

    .line 83
    iget-object v0, p0, Lcom/jaynux/app/PlayerNumActivity;->radio2:Landroid/widget/RadioGroup;

    invoke-virtual {v0, p0}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 85
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 90
    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    .line 91
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/jaynux/app/RaceStartActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 92
    .local v0, i:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/jaynux/app/PlayerNumActivity;->startActivity(Landroid/content/Intent;)V

    .line 93
    invoke-virtual {p0}, Lcom/jaynux/app/PlayerNumActivity;->finish()V

    .line 94
    const/4 v1, 0x1

    .line 96
    .end local v0           #i:Landroid/content/Intent;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
