.class Lcom/chillingo/crystal/http/AsyncHttpManager$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chillingo/crystal/http/AsyncHttpManager;->processData(Lcom/chillingo/crystal/serverdata/AbstractServerData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chillingo/crystal/http/AsyncHttpManager;

.field final synthetic val$data:Lcom/chillingo/crystal/serverdata/AbstractServerData;


# direct methods
.method constructor <init>(Lcom/chillingo/crystal/http/AsyncHttpManager;Lcom/chillingo/crystal/serverdata/AbstractServerData;)V
    .locals 0

    iput-object p1, p0, Lcom/chillingo/crystal/http/AsyncHttpManager$1;->this$0:Lcom/chillingo/crystal/http/AsyncHttpManager;

    iput-object p2, p0, Lcom/chillingo/crystal/http/AsyncHttpManager$1;->val$data:Lcom/chillingo/crystal/serverdata/AbstractServerData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/chillingo/crystal/http/AsyncHttpManager$1;->this$0:Lcom/chillingo/crystal/http/AsyncHttpManager;

    iget-object v1, p0, Lcom/chillingo/crystal/http/AsyncHttpManager$1;->val$data:Lcom/chillingo/crystal/serverdata/AbstractServerData;

    #calls: Lcom/chillingo/crystal/http/AsyncHttpManager;->runRequest(Lcom/chillingo/crystal/serverdata/AbstractServerData;)V
    invoke-static {v0, v1}, Lcom/chillingo/crystal/http/AsyncHttpManager;->access$000(Lcom/chillingo/crystal/http/AsyncHttpManager;Lcom/chillingo/crystal/serverdata/AbstractServerData;)V

    return-void
.end method
