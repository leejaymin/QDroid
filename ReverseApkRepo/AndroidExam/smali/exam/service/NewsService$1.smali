.class Lexam/service/NewsService$1;
.super Landroid/os/Handler;
.source "NewsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lexam/service/NewsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lexam/service/NewsService;


# direct methods
.method constructor <init>(Lexam/service/NewsService;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lexam/service/NewsService$1;->this$0:Lexam/service/NewsService;

    .line 64
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 66
    iget v1, p1, Landroid/os/Message;->what:I

    if-nez v1, :cond_0

    .line 67
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 68
    .local v0, news:Ljava/lang/String;
    iget-object v1, p0, Lexam/service/NewsService$1;->this$0:Lexam/service/NewsService;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 70
    .end local v0           #news:Ljava/lang/String;
    :cond_0
    return-void
.end method
