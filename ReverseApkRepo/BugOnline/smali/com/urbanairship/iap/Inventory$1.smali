.class Lcom/urbanairship/iap/Inventory$1;
.super Lcom/urbanairship/restclient/AsyncHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/urbanairship/iap/Inventory;->load()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/urbanairship/iap/Inventory;


# direct methods
.method constructor <init>(Lcom/urbanairship/iap/Inventory;)V
    .locals 0

    iput-object p1, p0, Lcom/urbanairship/iap/Inventory$1;->this$0:Lcom/urbanairship/iap/Inventory;

    invoke-direct {p0}, Lcom/urbanairship/restclient/AsyncHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/urbanairship/restclient/Response;)V
    .locals 3

    invoke-virtual {p1}, Lcom/urbanairship/restclient/Response;->status()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/urbanairship/restclient/Response;->body()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Inventory response string: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/urbanairship/Logger;->info(Ljava/lang/String;)V

    new-instance v1, Lorg/json/JSONTokener;

    invoke-direct {v1, v0}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONArray;

    iget-object v1, p0, Lcom/urbanairship/iap/Inventory$1;->this$0:Lcom/urbanairship/iap/Inventory;

    #calls: Lcom/urbanairship/iap/Inventory;->setProducts(Lorg/json/JSONArray;)V
    invoke-static {v1, v0}, Lcom/urbanairship/iap/Inventory;->access$100(Lcom/urbanairship/iap/Inventory;Lorg/json/JSONArray;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/urbanairship/iap/Inventory$1;->this$0:Lcom/urbanairship/iap/Inventory;

    invoke-virtual {v0}, Lcom/urbanairship/iap/Inventory;->refresh()V

    iget-object v0, p0, Lcom/urbanairship/iap/Inventory$1;->this$0:Lcom/urbanairship/iap/Inventory;

    invoke-virtual {v0}, Lcom/urbanairship/iap/Inventory;->getStatus()Lcom/urbanairship/iap/Inventory$Status;

    move-result-object v0

    sget-object v1, Lcom/urbanairship/iap/Inventory$Status;->LOADED:Lcom/urbanairship/iap/Inventory$Status;

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Inventory loaded "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/urbanairship/iap/Inventory$1;->this$0:Lcom/urbanairship/iap/Inventory;

    #getter for: Lcom/urbanairship/iap/Inventory;->allProducts:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/urbanairship/iap/Inventory;->access$200(Lcom/urbanairship/iap/Inventory;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Logger;->info(Ljava/lang/String;)V

    :cond_0
    :goto_1
    return-void

    :catch_0
    move-exception v0

    const-string v0, "Error parsing JSON product list"

    invoke-static {v0}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/urbanairship/iap/Inventory$1;->this$0:Lcom/urbanairship/iap/Inventory;

    sget-object v1, Lcom/urbanairship/iap/Inventory$Status;->FAILED:Lcom/urbanairship/iap/Inventory$Status;

    invoke-virtual {v0, v1}, Lcom/urbanairship/iap/Inventory;->setStatus(Lcom/urbanairship/iap/Inventory$Status;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/urbanairship/restclient/Response;->status()I

    move-result v0

    const/16 v1, 0x191

    if-ne v0, v1, :cond_2

    const-string v0, "Authorization failed, make sure the application key and secret are propertly set"

    invoke-static {v0}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "inventoryRequest response status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/urbanairship/restclient/Response;->status()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Logger;->info(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "inventoryRequest response string: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/urbanairship/restclient/Response;->body()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Logger;->info(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/urbanairship/iap/Inventory$1;->this$0:Lcom/urbanairship/iap/Inventory;

    sget-object v1, Lcom/urbanairship/iap/Inventory$Status;->FAILED:Lcom/urbanairship/iap/Inventory$Status;

    invoke-virtual {v0, v1}, Lcom/urbanairship/iap/Inventory;->setStatus(Lcom/urbanairship/iap/Inventory$Status;)V

    goto :goto_1
.end method

.method public onError(Ljava/lang/Exception;)V
    .locals 2

    const-string v0, "Error loading product inventory from server"

    invoke-static {v0}, Lcom/urbanairship/Logger;->error(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/urbanairship/iap/Inventory$1;->this$0:Lcom/urbanairship/iap/Inventory;

    sget-object v1, Lcom/urbanairship/iap/Inventory$Status;->FAILED:Lcom/urbanairship/iap/Inventory$Status;

    invoke-virtual {v0, v1}, Lcom/urbanairship/iap/Inventory;->setStatus(Lcom/urbanairship/iap/Inventory$Status;)V

    return-void
.end method
