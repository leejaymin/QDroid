.class public final LbB;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/kms/antispam/gui/AntiSpamSettingsActivity;


# direct methods
.method public constructor <init>(Lcom/kms/antispam/gui/AntiSpamSettingsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 97
    iput-object p1, p0, LbB;->a:Lcom/kms/antispam/gui/AntiSpamSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 9
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 101
    invoke-static {}, LfS;->a()LfS;

    move-result-object v0

    invoke-virtual {v0, v1}, LfS;->a(I)LfV;

    move-result-object v0

    check-cast v0, LfY;

    .line 102
    if-ltz p2, :cond_1

    .line 103
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v8, v3}, LfY;->a(ILjava/lang/Object;)V

    .line 104
    if-lez p2, :cond_0

    .line 106
    const/4 v3, 0x3

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, LfY;->a(ILjava/lang/Object;)V

    .line 108
    :cond_0
    invoke-virtual {v0}, LfY;->a()V

    .line 109
    iget-object v3, p0, LbB;->a:Lcom/kms/antispam/gui/AntiSpamSettingsActivity;

    iget-object v4, p0, LbB;->a:Lcom/kms/antispam/gui/AntiSpamSettingsActivity;

    const v5, 0x7f080188

    invoke-virtual {v4, v5}, Lcom/kms/antispam/gui/AntiSpamSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v1, [Ljava/lang/Object;

    iget-object v6, p0, LbB;->a:Lcom/kms/antispam/gui/AntiSpamSettingsActivity;

    invoke-virtual {v6}, Lcom/kms/antispam/gui/AntiSpamSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f070010

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v8}, LfY;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aget-object v0, v6, v0

    aput-object v0, v5, v2

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v2, v0}, Lcom/kms/antispam/gui/AntiSpamSettingsActivity;->a(Lcom/kms/antispam/gui/AntiSpamSettingsActivity;ILjava/lang/String;)V

    .line 111
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 113
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_2

    move v0, v1

    .line 116
    :goto_0
    iget-object v1, p0, LbB;->a:Lcom/kms/antispam/gui/AntiSpamSettingsActivity;

    invoke-static {v1, v0}, Lcom/kms/antispam/ContactsBlocker;->a(Landroid/app/Activity;Z)V

    .line 118
    iget-object v0, p0, LbB;->a:Lcom/kms/antispam/gui/AntiSpamSettingsActivity;

    invoke-virtual {v0, p2}, Lcom/kms/antispam/gui/AntiSpamSettingsActivity;->a_(I)V

    .line 120
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 113
    goto :goto_0
.end method
