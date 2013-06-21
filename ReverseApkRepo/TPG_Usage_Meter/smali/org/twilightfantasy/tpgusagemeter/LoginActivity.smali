.class public Lorg/twilightfantasy/tpgusagemeter/LoginActivity;
.super Landroid/app/Activity;
.source "LoginActivity.java"


# static fields
.field public static mMainActivityInstance:Lorg/twilightfantasy/tpgusagemeter/MainActivity;


# instance fields
.field public mPasswordEditText:Landroid/widget/EditText;

.field public mPlansToLookupEditText:Landroid/widget/EditText;

.field public mSaveButton:Landroid/widget/Button;

.field public mStoreCredentialsCheckBox:Landroid/widget/CheckBox;

.field public mUseAutoRefreshCheckBox:Landroid/widget/CheckBox;

.field public mUsernameEditText:Landroid/widget/EditText;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x0

    sput-object v0, Lorg/twilightfantasy/tpgusagemeter/LoginActivity;->mMainActivityInstance:Lorg/twilightfantasy/tpgusagemeter/MainActivity;

    .line 11
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method public static setMainActivityInstance(Lorg/twilightfantasy/tpgusagemeter/MainActivity;)V
    .locals 0
    .parameter "ma"

    .prologue
    .line 92
    sput-object p0, Lorg/twilightfantasy/tpgusagemeter/LoginActivity;->mMainActivityInstance:Lorg/twilightfantasy/tpgusagemeter/MainActivity;

    .line 93
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x0

    const-string v6, "username"

    const-string v3, "password"

    const-string v4, ""

    .line 23
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 24
    const v1, 0x7f030001

    invoke-virtual {p0, v1}, Lorg/twilightfantasy/tpgusagemeter/LoginActivity;->setContentView(I)V

    .line 26
    const v1, 0x7f050001

    invoke-virtual {p0, v1}, Lorg/twilightfantasy/tpgusagemeter/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lorg/twilightfantasy/tpgusagemeter/LoginActivity;->mUsernameEditText:Landroid/widget/EditText;

    .line 27
    const v1, 0x7f050002

    invoke-virtual {p0, v1}, Lorg/twilightfantasy/tpgusagemeter/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lorg/twilightfantasy/tpgusagemeter/LoginActivity;->mPasswordEditText:Landroid/widget/EditText;

    .line 28
    const v1, 0x7f050005

    invoke-virtual {p0, v1}, Lorg/twilightfantasy/tpgusagemeter/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lorg/twilightfantasy/tpgusagemeter/LoginActivity;->mStoreCredentialsCheckBox:Landroid/widget/CheckBox;

    .line 29
    const v1, 0x7f050003

    invoke-virtual {p0, v1}, Lorg/twilightfantasy/tpgusagemeter/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lorg/twilightfantasy/tpgusagemeter/LoginActivity;->mPlansToLookupEditText:Landroid/widget/EditText;

    .line 30
    const v1, 0x7f050004

    invoke-virtual {p0, v1}, Lorg/twilightfantasy/tpgusagemeter/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lorg/twilightfantasy/tpgusagemeter/LoginActivity;->mUseAutoRefreshCheckBox:Landroid/widget/CheckBox;

    .line 33
    const-string v1, "TPGUsageMeter_Pref"

    invoke-virtual {p0, v1, v5}, Lorg/twilightfantasy/tpgusagemeter/LoginActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 35
    .local v0, sharedPreferences:Landroid/content/SharedPreferences;
    const-string v1, "username"

    invoke-interface {v0, v6}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 36
    const-string v1, "password"

    invoke-interface {v0, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 38
    iget-object v1, p0, Lorg/twilightfantasy/tpgusagemeter/LoginActivity;->mUsernameEditText:Landroid/widget/EditText;

    const-string v2, "username"

    const-string v2, ""

    invoke-interface {v0, v6, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 39
    iget-object v1, p0, Lorg/twilightfantasy/tpgusagemeter/LoginActivity;->mPasswordEditText:Landroid/widget/EditText;

    const-string v2, "password"

    const-string v2, ""

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 40
    iget-object v1, p0, Lorg/twilightfantasy/tpgusagemeter/LoginActivity;->mPlansToLookupEditText:Landroid/widget/EditText;

    const-string v2, "plans_to_lookup"

    const-string v3, ""

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 41
    iget-object v1, p0, Lorg/twilightfantasy/tpgusagemeter/LoginActivity;->mUseAutoRefreshCheckBox:Landroid/widget/CheckBox;

    const-string v2, "use_auto_refresh"

    invoke-interface {v0, v2, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 43
    iget-object v1, p0, Lorg/twilightfantasy/tpgusagemeter/LoginActivity;->mStoreCredentialsCheckBox:Landroid/widget/CheckBox;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 46
    :cond_0
    const v1, 0x7f050006

    invoke-virtual {p0, v1}, Lorg/twilightfantasy/tpgusagemeter/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lorg/twilightfantasy/tpgusagemeter/LoginActivity;->mSaveButton:Landroid/widget/Button;

    .line 47
    iget-object v1, p0, Lorg/twilightfantasy/tpgusagemeter/LoginActivity;->mSaveButton:Landroid/widget/Button;

    new-instance v2, Lorg/twilightfantasy/tpgusagemeter/LoginActivity$1;

    invoke-direct {v2, p0}, Lorg/twilightfantasy/tpgusagemeter/LoginActivity$1;-><init>(Lorg/twilightfantasy/tpgusagemeter/LoginActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    return-void
.end method
