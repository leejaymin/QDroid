.class public final LcC;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Let;


# instance fields
.field private synthetic a:Lcom/kms/antivirus/gui/AvAdditionalActivity;


# direct methods
.method public constructor <init>(Lcom/kms/antivirus/gui/AvAdditionalActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 214
    iput-object p1, p0, LcC;->a:Lcom/kms/antivirus/gui/AvAdditionalActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/DialogInterface;I)V
    .locals 9
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 218
    iget-object v0, p0, LcC;->a:Lcom/kms/antivirus/gui/AvAdditionalActivity;

    invoke-static {v0}, Lcom/kms/antivirus/gui/AvAdditionalActivity;->a(Lcom/kms/antivirus/gui/AvAdditionalActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 257
    :cond_0
    :goto_0
    return-void

    .line 222
    :cond_1
    invoke-static {}, Lfp;->f()I

    move-result v4

    .line 223
    rsub-int/lit8 v5, p2, 0x2

    .line 224
    if-eq v4, v5, :cond_0

    .line 228
    invoke-static {v5}, Lfp;->a(I)V

    .line 230
    if-ne v5, v7, :cond_5

    .line 231
    const/16 v0, 0xd

    invoke-static {v0}, Lcom/kms/kmsshared/reports/Reports;->add(I)V

    .line 238
    :goto_1
    invoke-static {}, Lfp;->f()I

    move-result v0

    if-eqz v0, :cond_7

    move v3, v1

    .line 239
    :goto_2
    if-eq v4, v7, :cond_2

    if-ne v5, v7, :cond_9

    .line 242
    :cond_2
    iget-object v6, p0, LcC;->a:Lcom/kms/antivirus/gui/AvAdditionalActivity;

    if-eq v4, v7, :cond_8

    move v0, v1

    :goto_3
    invoke-static {v6, v0}, Lcom/kms/antivirus/gui/AvAdditionalActivity;->a(Lcom/kms/antivirus/gui/AvAdditionalActivity;Z)V

    .line 253
    :goto_4
    if-eqz v4, :cond_3

    if-nez v5, :cond_4

    :cond_3
    move v2, v1

    .line 255
    :cond_4
    iget-object v0, p0, LcC;->a:Lcom/kms/antivirus/gui/AvAdditionalActivity;

    invoke-virtual {v0, v3, v2}, Lcom/kms/antivirus/gui/AvAdditionalActivity;->a(ZZ)V

    .line 256
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    goto :goto_0

    .line 232
    :cond_5
    if-ne v5, v1, :cond_6

    .line 233
    const/16 v0, 0x36

    invoke-static {v0}, Lcom/kms/kmsshared/reports/Reports;->add(I)V

    goto :goto_1

    .line 235
    :cond_6
    const/16 v0, 0xe

    invoke-static {v0}, Lcom/kms/kmsshared/reports/Reports;->add(I)V

    goto :goto_1

    :cond_7
    move v3, v2

    .line 238
    goto :goto_2

    :cond_8
    move v0, v2

    .line 242
    goto :goto_3

    .line 247
    :cond_9
    iget-object v0, p0, LcC;->a:Lcom/kms/antivirus/gui/AvAdditionalActivity;

    const/4 v6, 0x5

    invoke-virtual {v0, v6, v2}, Lcom/kms/antivirus/gui/AvAdditionalActivity;->b(IZ)V

    .line 248
    invoke-static {}, LdT;->e()V

    .line 249
    iget-object v0, p0, LcC;->a:Lcom/kms/antivirus/gui/AvAdditionalActivity;

    iget-object v6, p0, LcC;->a:Lcom/kms/antivirus/gui/AvAdditionalActivity;

    iget-object v7, p0, LcC;->a:Lcom/kms/antivirus/gui/AvAdditionalActivity;

    const v8, 0x7f080049

    invoke-virtual {v7, v8}, Lcom/kms/antivirus/gui/AvAdditionalActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v1, v7}, Lcom/kms/antivirus/gui/AvAdditionalActivity;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v1, v6}, Lcom/kms/antivirus/gui/AvAdditionalActivity;->a(Lcom/kms/antivirus/gui/AvAdditionalActivity;ILjava/lang/String;)V

    .line 251
    iget-object v0, p0, LcC;->a:Lcom/kms/antivirus/gui/AvAdditionalActivity;

    invoke-static {v0}, Leu;->a(Landroid/content/Context;)Z

    goto :goto_4
.end method
