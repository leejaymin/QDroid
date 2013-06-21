.class public final Lds;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/kms/gui/KMSEnterCodeActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/kms/gui/KMSEnterCodeActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 790
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lds;-><init>(Lcom/kms/gui/KMSEnterCodeActivity;B)V

    return-void
.end method

.method private constructor <init>(Lcom/kms/gui/KMSEnterCodeActivity;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 790
    iput-object p1, p0, Lds;->a:Lcom/kms/gui/KMSEnterCodeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 796
    const/4 v0, -0x1

    if-ne p2, v0, :cond_3

    .line 798
    iget-object v0, p0, Lds;->a:Lcom/kms/gui/KMSEnterCodeActivity;

    invoke-static {v0}, Lcom/kms/gui/KMSEnterCodeActivity;->a(Lcom/kms/gui/KMSEnterCodeActivity;)I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 799
    iget-object v0, p0, Lds;->a:Lcom/kms/gui/KMSEnterCodeActivity;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/kms/gui/KMSEnterCodeActivity;->a(Lcom/kms/gui/KMSEnterCodeActivity;I)I

    .line 802
    :cond_0
    :goto_0
    iget-object v0, p0, Lds;->a:Lcom/kms/gui/KMSEnterCodeActivity;

    iget-object v1, p0, Lds;->a:Lcom/kms/gui/KMSEnterCodeActivity;

    invoke-static {v1}, Lcom/kms/gui/KMSEnterCodeActivity;->a(Lcom/kms/gui/KMSEnterCodeActivity;)I

    move-result v1

    invoke-static {v0, v1, v2}, LcW;->a(Landroid/app/Activity;IZ)V

    .line 808
    :cond_1
    :goto_1
    return-void

    .line 800
    :cond_2
    iget-object v0, p0, Lds;->a:Lcom/kms/gui/KMSEnterCodeActivity;

    invoke-static {v0}, Lcom/kms/gui/KMSEnterCodeActivity;->a(Lcom/kms/gui/KMSEnterCodeActivity;)I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 801
    iget-object v0, p0, Lds;->a:Lcom/kms/gui/KMSEnterCodeActivity;

    const/4 v1, 0x6

    invoke-static {v0, v1}, Lcom/kms/gui/KMSEnterCodeActivity;->a(Lcom/kms/gui/KMSEnterCodeActivity;I)I

    goto :goto_0

    .line 804
    :cond_3
    const/4 v0, -0x2

    if-ne p2, v0, :cond_1

    .line 806
    iget-object v0, p0, Lds;->a:Lcom/kms/gui/KMSEnterCodeActivity;

    iget-object v1, p0, Lds;->a:Lcom/kms/gui/KMSEnterCodeActivity;

    invoke-static {v1}, Lcom/kms/gui/KMSEnterCodeActivity;->a(Lcom/kms/gui/KMSEnterCodeActivity;)I

    move-result v1

    invoke-static {v0, v1, v2}, LcW;->a(Landroid/app/Activity;IZ)V

    goto :goto_1
.end method
