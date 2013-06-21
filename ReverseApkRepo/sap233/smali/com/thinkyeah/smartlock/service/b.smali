.class final Lcom/thinkyeah/smartlock/service/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/a/a/a/a/m;


# instance fields
.field final synthetic a:Lcom/thinkyeah/smartlock/service/LicenseCheckService;


# direct methods
.method private constructor <init>(Lcom/thinkyeah/smartlock/service/LicenseCheckService;)V
    .locals 0

    iput-object p1, p0, Lcom/thinkyeah/smartlock/service/b;->a:Lcom/thinkyeah/smartlock/service/LicenseCheckService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/thinkyeah/smartlock/service/LicenseCheckService;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/thinkyeah/smartlock/service/b;-><init>(Lcom/thinkyeah/smartlock/service/LicenseCheckService;)V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 3

    invoke-static {}, Lcom/thinkyeah/smartlock/service/LicenseCheckService;->a()Lcom/thinkyeah/common/c;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[allow] policyReason="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/thinkyeah/common/c;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/thinkyeah/smartlock/service/b;->a:Lcom/thinkyeah/smartlock/service/LicenseCheckService;

    const/4 v1, 0x1

    invoke-static {v0, v1, p1}, Lcom/thinkyeah/smartlock/bk;->a(Landroid/content/Context;II)V

    return-void
.end method

.method public final b(I)V
    .locals 3

    const/16 v0, 0x123

    if-ne p1, v0, :cond_0

    invoke-static {}, Lcom/thinkyeah/smartlock/service/LicenseCheckService;->a()Lcom/thinkyeah/common/c;

    move-result-object v0

    const-string v1, "skip the policyReason RETRY"

    invoke-virtual {v0, v1}, Lcom/thinkyeah/common/c;->a(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/thinkyeah/smartlock/service/LicenseCheckService;->a()Lcom/thinkyeah/common/c;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[dontAllow] policyReason="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/thinkyeah/common/c;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/thinkyeah/smartlock/service/b;->a:Lcom/thinkyeah/smartlock/service/LicenseCheckService;

    const/4 v1, 0x2

    invoke-static {v0, v1, p1}, Lcom/thinkyeah/smartlock/bk;->a(Landroid/content/Context;II)V

    goto :goto_0
.end method

.method public final c(I)V
    .locals 3

    invoke-static {}, Lcom/thinkyeah/smartlock/service/LicenseCheckService;->a()Lcom/thinkyeah/common/c;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[applicationError] errorCode="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/thinkyeah/common/c;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/thinkyeah/smartlock/service/b;->a:Lcom/thinkyeah/smartlock/service/LicenseCheckService;

    const/4 v1, 0x3

    invoke-static {v0, v1, p1}, Lcom/thinkyeah/smartlock/bk;->a(Landroid/content/Context;II)V

    return-void
.end method
