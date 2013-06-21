.class public final LeB;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field private synthetic a:Landroid/content/Intent;

.field private synthetic b:Lcom/kms/kmsdaemon/SmsSentReceiverV2;


# direct methods
.method public constructor <init>(Lcom/kms/kmsdaemon/SmsSentReceiverV2;Landroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 21
    iput-object p1, p0, LeB;->b:Lcom/kms/kmsdaemon/SmsSentReceiverV2;

    iput-object p2, p0, LeB;->a:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 24
    iget-object v0, p0, LeB;->a:Landroid/content/Intent;

    const-string v1, "com.kms.sms_id"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iget-object v2, p0, LeB;->b:Lcom/kms/kmsdaemon/SmsSentReceiverV2;

    invoke-virtual {v2}, Lcom/kms/kmsdaemon/SmsSentReceiverV2;->getResultCode()I

    move-result v2

    invoke-static {v0, v1, v4, v2, v4}, Lfj;->a(JIII)V

    .line 60
    return-void
.end method
