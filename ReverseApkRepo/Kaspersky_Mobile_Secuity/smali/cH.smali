.class public final LcH;
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
    .line 142
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, LcH;-><init>(Lcom/kms/antivirus/gui/AvMonitorParamsActivity;B)V

    return-void
.end method

.method private constructor <init>(Lcom/kms/antivirus/gui/AvMonitorParamsActivity;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 142
    iput-object p1, p0, LcH;->a:Lcom/kms/antivirus/gui/AvMonitorParamsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 148
    if-ltz p2, :cond_0

    iget-object v0, p0, LcH;->a:Lcom/kms/antivirus/gui/AvMonitorParamsActivity;

    invoke-static {v0}, Lcom/kms/antivirus/gui/AvMonitorParamsActivity;->a(Lcom/kms/antivirus/gui/AvMonitorParamsActivity;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-ge p2, v0, :cond_0

    .line 150
    iget-object v0, p0, LcH;->a:Lcom/kms/antivirus/gui/AvMonitorParamsActivity;

    invoke-static {v0}, Lcom/kms/antivirus/gui/AvMonitorParamsActivity;->b(Lcom/kms/antivirus/gui/AvMonitorParamsActivity;)I

    move-result v0

    if-ne v0, p2, :cond_1

    .line 175
    :cond_0
    :goto_0
    return-void

    .line 152
    :cond_1
    iget-object v0, p0, LcH;->a:Lcom/kms/antivirus/gui/AvMonitorParamsActivity;

    invoke-static {v0, p2}, Lcom/kms/antivirus/gui/AvMonitorParamsActivity;->a(Lcom/kms/antivirus/gui/AvMonitorParamsActivity;I)I

    .line 153
    iget-object v0, p0, LcH;->a:Lcom/kms/antivirus/gui/AvMonitorParamsActivity;

    iget-object v1, p0, LcH;->a:Lcom/kms/antivirus/gui/AvMonitorParamsActivity;

    iget-object v3, p0, LcH;->a:Lcom/kms/antivirus/gui/AvMonitorParamsActivity;

    invoke-static {}, Lcom/kms/antivirus/gui/AvMonitorParamsActivity;->c()[[I

    move-result-object v4

    aget-object v4, v4, v2

    const/4 v5, 0x2

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Lcom/kms/antivirus/gui/AvMonitorParamsActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/kms/antivirus/gui/AvMonitorParamsActivity;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lcom/kms/antivirus/gui/AvMonitorParamsActivity;->a(Lcom/kms/antivirus/gui/AvMonitorParamsActivity;ILjava/lang/String;)V

    .line 158
    iget-object v0, p0, LcH;->a:Lcom/kms/antivirus/gui/AvMonitorParamsActivity;

    invoke-static {v0}, Lcom/kms/antivirus/gui/AvMonitorParamsActivity;->b(Lcom/kms/antivirus/gui/AvMonitorParamsActivity;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 159
    const/16 v0, 0x80

    move v1, v0

    .line 161
    :goto_1
    invoke-static {}, LfS;->a()LfS;

    move-result-object v0

    .line 162
    const/4 v3, 0x5

    invoke-virtual {v0, v3}, LfS;->a(I)LfV;

    move-result-object v0

    .line 163
    check-cast v0, Lge;

    .line 164
    const-class v3, Lge;

    monitor-enter v3

    .line 165
    :try_start_0
    invoke-virtual {v0}, Lge;->a()V

    .line 166
    iput v1, v0, Lge;->b:I

    .line 167
    invoke-virtual {v0}, Lge;->b()V

    .line 168
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 170
    invoke-static {}, LfS;->a()LfS;

    move-result-object v0

    invoke-virtual {v0, v2}, LfS;->a(I)LfV;

    move-result-object v0

    check-cast v0, Lga;

    const/16 v3, 0xb

    invoke-virtual {v0, v3}, Lga;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    .line 171
    or-int/lit16 v1, v1, 0x800

    .line 172
    :cond_2
    invoke-static {v2, v1}, Lcom/kms/kmsshared/KMSApplication;->a(II)V

    .line 173
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_0

    .line 168
    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0

    :cond_3
    move v1, v2

    goto :goto_1
.end method
