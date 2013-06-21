.class final Lcom/tequnique/camerax/ci;
.super Landroid/webkit/WebViewClient;


# instance fields
.field final synthetic a:Lcom/tequnique/camerax/WebuploaderActivity;


# direct methods
.method private constructor <init>(Lcom/tequnique/camerax/WebuploaderActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/tequnique/camerax/ci;->a:Lcom/tequnique/camerax/WebuploaderActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tequnique/camerax/WebuploaderActivity;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tequnique/camerax/ci;-><init>(Lcom/tequnique/camerax/WebuploaderActivity;)V

    return-void
.end method


# virtual methods
.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method
