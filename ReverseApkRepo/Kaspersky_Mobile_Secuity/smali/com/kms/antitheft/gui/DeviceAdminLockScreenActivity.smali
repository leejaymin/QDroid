.class public Lcom/kms/antitheft/gui/DeviceAdminLockScreenActivity;
.super Lcom/kms/gui/KMSBaseActivity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:I

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/kms/gui/KMSBaseActivity;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput v0, p0, Lcom/kms/antitheft/gui/DeviceAdminLockScreenActivity;->a:I

    return-void
.end method

.method private c()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    .line 70
    invoke-static {}, LfS;->a()LfS;

    move-result-object v0

    invoke-virtual {v0, v5}, LfS;->a(I)LfV;

    move-result-object v0

    check-cast v0, LfZ;

    .line 71
    const v1, 0x7f0b0095

    invoke-virtual {p0, v1}, Lcom/kms/antitheft/gui/DeviceAdminLockScreenActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 72
    const v2, 0x7f0b0096

    invoke-virtual {p0, v2}, Lcom/kms/antitheft/gui/DeviceAdminLockScreenActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 73
    const v3, 0x7f0b0015

    invoke-virtual {p0, v3}, Lcom/kms/antitheft/gui/DeviceAdminLockScreenActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 75
    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    invoke-static {}, LfS;->a()LfS;

    move-result-object v1

    const/4 v4, 0x6

    invoke-virtual {v1, v4}, LfS;->a(I)LfV;

    move-result-object v1

    check-cast v1, Lgd;

    .line 80
    iget-boolean v1, v1, Lgd;->j:Z

    .line 82
    if-eqz v1, :cond_0

    .line 84
    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    :goto_0
    iget-object v1, p0, Lcom/kms/antitheft/gui/DeviceAdminLockScreenActivity;->b:Ljava/lang/String;

    invoke-static {v1}, Lfn;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 92
    invoke-virtual {v0, v5}, LfZ;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    :goto_1
    return-void

    .line 88
    :cond_0
    const/16 v1, 0x8

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 96
    :cond_1
    iget-object v0, p0, Lcom/kms/antitheft/gui/DeviceAdminLockScreenActivity;->b:Ljava/lang/String;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private d()V
    .locals 5

    .prologue
    .line 120
    const v0, 0x7f0b0098

    invoke-virtual {p0, v0}, Lcom/kms/antitheft/gui/DeviceAdminLockScreenActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 121
    const v0, 0x7f0b0099

    invoke-virtual {p0, v0}, Lcom/kms/antitheft/gui/DeviceAdminLockScreenActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 122
    invoke-static {}, LfS;->a()LfS;

    move-result-object v1

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, LfS;->a(I)LfV;

    move-result-object v1

    check-cast v1, Lgd;

    .line 124
    iget-object v4, v1, Lgd;->k:Ljava/lang/String;

    .line 126
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 129
    const/4 v1, 0x0

    .line 132
    :try_start_0
    const-string v2, "MD5"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 138
    :goto_0
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/security/MessageDigest;->update([B)V

    .line 139
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    .line 140
    array-length v2, v1

    invoke-static {v1, v2}, Lcom/kavsdk/shared/SdkUtils;->encodeBase64jni([BI)Ljava/lang/String;

    move-result-object v1

    .line 141
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 143
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 144
    const/4 v0, 0x2

    iput v0, p0, Lcom/kms/antitheft/gui/DeviceAdminLockScreenActivity;->a:I

    .line 145
    const v0, 0x7f030028

    invoke-virtual {p0, v0}, Lcom/kms/antitheft/gui/DeviceAdminLockScreenActivity;->setContentView(I)V

    .line 146
    invoke-direct {p0}, Lcom/kms/antitheft/gui/DeviceAdminLockScreenActivity;->h()V

    .line 154
    :cond_0
    :goto_1
    return-void

    .line 134
    :catch_0
    move-exception v2

    .line 136
    invoke-virtual {v2}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_0

    .line 150
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 151
    const v1, 0x7f080277

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1
.end method

.method private f()V
    .locals 1

    .prologue
    .line 168
    const/4 v0, 0x0

    iput v0, p0, Lcom/kms/antitheft/gui/DeviceAdminLockScreenActivity;->a:I

    .line 169
    const v0, 0x7f030027

    invoke-virtual {p0, v0}, Lcom/kms/antitheft/gui/DeviceAdminLockScreenActivity;->setContentView(I)V

    .line 170
    invoke-direct {p0}, Lcom/kms/antitheft/gui/DeviceAdminLockScreenActivity;->c()V

    .line 172
    return-void
.end method

.method private g()V
    .locals 1

    .prologue
    .line 176
    const/4 v0, 0x1

    iput v0, p0, Lcom/kms/antitheft/gui/DeviceAdminLockScreenActivity;->a:I

    .line 177
    const v0, 0x7f030029

    invoke-virtual {p0, v0}, Lcom/kms/antitheft/gui/DeviceAdminLockScreenActivity;->setContentView(I)V

    .line 178
    invoke-direct {p0}, Lcom/kms/antitheft/gui/DeviceAdminLockScreenActivity;->i()V

    .line 179
    return-void
.end method

.method private h()V
    .locals 3

    .prologue
    .line 183
    const v0, 0x7f0b0095

    invoke-virtual {p0, v0}, Lcom/kms/antitheft/gui/DeviceAdminLockScreenActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 184
    const v0, 0x7f0b0097

    invoke-virtual {p0, v0}, Lcom/kms/antitheft/gui/DeviceAdminLockScreenActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 186
    invoke-static {}, LfS;->a()LfS;

    move-result-object v1

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, LfS;->a(I)LfV;

    move-result-object v1

    check-cast v1, Lgd;

    .line 188
    iget-object v1, v1, Lgd;->t:Ljava/lang/String;

    .line 189
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 190
    return-void
.end method

.method private i()V
    .locals 7

    .prologue
    .line 194
    const v0, 0x7f0b0084

    invoke-virtual {p0, v0}, Lcom/kms/antitheft/gui/DeviceAdminLockScreenActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 195
    const v1, 0x7f0b009a

    invoke-virtual {p0, v1}, Lcom/kms/antitheft/gui/DeviceAdminLockScreenActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 196
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<b><u>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p0}, Lfp;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "</u></b>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 197
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<b><u>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v4, 0x7f080169

    invoke-virtual {p0, v4}, Lcom/kms/antitheft/gui/DeviceAdminLockScreenActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "</u></b>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 198
    const v4, 0x7f080168

    invoke-virtual {p0, v4}, Lcom/kms/antitheft/gui/DeviceAdminLockScreenActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    const/4 v3, 0x1

    aput-object v2, v5, v3

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 200
    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 201
    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 202
    return-void
.end method

.method private static j()V
    .locals 7

    .prologue
    .line 209
    :try_start_0
    const-string v0, "android.os.ServiceManager"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 210
    const-string v1, "getService"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 211
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "statusbar"

    aput-object v4, v2, v3

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    .line 212
    invoke-interface {v0}, Landroid/os/IBinder;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 213
    invoke-virtual {v1}, Ljava/lang/Class;->getClasses()[Ljava/lang/Class;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const-string v3, "asInterface"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/os/IBinder;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 215
    const-string v2, "collapse"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 216
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 217
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 220
    :goto_0
    return-void

    .line 219
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method protected final a_()Z
    .locals 1

    .prologue
    .line 231
    const/4 v0, 0x0

    return v0
.end method

.method protected final b_()I
    .locals 1

    .prologue
    .line 225
    const/4 v0, 0x0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 104
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 117
    :goto_0
    :pswitch_0
    return-void

    .line 107
    :pswitch_1
    invoke-virtual {p0}, Lcom/kms/antitheft/gui/DeviceAdminLockScreenActivity;->finish()V

    goto :goto_0

    .line 110
    :pswitch_2
    invoke-direct {p0}, Lcom/kms/antitheft/gui/DeviceAdminLockScreenActivity;->g()V

    goto :goto_0

    .line 113
    :pswitch_3
    invoke-direct {p0}, Lcom/kms/antitheft/gui/DeviceAdminLockScreenActivity;->d()V

    goto :goto_0

    .line 104
    :pswitch_data_0
    .packed-switch 0x7f0b0095
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 43
    invoke-super {p0, p1}, Lcom/kms/gui/KMSBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 44
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/kms/antitheft/gui/DeviceAdminLockScreenActivity;->requestWindowFeature(I)Z

    .line 45
    invoke-virtual {p0}, Lcom/kms/antitheft/gui/DeviceAdminLockScreenActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 46
    const/high16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 47
    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 48
    invoke-virtual {p0}, Lcom/kms/antitheft/gui/DeviceAdminLockScreenActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "DeviceAdminLockScreenActivity.customtext"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kms/antitheft/gui/DeviceAdminLockScreenActivity;->b:Ljava/lang/String;

    .line 49
    const v0, 0x7f030027

    const/high16 v1, 0x7f0b

    invoke-virtual {p0, v0, v1}, Lcom/kms/antitheft/gui/DeviceAdminLockScreenActivity;->a(II)V

    .line 50
    invoke-direct {p0}, Lcom/kms/antitheft/gui/DeviceAdminLockScreenActivity;->c()V

    .line 51
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 159
    iget v0, p0, Lcom/kms/antitheft/gui/DeviceAdminLockScreenActivity;->a:I

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 161
    invoke-direct {p0}, Lcom/kms/antitheft/gui/DeviceAdminLockScreenActivity;->f()V

    .line 162
    const/4 v0, 0x1

    .line 164
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/kms/gui/KMSBaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3
    .parameter

    .prologue
    .line 56
    if-nez p1, :cond_0

    .line 58
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 59
    const-string v1, "reason"

    const-string v2, "die"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 60
    invoke-virtual {p0, v0}, Lcom/kms/antitheft/gui/DeviceAdminLockScreenActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 62
    invoke-static {}, Lcom/kms/antitheft/gui/DeviceAdminLockScreenActivity;->j()V

    .line 64
    :cond_0
    invoke-super {p0, p1}, Lcom/kms/gui/KMSBaseActivity;->onWindowFocusChanged(Z)V

    .line 65
    return-void
.end method
