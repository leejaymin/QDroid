.class final Lcom/mobclix/android/sdk/aj;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/mobclix/android/sdk/ai;


# direct methods
.method constructor <init>(Lcom/mobclix/android/sdk/ai;)V
    .locals 0

    iput-object p1, p0, Lcom/mobclix/android/sdk/aj;->a:Lcom/mobclix/android/sdk/ai;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/mobclix/android/sdk/aj;->a:Lcom/mobclix/android/sdk/ai;

    invoke-static {v0}, Lcom/mobclix/android/sdk/ai;->a(Lcom/mobclix/android/sdk/ai;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mobclix/android/sdk/aj;->a:Lcom/mobclix/android/sdk/ai;

    invoke-static {v0}, Lcom/mobclix/android/sdk/ai;->b(Lcom/mobclix/android/sdk/ai;)Landroid/widget/ImageView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/mobclix/android/sdk/aj;->a:Lcom/mobclix/android/sdk/ai;

    invoke-static {v0}, Lcom/mobclix/android/sdk/ai;->c(Lcom/mobclix/android/sdk/ai;)Landroid/widget/VideoView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mobclix/android/sdk/aj;->a:Lcom/mobclix/android/sdk/ai;

    invoke-static {v0}, Lcom/mobclix/android/sdk/ai;->c(Lcom/mobclix/android/sdk/ai;)Landroid/widget/VideoView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    :cond_0
    return-void
.end method
