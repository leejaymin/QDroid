.class Lcom/google/devtools/simple/runtime/components/android/TinyWebDB$4;
.super Ljava/lang/Object;
.source "TinyWebDB.java"

# interfaces
.implements Lcom/google/devtools/simple/runtime/components/android/util/AsyncCallbackPair;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/devtools/simple/runtime/components/android/TinyWebDB;->postGetValue(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/devtools/simple/runtime/components/android/util/AsyncCallbackPair",
        "<",
        "Lorg/json/JSONArray;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/devtools/simple/runtime/components/android/TinyWebDB;

.field final synthetic val$tag:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/devtools/simple/runtime/components/android/TinyWebDB;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 267
    iput-object p1, p0, Lcom/google/devtools/simple/runtime/components/android/TinyWebDB$4;->this$0:Lcom/google/devtools/simple/runtime/components/android/TinyWebDB;

    iput-object p2, p0, Lcom/google/devtools/simple/runtime/components/android/TinyWebDB$4;->val$tag:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/String;)V
    .locals 2
    .parameter "message"

    .prologue
    .line 314
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/TinyWebDB$4;->this$0:Lcom/google/devtools/simple/runtime/components/android/TinyWebDB;

    #getter for: Lcom/google/devtools/simple/runtime/components/android/TinyWebDB;->androidUIHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/google/devtools/simple/runtime/components/android/TinyWebDB;->access$100(Lcom/google/devtools/simple/runtime/components/android/TinyWebDB;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/google/devtools/simple/runtime/components/android/TinyWebDB$4$4;

    invoke-direct {v1, p0, p1}, Lcom/google/devtools/simple/runtime/components/android/TinyWebDB$4$4;-><init>(Lcom/google/devtools/simple/runtime/components/android/TinyWebDB$4;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 319
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 267
    check-cast p1, Lorg/json/JSONArray;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/devtools/simple/runtime/components/android/TinyWebDB$4;->onSuccess(Lorg/json/JSONArray;)V

    return-void
.end method

.method public onSuccess(Lorg/json/JSONArray;)V
    .locals 6
    .parameter "result"

    .prologue
    .line 269
    if-nez p1, :cond_0

    .line 272
    iget-object v4, p0, Lcom/google/devtools/simple/runtime/components/android/TinyWebDB$4;->this$0:Lcom/google/devtools/simple/runtime/components/android/TinyWebDB;

    #getter for: Lcom/google/devtools/simple/runtime/components/android/TinyWebDB;->androidUIHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/google/devtools/simple/runtime/components/android/TinyWebDB;->access$100(Lcom/google/devtools/simple/runtime/components/android/TinyWebDB;)Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Lcom/google/devtools/simple/runtime/components/android/TinyWebDB$4$1;

    invoke-direct {v5, p0}, Lcom/google/devtools/simple/runtime/components/android/TinyWebDB$4$1;-><init>(Lcom/google/devtools/simple/runtime/components/android/TinyWebDB$4;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 309
    :goto_0
    return-void

    .line 283
    :cond_0
    const/4 v4, 0x1

    :try_start_0
    invoke-virtual {p1, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 284
    .local v1, tagFromWebDB:Ljava/lang/String;
    const/4 v4, 0x2

    invoke-virtual {p1, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 286
    .local v2, value:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    const-string v4, ""

    move-object v3, v4

    .line 288
    .local v3, valueFromWebDB:Ljava/lang/Object;
    :goto_1
    iget-object v4, p0, Lcom/google/devtools/simple/runtime/components/android/TinyWebDB$4;->this$0:Lcom/google/devtools/simple/runtime/components/android/TinyWebDB;

    #getter for: Lcom/google/devtools/simple/runtime/components/android/TinyWebDB;->androidUIHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/google/devtools/simple/runtime/components/android/TinyWebDB;->access$100(Lcom/google/devtools/simple/runtime/components/android/TinyWebDB;)Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Lcom/google/devtools/simple/runtime/components/android/TinyWebDB$4$2;

    invoke-direct {v5, p0, v1, v3}, Lcom/google/devtools/simple/runtime/components/android/TinyWebDB$4$2;-><init>(Lcom/google/devtools/simple/runtime/components/android/TinyWebDB$4;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 295
    .end local v1           #tagFromWebDB:Ljava/lang/String;
    .end local v2           #value:Ljava/lang/String;
    .end local v3           #valueFromWebDB:Ljava/lang/Object;
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 300
    .local v0, e:Lorg/json/JSONException;
    iget-object v4, p0, Lcom/google/devtools/simple/runtime/components/android/TinyWebDB$4;->this$0:Lcom/google/devtools/simple/runtime/components/android/TinyWebDB;

    #getter for: Lcom/google/devtools/simple/runtime/components/android/TinyWebDB;->androidUIHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/google/devtools/simple/runtime/components/android/TinyWebDB;->access$100(Lcom/google/devtools/simple/runtime/components/android/TinyWebDB;)Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Lcom/google/devtools/simple/runtime/components/android/TinyWebDB$4$3;

    invoke-direct {v5, p0}, Lcom/google/devtools/simple/runtime/components/android/TinyWebDB$4$3;-><init>(Lcom/google/devtools/simple/runtime/components/android/TinyWebDB$4;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 286
    .end local v0           #e:Lorg/json/JSONException;
    .restart local v1       #tagFromWebDB:Ljava/lang/String;
    .restart local v2       #value:Ljava/lang/String;
    :cond_1
    :try_start_1
    invoke-static {v2}, Lcom/google/devtools/simple/runtime/components/util/JsonUtil;->getObjectFromJson(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v4

    move-object v3, v4

    goto :goto_1
.end method
