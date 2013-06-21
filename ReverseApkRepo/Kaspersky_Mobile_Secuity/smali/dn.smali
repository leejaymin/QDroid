.class public final Ldn;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# instance fields
.field private synthetic a:Lcom/kms/gui/KMSCommonUserActionActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/kms/gui/KMSCommonUserActionActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 50
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ldn;-><init>(Lcom/kms/gui/KMSCommonUserActionActivity;B)V

    return-void
.end method

.method private constructor <init>(Lcom/kms/gui/KMSCommonUserActionActivity;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 50
    iput-object p1, p0, Ldn;->a:Lcom/kms/gui/KMSCommonUserActionActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 73
    const/4 v0, 0x0

    return v0
.end method

.method public final getCount()I
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Ldn;->a:Lcom/kms/gui/KMSCommonUserActionActivity;

    invoke-static {v0}, Lcom/kms/gui/KMSCommonUserActionActivity;->a(Lcom/kms/gui/KMSCommonUserActionActivity;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 62
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2
    .parameter

    .prologue
    .line 67
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 86
    if-nez p1, :cond_0

    .line 88
    iget-object v0, p0, Ldn;->a:Lcom/kms/gui/KMSCommonUserActionActivity;

    invoke-static {v0}, Lcom/kms/gui/KMSCommonUserActionActivity;->b(Lcom/kms/gui/KMSCommonUserActionActivity;)Landroid/view/View;

    move-result-object p2

    .line 104
    :goto_0
    return-object p2

    .line 93
    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x64

    if-ne v0, v1, :cond_2

    .line 95
    :cond_1
    iget-object v0, p0, Ldn;->a:Lcom/kms/gui/KMSCommonUserActionActivity;

    invoke-static {v0}, Lcom/kms/gui/KMSCommonUserActionActivity;->c(Lcom/kms/gui/KMSCommonUserActionActivity;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030055

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    move-object p2, v0

    .line 101
    :goto_1
    iget-object v0, p0, Ldn;->a:Lcom/kms/gui/KMSCommonUserActionActivity;

    invoke-static {v0}, Lcom/kms/gui/KMSCommonUserActionActivity;->a(Lcom/kms/gui/KMSCommonUserActionActivity;)[Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, p1, -0x1

    aget-object v0, v0, v1

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    new-instance v0, Ljava/lang/Integer;

    add-int/lit8 v1, p1, -0x1

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 103
    iget-object v0, p0, Ldn;->a:Lcom/kms/gui/KMSCommonUserActionActivity;

    invoke-static {v0}, Lcom/kms/gui/KMSCommonUserActionActivity;->d(Lcom/kms/gui/KMSCommonUserActionActivity;)Ldo;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 99
    :cond_2
    check-cast p2, Landroid/widget/TextView;

    goto :goto_1
.end method

.method public final isEnabled(I)Z
    .locals 1
    .parameter

    .prologue
    .line 79
    if-nez p1, :cond_0

    .line 80
    const/4 v0, 0x0

    .line 81
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
