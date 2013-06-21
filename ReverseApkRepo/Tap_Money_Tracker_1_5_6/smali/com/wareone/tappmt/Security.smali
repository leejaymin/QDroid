.class public Lcom/wareone/tappmt/Security;
.super Landroid/app/Activity;
.source "Security.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-class v0, Lcom/wareone/tappmt/Security;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/wareone/tappmt/Security;->TAG:Ljava/lang/String;

    .line 14
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/wareone/tappmt/Security;)Lcom/wareone/tappmt/PmtDbAdapter;
    .locals 1
    .parameter

    .prologue
    .line 136
    iget-object v0, p0, Lcom/wareone/tappmt/Security;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 12
    .parameter "savedInstanceState"

    .prologue
    const/4 v11, 0x4

    const/4 v10, 0x0

    .line 20
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 22
    const v9, 0x7f030037

    invoke-virtual {p0, v9}, Lcom/wareone/tappmt/Security;->setContentView(I)V

    .line 23
    new-instance v9, Lcom/wareone/tappmt/PmtDbAdapter;

    invoke-direct {v9, p0}, Lcom/wareone/tappmt/PmtDbAdapter;-><init>(Landroid/content/Context;)V

    iput-object v9, p0, Lcom/wareone/tappmt/Security;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    .line 25
    const-string v9, "TapPMTPrefs"

    invoke-virtual {p0, v9, v10}, Lcom/wareone/tappmt/Security;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v8

    .line 26
    .local v8, settings:Landroid/content/SharedPreferences;
    const-string v9, "SECURITY_ENABLED"

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    .line 27
    .local v7, secu_enabled:Z
    const v9, 0x7f0c00a5

    invoke-virtual {p0, v9}, Lcom/wareone/tappmt/Security;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    .line 28
    .local v0, btnSecurity:Landroid/widget/ToggleButton;
    invoke-virtual {v0, v7}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 29
    new-instance v9, Lcom/wareone/tappmt/Security$1;

    invoke-direct {v9, p0}, Lcom/wareone/tappmt/Security$1;-><init>(Lcom/wareone/tappmt/Security;)V

    invoke-virtual {v0, v9}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    const v9, 0x7f0c0046

    invoke-virtual {p0, v9}, Lcom/wareone/tappmt/Security;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    .line 50
    .local v5, edtPasswd:Landroid/widget/EditText;
    const v9, 0x7f0c0048

    invoke-virtual {p0, v9}, Lcom/wareone/tappmt/Security;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    .line 51
    .local v4, edtConfirm:Landroid/widget/EditText;
    if-nez v7, :cond_0

    .line 52
    invoke-virtual {v5, v11}, Landroid/widget/EditText;->setVisibility(I)V

    .line 53
    invoke-virtual {v4, v11}, Landroid/widget/EditText;->setVisibility(I)V

    .line 58
    :cond_0
    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 59
    .local v3, editor:Landroid/content/SharedPreferences$Editor;
    iget-object v9, p0, Lcom/wareone/tappmt/Security;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-interface {v10}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/wareone/tappmt/PmtDbAdapter;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 60
    .local v6, md5:Ljava/lang/String;
    const-string v9, "PASSWD"

    invoke-interface {v3, v9, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 62
    const v9, 0x7f0c0088

    invoke-virtual {p0, v9}, Lcom/wareone/tappmt/Security;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 64
    .local v2, btn_ok:Landroid/widget/Button;
    new-instance v9, Lcom/wareone/tappmt/Security$2;

    invoke-direct {v9, p0}, Lcom/wareone/tappmt/Security$2;-><init>(Lcom/wareone/tappmt/Security;)V

    .line 63
    invoke-virtual {v2, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    const v9, 0x7f0c0011

    invoke-virtual {p0, v9}, Lcom/wareone/tappmt/Security;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 125
    .local v1, btn_cancel:Landroid/widget/Button;
    new-instance v9, Lcom/wareone/tappmt/Security$3;

    invoke-direct {v9, p0}, Lcom/wareone/tappmt/Security$3;-><init>(Lcom/wareone/tappmt/Security;)V

    .line 124
    invoke-virtual {v1, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    return-void
.end method
