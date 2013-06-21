.class Lcom/fleapapa/helper/Ad$3;
.super Ljava/lang/Thread;
.source "Ad.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fleapapa/helper/Ad;->display(Landroid/widget/ImageView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fleapapa/helper/Ad;

.field private final synthetic val$err:Ljava/lang/Runnable;

.field private final synthetic val$handler:Landroid/os/Handler;

.field private final synthetic val$ok:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/fleapapa/helper/Ad;Ljava/lang/String;Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 0
    .parameter
    .parameter "$anonymous0"
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fleapapa/helper/Ad$3;->this$0:Lcom/fleapapa/helper/Ad;

    iput-object p3, p0, Lcom/fleapapa/helper/Ad$3;->val$handler:Landroid/os/Handler;

    iput-object p4, p0, Lcom/fleapapa/helper/Ad$3;->val$ok:Ljava/lang/Runnable;

    iput-object p5, p0, Lcom/fleapapa/helper/Ad$3;->val$err:Ljava/lang/Runnable;

    .line 74
    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 77
    :try_start_0
    new-instance v1, Ljava/net/URL;

    iget-object v2, p0, Lcom/fleapapa/helper/Ad$3;->this$0:Lcom/fleapapa/helper/Ad;

    iget-object v2, v2, Lcom/fleapapa/helper/Ad;->url_image:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 78
    .local v1, url:Ljava/net/URL;
    iget-object v2, p0, Lcom/fleapapa/helper/Ad$3;->this$0:Lcom/fleapapa/helper/Ad;

    invoke-virtual {v1}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v3

    const-string v4, "what"

    invoke-static {v3, v4}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, v2, Lcom/fleapapa/helper/Ad;->draw:Landroid/graphics/drawable/Drawable;

    .line 79
    iget-object v2, p0, Lcom/fleapapa/helper/Ad$3;->this$0:Lcom/fleapapa/helper/Ad;

    iget-object v2, v2, Lcom/fleapapa/helper/Ad;->draw:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 80
    iget-object v2, p0, Lcom/fleapapa/helper/Ad$3;->val$handler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/fleapapa/helper/Ad$3;->val$ok:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 81
    sget-object v2, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Ad.display: DONE! "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/fleapapa/helper/Ad$3;->this$0:Lcom/fleapapa/helper/Ad;

    iget-object v4, v4, Lcom/fleapapa/helper/Ad;->url_image:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    .end local v1           #url:Ljava/net/URL;
    :goto_0
    const/4 v2, 0x0

    sput-object v2, Lcom/fleapapa/helper/Ad;->ath:Ljava/lang/Thread;

    .line 91
    return-void

    .line 84
    .restart local v1       #url:Ljava/net/URL;
    :cond_0
    :try_start_1
    sget-object v2, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Ad.display: Drawable.createFromStream FAILED! ("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/fleapapa/helper/Ad$3;->this$0:Lcom/fleapapa/helper/Ad;

    iget-object v4, v4, Lcom/fleapapa/helper/Ad;->url_image:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 86
    .end local v1           #url:Ljava/net/URL;
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 87
    .local v0, e:Ljava/lang/Exception;
    sget-object v2, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Ad.display: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/fleapapa/helper/Ad$3;->this$0:Lcom/fleapapa/helper/Ad;

    iget-object v4, v4, Lcom/fleapapa/helper/Ad;->url_image:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    iget-object v2, p0, Lcom/fleapapa/helper/Ad$3;->val$handler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/fleapapa/helper/Ad$3;->val$err:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
