.class final Lcom/mobclix/android/sdk/aa;
.super Landroid/webkit/WebChromeClient;


# instance fields
.field final synthetic a:Lcom/mobclix/android/sdk/y;


# direct methods
.method constructor <init>(Lcom/mobclix/android/sdk/y;)V
    .locals 0

    iput-object p1, p0, Lcom/mobclix/android/sdk/aa;->a:Lcom/mobclix/android/sdk/y;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public final onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 2

    iget-object v0, p0, Lcom/mobclix/android/sdk/aa;->a:Lcom/mobclix/android/sdk/y;

    invoke-static {v0}, Lcom/mobclix/android/sdk/y;->a(Lcom/mobclix/android/sdk/y;)Landroid/app/Activity;

    move-result-object v0

    mul-int/lit8 v1, p2, 0x64

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setProgress(I)V

    return-void
.end method
