.class public final Lccc71/pmw/pro/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:[B

.field private static b:Z

.field private static c:Z

.field private static d:Lde/androidpit/a/b;

.field private static e:Lcom/android/vending/licensing/u;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const/16 v0, 0x14

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lccc71/pmw/pro/a/a;->a:[B

    .line 30
    const/4 v0, 0x0

    sput-boolean v0, Lccc71/pmw/pro/a/a;->b:Z

    .line 31
    const/4 v0, 0x1

    sput-boolean v0, Lccc71/pmw/pro/a/a;->c:Z

    .line 14
    return-void

    .line 26
    :array_0
    .array-data 0x1
        0xebt
        0x73t
        0x78t
        0xe4t
        0xfdt
        0x7ft
        0x36t
        0x63t
        0xebt
        0xa8t
        0x5bt
        0x73t
        0x95t
        0x11t
        0x74t
        0xdt
        0x6ft
        0x86t
        0x40t
        0xa7t
    .end array-data
.end method

.method static synthetic a()Lcom/android/vending/licensing/u;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lccc71/pmw/pro/a/a;->e:Lcom/android/vending/licensing/u;

    return-object v0
.end method

.method static synthetic a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 31
    sput-boolean p0, Lccc71/pmw/pro/a/a;->c:Z

    return-void
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x1

    .line 40
    :try_start_0
    sget-boolean v0, Lccc71/pmw/pro/a/a;->b:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lccc71/pmw/pro/a/a;->c:Z

    if-nez v0, :cond_1

    .line 42
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 43
    new-instance v6, Lccc71/pmw/pro/a/b;

    const/4 v1, 0x0

    invoke-direct {v6, v1}, Lccc71/pmw/pro/a/b;-><init>(B)V

    .line 45
    new-instance v1, Lcom/android/vending/licensing/u;

    new-instance v2, Lcom/android/vending/licensing/a;

    sget-object v3, Lccc71/pmw/pro/a/a;->a:[B

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4, v0}, Lcom/android/vending/licensing/a;-><init>([BLjava/lang/String;Ljava/lang/String;)V

    invoke-direct {v1, p0, v2}, Lcom/android/vending/licensing/u;-><init>(Landroid/content/Context;Lcom/android/vending/licensing/p;)V

    sput-object v1, Lccc71/pmw/pro/a/a;->e:Lcom/android/vending/licensing/u;

    .line 47
    new-instance v0, Lde/androidpit/a/b;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "rO0ABXNyABRqYXZhLm1hdGguQmlnSW50ZWdlcoz8nx+pO/sdAwAGSQAIYml0Q291bnRJAAliaXRMZW5ndGhJABNmaXJzdE5vbnplcm9CeXRlTnVtSQAMbG93ZXN0U2V0Qml0SQAGc2lnbnVtWwAJbWFnbml0dWRldAACW0J4cgAQamF2YS5sYW5nLk51bWJlcoaslR0LlOCLAgAAeHD///////////////7////+AAAAAXVyAAJbQqzzF/gGCFTgAgAAeHAAAACAtPWx7yLZc0OH3FP4e/BGowkQ03mZSOjnPTc9ru8/luWW0b8P3MPi4fQkuH9EZMIbmfzs+P7SMlgxnUgNT8v+SY8FvHdZNHBGlTOYA1RnAAECc2jkm2UVCliPRKru5TkiCnTufiq6GP0B6illXpaGpppFLtCS7vSLN2S5igIclk14c3EAfgAA///////////////+/////gAAAAF1cQB+AAQAAAADAQABeA=="

    sget-object v4, Lccc71/pmw/pro/a/a;->e:Lcom/android/vending/licensing/u;

    const-string v5, "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAksmUkUdLXTDJFmFMqInUMPVjVXuuDtZ5KY51JNHjmbxm5udQJ+f9M0eYkOovwaEIHR4uJ/s8erRbPMdQpLsUbRj98QtckId2BzdjlWPW2lPJfxZT6BP6LVlHbCMtij7YNdU2H23uAEo7fkUnL0gqhWC56btbR6wnpMCha0lQcFtcMCofKthYHmFw4m4Ot5eRoVHoggU6e0dhuzHGInIEZFLOL0YLxEcFHG7qS7DWEgbhJzPCsvSJlvyakwNmC4qOICc8p6uUbt7OuaKZ4jElheDetl2GLB3+QpBp+ruBLYKY98XFFlzTaLmLovH/FIR9OGkhtdQ4CD9cXG/F/ssiKwIDAQAB"

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lde/androidpit/a/b;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/vending/licensing/q;Ljava/lang/String;)V

    .line 49
    sput-object v0, Lccc71/pmw/pro/a/a;->d:Lde/androidpit/a/b;

    invoke-virtual {v0, v6}, Lde/androidpit/a/b;->a(Lde/androidpit/a/f;)V

    .line 51
    const/4 v0, 0x1

    sput-boolean v0, Lccc71/pmw/pro/a/a;->b:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    :cond_1
    :goto_0
    sget-boolean v0, Lccc71/pmw/pro/a/a;->c:Z

    return v0

    .line 59
    :catch_0
    move-exception v0

    sput-boolean v7, Lccc71/pmw/pro/a/a;->b:Z

    goto :goto_0
.end method

.method static synthetic b()V
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    sput-boolean v0, Lccc71/pmw/pro/a/a;->b:Z

    return-void
.end method

.method static synthetic c()Lde/androidpit/a/b;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lccc71/pmw/pro/a/a;->d:Lde/androidpit/a/b;

    return-object v0
.end method

.method static synthetic d()V
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    sput-object v0, Lccc71/pmw/pro/a/a;->d:Lde/androidpit/a/b;

    return-void
.end method
