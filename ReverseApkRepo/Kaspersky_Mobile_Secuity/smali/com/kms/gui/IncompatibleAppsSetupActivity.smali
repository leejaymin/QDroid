.class public Lcom/kms/gui/IncompatibleAppsSetupActivity;
.super Lcom/kms/gui/KMSBaseActivity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final a:[Lda;


# instance fields
.field private b:Ljava/util/List;

.field private c:Z

.field private d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 31
    const/4 v0, 0x3

    new-array v0, v0, [Lda;

    new-instance v1, Lda;

    const-string v2, "com.android.settings.DeviceAdminAdd"

    invoke-direct {v1, v2, v3}, Lda;-><init>(Ljava/lang/String;Z)V

    aput-object v1, v0, v4

    new-instance v1, Lda;

    const-string v2, "com.android.settings.DeviceAdminSettings"

    invoke-direct {v1, v2, v4}, Lda;-><init>(Ljava/lang/String;Z)V

    aput-object v1, v0, v3

    const/4 v1, 0x2

    new-instance v2, Lda;

    const-string v3, "com.android.settings.Settings"

    invoke-direct {v2, v3, v4}, Lda;-><init>(Ljava/lang/String;Z)V

    aput-object v2, v0, v1

    sput-object v0, Lcom/kms/gui/IncompatibleAppsSetupActivity;->a:[Lda;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/kms/gui/KMSBaseActivity;-><init>()V

    .line 45
    return-void
.end method

.method public static synthetic a(Lcom/kms/gui/IncompatibleAppsSetupActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/kms/gui/IncompatibleAppsSetupActivity;->f()V

    return-void
.end method

.method private c()V
    .locals 5

    .prologue
    .line 96
    invoke-static {p0}, LeO;->c(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/kms/gui/IncompatibleAppsSetupActivity;->b:Ljava/util/List;

    .line 97
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 99
    iget-object v0, p0, Lcom/kms/gui/IncompatibleAppsSetupActivity;->b:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 101
    iget-object v0, p0, Lcom/kms/gui/IncompatibleAppsSetupActivity;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 103
    invoke-virtual {p0}, Lcom/kms/gui/IncompatibleAppsSetupActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 107
    :try_start_0
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 113
    :goto_1
    if-eqz v0, :cond_0

    invoke-virtual {v3, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    :goto_2
    check-cast v0, Ljava/lang/String;

    .line 114
    const-string v3, "<b>&#149; "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 115
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 116
    const-string v0, "</b><br>"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 111
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_1

    .line 113
    :cond_0
    const-string v0, "(unknown)"

    goto :goto_2

    .line 119
    :cond_1
    const v0, 0x7f0b0080

    invoke-virtual {p0, v0}, Lcom/kms/gui/IncompatibleAppsSetupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 120
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    :cond_2
    return-void
.end method

.method private d()V
    .locals 1

    .prologue
    .line 163
    invoke-static {p0}, LeO;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 165
    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lcom/kms/gui/IncompatibleAppsSetupActivity;->showDialog(I)V

    .line 171
    :goto_0
    return-void

    .line 169
    :cond_0
    invoke-direct {p0}, Lcom/kms/gui/IncompatibleAppsSetupActivity;->f()V

    goto :goto_0
.end method

.method private f()V
    .locals 2

    .prologue
    .line 175
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/kms/gui/KMSEnterCodeActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 176
    invoke-virtual {p0, v0}, Lcom/kms/gui/IncompatibleAppsSetupActivity;->startActivity(Landroid/content/Intent;)V

    .line 177
    invoke-virtual {p0}, Lcom/kms/gui/IncompatibleAppsSetupActivity;->finish()V

    .line 178
    return-void
.end method

.method private g()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 182
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 183
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kms/gui/IncompatibleAppsSetupActivity;->c:Z

    .line 184
    const-string v0, "android.intent.action.VIEW"

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move v1, v2

    .line 185
    :goto_0
    sget-object v0, Lcom/kms/gui/IncompatibleAppsSetupActivity;->a:[Lda;

    array-length v0, v0

    if-ge v1, v0, :cond_0

    .line 187
    const-string v0, "com.android.settings"

    sget-object v4, Lcom/kms/gui/IncompatibleAppsSetupActivity;->a:[Lda;

    aget-object v4, v4, v1

    iget-object v4, v4, Lda;->a:Ljava/lang/String;

    invoke-virtual {v3, v0, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 188
    sget-object v0, Lcom/kms/gui/IncompatibleAppsSetupActivity;->a:[Lda;

    aget-object v0, v0, v1

    iget-boolean v0, v0, Lda;->b:Z

    if-eqz v0, :cond_2

    .line 190
    iget-object v0, p0, Lcom/kms/gui/IncompatibleAppsSetupActivity;->b:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 191
    iget-object v4, p0, Lcom/kms/gui/IncompatibleAppsSetupActivity;->d:Ljava/lang/String;

    invoke-static {v4}, Lfn;->a(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/kms/gui/IncompatibleAppsSetupActivity;->d:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 194
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kms/gui/IncompatibleAppsSetupActivity;->d:Ljava/lang/String;

    .line 195
    iput-boolean v2, p0, Lcom/kms/gui/IncompatibleAppsSetupActivity;->c:Z

    .line 212
    :cond_0
    :goto_1
    return-void

    .line 198
    :cond_1
    const-string v4, "android.app.extra.DEVICE_ADMIN"

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 199
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kms/gui/IncompatibleAppsSetupActivity;->d:Ljava/lang/String;

    .line 207
    :goto_2
    :try_start_0
    invoke-virtual {p0, v3}, Lcom/kms/gui/IncompatibleAppsSetupActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 185
    :catch_0
    move-exception v0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 203
    :cond_2
    const-string v0, "android.app.extra.DEVICE_ADMIN"

    invoke-virtual {v3, v0}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    goto :goto_2
.end method


# virtual methods
.method protected final a_()Z
    .locals 1

    .prologue
    .line 237
    const/4 v0, 0x0

    return v0
.end method

.method protected final b_()I
    .locals 1

    .prologue
    .line 231
    const/4 v0, 0x0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 217
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 226
    :goto_0
    return-void

    .line 220
    :pswitch_0
    invoke-direct {p0}, Lcom/kms/gui/IncompatibleAppsSetupActivity;->d()V

    goto :goto_0

    .line 223
    :pswitch_1
    invoke-direct {p0}, Lcom/kms/gui/IncompatibleAppsSetupActivity;->g()V

    goto :goto_0

    .line 217
    :pswitch_data_0
    .packed-switch 0x7f0b0081
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter

    .prologue
    .line 60
    invoke-super {p0, p1}, Lcom/kms/gui/KMSBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 61
    const v0, 0x7f03001f

    const v1, 0x7f0b004f

    invoke-virtual {p0, v0, v1}, Lcom/kms/gui/IncompatibleAppsSetupActivity;->a(II)V

    .line 63
    const v0, 0x7f0b0009

    invoke-virtual {p0, v0}, Lcom/kms/gui/IncompatibleAppsSetupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 64
    const v1, 0x7f0b000a

    invoke-virtual {p0, v1}, Lcom/kms/gui/IncompatibleAppsSetupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 65
    const v2, 0x7f0b0081

    invoke-virtual {p0, v2}, Lcom/kms/gui/IncompatibleAppsSetupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 66
    const v3, 0x7f0b0082

    invoke-virtual {p0, v3}, Lcom/kms/gui/IncompatibleAppsSetupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 68
    const v4, 0x7f08026c

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    .line 69
    const v0, 0x7f08026d

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 70
    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    invoke-direct {p0}, Lcom/kms/gui/IncompatibleAppsSetupActivity;->c()V

    .line 73
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .parameter

    .prologue
    .line 127
    packed-switch p1, :pswitch_data_0

    .line 157
    invoke-super {p0, p1}, Lcom/kms/gui/KMSBaseActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 130
    :pswitch_0
    new-instance v0, Les;

    invoke-direct {v0, p0}, Les;-><init>(Landroid/content/Context;)V

    const v1, 0x7f080270

    invoke-virtual {v0, v1}, Les;->a(I)Les;

    move-result-object v0

    const v1, 0x7f080271

    invoke-virtual {v0, v1}, Les;->b(I)Les;

    move-result-object v0

    const v1, 0x7f080272

    new-instance v2, LcZ;

    invoke-direct {v2, p0}, LcZ;-><init>(Lcom/kms/gui/IncompatibleAppsSetupActivity;)V

    invoke-virtual {v0, v1, v2}, Les;->a(ILandroid/content/DialogInterface$OnClickListener;)Les;

    move-result-object v0

    const v1, 0x7f080273

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Les;->b(ILandroid/content/DialogInterface$OnClickListener;)Les;

    move-result-object v0

    invoke-virtual {v0}, Les;->a()Ler;

    move-result-object v0

    goto :goto_0

    .line 127
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 78
    invoke-static {p0}, LeO;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 80
    invoke-direct {p0}, Lcom/kms/gui/IncompatibleAppsSetupActivity;->f()V

    .line 91
    :cond_0
    :goto_0
    invoke-super {p0}, Lcom/kms/gui/KMSBaseActivity;->onResume()V

    .line 92
    return-void

    .line 84
    :cond_1
    invoke-direct {p0}, Lcom/kms/gui/IncompatibleAppsSetupActivity;->c()V

    .line 85
    iget-boolean v0, p0, Lcom/kms/gui/IncompatibleAppsSetupActivity;->c:Z

    if-eqz v0, :cond_0

    .line 87
    invoke-direct {p0}, Lcom/kms/gui/IncompatibleAppsSetupActivity;->g()V

    goto :goto_0
.end method
