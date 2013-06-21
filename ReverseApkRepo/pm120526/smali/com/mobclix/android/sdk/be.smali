.class final Lcom/mobclix/android/sdk/be;
.super Lcom/mobclix/android/sdk/n;


# instance fields
.field final synthetic a:Lcom/mobclix/android/sdk/ay;


# direct methods
.method constructor <init>(Lcom/mobclix/android/sdk/ay;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/mobclix/android/sdk/be;->a:Lcom/mobclix/android/sdk/ay;

    invoke-direct {p0, p2, p3}, Lcom/mobclix/android/sdk/n;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/mobclix/android/sdk/be;->c:Ljava/lang/Object;

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/mobclix/android/sdk/be;->b:Ljava/lang/Object;

    check-cast p0, Landroid/webkit/JsPromptResult;

    invoke-virtual {p0, v0}, Landroid/webkit/JsPromptResult;->confirm(Ljava/lang/String;)V

    return-void
.end method
