.class public Lcom/kms/antispam/gui/AntiSpamSettingsActivity;
.super Lcom/kms/gui/KMSCommonSettingsActivity;
.source "SourceFile"


# instance fields
.field private a:[Ldk;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/kms/gui/KMSCommonSettingsActivity;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/kms/antispam/gui/AntiSpamSettingsActivity;ILjava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 18
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p2}, Lcom/kms/antispam/gui/AntiSpamSettingsActivity;->b(ILjava/lang/String;)V

    return-void
.end method

.method private f(I)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 59
    const/16 v0, 0xd

    invoke-static {v0}, Lgj;->a(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 60
    invoke-virtual {p0, v1, v1}, Lcom/kms/antispam/gui/AntiSpamSettingsActivity;->b(IZ)V

    .line 61
    const/4 v0, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/kms/antispam/gui/AntiSpamSettingsActivity;->b(IZ)V

    .line 62
    const/4 v0, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/kms/antispam/gui/AntiSpamSettingsActivity;->b(IZ)V

    .line 66
    :goto_0
    return-void

    .line 64
    :cond_0
    invoke-virtual {p0, p1}, Lcom/kms/antispam/gui/AntiSpamSettingsActivity;->a_(I)V

    goto :goto_0
.end method


# virtual methods
.method protected final a(I)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 70
    invoke-static {}, LfS;->a()LfS;

    move-result-object v0

    invoke-virtual {v0, v3}, LfS;->a(I)LfV;

    move-result-object v0

    check-cast v0, LfY;

    .line 71
    packed-switch p1, :pswitch_data_0

    .line 84
    :goto_0
    return-void

    .line 73
    :pswitch_0
    invoke-virtual {p0, v2}, Lcom/kms/antispam/gui/AntiSpamSettingsActivity;->showDialog(I)V

    goto :goto_0

    .line 76
    :pswitch_1
    invoke-virtual {p0, p1}, Lcom/kms/antispam/gui/AntiSpamSettingsActivity;->e(I)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, LfY;->a(ILjava/lang/Object;)V

    .line 77
    invoke-virtual {v0}, LfY;->a()V

    goto :goto_0

    .line 80
    :pswitch_2
    invoke-virtual {p0, p1}, Lcom/kms/antispam/gui/AntiSpamSettingsActivity;->e(I)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, LfY;->a(ILjava/lang/Object;)V

    .line 81
    invoke-virtual {v0}, LfY;->a()V

    goto :goto_0

    .line 71
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final a_(I)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 136
    packed-switch p1, :pswitch_data_0

    .line 150
    invoke-virtual {p0, v2, v1}, Lcom/kms/antispam/gui/AntiSpamSettingsActivity;->b(IZ)V

    .line 151
    invoke-virtual {p0, v0, v1}, Lcom/kms/antispam/gui/AntiSpamSettingsActivity;->b(IZ)V

    .line 154
    :goto_0
    return-void

    .line 138
    :pswitch_0
    invoke-virtual {p0, v2, v0}, Lcom/kms/antispam/gui/AntiSpamSettingsActivity;->b(IZ)V

    .line 139
    invoke-virtual {p0, v0, v1}, Lcom/kms/antispam/gui/AntiSpamSettingsActivity;->b(IZ)V

    goto :goto_0

    .line 142
    :pswitch_1
    invoke-virtual {p0, v2, v1}, Lcom/kms/antispam/gui/AntiSpamSettingsActivity;->b(IZ)V

    .line 143
    invoke-virtual {p0, v0, v0}, Lcom/kms/antispam/gui/AntiSpamSettingsActivity;->b(IZ)V

    goto :goto_0

    .line 146
    :pswitch_2
    invoke-virtual {p0, v2, v0}, Lcom/kms/antispam/gui/AntiSpamSettingsActivity;->b(IZ)V

    .line 147
    invoke-virtual {p0, v0, v0}, Lcom/kms/antispam/gui/AntiSpamSettingsActivity;->b(IZ)V

    goto :goto_0

    .line 136
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected final c_()I
    .locals 1

    .prologue
    .line 88
    const v0, 0x7f060009

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10
    .parameter

    .prologue
    const/4 v2, 0x3

    const/4 v5, 0x0

    const/4 v9, 0x2

    const/4 v6, 0x1

    .line 28
    invoke-static {}, LfS;->a()LfS;

    move-result-object v0

    invoke-virtual {v0, v6}, LfS;->a(I)LfV;

    .line 29
    invoke-static {}, LfS;->a()LfS;

    move-result-object v0

    invoke-virtual {v0, v6}, LfS;->a(I)LfV;

    move-result-object v0

    move-object v7, v0

    check-cast v7, LfY;

    .line 32
    const v0, 0x7f080188

    invoke-virtual {p0, v0}, Lcom/kms/antispam/gui/AntiSpamSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/kms/antispam/gui/AntiSpamSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f070010

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v9}, LfY;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aget-object v0, v4, v0

    aput-object v0, v3, v5

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 37
    new-array v8, v2, [Ldk;

    new-instance v0, Ldk;

    const v1, 0x7f080187

    invoke-virtual {p0, v1}, Lcom/kms/antispam/gui/AntiSpamSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Ldk;-><init>(Lcom/kms/gui/KMSCommonSettingsActivity;ILjava/lang/String;Ljava/lang/String;ZZ)V

    aput-object v0, v8, v5

    new-instance v0, Ldk;

    const v1, 0x7f080189

    invoke-virtual {p0, v1}, Lcom/kms/antispam/gui/AntiSpamSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v1, 0x7f08018a

    invoke-virtual {p0, v1}, Lcom/kms/antispam/gui/AntiSpamSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v5}, LfY;->a(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    move-object v1, p0

    move v2, v9

    invoke-direct/range {v0 .. v5}, Ldk;-><init>(Lcom/kms/gui/KMSCommonSettingsActivity;ILjava/lang/String;Ljava/lang/String;Z)V

    aput-object v0, v8, v6

    new-instance v0, Ldk;

    const v1, 0x7f08018b

    invoke-virtual {p0, v1}, Lcom/kms/antispam/gui/AntiSpamSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v1, 0x7f08018c

    invoke-virtual {p0, v1}, Lcom/kms/antispam/gui/AntiSpamSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v6}, LfY;->a(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    move-object v1, p0

    move v2, v9

    invoke-direct/range {v0 .. v5}, Ldk;-><init>(Lcom/kms/gui/KMSCommonSettingsActivity;ILjava/lang/String;Ljava/lang/String;Z)V

    aput-object v0, v8, v9

    iput-object v8, p0, Lcom/kms/antispam/gui/AntiSpamSettingsActivity;->a:[Ldk;

    .line 52
    const v0, 0x7f08018d

    iget-object v1, p0, Lcom/kms/antispam/gui/AntiSpamSettingsActivity;->a:[Ldk;

    invoke-virtual {p0, v0, v1}, Lcom/kms/antispam/gui/AntiSpamSettingsActivity;->a(I[Ldk;)V

    .line 53
    invoke-super {p0, p1}, Lcom/kms/gui/KMSCommonSettingsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 54
    invoke-virtual {v7, v9}, LfY;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/kms/antispam/gui/AntiSpamSettingsActivity;->f(I)V

    .line 55
    const v0, 0x7f070016

    invoke-virtual {p0, v0}, Lcom/kms/antispam/gui/AntiSpamSettingsActivity;->c(I)V

    .line 56
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 5
    .parameter

    .prologue
    .line 94
    packed-switch p1, :pswitch_data_0

    .line 131
    invoke-super {p0, p1}, Lcom/kms/gui/KMSCommonSettingsActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 97
    :pswitch_0
    new-instance v1, LbB;

    invoke-direct {v1, p0}, LbB;-><init>(Lcom/kms/antispam/gui/AntiSpamSettingsActivity;)V

    .line 122
    invoke-static {}, LfS;->a()LfS;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, LfS;->a(I)LfV;

    move-result-object v0

    check-cast v0, LfY;

    .line 123
    new-instance v2, Les;

    invoke-direct {v2, p0}, Les;-><init>(Landroid/content/Context;)V

    const v3, 0x7f08018e

    invoke-virtual {v2, v3}, Les;->a(I)Les;

    move-result-object v2

    const v3, 0x7f070010

    const/4 v4, 0x2

    invoke-virtual {v0, v4}, LfY;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v3, v0, v1}, Les;->a(IILandroid/content/DialogInterface$OnClickListener;)Les;

    move-result-object v0

    const v2, 0x7f08018f

    invoke-virtual {v0, v2, v1}, Les;->b(ILandroid/content/DialogInterface$OnClickListener;)Les;

    move-result-object v0

    invoke-virtual {v0}, Les;->a()Ler;

    move-result-object v0

    goto :goto_0

    .line 94
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
