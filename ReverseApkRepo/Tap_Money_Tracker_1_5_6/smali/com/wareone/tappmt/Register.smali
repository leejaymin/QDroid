.class public Lcom/wareone/tappmt/Register;
.super Landroid/app/Activity;
.source "Register.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wareone/tappmt/Register$RegisterRunner;
    }
.end annotation


# static fields
.field private static final GET_ACCOUNT_REQUEST:I = 0x1

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private m_RegisterThread:Ljava/lang/Thread;

.field private m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

.field private m_dlg:Landroid/app/ProgressDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 263
    const-class v0, Lcom/wareone/tappmt/Register;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/wareone/tappmt/Register;->TAG:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 265
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/wareone/tappmt/Register;->m_RegisterThread:Ljava/lang/Thread;

    .line 42
    return-void
.end method

.method private _setControls(Z)V
    .locals 9
    .parameter "isAuthorized"

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 163
    const v5, 0x7f0c008b

    invoke-virtual {p0, v5}, Lcom/wareone/tappmt/Register;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 164
    .local v4, tv_authorized:Landroid/widget/TextView;
    const v5, 0x7f0c008d

    invoke-virtual {p0, v5}, Lcom/wareone/tappmt/Register;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    .line 165
    .local v3, edt_name:Landroid/widget/EditText;
    const v5, 0x7f0c008e

    invoke-virtual {p0, v5}, Lcom/wareone/tappmt/Register;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 166
    .local v2, edt_code:Landroid/widget/EditText;
    const v5, 0x7f0c0010

    invoke-virtual {p0, v5}, Lcom/wareone/tappmt/Register;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 167
    .local v1, btn_register:Landroid/widget/Button;
    const v5, 0x7f0c008f

    invoke-virtual {p0, v5}, Lcom/wareone/tappmt/Register;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 169
    .local v0, btn_purchase:Landroid/widget/Button;
    if-eqz p1, :cond_1

    move v5, v6

    :goto_0
    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 170
    if-eqz p1, :cond_2

    move v5, v6

    :goto_1
    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setClickable(Z)V

    .line 171
    if-eqz p1, :cond_3

    move v5, v6

    :goto_2
    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 172
    if-eqz p1, :cond_4

    move v5, v6

    :goto_3
    invoke-virtual {v2, v5}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 173
    if-eqz p1, :cond_5

    move v5, v6

    :goto_4
    invoke-virtual {v2, v5}, Landroid/widget/EditText;->setClickable(Z)V

    .line 174
    if-eqz p1, :cond_6

    move v5, v6

    :goto_5
    invoke-virtual {v2, v5}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 175
    if-eqz p1, :cond_0

    .line 176
    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 177
    invoke-virtual {v1, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 178
    invoke-virtual {v0, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 182
    :cond_0
    return-void

    :cond_1
    move v5, v7

    .line 169
    goto :goto_0

    :cond_2
    move v5, v7

    .line 170
    goto :goto_1

    :cond_3
    move v5, v7

    .line 171
    goto :goto_2

    :cond_4
    move v5, v7

    .line 172
    goto :goto_3

    :cond_5
    move v5, v7

    .line 173
    goto :goto_4

    :cond_6
    move v5, v7

    .line 174
    goto :goto_5
.end method

.method static synthetic access$0()Ljava/lang/String;
    .locals 1

    .prologue
    .line 263
    sget-object v0, Lcom/wareone/tappmt/Register;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lcom/wareone/tappmt/Register;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter

    .prologue
    .line 266
    iget-object v0, p0, Lcom/wareone/tappmt/Register;->m_dlg:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$2(Lcom/wareone/tappmt/Register;Landroid/app/ProgressDialog;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 266
    iput-object p1, p0, Lcom/wareone/tappmt/Register;->m_dlg:Landroid/app/ProgressDialog;

    return-void
.end method

.method static synthetic access$3(Lcom/wareone/tappmt/Register;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 162
    invoke-direct {p0, p1}, Lcom/wareone/tappmt/Register;->_setControls(Z)V

    return-void
.end method

.method static synthetic access$4(Lcom/wareone/tappmt/Register;)Ljava/lang/Thread;
    .locals 1
    .parameter

    .prologue
    .line 265
    iget-object v0, p0, Lcom/wareone/tappmt/Register;->m_RegisterThread:Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic access$5(Lcom/wareone/tappmt/Register;Ljava/lang/Thread;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 265
    iput-object p1, p0, Lcom/wareone/tappmt/Register;->m_RegisterThread:Ljava/lang/Thread;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 19
    .parameter "savedInstanceState"

    .prologue
    .line 48
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 50
    const v15, 0x7f030030

    move-object/from16 v0, p0

    move v1, v15

    invoke-virtual {v0, v1}, Lcom/wareone/tappmt/Register;->setContentView(I)V

    .line 52
    const v15, 0x7f0c008b

    move-object/from16 v0, p0

    move v1, v15

    invoke-virtual {v0, v1}, Lcom/wareone/tappmt/Register;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 53
    .local v12, tv_authorized:Landroid/widget/TextView;
    const v15, 0x7f0c0001

    move-object/from16 v0, p0

    move v1, v15

    invoke-virtual {v0, v1}, Lcom/wareone/tappmt/Register;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 54
    .local v14, tv_version:Landroid/widget/TextView;
    const v15, 0x7f0c008c

    move-object/from16 v0, p0

    move v1, v15

    invoke-virtual {v0, v1}, Lcom/wareone/tappmt/Register;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 55
    .local v13, tv_device:Landroid/widget/TextView;
    const v15, 0x7f0c008d

    move-object/from16 v0, p0

    move v1, v15

    invoke-virtual {v0, v1}, Lcom/wareone/tappmt/Register;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/EditText;

    .line 56
    .local v7, edt_name:Landroid/widget/EditText;
    const v15, 0x7f0c008e

    move-object/from16 v0, p0

    move v1, v15

    invoke-virtual {v0, v1}, Lcom/wareone/tappmt/Register;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    .line 57
    .local v6, edt_code:Landroid/widget/EditText;
    const v15, 0x7f0c0010

    move-object/from16 v0, p0

    move v1, v15

    invoke-virtual {v0, v1}, Lcom/wareone/tappmt/Register;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    .line 58
    .local v5, btn_register:Landroid/widget/Button;
    const v15, 0x7f0c008f

    move-object/from16 v0, p0

    move v1, v15

    invoke-virtual {v0, v1}, Lcom/wareone/tappmt/Register;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 60
    .local v4, btn_purchase:Landroid/widget/Button;
    :try_start_0
    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "Version "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/wareone/tappmt/Register;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v16

    invoke-virtual/range {p0 .. p0}, Lcom/wareone/tappmt/Register;->getPackageName()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    invoke-virtual/range {v16 .. v18}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v16

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    :goto_0
    new-instance v15, Lcom/wareone/tappmt/PmtDbAdapter;

    move-object v0, v15

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/wareone/tappmt/PmtDbAdapter;-><init>(Landroid/content/Context;)V

    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/wareone/tappmt/Register;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    .line 65
    const-string v15, "phone"

    move-object/from16 v0, p0

    move-object v1, v15

    invoke-virtual {v0, v1}, Lcom/wareone/tappmt/Register;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Landroid/telephony/TelephonyManager;

    invoke-virtual/range {p1 .. p1}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v8

    .line 66
    .local v8, imei:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/Register;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    move-object v15, v0

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/wareone/tappmt/Register;->getPackageName()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v17, "@"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object v1, v8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Lcom/wareone/tappmt/PmtDbAdapter;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 67
    .local v10, md5:Ljava/lang/String;
    const-string v15, "Register"

    new-instance v16, Ljava/lang/StringBuilder;

    const-string v17, "MD5 length --> "

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    const-string v15, "Register"

    new-instance v16, Ljava/lang/StringBuilder;

    const-string v17, "MD5 --> "

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    move-object v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    const/16 v15, 0x61

    const/16 v16, 0x30

    move-object v0, v10

    move v1, v15

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v10

    .line 75
    const/16 v15, 0x62

    const/16 v16, 0x31

    move-object v0, v10

    move v1, v15

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v10

    .line 76
    const/16 v15, 0x63

    const/16 v16, 0x32

    move-object v0, v10

    move v1, v15

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v10

    .line 77
    const/16 v15, 0x64

    const/16 v16, 0x33

    move-object v0, v10

    move v1, v15

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v10

    .line 78
    const/16 v15, 0x65

    const/16 v16, 0x34

    move-object v0, v10

    move v1, v15

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v10

    .line 79
    const/16 v15, 0x66

    const/16 v16, 0x35

    move-object v0, v10

    move v1, v15

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v10

    .line 80
    const/16 v15, 0x11

    invoke-virtual {v10, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    const-string v15, "TapPMTPrefs"

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move-object v1, v15

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/wareone/tappmt/Register;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v11

    .line 83
    .local v11, settings:Landroid/content/SharedPreferences;
    const-string v15, "authorized"

    const/16 v16, 0x0

    move-object v0, v11

    move-object v1, v15

    move/from16 v2, v16

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    .line 84
    .local v9, is_authorized:Z
    if-eqz v9, :cond_0

    .line 86
    const-string v15, "google_account"

    const-string v16, ""

    move-object v0, v11

    move-object v1, v15

    move-object/from16 v2, v16

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v7, v15}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 87
    const-string v15, "auth_code"

    const-string v16, ""

    move-object v0, v11

    move-object v1, v15

    move-object/from16 v2, v16

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v6, v15}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 88
    move-object/from16 v0, p0

    move v1, v9

    invoke-direct {v0, v1}, Lcom/wareone/tappmt/Register;->_setControls(Z)V

    .line 94
    :goto_1
    new-instance v15, Lcom/wareone/tappmt/Register$1;

    move-object v0, v15

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/wareone/tappmt/Register$1;-><init>(Lcom/wareone/tappmt/Register;)V

    invoke-virtual {v5, v15}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    new-instance v15, Lcom/wareone/tappmt/Register$2;

    move-object v0, v15

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/wareone/tappmt/Register$2;-><init>(Lcom/wareone/tappmt/Register;)V

    invoke-virtual {v4, v15}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 150
    const v15, 0x7f0c0011

    move-object/from16 v0, p0

    move v1, v15

    invoke-virtual {v0, v1}, Lcom/wareone/tappmt/Register;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 151
    .local v3, btn_cancel:Landroid/widget/Button;
    new-instance v15, Lcom/wareone/tappmt/Register$3;

    move-object v0, v15

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/wareone/tappmt/Register$3;-><init>(Lcom/wareone/tappmt/Register;)V

    invoke-virtual {v3, v15}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 160
    return-void

    .line 90
    .end local v3           #btn_cancel:Landroid/widget/Button;
    :cond_0
    const-string v15, ""

    invoke-virtual {v7, v15}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 91
    const-string v15, ""

    invoke-virtual {v6, v15}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 61
    .end local v8           #imei:Ljava/lang/String;
    .end local v9           #is_authorized:Z
    .end local v10           #md5:Ljava/lang/String;
    .end local v11           #settings:Landroid/content/SharedPreferences;
    .restart local p1
    :catch_0
    move-exception v15

    goto/16 :goto_0
.end method
