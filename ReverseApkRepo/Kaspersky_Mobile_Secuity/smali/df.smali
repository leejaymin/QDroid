.class public final Ldf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/kms/gui/KMSCommonContactsActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/kms/gui/KMSCommonContactsActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 39
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ldf;-><init>(Lcom/kms/gui/KMSCommonContactsActivity;B)V

    return-void
.end method

.method private constructor <init>(Lcom/kms/gui/KMSCommonContactsActivity;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 39
    iput-object p1, p0, Ldf;->a:Lcom/kms/gui/KMSCommonContactsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 44
    instance-of v0, p1, Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Ldf;->a:Lcom/kms/gui/KMSCommonContactsActivity;

    invoke-virtual {v0}, Lcom/kms/gui/KMSCommonContactsActivity;->b()V

    .line 53
    :goto_0
    return-void

    .line 50
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 51
    iget-object v1, p0, Ldf;->a:Lcom/kms/gui/KMSCommonContactsActivity;

    invoke-virtual {v1, v0}, Lcom/kms/gui/KMSCommonContactsActivity;->a(I)V

    goto :goto_0
.end method
