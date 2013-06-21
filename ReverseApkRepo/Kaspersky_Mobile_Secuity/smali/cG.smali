.class public final LcG;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/kms/antivirus/gui/AvMonitorParamsActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/kms/antivirus/gui/AvMonitorParamsActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 178
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, LcG;-><init>(Lcom/kms/antivirus/gui/AvMonitorParamsActivity;B)V

    return-void
.end method

.method private constructor <init>(Lcom/kms/antivirus/gui/AvMonitorParamsActivity;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 178
    iput-object p1, p0, LcG;->a:Lcom/kms/antivirus/gui/AvMonitorParamsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x1

    .line 184
    if-ltz p2, :cond_0

    iget-object v0, p0, LcG;->a:Lcom/kms/antivirus/gui/AvMonitorParamsActivity;

    invoke-static {v0}, Lcom/kms/antivirus/gui/AvMonitorParamsActivity;->c(Lcom/kms/antivirus/gui/AvMonitorParamsActivity;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-ge p2, v0, :cond_0

    .line 186
    iget-object v0, p0, LcG;->a:Lcom/kms/antivirus/gui/AvMonitorParamsActivity;

    invoke-static {v0}, Lcom/kms/antivirus/gui/AvMonitorParamsActivity;->d(Lcom/kms/antivirus/gui/AvMonitorParamsActivity;)I

    move-result v0

    if-ne v0, p2, :cond_1

    .line 204
    :cond_0
    :goto_0
    return-void

    .line 188
    :cond_1
    iget-object v0, p0, LcG;->a:Lcom/kms/antivirus/gui/AvMonitorParamsActivity;

    invoke-static {v0, p2}, Lcom/kms/antivirus/gui/AvMonitorParamsActivity;->b(Lcom/kms/antivirus/gui/AvMonitorParamsActivity;I)I

    .line 189
    iget-object v0, p0, LcG;->a:Lcom/kms/antivirus/gui/AvMonitorParamsActivity;

    iget-object v1, p0, LcG;->a:Lcom/kms/antivirus/gui/AvMonitorParamsActivity;

    iget-object v2, p0, LcG;->a:Lcom/kms/antivirus/gui/AvMonitorParamsActivity;

    invoke-static {}, Lcom/kms/antivirus/gui/AvMonitorParamsActivity;->c()[[I

    move-result-object v3

    aget-object v3, v3, v5

    const/4 v4, 0x2

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Lcom/kms/antivirus/gui/AvMonitorParamsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v5, v2}, Lcom/kms/antivirus/gui/AvMonitorParamsActivity;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v5, v1}, Lcom/kms/antivirus/gui/AvMonitorParamsActivity;->b(Lcom/kms/antivirus/gui/AvMonitorParamsActivity;ILjava/lang/String;)V

    .line 192
    invoke-static {}, LfS;->a()LfS;

    move-result-object v0

    .line 193
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, LfS;->a(I)LfV;

    move-result-object v0

    .line 194
    check-cast v0, Lge;

    .line 195
    const-class v1, Lge;

    monitor-enter v1

    .line 196
    :try_start_0
    invoke-virtual {v0}, Lge;->a()V

    .line 197
    iget-object v2, p0, LcG;->a:Lcom/kms/antivirus/gui/AvMonitorParamsActivity;

    invoke-static {v2}, Lcom/kms/antivirus/gui/AvMonitorParamsActivity;->d(Lcom/kms/antivirus/gui/AvMonitorParamsActivity;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lge;->c:I

    .line 198
    invoke-virtual {v0}, Lge;->b()V

    .line 199
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 201
    iget-object v0, p0, LcG;->a:Lcom/kms/antivirus/gui/AvMonitorParamsActivity;

    invoke-static {v0}, Lcom/kms/antivirus/gui/AvMonitorParamsActivity;->d(Lcom/kms/antivirus/gui/AvMonitorParamsActivity;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v5, v0}, Lcom/kms/kmsshared/KMSApplication;->a(II)V

    .line 202
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_0

    .line 199
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
