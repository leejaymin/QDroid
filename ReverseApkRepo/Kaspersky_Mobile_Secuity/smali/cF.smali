.class public final LcF;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/kms/antivirus/gui/AvCheckObjectsActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/kms/antivirus/gui/AvCheckObjectsActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 106
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, LcF;-><init>(Lcom/kms/antivirus/gui/AvCheckObjectsActivity;B)V

    return-void
.end method

.method private constructor <init>(Lcom/kms/antivirus/gui/AvCheckObjectsActivity;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 106
    iput-object p1, p0, LcF;->a:Lcom/kms/antivirus/gui/AvCheckObjectsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 112
    if-ltz p2, :cond_0

    .line 114
    iget-object v0, p0, LcF;->a:Lcom/kms/antivirus/gui/AvCheckObjectsActivity;

    invoke-static {v0}, Lcom/kms/antivirus/gui/AvCheckObjectsActivity;->a(Lcom/kms/antivirus/gui/AvCheckObjectsActivity;)I

    move-result v0

    if-ne v0, p2, :cond_1

    .line 122
    :cond_0
    :goto_0
    return-void

    .line 116
    :cond_1
    iget-object v0, p0, LcF;->a:Lcom/kms/antivirus/gui/AvCheckObjectsActivity;

    invoke-static {v0, p2}, Lcom/kms/antivirus/gui/AvCheckObjectsActivity;->a(Lcom/kms/antivirus/gui/AvCheckObjectsActivity;I)I

    .line 117
    iget-object v0, p0, LcF;->a:Lcom/kms/antivirus/gui/AvCheckObjectsActivity;

    invoke-static {v0}, Lcom/kms/antivirus/gui/AvCheckObjectsActivity;->b(Lcom/kms/antivirus/gui/AvCheckObjectsActivity;)Lga;

    move-result-object v0

    iget-object v1, p0, LcF;->a:Lcom/kms/antivirus/gui/AvCheckObjectsActivity;

    invoke-static {v1}, Lcom/kms/antivirus/gui/AvCheckObjectsActivity;->a(Lcom/kms/antivirus/gui/AvCheckObjectsActivity;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Lga;->a(ILjava/lang/Object;)V

    .line 118
    iget-object v0, p0, LcF;->a:Lcom/kms/antivirus/gui/AvCheckObjectsActivity;

    invoke-static {v0}, Lcom/kms/antivirus/gui/AvCheckObjectsActivity;->b(Lcom/kms/antivirus/gui/AvCheckObjectsActivity;)Lga;

    move-result-object v0

    invoke-virtual {v0}, Lga;->a()V

    .line 119
    iget-object v0, p0, LcF;->a:Lcom/kms/antivirus/gui/AvCheckObjectsActivity;

    iget-object v1, p0, LcF;->a:Lcom/kms/antivirus/gui/AvCheckObjectsActivity;

    iget-object v2, p0, LcF;->a:Lcom/kms/antivirus/gui/AvCheckObjectsActivity;

    invoke-static {}, Lcom/kms/antivirus/gui/AvCheckObjectsActivity;->c()[[I

    move-result-object v3

    aget-object v3, v3, v5

    const/4 v4, 0x2

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Lcom/kms/antivirus/gui/AvCheckObjectsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v5, v2}, Lcom/kms/antivirus/gui/AvCheckObjectsActivity;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v5, v1}, Lcom/kms/antivirus/gui/AvCheckObjectsActivity;->a(Lcom/kms/antivirus/gui/AvCheckObjectsActivity;ILjava/lang/String;)V

    .line 120
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_0
.end method
