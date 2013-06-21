.class public Lcom/thinkyeah/smartlock/service/LicenseCheckService;
.super Landroid/app/IntentService;


# static fields
.field private static final a:Lcom/thinkyeah/common/c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/thinkyeah/common/c;

    const-class v1, Lcom/thinkyeah/smartlock/service/LicenseCheckService;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/thinkyeah/common/c;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/thinkyeah/smartlock/service/LicenseCheckService;->a:Lcom/thinkyeah/common/c;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-class v0, Lcom/thinkyeah/smartlock/service/LicenseCheckService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a()Lcom/thinkyeah/common/c;
    .locals 1

    sget-object v0, Lcom/thinkyeah/smartlock/service/LicenseCheckService;->a:Lcom/thinkyeah/common/c;

    return-object v0
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 7

    invoke-virtual {p0}, Lcom/thinkyeah/smartlock/service/LicenseCheckService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/thinkyeah/smartlock/bk;->a(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/thinkyeah/smartlock/service/b;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/thinkyeah/smartlock/service/b;-><init>(Lcom/thinkyeah/smartlock/service/LicenseCheckService;B)V

    new-instance v2, Lcom/a/a/a/a/i;

    new-instance v3, Lcom/a/a/a/a/t;

    new-instance v4, Lcom/a/a/a/a/a;

    sget-object v5, Lcom/thinkyeah/smartlock/bk;->a:[B

    invoke-virtual {p0}, Lcom/thinkyeah/smartlock/service/LicenseCheckService;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6, v0}, Lcom/a/a/a/a/a;-><init>([BLjava/lang/String;Ljava/lang/String;)V

    invoke-direct {v3, p0, v4}, Lcom/a/a/a/a/t;-><init>(Landroid/content/Context;Lcom/a/a/a/a/p;)V

    const-string v0, "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAiIJji1ARrYPgQC5kphsYi0J+Ap3U9zBk8bc1bdu53GeH1Pi+XS8bziNucRlnpPKp/kilueRfzMa1S1xw5frccKTd0NsHXl9zV49dm8YcEF9uzBVEZNt+YYPbpQSw4gZMZTAcx7+nid3ayFGy0w3vgR0Ibq4BB9J5mIY+yFAjPv28+D1K4AKjAWDS/2uBhSrSVZrGID3LfD3VicDAZaeNojdo1+SJrs04ZNOdJ28VPOQ8JuxjSjAGIwvAW7IW2hzesBuHyxzf4vvNgBg8kDmTWfL097rugKmpAg0ROawO4lBPgvF38xpDyTmbvV8lB0cOBa6Ey9hXWun+cJI0KKItrQIDAQAB"

    invoke-direct {v2, p0, v3, v0}, Lcom/a/a/a/a/i;-><init>(Landroid/content/Context;Lcom/a/a/a/a/q;Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Lcom/a/a/a/a/i;->a(Lcom/a/a/a/a/m;)V

    return-void
.end method
