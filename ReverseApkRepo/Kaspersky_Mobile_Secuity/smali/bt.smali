.class public final Lbt;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/kms/antispam/gui/AntiSpamListActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/kms/antispam/gui/AntiSpamListActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 36
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lbt;-><init>(Lcom/kms/antispam/gui/AntiSpamListActivity;B)V

    return-void
.end method

.method private constructor <init>(Lcom/kms/antispam/gui/AntiSpamListActivity;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 36
    iput-object p1, p0, Lbt;->a:Lcom/kms/antispam/gui/AntiSpamListActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 2

    .prologue
    .line 39
    invoke-static {}, Lcom/kms/antispam/AntiSpamStorage;->instance()Lcom/kms/antispam/AntiSpamStorage;

    move-result-object v0

    iget-object v1, p0, Lbt;->a:Lcom/kms/antispam/gui/AntiSpamListActivity;

    invoke-static {v1}, Lcom/kms/antispam/gui/AntiSpamListActivity;->a(Lcom/kms/antispam/gui/AntiSpamListActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/kms/antispam/AntiSpamStorage;->getCount(I)I

    move-result v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 44
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2
    .parameter

    .prologue
    .line 49
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 55
    if-nez p2, :cond_0

    .line 57
    iget-object v0, p0, Lbt;->a:Lcom/kms/antispam/gui/AntiSpamListActivity;

    invoke-static {v0}, Lcom/kms/antispam/gui/AntiSpamListActivity;->b(Lcom/kms/antispam/gui/AntiSpamListActivity;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030007

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    move-object p2, v0

    .line 63
    :cond_0
    invoke-static {}, Lcom/kms/antispam/AntiSpamStorage;->instance()Lcom/kms/antispam/AntiSpamStorage;

    move-result-object v0

    iget-object v1, p0, Lbt;->a:Lcom/kms/antispam/gui/AntiSpamListActivity;

    invoke-static {v1}, Lcom/kms/antispam/gui/AntiSpamListActivity;->a(Lcom/kms/antispam/gui/AntiSpamListActivity;)I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/kms/antispam/AntiSpamStorage;->getItem(II)Lcom/kms/antispam/AntiSpamItem;

    move-result-object v3

    .line 64
    const v0, 0x7f0b0005

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 65
    const v1, 0x7f0b0006

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 66
    const v2, 0x7f0b0002

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 67
    iget v4, v3, Lcom/kms/antispam/AntiSpamItem;->mCellEventTypes:I

    packed-switch v4, :pswitch_data_0

    .line 81
    :goto_0
    iget v2, v3, Lcom/kms/antispam/AntiSpamItem;->mCellValidFields:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v6, :cond_2

    .line 82
    const-string v2, "-2"

    iget-object v4, v3, Lcom/kms/antispam/AntiSpamItem;->mPhoneNumberMask:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 83
    iget-object v2, p0, Lbt;->a:Lcom/kms/antispam/gui/AntiSpamListActivity;

    const v4, 0x7f080290

    invoke-virtual {v2, v4}, Lcom/kms/antispam/gui/AntiSpamListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    :goto_1
    iget v0, v3, Lcom/kms/antispam/AntiSpamItem;->mCellValidFields:I

    and-int/lit8 v0, v0, 0x2

    const/4 v2, 0x2

    if-ne v0, v2, :cond_3

    .line 92
    iget-object v0, p0, Lbt;->a:Lcom/kms/antispam/gui/AntiSpamListActivity;

    const v2, 0x7f08019d

    invoke-virtual {v0, v2}, Lcom/kms/antispam/gui/AntiSpamListActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v2, v6, [Ljava/lang/Object;

    iget-object v4, v3, Lcom/kms/antispam/AntiSpamItem;->mTextMask:Ljava/lang/String;

    aput-object v4, v2, v5

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    :goto_2
    invoke-virtual {p2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 97
    new-instance v0, Lbu;

    invoke-direct {v0, p0, p1}, Lbu;-><init>(Lbt;I)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    new-instance v0, Lbv;

    invoke-direct {v0, p0, p1}, Lbv;-><init>(Lbt;I)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 110
    return-object p2

    .line 69
    :pswitch_0
    const v4, 0x7f02006c

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 70
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 73
    :pswitch_1
    const v4, 0x7f020074

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 74
    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 77
    :pswitch_2
    const v4, 0x7f020076

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 78
    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 86
    :cond_1
    iget-object v2, v3, Lcom/kms/antispam/AntiSpamItem;->mPhoneNumberMask:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 89
    :cond_2
    const v2, 0x7f08019b

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 94
    :cond_3
    const v0, 0x7f08019c

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    .line 67
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
