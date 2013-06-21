.class public Lorg/twilightfantasy/tpgusagemeter/MainActivity;
.super Landroid/app/Activity;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/twilightfantasy/tpgusagemeter/MainActivity$LookupAsyncTask;
    }
.end annotation


# static fields
.field static init:I

.field static mMainContext:Landroid/content/Context;

.field static mPlanIDList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static mPlanSummaryList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final IO_CONNECTION_TIMEOUT:I

.field final IO_READ_TIMEOUT:I

.field final MESSAGE_CURRENT_CHARGES_ID_FOUND:I

.field final MESSAGE_CURRENT_CHARGES_ID_NOT_FOUND:I

.field final MESSAGE_DEBUG_SHOW_STRING:I

.field final MESSAGE_EXCEPTION_OCCURED:I

.field final MESSAGE_EXTRACTING_USAGE_SUMMARY:I

.field final MESSAGE_IDENTIFYING_CURRENT_CHARGES_ID:I

.field final MESSAGE_IDENTIFYING_PLAN_ID:I

.field final MESSAGE_PLAN_ID_FOUND:I

.field final MESSAGE_PLAN_ID_NOT_FOUND:I

.field final MESSAGE_PROCESSING_PLAN:I

.field final MESSAGE_RECIEVED_COOKIE:I

.field final MESSAGE_RECIEVED_CURRENT_CHARGES_PAGE:I

.field final MESSAGE_RECIEVED_NO_COOKIE:I

.field final MESSAGE_RECIEVED_NO_CURRENT_CHARGES_PAGE:I

.field final MESSAGE_RECIEVED_NO_USAGE_INDEX_PAGE:I

.field final MESSAGE_RECIEVED_USAGE_INDEX_PAGE:I

.field final MESSAGE_REQUESTING_CURRENT_CHARGES_PAGE:I

.field final MESSAGE_REQUESTING_USAGE_INDEX_PAGE:I

.field final MESSAGE_RETRYING_LOOKUP:I

.field final MESSAGE_SENDING_POST_FOR_COOKIE:I

.field final MESSAGE_SHOW_USAGE_SUMMARY:I

.field final MESSAGE_USAGE_SUMMARY_FOUND:I

.field final MESSAGE_USAGE_SUMMARY_NOT_FOUND:I

.field mLookupAsyncTask:Lorg/twilightfantasy/tpgusagemeter/MainActivity$LookupAsyncTask;

.field public mPageScrollView:Landroid/widget/ScrollView;

.field public mPageTextView:Landroid/widget/TextView;

.field mPassword:Ljava/lang/String;

.field public mPlanSelectionLinearLayout:Landroid/widget/LinearLayout;

.field public mPlanSpinner:Landroid/widget/Spinner;

.field mPlansToLookup:Ljava/lang/String;

.field public mReloadButton:Landroid/widget/Button;

.field mUsageDetails:Ljava/lang/String;

.field mUseAutoRefresh:Z

.field mUsername:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lorg/twilightfantasy/tpgusagemeter/MainActivity;->mPlanIDList:Ljava/util/ArrayList;

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lorg/twilightfantasy/tpgusagemeter/MainActivity;->mPlanSummaryList:Ljava/util/ArrayList;

    .line 189
    const/4 v0, 0x0

    sput v0, Lorg/twilightfantasy/tpgusagemeter/MainActivity;->init:I

    .line 38
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 40
    const/16 v0, 0x3a98

    iput v0, p0, Lorg/twilightfantasy/tpgusagemeter/MainActivity;->IO_CONNECTION_TIMEOUT:I

    .line 41
    const/16 v0, 0x4e20

    iput v0, p0, Lorg/twilightfantasy/tpgusagemeter/MainActivity;->IO_READ_TIMEOUT:I

    .line 43
    const/4 v0, -0x1

    iput v0, p0, Lorg/twilightfantasy/tpgusagemeter/MainActivity;->MESSAGE_DEBUG_SHOW_STRING:I

    .line 44
    const/4 v0, 0x0

    iput v0, p0, Lorg/twilightfantasy/tpgusagemeter/MainActivity;->MESSAGE_EXCEPTION_OCCURED:I

    .line 45
    const/4 v0, 0x1

    iput v0, p0, Lorg/twilightfantasy/tpgusagemeter/MainActivity;->MESSAGE_SENDING_POST_FOR_COOKIE:I

    .line 46
    const/4 v0, 0x2

    iput v0, p0, Lorg/twilightfantasy/tpgusagemeter/MainActivity;->MESSAGE_RECIEVED_COOKIE:I

    .line 47
    const/4 v0, 0x3

    iput v0, p0, Lorg/twilightfantasy/tpgusagemeter/MainActivity;->MESSAGE_RECIEVED_NO_COOKIE:I

    .line 49
    const/4 v0, 0x4

    iput v0, p0, Lorg/twilightfantasy/tpgusagemeter/MainActivity;->MESSAGE_IDENTIFYING_PLAN_ID:I

    .line 50
    const/4 v0, 0x5

    iput v0, p0, Lorg/twilightfantasy/tpgusagemeter/MainActivity;->MESSAGE_PLAN_ID_FOUND:I

    .line 51
    const/4 v0, 0x6

    iput v0, p0, Lorg/twilightfantasy/tpgusagemeter/MainActivity;->MESSAGE_PLAN_ID_NOT_FOUND:I

    .line 53
    const/4 v0, 0x7

    iput v0, p0, Lorg/twilightfantasy/tpgusagemeter/MainActivity;->MESSAGE_REQUESTING_USAGE_INDEX_PAGE:I

    .line 54
    const/16 v0, 0x8

    iput v0, p0, Lorg/twilightfantasy/tpgusagemeter/MainActivity;->MESSAGE_RECIEVED_USAGE_INDEX_PAGE:I

    .line 55
    const/16 v0, 0x9

    iput v0, p0, Lorg/twilightfantasy/tpgusagemeter/MainActivity;->MESSAGE_RECIEVED_NO_USAGE_INDEX_PAGE:I

    .line 57
    const/16 v0, 0xa

    iput v0, p0, Lorg/twilightfantasy/tpgusagemeter/MainActivity;->MESSAGE_IDENTIFYING_CURRENT_CHARGES_ID:I

    .line 58
    const/16 v0, 0xb

    iput v0, p0, Lorg/twilightfantasy/tpgusagemeter/MainActivity;->MESSAGE_CURRENT_CHARGES_ID_FOUND:I

    .line 59
    const/16 v0, 0xc

    iput v0, p0, Lorg/twilightfantasy/tpgusagemeter/MainActivity;->MESSAGE_CURRENT_CHARGES_ID_NOT_FOUND:I

    .line 61
    const/16 v0, 0xd

    iput v0, p0, Lorg/twilightfantasy/tpgusagemeter/MainActivity;->MESSAGE_REQUESTING_CURRENT_CHARGES_PAGE:I

    .line 62
    const/16 v0, 0xe

    iput v0, p0, Lorg/twilightfantasy/tpgusagemeter/MainActivity;->MESSAGE_RECIEVED_CURRENT_CHARGES_PAGE:I

    .line 63
    const/16 v0, 0xf

    iput v0, p0, Lorg/twilightfantasy/tpgusagemeter/MainActivity;->MESSAGE_RECIEVED_NO_CURRENT_CHARGES_PAGE:I

    .line 65
    const/16 v0, 0x10

    iput v0, p0, Lorg/twilightfantasy/tpgusagemeter/MainActivity;->MESSAGE_EXTRACTING_USAGE_SUMMARY:I

    .line 66
    const/16 v0, 0x11

    iput v0, p0, Lorg/twilightfantasy/tpgusagemeter/MainActivity;->MESSAGE_USAGE_SUMMARY_FOUND:I

    .line 67
    const/16 v0, 0x12

    iput v0, p0, Lorg/twilightfantasy/tpgusagemeter/MainActivity;->MESSAGE_USAGE_SUMMARY_NOT_FOUND:I

    .line 69
    const/16 v0, 0x13

    iput v0, p0, Lorg/twilightfantasy/tpgusagemeter/MainActivity;->MESSAGE_SHOW_USAGE_SUMMARY:I

    .line 71
    const/16 v0, 0x14

    iput v0, p0, Lorg/twilightfantasy/tpgusagemeter/MainActivity;->MESSAGE_RETRYING_LOOKUP:I

    .line 72
    const/16 v0, 0x15

    iput v0, p0, Lorg/twilightfantasy/tpgusagemeter/MainActivity;->MESSAGE_PROCESSING_PLAN:I

    .line 38
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x0

    const-string v8, "username"

    const-string v7, "use_auto_refresh"

    const-string v6, "password"

    const-string v4, ""

    .line 98
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 99
    sput-object p0, Lorg/twilightfantasy/tpgusagemeter/MainActivity;->mMainContext:Landroid/content/Context;

    .line 100
    const v2, 0x7f030002

    invoke-virtual {p0, v2}, Lorg/twilightfantasy/tpgusagemeter/MainActivity;->setContentView(I)V

    .line 102
    new-instance v2, Lorg/twilightfantasy/tpgusagemeter/MainActivity$LookupAsyncTask;

    invoke-direct {v2, p0}, Lorg/twilightfantasy/tpgusagemeter/MainActivity$LookupAsyncTask;-><init>(Lorg/twilightfantasy/tpgusagemeter/MainActivity;)V

    iput-object v2, p0, Lorg/twilightfantasy/tpgusagemeter/MainActivity;->mLookupAsyncTask:Lorg/twilightfantasy/tpgusagemeter/MainActivity$LookupAsyncTask;

    .line 104
    const v2, 0x7f050007

    invoke-virtual {p0, v2}, Lorg/twilightfantasy/tpgusagemeter/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lorg/twilightfantasy/tpgusagemeter/MainActivity;->mPlanSelectionLinearLayout:Landroid/widget/LinearLayout;

    .line 105
    iget-object v2, p0, Lorg/twilightfantasy/tpgusagemeter/MainActivity;->mPlanSelectionLinearLayout:Landroid/widget/LinearLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 106
    const v2, 0x7f050009

    invoke-virtual {p0, v2}, Lorg/twilightfantasy/tpgusagemeter/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ScrollView;

    iput-object v2, p0, Lorg/twilightfantasy/tpgusagemeter/MainActivity;->mPageScrollView:Landroid/widget/ScrollView;

    .line 107
    const v2, 0x7f05000a

    invoke-virtual {p0, v2}, Lorg/twilightfantasy/tpgusagemeter/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lorg/twilightfantasy/tpgusagemeter/MainActivity;->mPageTextView:Landroid/widget/TextView;

    .line 108
    const v2, 0x7f05000b

    invoke-virtual {p0, v2}, Lorg/twilightfantasy/tpgusagemeter/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lorg/twilightfantasy/tpgusagemeter/MainActivity;->mReloadButton:Landroid/widget/Button;

    .line 109
    const v2, 0x7f050008

    invoke-virtual {p0, v2}, Lorg/twilightfantasy/tpgusagemeter/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    iput-object v2, p0, Lorg/twilightfantasy/tpgusagemeter/MainActivity;->mPlanSpinner:Landroid/widget/Spinner;

    .line 111
    iget-object v2, p0, Lorg/twilightfantasy/tpgusagemeter/MainActivity;->mReloadButton:Landroid/widget/Button;

    new-instance v3, Lorg/twilightfantasy/tpgusagemeter/MainActivity$1;

    invoke-direct {v3, p0}, Lorg/twilightfantasy/tpgusagemeter/MainActivity$1;-><init>(Lorg/twilightfantasy/tpgusagemeter/MainActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    invoke-static {p0}, Lorg/twilightfantasy/tpgusagemeter/LoginActivity;->setMainActivityInstance(Lorg/twilightfantasy/tpgusagemeter/MainActivity;)V

    .line 120
    const-string v2, "TPGUsageMeter_Pref"

    invoke-virtual {p0, v2, v5}, Lorg/twilightfantasy/tpgusagemeter/MainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 122
    .local v1, sharedPreferences:Landroid/content/SharedPreferences;
    const-string v2, "username"

    invoke-interface {v1, v8}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 123
    const-string v2, "password"

    invoke-interface {v1, v6}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 125
    const-string v2, "username"

    const-string v2, ""

    invoke-interface {v1, v8, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/twilightfantasy/tpgusagemeter/MainActivity;->mUsername:Ljava/lang/String;

    .line 126
    const-string v2, "password"

    const-string v2, ""

    invoke-interface {v1, v6, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/twilightfantasy/tpgusagemeter/MainActivity;->mPassword:Ljava/lang/String;

    .line 127
    const-string v2, "plans_to_lookup"

    const-string v3, ""

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/twilightfantasy/tpgusagemeter/MainActivity;->mPlansToLookup:Ljava/lang/String;

    .line 128
    const-string v2, "use_auto_refresh"

    invoke-interface {v1, v7, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lorg/twilightfantasy/tpgusagemeter/MainActivity;->mUseAutoRefresh:Z

    .line 132
    const-string v2, "use_auto_refresh"

    invoke-interface {v1, v7, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 134
    invoke-virtual {p0}, Lorg/twilightfantasy/tpgusagemeter/MainActivity;->startLookup()V

    .line 146
    :cond_0
    :goto_0
    return-void

    .line 140
    :cond_1
    const-string v2, ""

    iput-object v4, p0, Lorg/twilightfantasy/tpgusagemeter/MainActivity;->mUsername:Ljava/lang/String;

    const-string v2, ""

    iput-object v4, p0, Lorg/twilightfantasy/tpgusagemeter/MainActivity;->mPassword:Ljava/lang/String;

    .line 141
    const-string v2, ""

    iput-object v4, p0, Lorg/twilightfantasy/tpgusagemeter/MainActivity;->mPlansToLookup:Ljava/lang/String;

    iput-boolean v5, p0, Lorg/twilightfantasy/tpgusagemeter/MainActivity;->mUseAutoRefresh:Z

    .line 143
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lorg/twilightfantasy/tpgusagemeter/LoginActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 144
    .local v0, i:Landroid/content/Intent;
    invoke-virtual {p0, v0, v5}, Lorg/twilightfantasy/tpgusagemeter/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 154
    const-string v0, "Settings"

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 155
    const/4 v0, 0x2

    const-string v1, "About"

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 156
    return v3
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 150
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 151
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .parameter "item"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 160
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    move v2, v3

    .line 176
    :goto_0
    return v2

    .line 163
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lorg/twilightfantasy/tpgusagemeter/LoginActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 164
    .local v0, i1:Landroid/content/Intent;
    invoke-virtual {p0, v0, v3}, Lorg/twilightfantasy/tpgusagemeter/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    move v2, v4

    .line 166
    goto :goto_0

    .line 170
    .end local v0           #i1:Landroid/content/Intent;
    :pswitch_1
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lorg/twilightfantasy/tpgusagemeter/AboutActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 171
    .local v1, i2:Landroid/content/Intent;
    invoke-virtual {p0, v1, v3}, Lorg/twilightfantasy/tpgusagemeter/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    move v2, v4

    .line 173
    goto :goto_0

    .line 160
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public startLookup()V
    .locals 2

    .prologue
    .line 181
    sget-object v0, Lorg/twilightfantasy/tpgusagemeter/MainActivity;->mPlanIDList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 182
    sget-object v0, Lorg/twilightfantasy/tpgusagemeter/MainActivity;->mPlanSummaryList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 183
    iget-object v0, p0, Lorg/twilightfantasy/tpgusagemeter/MainActivity;->mPlanSelectionLinearLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 184
    iget-object v0, p0, Lorg/twilightfantasy/tpgusagemeter/MainActivity;->mPageTextView:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 185
    iget-object v0, p0, Lorg/twilightfantasy/tpgusagemeter/MainActivity;->mLookupAsyncTask:Lorg/twilightfantasy/tpgusagemeter/MainActivity$LookupAsyncTask;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lorg/twilightfantasy/tpgusagemeter/MainActivity$LookupAsyncTask;->mReturnRequest:Z

    .line 186
    new-instance v0, Lorg/twilightfantasy/tpgusagemeter/MainActivity$LookupAsyncTask;

    invoke-direct {v0, p0}, Lorg/twilightfantasy/tpgusagemeter/MainActivity$LookupAsyncTask;-><init>(Lorg/twilightfantasy/tpgusagemeter/MainActivity;)V

    iput-object v0, p0, Lorg/twilightfantasy/tpgusagemeter/MainActivity;->mLookupAsyncTask:Lorg/twilightfantasy/tpgusagemeter/MainActivity$LookupAsyncTask;

    .line 187
    iget-object v0, p0, Lorg/twilightfantasy/tpgusagemeter/MainActivity;->mLookupAsyncTask:Lorg/twilightfantasy/tpgusagemeter/MainActivity$LookupAsyncTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/twilightfantasy/tpgusagemeter/MainActivity$LookupAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 188
    return-void
.end method
