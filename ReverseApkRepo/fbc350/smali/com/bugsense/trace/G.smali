.class public Lcom/bugsense/trace/G;
.super Ljava/lang/Object;


# static fields
.field public static ANALYTICS_URL:Ljava/lang/String;

.field public static ANDROID_VERSION:Ljava/lang/String;

.field public static API_KEY:Ljava/lang/String;

.field public static APP_PACKAGE:Ljava/lang/String;

.field public static APP_VERSION:Ljava/lang/String;

.field public static FILES_PATH:Ljava/lang/String;

.field public static HAS_ROOT:Z

.field public static LOG_FILTER:Ljava/lang/String;

.field public static LOG_LINES:I

.field public static PHONE_BRAND:Ljava/lang/String;

.field public static PHONE_MODEL:Ljava/lang/String;

.field public static SEND_ANALYTICS:Z

.field public static SEND_LOG:Z

.field public static TAG:Ljava/lang/String;

.field public static TraceVersion:Ljava/lang/String;

.field public static URL:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    const-string v0, "null"

    sput-object v0, Lcom/bugsense/trace/G;->FILES_PATH:Ljava/lang/String;

    const-string v0, "unknown"

    sput-object v0, Lcom/bugsense/trace/G;->APP_VERSION:Ljava/lang/String;

    const-string v0, "unknown"

    sput-object v0, Lcom/bugsense/trace/G;->APP_PACKAGE:Ljava/lang/String;

    const-string v0, "https://bugsense.appspot.com/api/errors"

    sput-object v0, Lcom/bugsense/trace/G;->URL:Ljava/lang/String;

    const-string v0, "https://ticks.bugsense.com/put/"

    sput-object v0, Lcom/bugsense/trace/G;->ANALYTICS_URL:Ljava/lang/String;

    const-string v0, "BugSenseHandler"

    sput-object v0, Lcom/bugsense/trace/G;->TAG:Ljava/lang/String;

    sput-object v1, Lcom/bugsense/trace/G;->ANDROID_VERSION:Ljava/lang/String;

    sput-object v1, Lcom/bugsense/trace/G;->PHONE_MODEL:Ljava/lang/String;

    sput-object v1, Lcom/bugsense/trace/G;->PHONE_BRAND:Ljava/lang/String;

    sput-object v1, Lcom/bugsense/trace/G;->API_KEY:Ljava/lang/String;

    sput-boolean v2, Lcom/bugsense/trace/G;->HAS_ROOT:Z

    const-string v0, "1.1.1"

    sput-object v0, Lcom/bugsense/trace/G;->TraceVersion:Ljava/lang/String;

    sput-boolean v2, Lcom/bugsense/trace/G;->SEND_ANALYTICS:Z

    sput-boolean v2, Lcom/bugsense/trace/G;->SEND_LOG:Z

    const-string v0, ""

    sput-object v0, Lcom/bugsense/trace/G;->LOG_FILTER:Ljava/lang/String;

    const/16 v0, 0x1388

    sput v0, Lcom/bugsense/trace/G;->LOG_LINES:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
