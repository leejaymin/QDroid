.class final Lcom/mobclix/android/sdk/bf;
.super Lcom/mobclix/android/sdk/n;


# instance fields
.field final synthetic a:Lcom/mobclix/android/sdk/ay;


# direct methods
.method constructor <init>(Lcom/mobclix/android/sdk/ay;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/mobclix/android/sdk/bf;->a:Lcom/mobclix/android/sdk/ay;

    invoke-direct {p0, p2}, Lcom/mobclix/android/sdk/n;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p0, p0, Lcom/mobclix/android/sdk/bf;->b:Ljava/lang/Object;

    check-cast p0, Landroid/webkit/JsPromptResult;

    invoke-virtual {p0}, Landroid/webkit/JsPromptResult;->cancel()V

    return-void
.end method