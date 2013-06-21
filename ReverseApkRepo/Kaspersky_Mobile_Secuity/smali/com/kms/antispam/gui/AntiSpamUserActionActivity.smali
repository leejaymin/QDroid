.class public Lcom/kms/antispam/gui/AntiSpamUserActionActivity;
.super Lcom/kms/gui/KMSCommonUserActionActivity;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:J

.field private f:J

.field private g:J

.field private h:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/kms/gui/KMSCommonUserActionActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 7
    .parameter

    .prologue
    const/4 v3, 0x0

    const v2, 0x7f0b0035

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 64
    const-string v0, "com_kms_as_sms"

    iget-object v1, p0, Lcom/kms/antispam/gui/AntiSpamUserActionActivity;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    const v0, 0x7f030008

    invoke-virtual {p1, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 66
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 67
    const v2, 0x7f080196

    invoke-virtual {p0, v2}, Lcom/kms/antispam/gui/AntiSpamUserActionActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/kms/antispam/gui/AntiSpamUserActionActivity;->c:Ljava/lang/String;

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    const v0, 0x7f0b0036

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 69
    const v2, 0x7f080197

    invoke-virtual {p0, v2}, Lcom/kms/antispam/gui/AntiSpamUserActionActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "<b>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/kms/antispam/gui/AntiSpamUserActionActivity;->d:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "</b"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object v0, v1

    .line 75
    :goto_0
    return-object v0

    .line 72
    :cond_0
    const v0, 0x7f030009

    invoke-virtual {p1, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 73
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 74
    const v2, 0x7f080198

    invoke-virtual {p0, v2}, Lcom/kms/antispam/gui/AntiSpamUserActionActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/kms/antispam/gui/AntiSpamUserActionActivity;->c:Ljava/lang/String;

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object v0, v1

    .line 75
    goto :goto_0
.end method

.method protected final a(I)V
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x0

    const/4 v0, 0x2

    const/4 v1, 0x1

    .line 81
    packed-switch p1, :pswitch_data_0

    .line 128
    :goto_0
    return-void

    .line 83
    :pswitch_0
    new-instance v2, Lcom/kms/antispam/AntiSpamItem;

    invoke-direct {v2}, Lcom/kms/antispam/AntiSpamItem;-><init>()V

    .line 84
    iput v1, v2, Lcom/kms/antispam/AntiSpamItem;->mItemType:I

    .line 85
    const-string v3, "com_kms_as_sms"

    iget-object v4, p0, Lcom/kms/antispam/gui/AntiSpamUserActionActivity;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :goto_1
    iput v0, v2, Lcom/kms/antispam/AntiSpamItem;->mCellEventTypes:I

    .line 86
    iput v1, v2, Lcom/kms/antispam/AntiSpamItem;->mCellValidFields:I

    .line 87
    iget-object v0, p0, Lcom/kms/antispam/gui/AntiSpamUserActionActivity;->b:Ljava/lang/String;

    iput-object v0, v2, Lcom/kms/antispam/AntiSpamItem;->mPhoneNumberMask:Ljava/lang/String;

    .line 88
    invoke-static {}, Lcom/kms/antispam/AntiSpamStorage;->instance()Lcom/kms/antispam/AntiSpamStorage;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/kms/antispam/AntiSpamStorage;->create(Lcom/kms/antispam/AntiSpamItem;)I

    .line 89
    const-string v0, "com_kms_as_sms"

    iget-object v2, p0, Lcom/kms/antispam/gui/AntiSpamUserActionActivity;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 91
    new-instance v0, LfL;

    iget-wide v2, p0, Lcom/kms/antispam/gui/AntiSpamUserActionActivity;->h:J

    invoke-direct {v0, v2, v3}, LfL;-><init>(J)V

    .line 92
    iput v1, v0, LfL;->d:I

    .line 93
    iput v6, v0, LfL;->a:I

    .line 94
    iget-wide v2, p0, Lcom/kms/antispam/gui/AntiSpamUserActionActivity;->g:J

    iput-wide v2, v0, LfL;->g:J

    .line 95
    iget-object v2, p0, Lcom/kms/antispam/gui/AntiSpamUserActionActivity;->b:Ljava/lang/String;

    iput-object v2, v0, LfL;->c:Ljava/lang/String;

    .line 96
    iget-object v2, p0, Lcom/kms/antispam/gui/AntiSpamUserActionActivity;->d:Ljava/lang/String;

    iput-object v2, v0, LfL;->e:Ljava/lang/String;

    .line 97
    iget-wide v2, p0, Lcom/kms/antispam/gui/AntiSpamUserActionActivity;->e:J

    iput-wide v2, v0, LfL;->f:J

    .line 98
    invoke-virtual {v0, v1}, LfL;->a(Z)V

    .line 107
    :cond_0
    :goto_2
    invoke-virtual {p0}, Lcom/kms/antispam/gui/AntiSpamUserActionActivity;->finish()V

    goto :goto_0

    :cond_1
    move v0, v1

    .line 85
    goto :goto_1

    .line 102
    :cond_2
    iget-wide v2, p0, Lcom/kms/antispam/gui/AntiSpamUserActionActivity;->f:J

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    .line 104
    invoke-virtual {p0}, Lcom/kms/antispam/gui/AntiSpamUserActionActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "_id =?"

    new-array v1, v1, [Ljava/lang/String;

    iget-wide v4, p0, Lcom/kms/antispam/gui/AntiSpamUserActionActivity;->f:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v6

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_2

    .line 111
    :pswitch_1
    new-instance v2, Lcom/kms/antispam/AntiSpamItem;

    invoke-direct {v2}, Lcom/kms/antispam/AntiSpamItem;-><init>()V

    .line 112
    iput v0, v2, Lcom/kms/antispam/AntiSpamItem;->mItemType:I

    .line 113
    const-string v3, "com_kms_as_sms"

    iget-object v4, p0, Lcom/kms/antispam/gui/AntiSpamUserActionActivity;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :goto_3
    iput v0, v2, Lcom/kms/antispam/AntiSpamItem;->mCellEventTypes:I

    .line 114
    iput v1, v2, Lcom/kms/antispam/AntiSpamItem;->mCellValidFields:I

    .line 115
    iget-object v0, p0, Lcom/kms/antispam/gui/AntiSpamUserActionActivity;->b:Ljava/lang/String;

    iput-object v0, v2, Lcom/kms/antispam/AntiSpamItem;->mPhoneNumberMask:Ljava/lang/String;

    .line 116
    invoke-static {}, Lcom/kms/antispam/AntiSpamStorage;->instance()Lcom/kms/antispam/AntiSpamStorage;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/kms/antispam/AntiSpamStorage;->create(Lcom/kms/antispam/AntiSpamItem;)I

    .line 117
    invoke-virtual {p0}, Lcom/kms/antispam/gui/AntiSpamUserActionActivity;->finish()V

    goto/16 :goto_0

    :cond_3
    move v0, v1

    .line 113
    goto :goto_3

    .line 121
    :pswitch_2
    invoke-virtual {p0}, Lcom/kms/antispam/gui/AntiSpamUserActionActivity;->finish()V

    goto/16 :goto_0

    .line 125
    :pswitch_3
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/kms/gui/KMSHelpActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 126
    const-string v1, "com.kms.gui.helpid"

    invoke-virtual {p0}, Lcom/kms/antispam/gui/AntiSpamUserActionActivity;->c_()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 127
    invoke-virtual {p0, v0}, Lcom/kms/antispam/gui/AntiSpamUserActionActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 81
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected final c_()I
    .locals 1

    .prologue
    .line 136
    const v0, 0x7f06000a

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    const-wide/16 v2, -0x1

    .line 45
    invoke-virtual {p0}, Lcom/kms/antispam/gui/AntiSpamUserActionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com_kms_as_eventType"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kms/antispam/gui/AntiSpamUserActionActivity;->a:Ljava/lang/String;

    .line 46
    invoke-virtual {p0}, Lcom/kms/antispam/gui/AntiSpamUserActionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com_kms_as_phoneNumber"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kms/antispam/gui/AntiSpamUserActionActivity;->b:Ljava/lang/String;

    .line 47
    const-string v0, "-2"

    iget-object v1, p0, Lcom/kms/antispam/gui/AntiSpamUserActionActivity;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    const v0, 0x7f080290

    invoke-virtual {p0, v0}, Lcom/kms/antispam/gui/AntiSpamUserActionActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kms/antispam/gui/AntiSpamUserActionActivity;->c:Ljava/lang/String;

    .line 53
    :goto_0
    invoke-virtual {p0}, Lcom/kms/antispam/gui/AntiSpamUserActionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com_kms_as_text"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kms/antispam/gui/AntiSpamUserActionActivity;->d:Ljava/lang/String;

    .line 54
    invoke-virtual {p0}, Lcom/kms/antispam/gui/AntiSpamUserActionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com_kms_as_recordId"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kms/antispam/gui/AntiSpamUserActionActivity;->e:J

    .line 55
    invoke-virtual {p0}, Lcom/kms/antispam/gui/AntiSpamUserActionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com_kms_as_calllogid"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kms/antispam/gui/AntiSpamUserActionActivity;->f:J

    .line 56
    invoke-virtual {p0}, Lcom/kms/antispam/gui/AntiSpamUserActionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com_kms_as_date"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kms/antispam/gui/AntiSpamUserActionActivity;->g:J

    .line 57
    invoke-virtual {p0}, Lcom/kms/antispam/gui/AntiSpamUserActionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com_kms_as_sms_id"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kms/antispam/gui/AntiSpamUserActionActivity;->h:J

    .line 58
    const-string v0, "com_kms_as_sms"

    iget-object v1, p0, Lcom/kms/antispam/gui/AntiSpamUserActionActivity;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f080194

    :goto_1
    invoke-virtual {p0}, Lcom/kms/antispam/gui/AntiSpamUserActionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070011

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/kms/antispam/gui/AntiSpamUserActionActivity;->a(I[Ljava/lang/String;)V

    .line 59
    invoke-super {p0, p1}, Lcom/kms/gui/KMSCommonUserActionActivity;->onCreate(Landroid/os/Bundle;)V

    .line 60
    return-void

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/kms/antispam/gui/AntiSpamUserActionActivity;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/kms/antispam/gui/AntiSpamUserActionActivity;->c:Ljava/lang/String;

    goto :goto_0

    .line 58
    :cond_1
    const v0, 0x7f080195

    goto :goto_1
.end method
